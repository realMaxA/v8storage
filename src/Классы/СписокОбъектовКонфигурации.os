#Использовать logos

Перем ТаблицаОбъектов;
Перем СтруктураСпискаОбъектов;
Перем Лог;

Процедура ИнициироватьТаблицуОбъектов()
	
	ТаблицаОбъектов = Новый ТаблицаЗначений;
	ТаблицаОбъектов.Колонки.Добавить("ПолноеИмя");
	ТаблицаОбъектов.Колонки.Добавить("ПолноеИмяФайла");
	ТаблицаОбъектов.Колонки.Добавить("ПолноеИмяВоВторойКонфигурации");
	ТаблицаОбъектов.Колонки.Добавить("ВключатьПодчиненные");
	ТаблицаОбъектов.Колонки.Добавить("Подсистема");

КонецПроцедуры // ИнициироватьТаблицуОбъектов()

Функция СтруктураОбъектыПодсистема(Знач ТипКонфигурации = Неопределено, ВключитьВсеПодчиненныОбъекты = Ложь)
	
	Возврат Новый Структура("ТипКонфигурации, ВключитьВсеПодчиненныОбъекты", ТипКонфигурации, ВключитьВсеПодчиненныОбъекты); 

КонецФункции // СтруктураОбъектыПодсистема()

Функция ПолучитьТаблицуОбъектов() Экспорт
	Возврат ТаблицаОбъектов;
КонецФункции // ПолучитьТаблицуОбъектов()

Процедура ДобавитьОбъект(Знач ПолноеИмя, Знач ВключатьПодчиненные = Ложь, Знач ПолноеИмяФайла, Знач ПолноеИмяВоВторойКонфигурации = "", Знач Подсистема = Неопределено) 
	
	НоваяСтрока = ТаблицаОбъектов.Добавить();
	НоваяСтрока.ПолноеИмя = ПолноеИмя;
	НоваяСтрока.ПолноеИмяФайла = ПолноеИмяФайла;
	НоваяСтрока.ВключатьПодчиненные = ВключатьПодчиненные;
	НоваяСтрока.ПолноеИмяВоВторойКонфигурации = ПолноеИмяВоВторойКонфигурации;
	НоваяСтрока.Подсистема = Подсистема;
	
КонецПроцедуры

Процедура ДобавитьОбъектКонфигурации(Знач ПолноеИмя, Знач ВключатьПодчиненные = Ложь, Знач ПолноеИмяФайла, Знач ПолноеИмяВоВторойКонфигурации = "") Экспорт
	
	ДобавитьОбъект(ПолноеИмя, 
					ВключатьПодчиненные,
					ПолноеИмяФайла,
					ПолноеИмяВоВторойКонфигурации); 

КонецПроцедуры

Процедура ДобавитьОписаниеКонфигурации(Знач ПолноеИмя, Знач ВключатьПодчиненные = Ложь, Знач ПолноеИмяФайла = "") Экспорт
	
	СтруктураСпискаОбъектов.Вставить("Конфигурация", Новый Структура("ПолноеИмя, ВключатьПодчиненные, ПолноеИмяФайла", ПолноеИмя, ВключатьПодчиненные, ПолноеИмяФайла));

КонецПроцедуры

Процедура ДобавитьОбъектПодсистему(Знач ПолноеИмя, 
									Знач ВключатьПодчиненные = Ложь, 
									Знач ПолноеИмяВоВторойКонфигурации = "", 
									Знач ТипКонфигурации = Неопределено, 
									Знач ВключитьВсеПодчиненныОбъекты = Ложь) Экспорт

	ДобавитьОбъект(ПолноеИмя, 
					ВключатьПодчиненные,
					"",
					ПолноеИмяВоВторойКонфигурации, 
					СтруктураОбъектыПодсистема(ТипКонфигурации, ВключитьВсеПодчиненныОбъекты));

КонецПроцедуры

Процедура ЗаписатьФайлОбъектов(ПутьКФайлуОбъектов = "") Экспорт
	
	Если ПустаяСтрока(ПутьКФайлуОбъектов) Тогда
		ПутьКФайлуОбъектов = ПолучитьИмяВременногоФайла("xml");
	КонецЕсли;
	
	ФайлОбъектов = Новый Файл(ПутьКФайлуОбъектов);

	Если ФайлОбъектов.Существует() Тогда

		УдалитьФайлы(ПутьКФайлуОбъектов)

	КонецЕсли;
	
	Попытка
		
		ЗаписьXML = Новый ЗаписьXML;
		ЗаписьXML.ОткрытьФайл(ПутьКФайлуОбъектов);
		ЗаписьXML.ЗаписатьОбъявлениеXML();
		ЗаписьXML.ЗаписатьНачалоЭлемента(НСтр("ru='Objects'"));
		ЗаписьXML.ЗаписатьАтрибут("xmlns", "http://v8.1c.ru/8.3/config/objects");
		ЗаписьXML.ЗаписатьАтрибут("version", "1.0");
		
		Если СтруктураСпискаОбъектов.Свойство("Конфигурация") Тогда
			Лог.Отладка(СтрШаблон("Начинаю запись объекта: %1 ", СтруктураСпискаОбъектов.Конфигурация.ПолноеИмя));
			ЗаписьXML.ЗаписатьНачалоЭлемента("Configuration");
			ЗаписьXML.ЗаписатьАтрибут("includeChildObjects", Формат(СтруктураСпискаОбъектов.Конфигурация.ВключатьПодчиненные, "БЛ=false; БИ=true"));
			ЗаписьXML.ЗаписатьКонецЭлемента();
		КонецЕсли;

		Для Каждого СтрокаТаблицы Из СтруктураСпискаОбъектов.ОбъектыКонфигурации Цикл
			
			Лог.Отладка(СтрШаблон("Начинаю запись объекта: %1 ", СтрокаТаблицы.ПолноеИмя));
			
			ЗаписьXML.ЗаписатьНачалоЭлемента("Object");
			ЗаписьXML.ЗаписатьАтрибут("fullName", СтрокаТаблицы.ПолноеИмя);
			ЗаписьXML.ЗаписатьАтрибут("includeChildObjects", Формат(СтрокаТаблицы.ВключатьПодчиненные, "БЛ=false; БИ=true"));
			Если ТипЗнч(СтрокаТаблицы.Подсистема) = Тип("Структура") Тогда
				ДанныеПодсистемы = СтрокаТаблицы.Подсистема;
				ЗаписьXML.ЗаписатьНачалоЭлемента("Subsystem");
				ЗаписьXML.ЗаписатьАтрибут("includeObjectsFromSubordinateSubsystems", Формат((ДанныеПодсистемы.ВключитьВсеПодчиненныОбъекты),"БЛ=false; БИ=true"));
				Если ДанныеПодсистемы.Свойство("ТипКонфигурации") Тогда
					ЗаписьXML.ЗаписатьАтрибут("configuration", ДанныеПодсистемы.ТипКонфигурации);
				КонецЕсли;
				ЗаписьXML.ЗаписатьКонецЭлемента();
			КонецЕсли;

			ЗаписьXML.ЗаписатьКонецЭлемента();
		КонецЦикла;
		
		ЗаписьXML.ЗаписатьКонецЭлемента();
		ЗаписьXML.Закрыть();
		
	Исключение
			
		ИнформацияОбОшибке = ИнформацияОбОшибке();
		ОписаниеОшибки = ПодробноеПредставлениеОшибки(ИнформацияОбОшибке);
		
		ТекстОшибки = СтрШаблон(НСтр("ru='Не удалось записать файл XML со списком  объектов ""%1"" по причине:
			|%2'"), ПутьКФайлуОбъектов, ОписаниеОшибки);

		ВызватьИсключение ТекстОшибки;

	КонецПопытки;
	
КонецПроцедуры

Процедура СформироватьСписокОбъектов(Знач МассивПутейКФайламКонфигруации, КаталогВыгрузкиРезультат) Экспорт
		
	Для Каждого ЭлементМассива Из МассивПутейКФайламКонфигруации Цикл
		
		Файл = Новый Файл(ЭлементМассива);

		Если Файл.ЭтоКаталог() Тогда
			Продолжить;
		КонецЕсли;
		
		Если СтрНайти(Файл.ПолноеИмя, "ConfigDumpInfo.xml") > 0 Тогда
			Продолжить;
		КонецЕсли;

		ПолноеИмя = ПолучитьПутьОбъектаИзФайлаВыгрузкиXML(Файл.ПолноеИмя, , ,КаталогВыгрузкиРезультат);
		
		Если ПолноеИмя = "Конфигурация" Тогда
			ДобавитьОписаниеКонфигурации(ПолноеИмя, Истина,  Файл.ПолноеИмя)
		Иначе
			ДобавитьОбъектКонфигурации(ПолноеИмя, Истина,  Файл.ПолноеИмя)
		КонецЕсли;
	КонецЦикла;

	ТаблицаОбъектов.Свернуть("ПолноеИмя, ВключатьПодчиненные, ПолноеИмяВоВторойКонфигурации, Подсистема");

КонецПроцедуры

Процедура Инициировать()
	Лог = Логирование.ПолучитьЛог("oscript.lib.v8storage");
    ИнициироватьТаблицуОбъектов();
	СтруктураСпискаОбъектов = Новый Структура("ОбъектыКонфигурации", ТаблицаОбъектов);
	
КонецПроцедуры

Функция ПолучитьПутьОбъектаИзФайлаВыгрузкиXML(Знач ПолноеИмяФайлаВыгрузкиXML, Разделитель = ".", КолонкаИмени = "Имя", КаталогВыгрузкиРезультат = "")
	
	КешСоотвествияНазванийВидовОбъектов = Новый СоответствияНазванийВидовОбъектов();
	ПолноеИмяФайлаВыгрузкиXML = СтрЗаменить(ПолноеИмяФайлаВыгрузкиXML, "\", "/");
	Лог.Отладка(СтрШаблон("Обрабатываю файл: %1", ПолноеИмяФайлаВыгрузкиXML));
	// Получим имя файла без расширения.
	ИмяОбъекта = ПолноеИмяФайлаВыгрузкиXML;
	// Удаляем каталог выгрузки из пути объекта.
	ИмяОбъекта = СтрЗаменить(ИмяОбъекта, КаталогВыгрузкиРезультат, "");
	// Очищаем каталог "Ext" из пути объекта
	Если СтрНачинаетсяС(ИмяОбъекта, "Ext/") Тогда
		// Для файлов конфигурации, например "Configuration.xml", каталог "Ext" лежит в корне каталога выгрузки,
		// удалим его из начала пути, взяв оставшуюся часть по длине строки "Ext\".
		ИмяОбъекта = Сред(ИмяОбъекта, СтрДлина("Ext/") + 1);
	Иначе
		// Для файлов всех остальных объектов очистим каталог "Ext" заменой на "\".
		ИмяОбъекта = СтрЗаменить(ИмяОбъекта, "/Ext/", "/");
	КонецЕсли;
	ИмяОбъекта = СтрЗаменить(ИмяОбъекта, "/", Разделитель);
	ИмяОбъекта = ПолучитьИмяФайлаБезРасширения(ИмяОбъекта);
	
	МассивПутиАнгл = СтрРазделить(ИмяОбъекта, Разделитель, Ложь);
	КоличествоЭлементовПутиАнгл = МассивПутиАнгл.Количество();
	
	// Для файлов конфигурации, лежащих в самом каталоге выгрузки, задаем имя объекта как "Конфигурация" (или "Configuration").
	Если КоличествоЭлементовПутиАнгл < 2 Тогда
		Возврат КешСоотвествияНазванийВидовОбъектов.ПолучитьСоответствиеНазванияВидаОбъекта("Конфигурация", "Имя", КолонкаИмени);
	КонецЕсли;
	
	ПутьФактический = "";
	
	// Для общих форм всегда берем 2 элемента пути, т.к. в пути к модулю будет 4 элемента пути, и объект определяется неправильно.
	Если СтрСравнить(МассивПутиАнгл[0], "CommonForms") = 0 Тогда
		КоличествоЭлементов = 2;
	Иначе
		КоличествоЭлементов = ?(КоличествоЭлементовПутиАнгл < 4, 2, 4);
	КонецЕсли;
	
	МассивПути = Новый Массив;
	Для Счетчик = 1 По КоличествоЭлементов Цикл
		
		ЭлементПути = МассивПутиАнгл[Счетчик - 1];
		// Если элемент пути стоит на нечетном месте (нумерация с 1) в имени файла,
		// то ищем его эквивалент на русском языке в единственном числе.
		Если Счетчик % 2 = 1 Тогда
			ЭлементПути = КешСоотвествияНазванийВидовОбъектов.ПолучитьСоответствиеНазванияВидаОбъекта(ЭлементПути, "ИмяАнглМнФормы", КолонкаИмени);
		КонецЕсли;
		
		// Четные элементы пути оставляем как есть - это наименования объектов метаданных.
		МассивПути.Добавить(ЭлементПути);
		
	КонецЦикла;
	
	ПутьФактический = СтрСоединить(МассивПути, Разделитель);
	
	Возврат ПутьФактический;
	
КонецФункции

Функция ПолучитьКлассОбъекта(ПутьОбъекта, Разделитель = ".")
	
	МассивПути = СтрРазделить(ПутьОбъекта, Разделитель, Ложь);
	КоличествоЭлементовПути = МассивПути.Количество();
	
	Если КоличествоЭлементовПути = 0 Тогда
		Возврат "";
	ИначеЕсли КоличествоЭлементовПути <= 2 Тогда
		НомерЭлемента = 0;
	Иначе
		НомерЭлемента = 2;
	КонецЕсли;
	
	Возврат МассивПути[НомерЭлемента];
	
КонецФункции

Процедура ЗаменитьПутиФайловФормВТаблицеИзмененныхФайлов(ТаблицаФайлов, КаталогВыгрузкиРезультат)
	
	// Для форм заменяем путь к измененному файлу путем к файлу XML формы как к объекту метаданных,
	// т.к. при указании, например, файла с модулем формы будет ошибка платформы при загрузке.
	// Модуль формы будет загружен автоматически при указании файла XML формы.
	Для Каждого СтрокаФайла Из ТаблицаФайлов Цикл
		
		КлассОбъекта = ПолучитьКлассОбъекта(СтрокаФайла.Объект);
		Если (СтрСравнить(КлассОбъекта, "Форма") <> 0)
		   И (СтрСравнить(КлассОбъекта, "ОбщаяФорма") <> 0) Тогда
			Продолжить;
		КонецЕсли;
		
		ПутьОбъектаАнгл = ПолучитьПутьОбъектаИзФайлаВыгрузкиXML(СтрокаФайла.ПолноеИмяФайла,, "ИмяАнглМнФормы");
		ПутьОбъектаАнгл = СтрЗаменить(ПутьОбъектаАнгл, ".", "\");
		
		ПолноеИмяФайлаФормы = КаталогВыгрузкиРезультат + ПутьОбъектаАнгл + ".xml";
		// Если апк_ФайлСуществует(ПолноеИмяФайлаФормы) Тогда
		// 	СтрокаФайла.ПолноеИмяФайла = ПолноеИмяФайлаФормы;
		// КонецЕсли;
		
	КонецЦикла;
	
КонецПроцедуры

Функция ПолучитьИмяФайлаБезРасширения(ПутьКФайлу)
	
	Файл = Новый Файл(ПутьКФайлу);
	
	Возврат Файл.ИмяБезРасширения;
	
КонецФункции

Инициировать();