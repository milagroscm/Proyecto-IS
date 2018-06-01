from django.conf.urls import url, include
from app.login.views import loginn

from django.urls import path



app_name = 'apps'

urlpatterns=[

	#url(r'^$',loginn, name ="loginn"),
	 path('',loginn, name = "loginn"),


]