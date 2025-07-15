from django.shortcuts import render, redirect
# Importamos los formularios predeterminados de Django para registro y autenticación
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User # Modelo de usuario predeterminado, brindado por Django
from django.contrib.auth import login, logout, authenticate # Funciones para manejo de sesiones
from django.db import IntegrityError # Excepción para manejar duplicados en la base de datos
# Create your views here.
#Creamos el metodo de registro de usuario
def signup(request):
    """
        Maneja el registro de nuevos usuarios.
        - Si el método es GET: Muestra el formulario de registro.
        - Si el método es POST: Procesa los datos del formulario.
    """
    if request.method == 'GET':
        #Retornamos la vista de registro, para el usuario estamos usando la que nos brinda Django, por ende no es necesario crear Modelo, ni tabla, ya que Django ya lo tiene
        return render(request, 'users/signup.html',{
            'form': UserCreationForm
        })
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                #Register user
                user = User.objects.create_user(username=request.POST['username'], password=request.POST['password1'])
                #Guarda el usuario
                user.save()
                #Devuelve un sessión ID
                login(request, user)
                #Redirecciona a tareas
                return redirect('tasks')
            except IntegrityError:
                # Usuario ya existe
                return render(request, 'users/signup.html',{
                    'form': UserCreationForm,
                    'error': 'El usuario ya se encuentra registrado'
                })
        # Las contraseñas no coinciden
        return render(request, 'users/signup.html',{
            'form': UserCreationForm,
            'error': 'Las contraseñas no coinciden'
        })

def signin(request):
    """
        Maneja el inicio de sesión de usuarios.
        - Si el método es GET: Muestra el formulario de login.
        - Si el método es POST: Valida las credenciales.
    """
    if request.method == 'GET':
        return render(request, 'users/login.html',{
            'form': AuthenticationForm
        })
    else:
        #Validamos que el campo de usuario y el campo de contraseña no se encuentren vacios
        if not request.POST['username'] or not request.POST['password']:
            return render(request, 'users/login.html', {
                'form': AuthenticationForm,
                'error': 'Ambos campos son obligatorios'
            })
        #Validamos si el usuario existe, por medio de las herramientas que nos provee Django 
        user = authenticate(request, username=request.POST['username'], password=request.POST['password'])
        # Credenciales inválidas
        if user is None:
            return render(request, 'users/login.html',{
                'form': AuthenticationForm,
                'error': 'El usuario o la clave son incorrectos'
            })
        #Si el usuario existe, se hace el proceso de logeo el cual crea una sessionId en nuestro navegador.
        else:
            login(request, user)
            #Redireccionamos a Tareas
            return redirect('tasks')

def home(request):
    """Muestra la página principal del sitio."""
    return render(request, 'users/home.html')
            
def signout(request):
    """
    Cierra la sesión del usuario actual y redirige a la página principal.
    """
    logout(request)
    return redirect('home')