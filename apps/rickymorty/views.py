import requests
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from ..tasks.models import Task

# Create your views here.
#Metodo para obtener los personajes de la API externa de Rick & Morty, el @login_required evita que alguien que no este logeado tenga acceso a estos metodos
@login_required
def get_characters_from_api(request):
    #Definimos las variables necesarias para visualizar los personajes, paginación, una lista de personajes y un diccionario de información
    page = request.GET.get('page', 1)
    characters = []
    info = {}
    try:
        #Realizamos la petición a la API
        response = requests.get(f'https://rickandmortyapi.com/api/character?page={page}')
        #Validamos que no haya ningun fallo en la petición
        response.raise_for_status()
        #Validamos que el codigo de respuesta de la petición sea 200 - OK, lo que implica que todo salio correctamente
        if response.status_code == 200:
            #Tomamos la información y la convertimos en formato JSON
            data = response.json()
            #Tomamos la información de los personajes la cual viene en la sección de resultados
            characters =  data['results']
            #Tomamos la información del paginado, cantidad total de registros, pagina siguiente y pagina anterior de la sección de info
            info = data['info']
    except requests.RequestException as e:
        print(f"Error al consultar la API: {e}")
    
    #Cargamos las tareas con el fin de poder asociarles un personaje
    tasks = Task.objects.filter(rick_and_morty_character_id=None)

    return render(request, 'rym_api/list_characters.html', {
        'characters': characters,
        'tasks': tasks,
        'info': info,
        'current_page': int(page),
    })
    
@login_required
def associate_character(request, character_id):
    if request.method == 'POST':
        #Validamos que en la petición venga el id de la tarea a la cual se le quiere asociar el personaje
        if request.POST['task_id']:
            # Buscamos la tarea seleccionada
            task = get_object_or_404(Task, id=request.POST['task_id'])
            # Guardamos el ID del personaje seleccionado en la tarea seleccionada
            task.rick_and_morty_character_id = character_id
            task.save()
            # Redireccionamos a la pagina de tareas
            return redirect('tasks')
