from django.test import TestCase
from recipe.calc import add

class CalcTests(TestCase):

    def test_add_numbers(self):
        """Test that two numbers are added together"""
        self.assertEqual(add(32,3), 35)