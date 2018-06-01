from django.conf.urls import url, include
from app.blog.views import index

from django.urls import path



app_name = 'apps'

urlpatterns=[

	path('',index, name = "index"),
]