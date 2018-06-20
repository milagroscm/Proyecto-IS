# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models



class ImagenInfo(models.Model):
    idimagen = models.AutoField(db_column='idImagen', primary_key=True)  # Field name made lowercase.
    nombreimagen = models.CharField(db_column='NombreImagen', max_length=45)  # Field name made lowercase.
    ciudad = models.CharField(db_column='Ciudad', max_length=15)  # Field name made lowercase.
    provincia = models.CharField(db_column='Provincia', max_length=15)  # Field name made lowercase.
    distrito = models.CharField(db_column='Distrito', max_length=15)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=15)  # Field name made lowercase.
    longitud = models.CharField(max_length=45)
    latitud = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=150)
    construccion = models.CharField(db_column='Construccion', max_length=20, blank=True, null=True)  # Field name made lowercase.
    estilo_arquitectonico = models.CharField(db_column='Estilo_arquitectonico', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'imagen_info'


class HistorialUsuario(models.Model):
    idhistorial_usuario = models.AutoField(db_column='idHistorial_Usuario', primary_key=True)  # Field name made lowercase.
    usuario_idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='Usuario_idUsuario')  # Field name made lowercase.
    imagen_info_idimagen = models.ForeignKey('ImagenInfo', models.DO_NOTHING, db_column='Imagen_Info_idImagen')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'historial_usuario'

class Usuario(models.Model):
    idusuario = models.AutoField(db_column='idUsuario', primary_key=True)  # Field name made lowercase.
    correo = models.EmailField(db_column='Correo', max_length=25)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=25)  # Field name made lowercase.
    nombres = models.CharField(db_column='Nombres', max_length=50)  # Field name made lowercase.
    apellidop = models.CharField(db_column='ApellidoP', max_length=25)  # Field name made lowercase.
    apellidom = models.CharField(db_column='ApellidoM', max_length=25)  # Field name made lowercase.
    sexo = models.CharField(db_column='Sexo', max_length=1)  # Field name made lowercase.
    pais = models.CharField(db_column='Pais', max_length=10)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuario'