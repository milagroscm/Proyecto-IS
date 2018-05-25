from django.conf.urls import url, include
from app.blog.views import index
urlpatterns=[
url(r'^$', index,name="index"),
]