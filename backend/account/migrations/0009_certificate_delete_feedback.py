# Generated by Django 4.2.7 on 2024-04-20 05:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0008_delete_phdata_delete_temperaturedata'),
    ]

    operations = [
        migrations.CreateModel(
            name='Certificate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('student_id', models.IntegerField()),
                ('session', models.IntegerField()),
                ('data', models.TextField()),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.DeleteModel(
            name='Feedback',
        ),
    ]
