from django.conf.urls import url, include
from app.blog.views import index,CrearPerfil,CreandoPerfil

from django.urls import path



app_name = 'apps'

urlpatterns=[

	path('',index, name = "index"),
	path('CreandoPerfil/',CrearPerfil, name = "creandoPer"),
	path('CrearPerfil/',CrearPerfil, name= "crearPer"),
]