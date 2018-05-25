from django.conf.urls import url, include
from app.login.views import loginn
urlpatterns=[
url(r'^$',loginn, name ="loginn"),
]