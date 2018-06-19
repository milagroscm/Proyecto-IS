from django.shortcuts import render, redirect
from django.http import HttpResponse

from app.login.forms import UsuarioForm
from django.contrib.auth.views import login
from django.contrib.auth import authenticate, logout

from app.login.models import Usuario



def loginn(request):



	if request.method == 'POST':
		form =  UsuarioForm(request.POST)
		if form.is_valid():
			usuario= request.POST['correo']
			password = request.POST['password']
			
			user = Usuario.objects.filter(correo = usuario,password =password).exists()
			
			if user == True:
					
					user2 = Usuario.objects.filter(correo = usuario,password =password)
					contexto = {'usuarios': user2}
			
					return render(request,'usuario/indexUsuario.html',contexto)

					
				
			else:
			 print("contrasenia incorrecta")
	else :
			form = UsuarioForm()
	return render(request,'blog/login.html',{'form':form})

def logout_view(request):
	logout(request)


def usuario_view(request):
	return render(request,'usuario/PerfilUsuario.html')