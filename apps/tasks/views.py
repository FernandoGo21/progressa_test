import requests
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from .forms import TaskForm
from .models import Task
# Create your views here.

# Con este decorador protegemos las rutas de personas sin authenticación 
@login_required
def tasks(request):
    """
    Muestra una lista de todas las tareas con sus personajes asociados (si existen).
    - Para cada tarea con personaje asociado, consulta la API de Rick and Morty.
    - Retorna la lista combinada de tareas y datos de personajes para mostrar en el template.
    """
    tasks = Task.objects.all()
    # Creamos una lista para guardar la información de las tareas y de los personajes
    tasks_with_character = []
    #Iteramos en base a la cantidad de tareas
    for task in tasks:
        #Creamos la variable de personaje, la cual por defecto es None, osea no tienen ningun personaje asociado
        character = None
        #Revisamos si cada una de las tareas tienen un personaje asociado
        if task.rick_and_morty_character_id:
            #Si tiene un personaje asociado realizamos una petición a la API externa para que nos devuelva la información del personaje
            character = get_character_api_by_id(task.rick_and_morty_character_id)
        #Agregamos a la lista la tarea y el caracter (si tiene uno asociado)
        tasks_with_character.append({
            'task': task,
            'character': character
        })
    #retornamos la vista con el array de tareas con personaje con el fin de iterar y mostrar la información importante
    return render(request, 'tasks/tasks.html', {
        'tasks_with_character': tasks_with_character
    })

@login_required
def task_detail(request, task_id):
    """
    Maneja la visualización y actualización de una tarea específica.
    - GET: Muestra el formulario con los datos de la tarea y su personaje asociado (si existe).
    - POST: Actualiza la tarea con los datos del formulario.
    """
    if request.method == 'GET':
        #Creamos la variable de personaje, la cual por defecto es None, osea no tienen ningun personaje asociado
        character = None
        #Consultamos la tarea en base al id recibido
        task = get_object_or_404(Task, pk=task_id)
        #Revisamos si la tarea tiene un personaje asociado
        if task.rick_and_morty_character_id:
            #Si tiene un personaje asociado realizamos una petición a la API externa para que nos devuelva la información del personaje
            character = get_character_api_by_id(task.rick_and_morty_character_id)
        form = TaskForm(instance=task)
        return render(request, 'tasks/task_detail.html',{ 'task': task, 'form': form, 'character': character })
    else:
        try:
            task = get_object_or_404(Task, pk=task_id)
            form = TaskForm(request.POST, instance=task)
            form.save()
            return redirect('tasks')
        except ValueError:
            return render(request, 'tasks/task_detail.html',{ 'task': task, 'form': form, 'error': 'Error actualizando tarea' })

@login_required
def delete_task(request, task_id):
    """
    Elimina una tarea específica.
    - Redirige a la lista de tareas después de eliminar.
    """
    task = get_object_or_404(Task, pk=task_id)
    print('Hola ',task)
    if request.method == 'POST':
        task.delete()
        return redirect('tasks')

@login_required
def create_tasks(request):
    """
    Maneja la creación de nuevas tareas.
    - GET: Muestra el formulario vacío.
    - POST: Procesa el formulario y crea la tarea asociada al usuario actual.
    """
    if request.method == 'GET': 
        return render(request, 'tasks/create_tasks.html',{
            'form': TaskForm
        })
    else:
        try:
            form = TaskForm(request.POST)
            new_task = form.save(commit=False)
            new_task.user = request.user
            new_task.save()
            return redirect('tasks')
        except ValueError:
            return render(request, 'tasks/create_tasks.html',{
                'form': TaskForm,
                'error': 'Por favor valide la información'
            })

@login_required
def disassociate_character(request, task_id):
    """
    Elimina la asociación de un personaje con una tarea.
    - Establece rick_and_morty_character_id como None para que pueda volver a ser asociado a otro personaje
    """
    task = get_object_or_404(Task, pk=task_id)
    if request.method == 'POST':
        task.rick_and_morty_character_id = None
        task.save()
        return redirect('tasks')

def get_character_api_by_id(character_id):
    """
    Consulta la API de Rick and Morty para obtener datos de un personaje específico.
    - Retorna un diccionario con el nombre e imagen del personaje.
    """
    try:
        r = requests.get(f'https://rickandmortyapi.com/api/character/{character_id}')
        r.raise_for_status()
        if r.status_code == 200:
            data = r.json()
            return {
                'name': data['name'],
                'image': data['image']
            }
    except requests.RequestException as e:
        print(f"Error al consultar la API: {e}")
        