from django.conf.urls import url, include
<<<<<<< HEAD
from app.blog.views import index
from app.blog.views import info
=======
from app.blog.views import index,CrearPerfil,CreandoPerfil

>>>>>>> 5fa2004af657f4903d318ecff79302738998a5cb
from django.urls import path



app_name = 'apps'

urlpatterns=[

	path('',index, name = "index"),
<<<<<<< HEAD
	path('info/',info,name="info"),
=======
	path('CreandoPerfil/',CrearPerfil, name = "creandoPer"),
	path('CrearPerfil/',CrearPerfil, name= "crearPer"),
>>>>>>> 5fa2004af657f4903d318ecff79302738998a5cb
]