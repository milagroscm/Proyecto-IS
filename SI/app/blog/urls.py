from django.conf.urls import url, include

from app.blog.views import index
from app.blog.views import info

from app.blog.views import index,CrearPerfil,CreandoPerfil,infoImaUsua


from django.urls import path



app_name = 'apps'

urlpatterns=[

	path('',index, name = "index"),

	path('info/',info,name="info"),	
	path('infoImaUsua/',infoImaUsua,name="infoImaUsua"),
	path('CreandoPerfil/',CrearPerfil, name = "creandoPer"),
	path('CrearPerfil/',CrearPerfil, name= "crearPer"),
]