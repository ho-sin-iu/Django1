from django.contrib import admin
from blog_post.models import Post, Guestbook

# Register your models here.
admin.site.register(Post)
admin.site.register(Guestbook)