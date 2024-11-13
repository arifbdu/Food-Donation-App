from django.db import models

class Edtech(models.Model):
    student_name = models.CharField(max_length=100)
    batch= models.CharField(max_length=10)
    student_id = models.CharField(max_length=15)  
    project_title = models.CharField(max_length=1000)
    project_details = models.CharField(max_length=2500)  
    timestamp = models.DateField(auto_now_add=True)
