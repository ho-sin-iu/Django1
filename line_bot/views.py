from django.shortcuts import render
from django.http import HttpResponse, HttpResponseBadRequest, HttpResponseForbidden
from django.views.decorators.csrf import csrf_exempt
from django.conf import settings

# 引入 linebot SDK
from linebot import LineBotApi, WebhookParser
from linebot.exceptions import InvalidSignatureError, LineBotApiError
from linebot.models import MessageEvent, TextSendMessage, TextMessage, StickerMessage

import random


# 建立 linebot class 進行連線
line_bot_api = LineBotApi(settings.LINE_CHANNEL_ACCESS_TOKEN)
parser = WebhookParser(settings.LINE_CHANNEL_SECRET)


def put(reply_token, message):
    line_bot_api.reply_message(
        reply_token,
        TextSendMessage(text=message)
    )


def gomen(package_id=6632, sticker_id=11825391):
    return StickerMessage(package_id=package_id, sticker_id=sticker_id)


@csrf_exempt
def callback(request):
    if request.method == "POST":
        # Get the X-Line-Signature header value
        signature = request.META['HTTP_X_LINE_SIGNATURE']
        # Decode the request body to a string
        body = request.body.decode('utf-8')

        # Try to parse the event
        try:
            events = parser.parse(body, signature)

        # Return 403 Forbidden if the signature is invalid
        except InvalidSignatureError:
            return HttpResponseForbidden()

        # Return 400 Bad Request if there's an error with the Line API
        except LineBotApiError:
            return HttpResponseBadRequest()

        for event in events:
            # print(event)

            reply_token = event.reply_token

            # The event is a message event and
            #  ... the message is a text message
            istext = (
                isinstance(event, MessageEvent) and
                isinstance(event.message, TextMessage)
            )

            # If the event is a message event...
            # and if the message is a text message
            if istext:
                res_text = event.message.text  # received text
                if res_text == 'Roll a dice':
                    dice = random.randint(1, 6)
                    put(reply_token, str(dice))
                elif res_text == '@我要報到':
                    line_bot_api.reply_message(reply_token, gomen())
                elif res_text == '@我的名牌':
                    put(reply_token, '你沒有名牌哈哈')
                elif res_text == '@車號登入':
                    put(reply_token, '你沒有車哈哈')
                else:
                    # (Echoing) Reply with the received text
                    put(reply_token, res_text)
        # When everything is done, return an empty 200 OK response
        return HttpResponse()
    else:
        # Return 400 Bad Request if the request method is not POST
        return HttpResponseBadRequest()


def sendMsg(requests, uid, msg):
    line_bot_api.push_message(uid, TextSendMessage(text=msg))
    return HttpResponse()
