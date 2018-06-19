from django.shortcuts import render , redirect
from django.http import HttpResponse
from app.blog.forms import CrearUsuarioForm
from app.blog.models import Usuario
def CreandoPerfil(request):
	return render(request,'blog/CrearPerfil.html')
def CrearPerfil(request):
	if request.method == 'POST':
		form = CrearUsuarioForm(request.POST)
		if form.is_valid():
			form.save()
			return redirect('inicio:index')
	else:
		form=CrearUsuarioForm()
	return render(request,'blog/CrearPerfil.html',{'form':form})
def index(request):
	return render(request,'blog/index.html')
# Create your views here.
