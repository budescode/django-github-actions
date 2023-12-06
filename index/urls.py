from django.urls import path
from .views import indexView

urlpatterns = [
    
    path('', indexView),
]