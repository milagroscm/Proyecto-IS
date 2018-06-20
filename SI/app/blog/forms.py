from django import  forms

from app.login.models import Usuario

class CrearUsuarioForm(forms.ModelForm):

	class Meta:
		model = Usuario
		fields = [
			'nombres',
			'apellidop',
			'apellidom',
			'sexo',
			'pais',
			'correo',
			'password',
			
		]


		labels = {
			'nombres' : 'Nombres',
			'apellidop' : 'Apellidop',
			'apellidom' : 'Apellidom',
			'sexo' : 'Sexo',
			'pais' : 'Pais',
			'correo' : 'Correo',
			'password': 'Password',
		}



		widgets = {
			'nombres':forms.TextInput(attrs={'class':'form-control'}),
			'apellidop':forms.TextInput(attrs={'class':'form-control'}),
			'apellidom':forms.TextInput(attrs={'class':'form-control'}),
			'pais':forms.TextInput(attrs={'class':'form-control'}),
			'sexo':forms.TextInput(attrs={'class':'form-control'}),
			'correo':forms.TextInput(attrs={'class':'form-control'}),
			'password':forms.PasswordInput(attrs={'class':'form-control'}),
		}	
		

