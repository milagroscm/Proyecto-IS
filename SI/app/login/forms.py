from django import  forms

from app.login.models import Usuario


class UsuarioForm(forms.ModelForm):

	class Meta:
		model = Usuario
		fields = [
			
			'correo',
			'password',
			
		]


		labels = {
			'correo' : 'Correo',
			'password': 'Password',

		}



		widgets = {

			'correo':forms.TextInput(attrs={'class':'form-control'}),
			'password':forms.PasswordInput(attrs={'class':'form-control'}),


		}	
