# Generated by Django 4.2.7 on 2024-05-14 05:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0013_cultural_robotics_sports_steam_delete_fooddonation_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Edtech',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_name', models.CharField(max_length=100)),
                ('batch', models.CharField(max_length=10)),
                ('student_id', models.CharField(max_length=15)),
                ('project_title', models.CharField(max_length=1000)),
                ('project_details', models.CharField(max_length=2500)),
                ('timestamp', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Ire',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_name', models.CharField(max_length=100)),
                ('batch', models.CharField(max_length=10)),
                ('student_id', models.CharField(max_length=15)),
                ('project_title', models.CharField(max_length=1000)),
                ('project_details', models.CharField(max_length=2500)),
                ('timestamp', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.DeleteModel(
            name='Cultural',
        ),
        migrations.DeleteModel(
            name='Robotics',
        ),
        migrations.DeleteModel(
            name='Sports',
        ),
        migrations.DeleteModel(
            name='Steam',
        ),
    ]
