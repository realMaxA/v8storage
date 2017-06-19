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

	ВсеШаги.Добавить("ЯЗагружаюФайлКонфигурацииВБазуДанных");
	ВсеШаги.Добавить("ЯСоздаюФайловоеХранилищеСПараметромПодключенияБазыКхранилищу");
	ВсеШаги.Добавить("ВыводЛогаСодержит");
	ВсеШаги.Добавить("ЯВыполняюОтключениеОтХранилищаКонфигурации");
	ВсеШаги.Добавить("ЯПодключаюБазуКхранилищуСПараметромЗаменыКонфигурации");

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

//Я загружаю файл конфигурации "../tests/fixtures/1Cv8.cf" в базу данных
Процедура ЯЗагружаюФайлКонфигурацииВБазуДанных(Знач ПутьКФайлуКонфигурации) Экспорт

	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	УправлениеКонфигуратором = ХранилищеКонфигурации.ПолучитьУправлениеКонфигуратором();

	УправлениеКонфигуратором.ЗагрузитьКонфигурациюИзФайла(ПутьКФайлуКонфигурации);

КонецПроцедуры

//Я создаю файловое хранилище с параметром подключения базы к хранилищу "Истина"
Процедура ЯСоздаюФайловоеХранилищеСПараметромПодключенияБазыКхранилищу(Знач ПодключитьсяКхранилищу) Экспорт

	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ХранилищеКонфигурации.СоздатьФайловоеХранилищеКонфигурации(ПодключитьсяКхранилищу);

КонецПроцедуры

//Вывод лога содержит "Хранилище конфигурации создано"
Процедура ВыводЛогаСодержит(Знач СодержаниеВыводаКоманды) Экспорт
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ВыводКоманды = ХранилищеКонфигурации.ПолучитьВыводКоманды();
	Ожидаем.Что(ВыводКоманды, "Вывод команды не содержит требуемой строки").Содержит(СодержаниеВыводаКоманды);
КонецПроцедуры

//Я выполняю отключение от хранилища конфигурации
Процедура ЯВыполняюОтключениеОтХранилищаКонфигурации() Экспорт

	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ХранилищеКонфигурации.ОтключитьсяОтХранилища();

КонецПроцедуры

//Я подключаю базу к хранилищу с параметром замены конфигурации "Истина"
Процедура ЯПодключаюБазуКхранилищуСПараметромЗаменыКонфигурации(Знач ПодключитьсяКхранилищу) Экспорт

	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ХранилищеКонфигурации.ПодключитьсяКХранилищу(Истина, ПодключитьсяКхранилищу);

КонецПроцедуры

