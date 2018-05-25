from django.shortcuts import render
from django.http import HttpResponse
def loginn(request):
	return render(request,'blog/login.html')