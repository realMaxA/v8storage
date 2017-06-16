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

	ВсеШаги.Добавить("ЯСоздаюНовыйОбъектСписокобъектовконфигурации");
	ВсеШаги.Добавить("ЯСоздаюВременнуюБазуВКаталогеИзПеременной");
	ВсеШаги.Добавить("ЯУстанавливаюКонтекстВыполненияКонфигуратора");
	ВсеШаги.Добавить("ЯУстанавливаюКаталогХранилищаИзПеременной");
	ВсеШаги.Добавить("ЯПодключаюБазуКхранилищу");
	ВсеШаги.Добавить("ЯВыгружаюКонфигурациюВКаталогИзПеременной");
	ВсеШаги.Добавить("ЯФормируюСписокОбъектовКонфигурацииДляКаталогаИзПеременной");
	ВсеШаги.Добавить("ЯЗаписываюСписокОбъектовКонфигурацииВоВременныйФайлИСохраняюЗначениеВПеременной");
	ВсеШаги.Добавить("ЯВыполняюЗахватОбъектовВХранилищеКонфигурацииПоФайлуСпискаОбъектов");
	ВсеШаги.Добавить("ВсеОбъектыУспешноЗахвачены");
	ВсеШаги.Добавить("ЯОтменяюЗахватВХранилище");
	ВсеШаги.Добавить("ЯДобавляюВСписокОбъектовЗахватКорняКонфигурацииСВключениемПодчиненных");

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

//Я создаю новый объект СписокОбъектовКонфигурации
Процедура ЯСоздаюНовыйОбъектСписокобъектовконфигурации() Экспорт
	
	СписокОбъектовКонфигурации = Новый СписокОбъектовКонфигурации();
	БДД.СохранитьВКонтекст("СписокОбъектовКонфигурации", СписокОбъектовКонфигурации);
	
КонецПроцедуры

//Я записываю список объектов конфигурации во временный файл и сохраняю значение в переменной "ФайлСпискаОбъектов"
Процедура ЯЗаписываюСписокОбъектовКонфигурацииВоВременныйФайлИСохраняюЗначениеВПеременной(Знач ИмяФайлаСпискаОбъектов) Экспорт
	
	СписокОбъектовКонфигурации = БДД.ПолучитьИзКонтекста("СписокОбъектовКонфигурации");
	ФайлСпискаОбъектов = ВременныеФайлы.НовоеИмяФайла("xml");
	СписокОбъектовКонфигурации.ЗаписатьФайлОбъектов(ФайлСпискаОбъектов);
	БДД.СохранитьВКонтекст(ИмяФайлаСпискаОбъектов, ФайлСпискаОбъектов);
	
КонецПроцедуры

//Я выполняю захват объектов в хранилище конфигурации по файлу списка объектов
Процедура ЯВыполняюЗахватОбъектовВХранилищеКонфигурацииПоФайлуСпискаОбъектов() Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ФайлСпискаОбъектов = БДД.ПолучитьИзКонтекста("ФайлСпискаОбъектов");
	ХранилищеКонфигурации.ЗахватитьОбъектыВХранилище(ФайлСпискаОбъектов);
	
КонецПроцедуры

//Я загружаю файл последней конфигурации в базу данных
Процедура ЯЗагружаюФайлПоследнейКонфигурацииВБазуДанных() Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ПутьКФайлуКонфигурации = БДД.ПолучитьИзКонтекста("ПутьКФайлуКонфигурации");

	УправлениеКонфигуратором = ХранилищеКонфигурации.ПолучитьУправлениеКонфигуратором();
	
	УправлениеКонфигуратором.ЗагрузитьКонфигурациюИзФайла(ПутьКФайлуКонфигурации);

КонецПроцедуры

//Я подключаю базу к хранилищу
Процедура ЯПодключаюБазуКхранилищу() Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ХранилищеКонфигурации.ПодключитьсяКХранилищу(Истина);
	
КонецПроцедуры

//Я отменяю захват в хранилище
Процедура ЯОтменяюЗахватВХранилище() Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ФайлСпискаОбъектов = БДД.ПолучитьИзКонтекста("ФайлСпискаОбъектов");
	ХранилищеКонфигурации.ОтменитьЗахватОбъектовВХранилище(ФайлСпискаОбъектов);

КонецПроцедуры

//Я добавляю в список объектов захват корня конфигурации с включением подчиненных "Ложь"
Процедура ЯДобавляюВСписокОбъектовЗахватКорняКонфигурацииСВключениемПодчиненных(Знач ВключатьПодчиненные) Экспорт
	
	СписокОбъектовКонфигурации = БДД.ПолучитьИзКонтекста("СписокОбъектовКонфигурации");
	СписокОбъектовКонфигурации.ДобавитьОписаниеКонфигурации("ТестоваяКонфигурация",Булево(ВключатьПодчиненные));
	
КонецПроцедуры

//Все объекты успешно захвачены
Процедура ВсеОбъектыУспешноЗахвачены() Экспорт
		
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ВыводКоманды = ХранилищеКонфигурации.ПолучитьВыводКоманды();
	ТаблицаЗахваченныхОбъектов = ХранилищеКонфигурации.ПолучитьТаблицуЗахваченныхОбъектов(ВыводКоманды);
	МассивЗахваченныхОбъектов = ТаблицаЗахваченныхОбъектов.НайтиСтроки(Новый Структура("ЗахваченДляРедактирования", Истина));
	Ожидаем.Что(ТаблицаЗахваченныхОбъектов.Количество(), "Не корректное количество захваченных объектов").Равно(МассивЗахваченныхОбъектов.Количество())

КонецПроцедуры

//я устанавливаю контекст выполнения конфигуратора
Процедура ЯУстанавливаюКонтекстВыполненияКонфигуратора() Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	УправлениеКонфигуратором = ХранилищеКонфигурации.ПолучитьУправлениеКонфигуратором();
	УправлениеКонфигуратором.УстановитьКонтекст(СтрШаблон("/F%1",БДД.ПолучитьИзКонтекста("ВременнаяБаза")), "", "");
	
КонецПроцедуры


//Я устанавливаю каталог хранилища из переменной "КаталогХранилищаКонфигурации"
Процедура ЯУстанавливаюКаталогХранилищаИзПеременной(Знач КаталогХранилищаКонфигурации) Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	ХранилищеКонфигурации.УстановитьКаталогХранилища(БДД.ПолучитьИзКонтекста(КаталогХранилищаКонфигурации));

КонецПроцедуры

//Я создаю временную базу в каталоге из переменной "ВременнаяБаза"
Процедура ЯСоздаюВременнуюБазуВКаталогеИзПеременной(Знач ВременнаяБаза) Экспорт
	
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	УправлениеКонфигуратором = ХранилищеКонфигурации.ПолучитьУправлениеКонфигуратором();
	УправлениеКонфигуратором.СоздатьФайловуюБазу(БДД.ПолучитьИзКонтекста(ВременнаяБаза));

КонецПроцедуры

//Я выгружаю конфигурацию в каталог из переменной "КаталогВыгрузки"
Процедура ЯВыгружаюКонфигурациюВКаталогИзПеременной(Знач ЗначКаталогВыгрузки) Экспорт

	КаталогВыгрузки = БДД.ПолучитьИзКонтекста(ЗначКаталогВыгрузки);
	ХранилищеКонфигурации = БДД.ПолучитьИзКонтекста("ХранилищеКонфигурации");
	УправлениеКонфигуратором = ХранилищеКонфигурации.ПолучитьУправлениеКонфигуратором();
	УправлениеКонфигуратором.ВыгрузитьКонфигурациюВФайлы(КаталогВыгрузки);
	
КонецПроцедуры

//Я формирую список объектов конфигурации для каталога из переменной "КаталогВыгрузки"
Процедура ЯФормируюСписокОбъектовКонфигурацииДляКаталогаИзПеременной(Знач ЗначКаталогВыгрузки) Экспорт
	СписокОбъектовКонфигурации = БДД.ПолучитьИзКонтекста("СписокОбъектовКонфигурации");
	КаталогВыгрузки = БДД.ПолучитьИзКонтекста(ЗначКаталогВыгрузки);
	
	МассивФайлов = Новый Массив;

	НайденныеФайлы = НайтиФайлы(КаталогВыгрузки, "*.*", Истина);

	Для Каждого Файл Из НайденныеФайлы Цикл

		МассивФайлов.Добавить(Файл.ПолноеИмя);

	КонецЦикла;

	СписокОбъектовКонфигурации.СформироватьСписокОбъектов(МассивФайлов, КаталогВыгрузки);
КонецПроцедуры









