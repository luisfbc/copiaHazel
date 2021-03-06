# Generated by Django 4.0.3 on 2022-04-11 20:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0002_genre_language_booksgenre'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='genres',
            field=models.ManyToManyField(through='books.BooksGenre', to='books.genre'),
        ),
        migrations.AddField(
            model_name='book',
            name='language',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='books.language'),
        ),
    ]
