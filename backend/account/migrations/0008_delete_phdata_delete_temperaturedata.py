# Generated by Django 4.2.7 on 2024-04-20 00:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0007_delete_turbiditydata_alter_hostel_room_no_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='pHData',
        ),
        migrations.DeleteModel(
            name='TemperatureData',
        ),
    ]
