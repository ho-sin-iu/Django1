from django.contrib import admin
from django.urls import include, path, re_path
from blog_post.views import index, showPost, testjsonp

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index),
    path('post/<slug:slug>', showPost),
    path('api/test', testjson),
]
