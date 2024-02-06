from django.shortcuts import render

from index.models import Book

def indexView(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        author = request.POST.get('author')
        description = request.POST.get('description')
        image = request.FILES.get('image')
        Book.objects.create(name=name, author=author, description=description, image=image)
    qs = Book.objects.all() 
    context = {'qs':qs}
    return render(request, 'index.html', context)