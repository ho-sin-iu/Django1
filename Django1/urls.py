from django.contrib import admin
from django.urls import include, path, re_path
from blog_post.views import index
from myapp.views import sayhello, hello2

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index),
	# path('', sayhello),
	# path('hello', sayhello),
	# re_path('^hello2/(\w+)/$', hello2),
]
