# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-02-28 01:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0008_auto_20180227_1718'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ico',
            name='logo_pic',
            field=models.FileField(upload_to='Logos'),
        ),
    ]