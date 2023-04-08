# Списки—Java: Коллекции
![[Pasted image 20230330095558.png]]


`List` в java – это интерфейс, который предоставляет возможность поддерживать упорядоченную коллекцию. Он содержит основанные на индексах методы для вставки, обновления, удаления и поиска элементов. Он также может иметь повторяющиеся элементы.

## ArrayList

Класс `ArrayList` – реализация интерфейса `List`. Представляет собой автоматически расширяемый массив. `ArrayList` может менять свой размер во время исполнения программы

```
// Создаем новый экземпляр ArrayList
List<String> list = new ArrayList<>();

System.out.println(list); // => []

// Добавляем элементы в список
list.add("1");
list.add(null);
list.add(null);
list.add("2");
list.add("3");
list.add("3");

System.out.println(list); //=> [1, null, null, 2, 3, 3]

list.remove(0);
System.out.println(list); // => [null, null, 2, 3, 3]

list.remove("3");
list.remove("4");
System.out.println(list); // => [null, null, 2, 3]

System.out.println(list.size()); // => 4

List<String> insertedList = new ArrayList<>();
insertedList.add("1");
insertedList.add("2");
insertedList.add("7");
insertedList.add("7");
System.out.println(insertedList); // => [1, 2, 7, 7]

list.addAll(2, insertedList);
System.out.println(list); // => [null, null, 1, 2, 7, 7, 2, 3]

System.out.println(list.indexOf("7")); // => 4
System.out.println(list.get(3)); // => 2
System.out.println(list.isEmpty()); // => false
System.out.println(list.contains("2")); // => true
System.out.println(list.contains("11")); // => false


for (String s : list) {
    System.out.println("element of list: " + s);
}
```

Вывод на экран:

```
element of list: null
element of list: null
element of list: 1
element of list: 2
element of list: 7
element of list: 7
element of list: 2
element of list: 3
```

```
// Создаем новую переменную с типом ArrayList
ArrayList<String> arrayList = (ArrayList<String>) list;
System.out.println(arrayList); // => [null, null, 1, 2, 7, 7, 2, 3]
```

## LinkedList

Класс `LinkedList` — еще одна реализация интерфейса `List`. Представляет из себя двусвязный список, где каждый элемент структуры содержит ссылки на предыдущий и следующий элементы. По этим ссылкам можно переходить от одного элемента к другому.

```
// Создаем новый экземпляр двусвязного списка
List<Integer> list = new LinkedList<>();

// Добавляем/удаляем элементы
list.add(1);
list.add(2);
list.add(null);
list.add(3);
list.add(4);
list.remove(1);
list.add(null);

System.out.println(list); // => [1, null, 3, 4, null]

System.out.println(list.size()); // => 5
System.out.println(list.get(0)); // => 1
System.out.println(list.indexOf(3)); // => 2

LinkedList<Integer> linkedList = (LinkedList<Integer>) list;

// Получаем, но не удаляем первый элемент списка
System.out.println(linkedList.peek()); // => 1
System.out.println(list); // => [1, null, 3, 4, null]

// Получаем и удаляем первый элемент списка
System.out.println(linkedList.poll()); // => 1
System.out.println(linkedList); // => [null, 3, 4, null]

// Вставляем элемент в начало списка
linkedList.addFirst(3);
System.out.println(linkedList); // => [3, null, 3, 4, null]

for (Integer num: linkedList) {
    System.out.println("int: " + num);
}
```

Вывод на экран:

```
int: 3
int: null
int: 3
int: 4
int: null
```

![[Pasted image 20230330101631.png]]

![[Pasted image 20230330104140.png]]

![[Pasted image 20230330105343.png]]

## Книги

-   Java. Полное руководство — Герберт Шилдт
-   Java. Справочник Разработчика Эванс, Флэнаган (Интерфейс List)
  
  
# Мапы—Java: Коллекции

`Map` — это интерфейс, который предоставляет методы для работы со структурой данных, которая содержит в себе набор пар “ключ-значение”. Самая используемая реализация этого интерфейса — `Hashmap`

Предположим, нам нужно хранить список автомобилей с их номерами. Можно попробовать сделать это при помощи списка `List`

```
// Метод возвращает заполненный список автомобилей
// в заданном формате: [госномер номер]:[марка автомобиля]

private static List<String> getCarsList() {
    // создаем список строк
    List<String> cars = new ArrayList<>();
    // добавляем элементы в список
    cars.add("O023TO198:Volvo");
    cars.add("O025XE777:Nissan");
    cars.add("O001OO777:BMW");
    return cars;
}

// Получили список строк
var cars = getCarsList();
// => [O023TO198:Volvo, O025XE777:Nissan, O001OO777:BMW]

// Проблематика: как теперь по номеру машины найти модель автомобиля
// Можно сделать это, полностью перебрав список

// Метод ищет автомобиль по его номеру в списке автомобилей
private static String getModelByPlateNumber(String plateNumber) {
    // перебираем элементы списка
    for (String car : getCarsList()) {
        // метод split помещает элементы строки, разделенные строкой
        // (в нашем случае - : ) в строчный массив
        String[] modelAndPlateNumber = car.split(":");
        // проверяем, номер элемента списка совпадает
        // с переданным значением в качестве аргумента
        if (modelAndPlateNumber[0].equals(plateNumber)) {
            // возвращаем модель авто и прекращаем выполнение метода
            return modelAndPlateNumber[1];
        }
    }
    return null;
}
```

Вместо этого можно использовать одну из реализаций – `HashMap`, которая позволяет хранить пары ключей и значений.

```
// Создаем новый экземпляр
Map<String, String> cars = new HashMap<>();

// метод put() добавляет в словарь пару ключ-значение
cars.put("O023TO198", "Volvo");
cars.put("O025XE777", "Nissan");
cars.put("O001OO777", "BMW");

System.out.println(cars);
// => {O025XE777=Nissan, O001OO777=BMW, O023TO198=Volvo}

// Теперь определить марку автомобиля по его номеру значительно проще
// метод get() возвращает значение по ключу
String modelFromMap = cars.get("O023TO198");
System.out.println(modelFromMap); // "Volvo"
System.out.println(cars.get("O025XE700")); // null

// key может быть null
cars.put(null, "Lada");
System.out.println(cars);
// => {null=Lada, O025XE777=Nissan, O001OO777=BMW, O023TO198=Volvo}

// замена одного значения на другое
cars.put("O025XE777", "Audi");
System.out.println(cars);
// => {null=Lada, O025XE777=Audi, O001OO777=BMW, O023TO198=Volvo}
```

## Базовые операции с `Map`

```
Map<String, Integer> people = new HashMap<>();

// Добавление элемента в словарь
people.put("Max", 2006);
people.put("Petr", 1998);
people.put("Ivan", 1981);

System.out.println(people);
// => {Max=2006, Petr=1998, Ivan=1981}
System.out.println("Размер Map: " + people.size());
// => Размер Map: 3

Map<String, Integer> additionalPeopleMap = new HashMap<>();
additionalPeopleMap.put("Vladimir", 1978);
additionalPeopleMap.put("Robert", 2010);
additionalPeopleMap.put("Ibrahim", 2011);

// Метод putAll() копирует все значения из переданного словаря в текущий
people.putAll(additionalPeopleMap);

System.out.println(people);
// => {Ibrahim=2011, Max=2006, Robert=2010, Petr=1998, Ivan=1981, Vladimir=1978}

// Проверка на наличие в словаре ключа
System.out.println(people.containsKey("Max")); // => true

//  и значения
System.out.println(people.containsValue(2021)); // => false

// Удаление элемента из словаря
people.remove("Robert");
System.out.println(people);
// => {Ibrahim=2011, Max=2006, Petr=1998, Ivan=1981, Vladimir=1978}

// Удаление всех элементов
people.clear();
System.out.println(people); // => {}
```

## Map.Entry

`Map.Entry` – это интерфейс, который позволяет нам получить доступ к записям в словаре

```
Map<String, String> students = new HashMap<>();
students.put("Max", "Maximov");
students.put("Petr", "Petrov");
students.put("Ivan", "Ivanov");

System.out.println(students.entrySet());
// => [Max=Maximov, Petr=Petrov, Ivan=Ivanov]

// 1 способ получения значения по ключу
// for (String s : students.keySet()) {
//     String lastname = students.get(s);
// }

// 2 cпособ получения значения по ключу - более употребим
for (Map.Entry<String, String> student: students.entrySet()) {
    System.out.println(
        "Student name is = " + student.getKey() + " and student lastname is = " + student.getValue()
    );
}
```

Вывод на экран:

```
Student name is = Max and student lastname is = Maximov
Student name is = Petr and student lastname is = Petrov
Student name is = Ivan and student lastname is = Ivanov
```

## Коллекции, реализующие интерфейс Map

```
// Класс LinkedHashMap

Map<String, String> linkedHashMap = new LinkedHashMap<>();
linkedHashMap.put("Egor", "Yakovlev");
linkedHashMap.put("Max", "Maximov");
linkedHashMap.put("Ivan", "Ivanov");

System.out.println(linkedHashMap);
// => {Egor=Yakovlev, Max=Maximov, Ivan=Ivanov}


// Класс TreeMap
Map<Integer, List<String>> treeMap = new TreeMap<>(Comparator.reverseOrder());
treeMap.put(23, List.of("Victor", "Ivan"));
treeMap.put(18, List.of("Eugene"));
treeMap.put(40, List.of("Anna", "Henry", "Igor"));

System.out.println(treeMap);
// => {40=[Anna, Henry, Igor], 23=[Victor, Ivan], 18=[Eugene]}

treeMap.put(35, List.of("Vera"));
System.out.println(treeMap);
// => {40=[Anna, Henry, Igor], 35=[Vera], 23=[Victor, Ivan], 18=[Eugene]}
```


# Дженерики—Java: Коллекции

## Класс Entry

```
public class Entry {
    private Object value1;
    private Object value2;

    public Entry(Object value1, Object value2) {
        this.value1 = value1;
        this.value2 = value2;
    }

    public Object getValue1() {
        return value1;
    }

    public Object getValue2() {
        return value2;
    }
}
```

```
Entry entry = new Entry(1, "Egor");
System.out.println(entry.getValue1()); // 1
System.out.println(entry.getValue2()); // "Egor"

String name = entry.getValue2();
System.out.println("User's name is = " + name);
// => java.lang.Object cannot be converted to java.lang.String
```

## Класс IntegerStringEntry

```
public class IntegerStringEntry {
    private int value1;
    private String value2;

    public IntegerStringEntry(int value1, String value2) {
        this.value1 = value1;
        this.value2 = value2;
    }

    public int getValue1() {
        return value1;
    }

    public String getValue2() {
        return value2;
    }
}
```

```
IntegerStringEntry integerStringEntry = new IntegerStringEntry(1, "Max");
String name = integerStringEntry.getValue2(); // "Max"
int id = integerStringEntry.getValue1(); // 1

System.out.println("User with id = " + id + " has name = " + name);
// => User with id = 1 has name = Max
```

## Решение проблемы в Java

```
public class GEntry<T> {
    private int value1;
    private T value2;

    public GEntry(int value1, T value2) {
        this.value1 = value1;
        this.value2 = value2;
    }

    public int getValue1() {
        return value1;
    }

    public T getValue2() {
        return value2;
    }
}
```

```
GEntry<String> gEntry = new GEntry<>(1, "Egor");
String name = gEntry.getValue2();
System.out.println("Name from generic is = " + name);
// => Name from generic is = Egor

// работает и для классов, которые мы создадим потом,
// в отличие от boilerplate-ов
Date egorBirthDate = new Date(-1000000L);
User user = new User("Egor", egorBirthDate);
GEntry<User> userGEntry = new GEntry<>(1, user);

System.out.println(userGEntry.getValue1()); // => 1
```

## Методы

```
public class Util {
    /**
     * Никто не запрещает передавать List (любую коллекцию) в качестве аргумента метода.
     * @param users
     * @return users amount
     */
    public static int getAmountOfUsers(List<User> users) {
        return users.size();
    }

    public static int getAmountOfBooks(Map<String, List<String>> map) {
        int result = 0;
        for (Map.Entry<String, List<String>> authorAndBooks: map.entrySet()) {
            result = result + authorAndBooks.getValue().size();
        }
        return result;
    }

    /**
     * Нельзя без <T>.
     * Обобщенные классы — это хорошо, но что если нам в одном классе нужны разные generics
     * @param list
     * @param element
     * @param <T>
     * @return element index
     */
    public static <T> int findElementIndex(List<T> list, T element) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).equals(element)) {
                return i;
            }
        }
        return 0;
    }
}
```

```
List<User> users = new ArrayList<>();
users.add(new User("Egor", new Date()));
users.add(new User("Max", new Date(-10000L)));

Util.getAmountOfUsers(users); // 2

Map<String, List<String>> authorAndBooksMap = new HashMap<>();
List<String> booksPushkin = new ArrayList<>();
booksPushkin.add("Золотая рыбка");
booksPushkin.add("Евгений Онегин");

authorAndBooksMap.put("Пушкин", booksPushkin);

List<String> booksTolstoy = new ArrayList<>();
booksTolstoy.add("Война и мир");
booksTolstoy.add("Анна Каренина");

authorAndBooksMap.put("Толстой", booksTolstoy);

System.out.println(
    "Всего мы храним " + Util.getAmountOfBooks(authorAndBooksMap) + " книг"
);
// => Всего мы храним 4 книг
```

```
// Обобщенные методы
List<User> userList = new ArrayList<>();
User user1 = new User("Egor", new Date());
User user2 = new User("Boris", new Date());
userList.add(user1);
userList.add(user2);

//int index= Util.<User>findElementIndex(userList, user2);
int index = Util.findElementIndex(userList, user2);
System.out.println("Index of user2 is: " + index);
// => Index of user2 is: 1
```

# Тесты—Java: Коллекции


Тесты – единственный надежный способ убедиться в работоспособности кода.

Виды тестов:

-   модульные (проверяют работоспособность конкретных програмных модулей функций)
-   интеграционнные (проверяют, что модули правильно работают вместе)
-   системные (имитируют работу всей системы целиком)

## Автоматические тесты

```
package exercise;

// Импортируем инструменты для тестирования
import static org.assertj.core.api.Assertions.assertThat;
import org.junit.jupiter.api.Test;

// Протестируем метод App.factorial(), который возвращает факториал переданного числа.

class AppTest {

    @Test
    void testFactorial() {
        // Нужно протестировать основную функциональность и пограничные случаи

        // Основная функциональность

        // Получаем и сравниваем результат: факториал 5 равен 120
        int actual1 = App.factorial(5);
        assertThat(actual1).isEqualTo(120);

        // Получаем и сравниваем результат: факториал 3 равен 6
        int actual2 = App.factorial(3);
        assertThat(actual2).isEqualTo(6);

        // Пограничные случаи

        // Получаем и сравниваем результат: факториал 0 равен 1
        int actual3 = App.factorial(0);
        assertThat(actual3).isEqualTo(1);

        // Получаем и сравниваем результат: факториал 1 равен 1
        int actual4 = App.factorial(1);
        assertThat(actual4).isEqualTo(1);
    }
}
```

# Стримы—Java: Коллекции


Stream API в Java – это способ работать со структурами данных в функциональном стиле. Этот интерфейс позволяет существенно упростить работу с данными, например сортировку, фильтрацию, агрегацию и отображение

## Введение

```
// Метод для поиска четных чисел в списках на циклах
private static List<Integer> getEvenNumbers(List<Integer> input) {
    List<Integer> list = new ArrayList<>();
    for (Integer i : input) {
        if (i % 2 == 0) {
            list.add(i);
        }
    }
    return list;
}
```

```
List<Integer> list = List.of(1, 2, 3, 4, 5);
System.out.println(getEvenNumbers(list)); // => [2, 4]
```

```
// Напишем тот же самый метод, но с использованием стримов
private static List<Integer> getEvenNumbersPro(List<Integer> input) {
    return input.stream()
            .filter(num -> num % 2 == 0)
            .collect(Collectors.toList());
}
```

```
List<Integer> list = List.of(1, 2, 3, 4, 5);
System.out.println(getEvenNumbersPro(list)); // => [2, 4]
```

## Работа с числами

```
List<Integer> numbers = List.of(1, -1, -8, 11, 20, 30, 44);
numbers.stream()
        .filter(num -> num > 0)
        .forEach(num -> {
            System.out.println(num);
        });
```

Результат работы:

```
1
11
20
30
44
```

```
int result = numbers.stream()
        .filter(num -> num > 0)
        .min((x, y) -> Integer.compare(x, y))
        .orElse(0);

System.out.println(result); //=> 1

// Сумму всех чисел можно посчитать разными способами

// 1 вариант
int sum1 = numbers.stream()
        .reduce((x, y) -> x + y)
        .orElse(0);
System.out.println("SUM: " + sum1);
// => SUM: 97

// 2 вариант
int sum2 = numbers.stream()
        .mapToInt(num -> num)
        .sum();
System.out.println("SUM2: " + sum2);
// => SUM2: 97

// Среднее арифметическое
double avg = numbers.stream()
        .mapToInt(x -> x)
        .average()
        .orElse(0);

System.out.println("AVG value: " + avg);
// => AVG value: 13.857142857142858
```

## Работа со строками

```
// Приведем все непустые имена к верхнему регистру
List<String> names = List.of("Egor", "Max", "Ivan", "Petr", "Patric", "");
names = names.stream()
        .filter(name -> StringUtils.isNotBlank(name))
        .map(name -> name.toUpperCase())
        .collect(Collectors.toList());
System.out.println("Modified names list: " + names);
// => "Modified names list: [EGOR, MAX, IVAN, PETR, PATRIC]"

// Вариант на циклах
List<String> names2 = new ArrayList<>();
for (String name: names) {
    if (StringUtils.isNotBlank(name)) {
        names2.add(name.toUpperCase());
    }
}
System.out.println(names2);
//=> "[EGOR, MAX, IVAN, PETR, PATRIC]"


// Посчитаем количество имен, начинающихся определенной буквы
// вариант 1
long amount = names.stream()
        .filter(name -> StringUtils.isNotBlank(name))
        .filter(name -> name.startsWith("P"))
        .count();
System.out.println("Amount of names starts with P: " + amount);
//=> "Amount of names starts with P: 2"

// вариант 2
long amount2 = names.stream()
        .filter(name -> StringUtils.isNotBlank(name))
        .filter(name -> name.startsWith("P"))
        .collect(Collectors.counting());

System.out.println("Amount of names starts with P [2]: " + amount2);
// => "Amount of names starts with P [2]: 2"
```

## Работа с объектами

```
// Создадим список пользователей
private static List<User> getUsersList() {
    List<User> users = new ArrayList<>();

    User user1 = new User();
    user1.setId(1);
    user1.setName("Egor");
    user1.setOnline(true);
    user1.setAge(10);
    users.add(user1);

    User user2 = new User();
    user2.setId(2);
    user2.setName("Max");
    user2.setOnline(false);
    user2.setAge(20);
    users.add(user2);

    User user3 = new User();
    user3.setId(3);
    user3.setName("Petr");
    user3.setOnline(true);
    user3.setAge(20);
    users.add(user3);

    User user4 = new User();
    user4.setId(4);
    user4.setName("Henry");
    user4.setOnline(true);
    user4.setAge(50);
    users.add(user4);

    User user5 = new User();
    user5.setId(5);
    user5.setName("Robert");
    user5.setOnline(false);
    user5.setAge(17);
    users.add(user5);

    return users;
}
```

```
List<User> users = getUsersList();

// а если users null???
if (users != null) {
    Map<Boolean, List<User>> isOnlineMap = users.stream()
            .filter(user -> Objects.nonNull(user))
            .collect(Collectors.groupingBy(user -> user.isOnline(), Collectors.toList()));
    System.out.println(isOnlineMap);
} else {
    System.out.println("List is null");
}

if (users != null) {
    Map<Boolean, List<User>> isAdultMap = users.stream()
            .collect(Collectors.groupingBy(user -> isAdult(user), Collectors.toList()));
    System.out.println(isAdultMap);
} else {
    System.out.println("List is null");
}

if (users != null) {
    Map<Integer, List<User>> ageMap = users.stream()
            .filter(user -> isAdult(user))
            .collect(Collectors.groupingBy(user -> user.getAge(), Collectors.toList()));
    System.out.println(ageMap);
} else {
    System.out.println("List is null");
}

private static boolean isAdult(User user) {
return user.getAge() >= 18;
}
```

# Лямбды—Java: Коллекции

Лямбда-функции — это анонимные функции, которые можно сохранять и передавать как обычные переменные.

## Введение

Общий вид лямбды `(параметры) -> выражение` или `(параметры) -> {операторы;}`. Стрелка — это лямбда-оператор.

Чаще всего используются три функциональных интерфейса:

-   Predicate - принимает параметр и возвращает логическое значение
-   Consumer - который принимает параметр и не возвращает никакого значения
-   Function - принимает параметр и возвращает какое-то значение

```
// Допустим, нам нужно вывести на экран
// список домашних животных и вернуть только имена питомцев,
// отсортированные по алфавиту

List<Map<String, String>> animals = List.of(
    Map.of("name", "Spooky", "animal", "dog"),
    Map.of("name", "Tom", "animal", "cat"),
    Map.of("name", "Jimmy", "animal", "bird"),
    Map.of("name", "Buddy", "animal", "dog"),
    Map.of("name", "Elsa", "animal", "dog"),
    Map.of("name", "Murka", "animal", "cat")
);
```

```
// Создадим метод getPetNames() в классе AppExample
// Для этого будем использовать Stream API и лямбды
class AppExample {
    public static List<String> getPetNames(List<Map<String, String>> animals, String animal) {
        return animals.stream()
            // Сначала отфильтруем всех питомцев, например только собак
            // Метод filter принимает в качестве параметра Predicate
            // Лямбда принимает вид питомца и возвращает true, если оно совпадает с требуемым
            .filter(pet -> pet.get("animal").equals(animal))
            // Затем сделаем отображение, оставим только имя питомца
            // Метод map принимает на вход Function
            // Она принимает текущий элемент стрима и возвращает новый измененный
            .map(pet -> pet.get("name"))
            // Сортируем имена
            // Метод sorted принимает на вход Function
            // Лямбда принимает два соседних элемента стрима и возвращает 1, 0 или -1
            // в зависимости от того, больше ли первый элемент чем второй, равен или меньше
            .sorted((name1, name2) -> name1.compareTo(name2))
            .collect(Collectors.toList());
    }
}
```

```
AppExample.getPetNames(animals, "dog"); // [Buddy, Elsa, Spooky]
```
#### Дополнительные материалы

1.  [Вебинар Stream API. Лямбда-выражения](https://www.youtube.com/watch?v=HkfN4dGN4-A&list=PLQUXJZ4AOy9oN4dMoUPkxXWOg8S0ZNHcV&index=94)

# Продвинутые стримы—Java: Коллекции


```
List<User> users = List.of(new User(1, "Max"));

// Выведем всех пользователей на экран
users.stream()
    .forEach(System.out::println); // => User{id=1, name='Max'}

List<User> users2 = List.of(new User(3, "Nick"));

// Преобразуем списки пользователей в словарь
Map<Integer, String> namesMap = Stream.concat(users.stream(), users2.stream())
    .collect(Collectors.toMap(User::getId, User::getName, (v1, v2) -> v1));

System.out.println(namesMap); // => {1=Max, 3=Nick}

// Пользователь с самым коротким именем
User firstUser = users.stream()
    .sorted(Comparator.comparing(x -> x.getName().length()))
    .findFirst()
    .orElse(null);

System.out.println(firstUser); // => User{id=1, name='Max'}

// Пользователь с наименьшим id
User firstUserAgain = users.stream()
    .sorted(Comparator.comparingInt(x -> x.getId()))
    .findFirst()
    .orElseThrow(() -> new IllegalArgumentException("no users found"));

System.out.println(firstUserAgain); // => User{id=1, name='Max'}
```

```
private static Integer getUserId(String name) throws IllegalArgumentException {
    for (User user : users) {
        if (user.getName().equals(name)) {
            return user.getId();
        }
    }
    throw new IllegalArgumentException("No user with such name!");
}
```

```
// throws IllegalArgumentException
Integer id = getUserId("Ivan");
System.out.println(id);
```

## Класс User

```
public class User {
    private Integer id;
    private String name;

    public User(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("User{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

```

## Метод flatMap()

Метод стрима `flatMap()` преобразует стрим стримов в один плоский стрим. Например, у нас есть двумерный массив и нам нужно сделать его плоским и отфильтровать его элементы:

```
int[][] array = {{2, 3}, {4, 5, 6}, {7, 8, 10}};

List<Integer> collect = Stream.of(array)          // Получаем стрим массивов Stream<Integer[]>
        .flatMap(element -> Stream.of(element))   // Stream<Integer>
        .filter(x -> x % 2 == 0)                  // filter only even numbers
        .collect(Collectors.toList());            // return a List
```

Функция, переданная в `flatMap()` в качестве параметра `element -> Stream.of(element)`создает свой вложенный стрим из каждого элемента стрима. А метод `flatMap()`выпрямляет этот стрим, делая его плоским. В итоге получаем стрим целых чисел. Этот же код можно записать немного короче, используя ссылку на метод:

```
List<Integer> collect = Stream.of(array)
        .flatMap(Stream::of)
        .filter(x -> x % 2 == 0)
        .collect(Collectors.toList());
```

# Сеты—Java: Коллекции

## Коллекции, реализующие интерфейс Set

```
// Класс HashSet

Set<String> set = new HashSet<>();
set.add("Egor");
set.add("Max");
set.add("Ivan");

System.out.println(set); // => [Egor, Max, Ivan]
System.out.println(set.size()); // => 3

Set<Item> itemSet = new HashSet<>();
itemSet.add(new Item(1, "Зубная щетка", 100));
itemSet.add(new Item(2, "Замороженная пицца", 200));
itemSet.add(new Item(3, "Мороженое", 100));

System.out.println(itemSet);
// => [
// =>     Item{id=1, name='Зубная щетка', cost=100},
// =>     Item{id=2, name='Замороженная пицца', cost=200},
// =>     Item{id=3, name='Мороженое', cost=100}
// => ]

itemSet.add(new Item(1, "Пельмени", 300));
System.out.println(itemSet);
itemSet.add(new Item(4, "Пельмени", 300));

System.out.println(itemSet);
// => [
// =>    Item{id=1, name='Зубная щетка', cost=100},
// =>    Item{id=2, name='Замороженная пицца', cost=200},
// =>    Item{id=3, name='Мороженое', cost=100},
// =>    Item{id=4, name='Пельмени', cost=300}
// => ]

// Класс LinkedHashSet

Set<Item> itemLinkedHashSet = new LinkedHashSet<>();
itemLinkedHashSet.add(new Item(1, "Зубная щетка", 100));
itemLinkedHashSet.add(new Item(2, "Замороженная пицца", 200));
itemLinkedHashSet.add(new Item(3, "Мороженое", 100));
System.out.println(itemLinkedHashSet);
// => [
// =>    Item{id=1, name='Зубная щетка', cost=100},
// =>    Item{id=2, name='Замороженная пицца', cost=200},
// =>    Item{id=3, name='Мороженое', cost=100}
// => ]

// Класс TreeSet
Set<Item> itemTreeSet = new TreeSet<>();
itemTreeSet.add(new Item(1, "Зубная щетка", 100));
itemTreeSet.add(new Item(2, "Замороженная пицца", 200));
itemTreeSet.add(new Item(3, "Мороженое", 50));
System.out.println(itemTreeSet);
```

## Класс Item

```
public class Item {
    private Integer id;
    private String name;
    private Integer cost;

    public Item(Integer id, String name, Integer cost) {
        this.id = id;
        this.name = name;
        this.cost = cost;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Item)) {
            return false;
        }
        Item item = (Item) o;
        return Objects.equals(getId(), item.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId());
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Item{");
        sb.append("id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", cost=").append(cost);
        sb.append('}');
        return sb.toString();
    }
}
```