import requests
from django import forms
from .models import Task
class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['title', 'description','expiration_date','state']
        labels = {
            'title': 'Título',
            'description': 'Descripción',
            'expiration_date': 'Fecha y hora de vencimiento',
            'state': 'Estado',
        }
        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control'}),
            'description': forms.Textarea(attrs={'class': 'form-control'}),
            'state': forms.Select(attrs={
                'class': 'form-select',
                'id': 'floatingState'
            }),
            'expiration_date': forms.DateTimeInput(
                attrs={
                    'type': 'datetime-local',  # Esto genera un <input type="datetime-local">
                    'class': 'form-control',  # Opcional: para Bootstrap u otro estilo
                }
            )
        }
