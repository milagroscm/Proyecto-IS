from django.shortcuts import render, redirect
from django.http import HttpResponse

from app.login.forms import UsuarioForm
from app.blog.forms import CrearUsuarioForm
from django.contrib.auth.views import login
from django.contrib.auth import authenticate, logout

from app.login.models import Usuario,HistorialUsuario

def usuariologin(request):
	#contexto=request.GET['variable']
	print(request.session["ID"])
	user2=Usuario.objects.filter(idusuario=request.session["ID"])
	con={'usuarios':user2}
	return render(request,'usuario/indexUsuario.html',con)

def loginn(request):
	if request.method == 'POST':
		form =  UsuarioForm(request.POST)
		if form.is_valid():
			usuario= request.POST['correo']
			password = request.POST['password']
			
			user = Usuario.objects.filter(correo = usuario,password =password).exists()
			
			if user == True:
					
					user2 = Usuario.objects.filter(correo = usuario,password =password)

					request.session["ID"] = user2[0].idusuario
					request.session.modified = True
					#print(user2[0].idusuario)
					contexto = {'usuarios': user2}
			
					return render(request,'usuario/indexUsuario.html',contexto)	
			else:
			 print("contrasenia incorrecta")
	else :
			form = UsuarioForm()
	return render(request,'blog/login.html',{'form':form})

def logout_view(request):
	logout(request)

def Cerrar(request):
	#form = form = UsuarioForm()
	#print(request.session['ID'])
	#key = request.session.pop("ID")
	#print(request.session['ID'])
	return render(request,'blog/index.html')

def historial_view(request):


	print(request.session['ID'])
	#con=request.GET['variable3']
	user=HistorialUsuario.objects.filter(usuario_idusuario=request.session['ID'])

	contexto={'usuarios' : user}
	print(user)
	return render(request,'usuario/HistorialUsuario.html',contexto)

def usuario_view(request):
	var=request.GET['variable2']
	user2=Usuario.objects.get(idusuario=var)
	if request.method=='GET':
		form= CrearUsuarioForm(instance=user2)
	else:
		form= CrearUsuarioForm(request.POST,instance=user2)
		if(form.is_valid()):
			form.save()
		return render(request,'usuario/PerfilUsuario.html',{'form':form})
	return render(request,'usuario/PerfilUsuario.html',{'form':form})




	"""con={'usuarios':user2}
	return render(request,'usuario/PerfilUsuario.html',con)
	usuario=usuario.objects.get(id=idusuario)
	if request.method=='GET':
		form=UsuarioForm(instance=usuario)
	else:
		form=UsuarioForm(request.POST,instance=usuario)
		if form.is_valid():
			form.save()
		return redirect('usuario/indexUsuario.html')
	return render(request,'usuario/indexUsuario.html',{'form':form})"""