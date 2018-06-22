from django.conf.urls import url, include
from app.login.views import loginn,usuario_view,usuariologin,historial_view,Cerrar

from django.urls import path



app_name = 'apps'

urlpatterns=[

	#url(r'^$',loginn, name ="loginn"),
	path('perfil/',usuario_view, name = "perfil"),
	path('',loginn, name = "loginn"),
	path('usuarioPer/',usuariologin,name="Ulogin"),

	path('historial/',historial_view,name="histori"),
	path('Cerrar/',Cerrar,name="Cerrar"),
]