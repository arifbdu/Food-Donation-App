# Generated by Django 4.2.7 on 2024-04-20 00:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0006_hostel'),
    ]

    operations = [
        migrations.DeleteModel(
            name='TurbidityData',
        ),
        migrations.AlterField(
            model_name='hostel',
            name='room_no',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='hostel',
            name='session',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='hostel',
            name='student_id',
            field=models.IntegerField(),
        ),
    ]
