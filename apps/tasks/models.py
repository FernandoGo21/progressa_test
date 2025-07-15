from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Task(models.Model):
    # Creamos una subclase para definir las opciones del campo state 
    class TaskState(models.TextChoices):
        PENDING = 'PENDING', 'Pendiente'
        IN_PROGRESS = 'IN_PROGRESS', 'En progreso'
        COMPLETED = 'COMPLETED', 'Completada'
        
    id = models.IntegerField(primary_key=True)
    title = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    expiration_date = models.DateTimeField()
    state = models.CharField(
        max_length=20,
        choices=TaskState.choices,
        default=TaskState.PENDING
    )
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    rick_and_morty_character_id = models.IntegerField(null=True, blank=True)
    
    def __str__(self):
        return self.title