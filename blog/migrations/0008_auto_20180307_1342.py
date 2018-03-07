# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-03-07 13:42
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20180304_0749'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='author_image',
            field=models.FileField(default=django.utils.timezone.now, upload_to='News/Author', verbose_name='Author Image '),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='news',
            name='author_name',
            field=models.CharField(default=2, max_length=50, verbose_name='Author Name'),
            preserve_default=False,
        ),
    ]
