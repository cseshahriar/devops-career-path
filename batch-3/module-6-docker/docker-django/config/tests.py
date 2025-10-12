from django.test import TestCase
from .models import Todo


class TodoTestCase(TestCase):
    def setUp(self):
        Todo.objects.create(name="Test")

    def test_model_name(self):
        item = Todo.objects.get(name="Test")
        self.assertEqual(item.name, "Test")
