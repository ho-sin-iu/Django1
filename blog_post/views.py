from django.shortcuts import render
from django.http import HttpResponse
from blog_post.models import Post
from datetime import datetime 

# Create your views here.
def index(requests):
    posts = Post.objects.all()
    now = datetime.now()
    return render(requests, "index.html", locals())

def sayhello(request):
	return HttpResponse('Hello Django!')