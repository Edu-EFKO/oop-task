Объектно-ориентированное программирование
===========================================
Индекс проекта: OOPTASK

## Задание

Необходимо последовательно выполнить все этапы задания и вывести на экран несколько записей:
1) Класс: кошка
   Имя: Барсик
   Цвет: черный
   Увеет мяукать: Да
   Умеет мурчать: Нет

2) Класс: кошка
   Имя: Мурашка
   Цвет: белый
   Увеет мяукать: Да
   Умеет мурчать: Да

3) Класс: Собака
   Имя: Шарик
   Цвет: Коричневый
   Умеет гавкать: Да
   Голос: Гав-гав

4) Класс: человек
   Имя: Иван
   Цвет: Человеческий
   Пол: Мужской
   Возраст: 18
   Национальность: Русский
   
Некоторые элементы кода специально пропущены. Вместо них стоит комбинация символов  `...`

## Этапы выполнения задания (все этапы выполнять в файле `web/index.php`)

- Создать интерфейс `AnimalInterface`
```php
... AnimalInterface {
    function getName(): string;
    function getColor(): string;
    function aboutMe(): string;
    ... function classDescription(): string;  // данная функция может вызываться без создания экземпляра класса
}
```
- Создать базовый класс `Animal`. Атрибуты `name` и `color` доступны только в этом классе. От данного класса нельзя создавать экземпляры
```php
... class Animal ... AnimalInterface {
    public function __...(
    ... string $name,
    ... string $color
    ) {
    
    }
    
    ...
    ...
    ...
    public abstract function aboutMe(): string;
}
```
- Создать класс `Cat`. Он является наследником базового класса `Animal` Помимо полей  `name`  и `color`, необходимо добавить поля  `isCanMeow` (может мяукать), `isCanPurr` (Может мурчать)
```php
... class Cat ... Animal {
    public function __...(
    string $name,
    string $color,
    private ... $isCanMeow,
    private ... $isCanPurr,
    ) {
        parent::__...($name, $color);
    }
    
    ...
    ...
    ...
    
    public function getIsCanMew(): string
    {
        return $this->isCanMew === true ? 'Да' : 'Нет';
    }
    
     public function getIsCanPurr(): string
    {
        return ... ;
    }
    
    public function aboutMe(): string
    {
        return 'Класс: ' . self::classDescription()
        . '<br> Имя: ' . $this->getName()
        . ' <br> Цвет: ' . $this->getColor()
        . '<br> Умеет мяукать: ' . $this->getIsCanMew()
        . '<br> Умеет мурчать: ' . $this->getIsCanPurr();
    }
}
```
- Создать класс `Dog`. Он является наследником базового класса `Animal` Помимо полей  `name`  и `color`, необходимо добавить поля  `isCanBark` (может гавкать), `voice` (голос)
```php
... class Cat ... Animal {
    public function __...(
    string $name,
    string $color,
    private string $voice,
    private ... $isCanBark,
    ) {
        parent::__...($name, $color);
    }
    
    ...
    ...
    ...
    
    ...
    ...
    
    public function aboutMe(): string
    {
       ...
    }
}
```

- По аналогии с `Cat` и `Dog` сделать класс `Human`