from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned

from blog_post.models import Post
from datetime import datetime 

# Create your views here.
def index(requests):
    posts = Post.objects.all()
    now = datetime.now()
    return render(requests, "index.html", locals())

def showPost(requests, slug):
    # 1. 查詢資料庫
    try:
        post = Post.objects.get(slug=slug)
    except ObjectDoesNotExist:
        return redirect("/")
    except MultipleObjectsReturned:
        return redirect("/")
    return render(requests, "post.html", locals())

def sayhello(request):
	return HttpResponse('Hello Django!')