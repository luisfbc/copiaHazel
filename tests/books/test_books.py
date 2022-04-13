import pytest
from library.books.models import *

@pytest.mark.django_db
def test_author_name():
    author = Author.objects.create(name='Paulo', last_name='Coelho')
    print('This is my authors name: ', author.name)
    assert author.last_name == 'Coelho'
    assert Author.objects.all().count() == 1
    author.delete()
    assert Author.objects.all().count() == 0



@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, description',
    {
        ('Horror', 'Horror is a genre of speculative fiction which is intended to frighten, scare, or disgust'),
        ('Romance', 'A romance novel or romantic novel generally refers to a type of genre fiction novel which places its primary focus on the relationship and romantic love between two people, and usually has an "emotionally satisfying and optimistic ending."'),
        ('Mistery', 'Mystery is a fiction genre where the nature of an event, usually a murder or other crime, remains mysterious until the end of the story. Often within a closed circle of suspects, each suspect is usually provided with a credible motive and a reasonable opportunity for committing the crime. ')

    }
)
def test_genre_name(name, description):
    genre = Genre.objects.create(name=name)
    assert genre.name != ''
    assert has_numbers(genre.name) is False
    print("Genre name not empty and no numbers: ", genre.name)
    genre.delete()




@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, description',
    {
        ('Classics', 'A classic genre description'),
        ('Fiction', 'A fiction description'),
        ('Mistery', 'Mystery is a fiction genre where [...] ')

    }
)
def test_genre_capital_letter(name, description):
    genre = Genre.objects.create(name=name)
    assert genre.name[0].isupper() is True
    print("Genre name starts with capital letter: ", genre.name)
    genre.delete()




@pytest.mark.django_db
@pytest.mark.parametrize(
    'name, description',
    {
        ('Suspense', 'In a dramatic work, suspense is the anticipation of the outcome of a plot or of the solution to an uncertainty, puzzle, or mystery, particularly as it affects a character for whom one has sympathy.'),
        ('Fantasy', 'is a genre of speculative fiction involving magical elements, typically set in a fictional universe and sometimes inspired by mythology and folklore'),
        ('Action and Adventure', 'The protagonist has an ultimate goal to achieve and is always put in risky, often dangerous situations. This genre typically crosses over with others like mystery, crime, sci-fi, and fantasy.')

    }
)
def test_genre_length(name, description):
    genre = Genre.objects.create(name=name, description=description)
    assert len(genre.description) > 0
    assert len(genre.description) < 512
    print("Description is not empty nor too long.")
    genre.delete()




@pytest.mark.django_db
@pytest.mark.parametrize(
    'name',
    {
        ('English'),
        ('Portuguese'),
        ('Italian')

    }
)
def test_language_name(name):
    language = Language.objects.create(name=name)
    assert language.name != ''
    print("Language name not empty: ", language.name)
    language.delete()




@pytest.mark.django_db
@pytest.mark.parametrize(
    'name',
    {
        ('Vietnamese'),
        ('Spanish'),
        ('Russian'),

    }
)
def test_language_nonumber(name):
    language = Language.objects.create(name=name)
    assert has_numbers(language.name) is False
    print("Language name has no numbers: ", language.name)
    language.delete()



@pytest.mark.django_db
@pytest.mark.parametrize(
    'name',
    {
        ('Japanese'),
        ('German'),
        ('French')

    }
)
def test_language_capital_letter(name):
    language = Language.objects.create(name=name)
    assert language.name[0].isupper() is True
    print("Language starts with capital letter: ", language.name)
    language.delete()


def has_numbers(inputString):
    return any(char.isdigit() for char in inputString)


@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
    author = Author.objects.create(name='nombre', last_name='apellido')
    def model_count_mock():
        return 4
    print(dir(Author.objects))
    monkeypatch.setattr(Author.objects, 'count', model_count_mock)

    assert Author.objects.count() == 4
    print('Haciendo el monkeypatch')