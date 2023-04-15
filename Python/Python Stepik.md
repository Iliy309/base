| name                     | type  | discription                      |
| ------------------------ | ----- | -------------------------------- |
| Целые числа              | int   | 1,2,3                            |
| Числа с плавующей точкой | float | 1.1,2.4,3.0                      |
| Строки                   | str   | "Hello", 'world'                 |
| Списки                   | list  | [1,2.0,'hello']                  |
| Словари                  | dict  | {'name': "12313", 'number': 123} |
| Кортежи                  | tuple | (1,2.0,'hello')                  |
| Множества                | set   | {'a','b'}                        |
| Булевые                  | bool  | true/false                       |
| Опционалы                | -     | None/Null                        |
|                          |       |                                  |

# Работа со строками
*Cпособ взятия подстроки*
```
name = 'Ilya'
name[2:]   | lya
name [::2] | la  c шагом 2
```
*Функции cо строками* 
```python
x = 'Hello my love world'
len(x)          | длина строки 
сount(l)        | количество вхождения символа = 4
.capitalize()   | переводит первый символ в верх и остальные вниз
.upper()        | переводит в верхний регистр полностью строку 
.lower()        | переводит в нижний регистр полностью строку 
isupper/islower | проверка на регистр
find ('s', начало, конец ) |  поиск символа\подстроки возращает индекс сивола, в случае ошибки -1
isalnum() | проверка на вхождение символов как числа
isalpha() | проверка на вхождение символов как буквы
isspace() | проверка на пробелы, при "" возвращает false
.strip(' ') | удаляет с начала и конца строки символ в()
.startswith('He') | проверяет начало строки 
.endswith('ld')   | проверяет конец строки 
.split('l')       | делит строку по символу возращая [] без сепаратора
.partition(' ').  | делит строку возвращая (тюпл) с сепаратором, если не найден сепаратор, то возвращается две пустые строки  
```
*Форматирование и Инторполяция*
```python
C помощью фкнкции .format 
text = "My name is {0} and Im {1}"
text.format('Ilya', 23)
text = "My name is Ilya and Im 23"

pi = 3.1467
"pi = {v:1.2}".format(v=pi) | округляет значение до двух используя специальное форматирование и регулирует длину символа, но не меньше заданного

Интерполяция 
name = 'Ilya'
age = 23
text = f'My name is {name} and Im {age}' | чтобы избегать икранирования можно поставть r' c:\User\doker\'
pi = f'pi = {pi:1.2f}'
```

Операторы сравнение работают также, есть возможность работать с *and/or*
Есть возможность проверки типа файла *type()*

# Работа с файлами
```python
file = open(text.txt) | открытие из текущей директории + путь если требуется 
data = file.read()    | чтение файла
file.seek(0).         | перевод курсора в начало файло после прочтения       
file.readlines()      | читает и возвращает массив строк
file.close()          | закрытие файла
file.closed()         | проверка на закрытие 

with open(file.txt) as file_read:|автоматическое закрытие
	data = file.read()           | файла после прочтения

режимы открытия файлов 
mode = 'r'           | чтение 
mode = 'w'           | редактирование 
mode = 'a'           | запись в конец
mode = 'r+'          | чтение и запись(когда файл создан)
mode = 'w+'          | чтение и запись(когдафайлнесоздан)

file = open(file.txt,mode='w',...) 
запись идет с помощью метода .write('ilya')

input('введите количество') | функция аля введите запрос
```


# Массивы/ List
*List* Поддерживают стандартные функции 
``` python
array[0] = 'value' - замену по индексу 
.append()
.pop(0) - default last index
.sort()
.sort(reverse=True)
.sort(key=len)
.reverse()
.insert (0 значение,1- адресс)
.index   - поиск по индексу
.count   - количество вхождения элемента в массив
.copy()  -  при ссылочных типах меняется 
.clear() - удаление всех значений 
```

*List Comprehension*
```python
for symwol in "Hello": 
	array.append(symwol) / ['H','e','l','l','o']
=== Что тоже самое 
arrayComprehension = [symwol for symwol in 'Hello']

listComprehension = [n for n in range(0,3)] - [0,1,2,3]
listComprehension= [n*n for n in range(0,3)] - [0,1,4,9]
listComprehension= [n*n for n in range(0,5) if n%2!=0] 
- [1,9]

number = [0,2,6,9]
number2 = [0,3,7,9]
listComprehension = [(x,y)for x in number for y in number2 if x+y = 0]    / [(0,0),(9,9)]
```
# Словари
*Dict*
```python

del dict['ilya']= 23  - Замена/добавление/удаление
.get()
.keys()
sorted(идет через конвертацию в list(dict.keys))
'Key' in dict / 'key' not in dict  Вхождение
.values()
.copy()
.pop(key) - удаление 
.popitem() - удаление с конца, возращает удаленное 
len()
.setdefault() - получение, а если нет  добавление 

for k,v in dict.items() итерация по словарю 
```

*OrderDict* Последовательный словарь 
``` python
from collections import OrderedDict
dict_ordered = OrderedDict()
```

# Tuple/ Кортежи
Неизменяймы
```python
len()
tuple[0]
.count()
.index()

Для именнования 
from collections import namedtuple
Naming = namedtuple ('Naming','player age')
tuple =(Naming('ilya', 23), Naming('masha', 25))
```

# Множества
```python
set() при конвертации урезает все не уникальные элементы
.add()
<value> in set - true/false
.issubset()     - пересечение
.isdisjoin()    - разность
.union()        - обьединение 
.intersection() - пересечение 
.difference()   -
.simmetric_difference() - 
.update() - обновляет множество над которым вызывается, как обьединение
.clean()

Удаление 
.remove()   - конкретного значения по адресс
.discard()  - удаление значения по неизвестному индексу
.poped()    - удаление и возращение этого значение 

```


# Ветвления
```python
if <true> : 
elif <true>:
else :
```

```python 
for i in array():
for __ in range(1,6):   |range() специальный тип данных
for i, item in enumerate(array):   |нумерация массива
for i in "John":
for(naming1, naming2) in array_tuple:

for tuple in dict.items():        |возвращает tuple
for k,v in dict.items():          |для итерации по dict
for k in dict.keys():   
for v in dict.values():

использования цикла для создания listComprehension
listComprehension = [n for n in range(0,3)]  | [0,1,2,3]
listComprehension= [n*n for n in range(0,3)] | [0,1,4,9]
listComprehension= [n*n for n in range(0,5) if n%2!=0] 
                                               | [1,9]
number = [0,2,6,9]
number2 = [0,3,7,9]
listComprehension = [(x,y)for x in number for y in number2 if x+y = 0]                     | [(0,0),(9,9)]
```

```python
while x<3:
... continue - перезапуск
... break    - выход 
... pass     - пропуск 
else :
```

# Функции 
Встроенные 
```python
help(<встроенные_функции>)
abs() - взятие числа по модулю
max(<any>)
min(<any>)
pow(2, 6) = 256 - функция степени 
round(value,round) - округление
sum(list) - суммирование 

Преобразования
hex() в шестнадцетричную систему
oct() в восьмеричную систему 
bin() в двоичную систему 
ord('symwol')  Перевод в unicode
chr('unicode') Перевод в символ 

all(<условие>=100> for _ in array) возвращает false, если хоть одно условие не true
any(<условие>=100> for _ in array) возвращает true,
если хоть одно условие true

zip = zip(list1, list2)  подготовка склейки двух обьектов -> list(zip) окончательная склейка возвращает массив тюплов. Zip  можно также передать в инициализацию словаря и т.д

type()         Вывод типа
input()        Введите 
```

*Основные функции*
```python 

def <name>():
	'''
	DOCSTRING: Info
	INPUT: ...
	OUTPUT: ...
	'''
	print('name')

help(name) - выведет полное описание DOCSTRING
А просто вызов name выведет сигнатуру(только jupeter?)



def name(name:'Default'):
	Дефолтное значение устанавлиевается вот так


def number(*args/**kwargs):
	Передача неизвестного количества аргументов
	в виде простых значений и  парыключей-значений
	return sum(args/kwargs)

num= 2
def sum(number):
	return global num + number
	Обьявление сквозных переменных с помощью global
```

# Лямбды
```python
number = [1,2,3]
def func(number):
	return number* number      |[1,4,9]

map(func, number)              | смапили

for i in map(func, number):... | выполнили 

list(map(func, number))        |выполнили инициализацией

list(map(lambda num:))
------------------------------------------------------
ages = [1,3,4,20,23]
def  filte (ages):
	return ages > 18            | [20,23]

filter(filte, ages)             | смапили 

for i in filter(filer, ages)    | выполнили 

list(filter(filer, ages))      |выполнили инициализацией

list(filter(lambda age:age>18, ages))
```

# Декораторы 

```python 
from functools import wraps -> '@wrap'

def log_decorator(func):
	"@wrap из-за проблем с help() добавляют его !
	def wrap():
		print('Эта функция вызывается')
		func()
		print('Эта функция отработала')
		return wrap
		
'@log_decorator'
def hello():
	print('hello')

logger= log_decorator(hello)
и тогда при вызове  выведется
-Эта функция вызывается
-hello
-Эта функция отработала

В Питоне это все продумали и используется 
'@log_decorator'

```

# Обработка ошибок 

```python 
def devide(a,b):
	try: 2/0
	except: ZeroDivisionError as ex: 
		print(f'делитель 0 {ex}')
	except: остальные ошибки as ...
	except: ошибка по умолчанию 
	finally: что нужно сделать при получении ошибки  
ZeroDevisionError - встроенная ошибка 

Решение оббертка  ->
while True: 
	try: 
		... break/return
	except:
		...continue 
пока пользователь не введет корректное число 
```

*Кастомные ошибки или исключения*
```python
Выставить в if <condition>:
				raise: ValueError('ты творишь хуйню')

Так же можно обьединить через класс
class Error(Exception):
	"""Что-то там творится"""

И проставить if <condition>:
				raise: Error('ты творишь хуйню')


Еще есть такой вариант 
try: 
	...
except: Error as error: print(error)
else: выполнить если все нормально 
```

*Покрываем тестами*

```python 
import unittest
import <файл который проверяем>

class test(unittest.TestCase):
	def <вероятность1>(self):
		param1 = 1
		result = <файл>.<функция>(<вероятность1>)
		self.assertEqual(result,<ожидаемое_значение>)
	def <вероятность2>(self):
		param2 = 2
		result = <файл>.<функция>(<вероятность1>)
		self.assertEqual(result,<ожидаемое_значение>)
	def <вероятность3>(self):
		param3 = 3
		result = <файл>.<функция>(<вероятность1>)
		self.assertEqual(result,<ожидаемое_значение>)

if __name__ =='__main__':
	unittest.main
```

# Классы
```python 
class <Name>():
	pass - пустая инициализация класса


class <Name>():
	__helth = 100 - установленые параметры приватные*
	__speed = 50
	@property  - Для установки замкадля параметров 
	def helth(self):
		return self.__helth
	
	def __init__(self,age,type='humans',name='pol'):
		self.age = age
		self.name = name
	Стандартная инициализация, с дефолтными значениями

	@__speed.setter
	def speed.setter(self, <новое значение>):
		Остальная часть сеттера
	
	def is_dead(self):
		return self.helth = <Name>.helth
```
Свойства и атрибуты. Есть какая-то разница.

# @classmethod / @staticmethod 

-   Методы экземпляра класса получают доступ к объекту класса через параметр `self` и к классу через `self.__class__`.
-   Методы класса *@classmethod* не могут получить доступ к определённому объекту класса, но имеют доступ к самому классу через `cls`  в параметре.
-   Статические методы *@staticmethod* работают как обычные функции, но принадлежат области имён класса. Они не имеют доступа ни к самому классу, ни к его экземплярам.

# Полиморфизм/Наследование

Реализовано буквально 
```python 
class Triangle(Shape):

полиморфизм может быть прописан вот так 
for shape in (triangle, kube): где установлены классы
	shape.method 

Базовый класс может запретить использование базовых методов с помощью конструкции 
raise NotImplementedError()
```

Множетсвенное наследование реализовано с помощью представки *super()*

**Миксины** это родительские классы, которые не предназначены для создания экземпляров, но служат для расширения функциональности другим классам. Как в примере на степике - радио это миксин, может быть встроен и в машину и в любой другой транспорт, не существует для создания экземпляров радио просто так без машины.

# Абстрактные методы 
```python 

from abc import ABC

from abco import abstractmethod

class Shape (ABC):
	def __init__(self):
		super().__init__()
	
	'@abstractmethod'
	def method(self):
	
```

[Абстрактный класс](https://docs-python.ru/tutorial/klassy-jazyke-python/abstraktnye-klassy/ "Абстрактные классы в Python.") - очень важная концепция объектно-ориентированного программирования. Это хорошая практика принципа "_не повторяйся_". В большом проекте дублирование кода примерно равно повторному использованию ошибок, и один разработчик не может запомнить детали всех классов. Поэтому очень полезно использовать абстрактный класс для определения общего интерфейса для различных реализаций.

Абстрактный класс имеет некоторые особенности, а именно:

-   Абстрактный класс не содержит всех реализаций методов, необходимых для полной работы, это означает, что он содержит один или несколько абстрактных методов. Абстрактный метод - это только объявление метода, без его подробной реализации.
-   Абстрактный класс предоставляет интерфейс для подклассов, чтобы избежать дублирования кода. Нет смысла создавать экземпляр абстрактного класса.
-   Производный подкласс должен реализовать абстрактные методы для создания конкретного класса, который соответствует интерфейсу, определенному абстрактным классом. Следовательно, экземпляр не может быть создан, пока не будут переопределены все его абстрактные методы.

Короче говоря, абстрактный класс определяет общий интерфейс для набора подклассов. Он предоставляет общие атрибуты и методы для всех подклассов, чтобы уменьшить дублирование кода. Он также заставляет подклассы реализовывать абстрактные методы, чтобы избежать каких-то несоответствий.

*Магические методы*
Обрамляются __ method __    хз почему так называются, служат для переопределения стандартных методов  и использования в них класса. Видимо чтобы подружить 

# Модули и пакеты

Pypi - репозиторий библиотек для python 

pip - инсталятор библитек из Pypi

if __ name __  == __ main __ :  конструкций для вывода того или иного случая, либо через консоль, либо (else) при вызове из других классов 
