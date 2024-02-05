from django.test import TestCase
from index.models import Book


class UserListListViewTest(TestCase):
    @classmethod
    def setUpTestData(self):
        #create book        
        Book.objects.create(name='name', description='desc', author='author')
       
    def test_user_can_get_records(self):
        qs = Book.objects.get(id=1)
        self.assertEqual(qs.id, 1)

   