# Generated by Django 4.2.7 on 2024-05-01 18:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0011_fooddonation_delete_passengerdetails'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fooddonation',
            name='amount_of_food',
            field=models.CharField(max_length=100),
        ),
    ]