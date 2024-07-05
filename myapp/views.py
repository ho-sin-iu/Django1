from django.shortcuts import render
from django.http import HttpResponse

def sayhello(request):
	return HttpResponse('Hello Django!')

def hello2(request, username):
	return HttpResponse('Hello' + username)
