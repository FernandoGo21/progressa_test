"""
URL configuration for progressa_test project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from apps.tasks import views as tasks_views
from apps.users import views as user_views
from apps.rickymorty import views as api_views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', user_views.home, name= 'home'),
    path('signup/', user_views.signup, name= 'signup'),
    path("login/", user_views.signin, name="login"),
    path('logout/', user_views.signout, name='logout'),
    path('tasks/', tasks_views.tasks, name = 'tasks'),
    path('tasks/create/', tasks_views.create_tasks, name = 'create_task'),
    path('tasks/<int:task_id>/', tasks_views.task_detail, name = 'task_detail'),
    path('tasks/<int:task_id>/delete', tasks_views.delete_task, name = 'delete_task'),
    path('tasks/<int:task_id>/disassociate_character_id', tasks_views.disassociate_character, name='disassociate_character'),
    path('characters_api/', api_views.get_characters_from_api, name="characters_api"),
    path('characters/associate/<int:character_id>/', api_views.associate_character, name='associate_character'),
    
]
