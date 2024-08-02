from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned
from django.http import JsonResponse
from blog_post.models import Post
from datetime import datetime 


# Create your views here.
def index(requests):
    posts = Post.objects.all()
    now = datetime.now()
    return render(requests, "pages/index.html", locals())


def showPost(requests, slug):
    # 1. 查詢資料庫
    try:
        post = Post.objects.get(slug=slug)
    except ObjectDoesNotExist:
        return redirect("/")
    except MultipleObjectsReturned:
        return redirect("/")
    return render(requests, "pages/post.html", locals())

def testjson(requests):
    posts = list(Post.objects.all().values())
    return JsonResponse(posts, status=200, safe=False)