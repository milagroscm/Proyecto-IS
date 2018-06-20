from django.shortcuts import render , redirect
from django.http import HttpResponse

#from django.core.files.storage import FileSystemStorege
from django.core.files.storage import FileSystemStorage
from django.core.files.storage import Storage
from django.core.files.base import ContentFile

from app.blog.models import ImagenInfo



#Api Google
import io
import os

# Imports the Google Cloud client library
from google.cloud import vision
from google.cloud.vision import types

def index(request):
	return render(request,'blog/index.html')



def info(request):

	os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "melvin-afa24119e798.json"
	
	vision_client = vision.ImageAnnotatorClient()
	myfile = request.FILES["file1"]

	fs = FileSystemStorage()
	filename = fs.save(myfile.name, myfile)
	file_name = fs.url(filename)

	with io.open(file_name,"rb") as image_file:
		content = image_file.read()
		image = types.Image(content=content)


	#response = vision_client.label_detection(image = image)
	#labels = response.label_annotations
	#response = vision_client.landmark_detection(image = image)
	#labels = response.landmark_annotations

	response = vision_client.web_detection(image = image).web_detection
	labels = response.web_entities
	label_data = ""
	c = 0
	print('Labels: ')
	for label in labels:
		if(c==0):

			label_data = label_data + label.description
		else:
			break
		c = c+1

	print(label_data)


	token = ImagenInfo.objects.filter(nombreimagen=label_data).exists()
	if token == True:

		token2 = ImagenInfo.objects.filter(nombreimagen=label_data)
		print(token2)
		#contexto ={"informacion" : token2}
		return render(request,'blog/resultado.html',{"labels":label_data , "image":file_name,"informacion" : token2})
	else:
		print("no hay imformacion")
		return render(request,'blog/resultado.html',{"labels":label_data , "image":file_name})



	
	# Create your views here.

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
