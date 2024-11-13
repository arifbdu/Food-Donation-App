# Generated by Django 4.2.7 on 2024-04-16 15:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0005_rename_value_feedback_data_feedback_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Hostel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('student_id', models.TextField()),
                ('session', models.TextField()),
                ('room_no', models.TextField()),
                ('data', models.TextField()),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]