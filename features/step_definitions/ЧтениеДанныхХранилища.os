﻿#Использовать "../.."
#Использовать asserts
#Использовать tempfiles
#Использовать fs
// Реализация шагов BDD-фич/сценариев c помощью фреймворка https://github.com/artbear/1bdd

Перем БДД; //контекст фреймворка 1bdd

// Метод выдает список шагов, реализованных в данном файле-шагов
Функция ПолучитьСписокШагов(КонтекстФреймворкаBDD) Экспорт
    БДД = КонтекстФреймворкаBDD;

    ВсеШаги = Новый Массив;

    ВсеШаги.Добавить("ЯСоздаюНовыйОбъектМенеджерхранилищаконфигурации");
    ВсеШаги.Добавить("ЯКопируюТестовоеХранилищеВоВременныйКаталог");
    ВсеШаги.Добавить("ЯСохраняюЗначениеВременногоКаталогаВПеременной");
    ВсеШаги.Добавить("ЯУстанавливаюКаталогХранилищаВоВременныйКаталог");
    ВсеШаги.Добавить("ЯУстанавливаюПараметрыАвторитизацииПользователяИПароль");
    ВсеШаги.Добавить("ЯЧитаюДанныеИзХранилища");
    ВсеШаги.Добавить("ЯПолучаюТаблицуВерсийХранилища");
    ВсеШаги.Добавить("ТаблицаВерсийСодержитЗаписи");
    ВсеШаги.Добавить("ЯПолучаюМассивАвторовХранилища");
    ВсеШаги.Добавить("КоличествоВМассивеАвторовРавно");

    Возврат ВсеШаги;
КонецФункции

// Реализация шагов

// Процедура выполняется перед запуском каждого сценария
Процедура ПередЗапускомСценария(Знач Узел) Экспорт

КонецПроцедуры

// Процедура выполняется после завершения каждого сценария
Процедура ПослеЗапускаСценария(Знач Узел) Экспорт
    ВременныеФайлы.Удалить();
КонецПроцедуры


//Я создаю новый объект МенеджерХранилищаКонфигурации
Процедура ЯСоздаюНовыйОбъектМенеджерхранилищаконфигурации() Экспорт

    ХранилищеКонфигурации = Новый МенеджерХранилищаКонфигурации();
    БДД.СохранитьВКонтекст("ХранилищеКонфигурации", ХранилищеКонфигурации);

КонецПроцедуры

//Я копирую тестовое хранилище во временный каталог
Процедура ЯКопируюТестовоеХранилищеВоВременныйКаталог() Экспорт

    ВременныйКаталог = БДД.ПолучитьИзКонтекста("ВременныйКаталог");
    ФС.КопироватьСодержимоеКаталога("./tests/fixtures/storage", ВременныйКаталог);
КонецПроцедуры

//Я сохраняю значение временного каталога в переменной "КаталогХранилищаКонфигурации"
Процедура ЯСохраняюЗначениеВременногоКаталогаВПеременной(Знач КаталогХранилищаКонфигурации) Экспорт

    ВременныйКаталог = БДД.ПолучитьИзКонтекста("ВременныйКаталог");
    БДД.СохранитьВКонтекст(КаталогХранилищаКонфигурации, ВременныйКаталог);

КонецПроцедуры

//Я устанавливаю каталог хранилища во временный каталог
Процедура ЯУстанавливаюКаталогХранилищаВоВременныйКаталог() Экспорт

    ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
    ХранилищеКонфигурации.УстановитьКаталогХранилища(БДД.ПолучитьИзКонтекста("КаталогХранилищаКонфигурации"));

КонецПроцедуры

//Я устанавливаю параметры авторитизации пользователя "Администратор" и пароль ""
Процедура ЯУстанавливаюПараметрыАвторитизацииПользователяИПароль(Знач Пользователь, Знач Пароль) Экспорт
    ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
    ХранилищеКонфигурации.УстановитьПараметрыАвторитизации(Пользователь, Пароль);

КонецПроцедуры

//Я читаю данные из хранилища
Процедура ЯЧитаюДанныеИзХранилища() Экспорт
    ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
    ХранилищеКонфигурации.ПрочитатьХранилище();
КонецПроцедуры

//Я получаю таблицу версий хранилища
Процедура ЯПолучаюТаблицуВерсийХранилища() Экспорт

    ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
    ТаблицаВерсий = ХранилищеКонфигурации.ПолучитьТаблицуВерсий();
    БДД.СохранитьВКонтекст("ТаблицаВерсий", ТаблицаВерсий);

КонецПроцедуры

//Таблица версий содержит "3" записи
Процедура ТаблицаВерсийСодержитЗаписи(Знач ПарамСтрока1) Экспорт

    ТаблицаВерсий = БДД.ПолучитьИзКонтекста("ТаблицаВерсий");
    Ожидаем.Что(ТаблицаВерсий.Количество(), "Не корректное количество записей в таблице версий").Равно(Число(ПарамСтрока1))

КонецПроцедуры

//Я получаю массив авторов хранилища
Процедура ЯПолучаюМассивАвторовХранилища() Экспорт

    ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
    МассивАвторов = ХранилищеКонфигурации.ПолучитьАвторов();
    БДД.СохранитьВКонтекст("МассивАвторов", МассивАвторов);

КонецПроцедуры

//Количество в массиве авторов равно "1"
Процедура КоличествоВМассивеАвторовРавно(Знач ПарамСтрока1) Экспорт

    МассивАвторов = БДД.ПолучитьИзКонтекста("МассивАвторов");
    Ожидаем.Что(МассивАвторов.Количество(), "Не корректное количество записей в таблице версий").Равно(Число(ПарамСтрока1))

КонецПроцедуры







