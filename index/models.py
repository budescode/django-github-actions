from django.db import models

class Book(models.Model):
    name = models.CharField(max_length=50)
    author = models.CharField(max_length=50)
    description = models.TextField()
    image = models.ImageField(null=True, blank=True)