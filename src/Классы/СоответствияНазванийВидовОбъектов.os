Перем СоответствияНазванийВидовОбъектов;

Функция СоответствияНазванийВидовОбъектовИнициализировать()
	
	Если ТипЗнч(СоответствияНазванийВидовОбъектов) = Тип("ТаблицаЗначений") Тогда
		Возврат СоответствияНазванийВидовОбъектов;
	КонецЕсли;
	
	СоответствияНазванийВидовОбъектов = Новый ТаблицаЗначений;
	СоответствияНазванийВидовОбъектов.Колонки.Добавить("Группа");
	СоответствияНазванийВидовОбъектов.Колонки.Добавить("ИмяАнгл");
	СоответствияНазванийВидовОбъектов.Колонки.Добавить("ИмяАнглМнФормы");
	СоответствияНазванийВидовОбъектов.Колонки.Добавить("Имя");
	СоответствияНазванийВидовОбъектов.Колонки.Добавить("ИмяМнФормы");
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Constant";
	СтрокаСоответствия.ИмяАнглМнФормы = "Constants";
	СтрокаСоответствия.Имя = "Константа";
	СтрокаСоответствия.ИмяМнФормы = "Константы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Catalog";
	СтрокаСоответствия.ИмяАнглМнФормы = "Catalogs";
	СтрокаСоответствия.Имя = "Справочник";
	СтрокаСоответствия.ИмяМнФормы = "Справочники";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Document";
	СтрокаСоответствия.ИмяАнглМнФормы = "Documents";
	СтрокаСоответствия.Имя = "Документ";
	СтрокаСоответствия.ИмяМнФормы = "Документы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "DocumentJournal";
	СтрокаСоответствия.ИмяАнглМнФормы = "DocumentJournals";
	СтрокаСоответствия.Имя = "ЖурналДокументов";
	СтрокаСоответствия.ИмяМнФормы = "ЖурналыДокументов";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Enum";
	СтрокаСоответствия.ИмяАнглМнФормы = "Enums";
	СтрокаСоответствия.Имя = "Перечисление";
	СтрокаСоответствия.ИмяМнФормы = "Перечисления";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Report";
	СтрокаСоответствия.ИмяАнглМнФормы = "Reports";
	СтрокаСоответствия.Имя = "Отчет";
	СтрокаСоответствия.ИмяМнФормы = "Отчеты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "DataProcessor";
	СтрокаСоответствия.ИмяАнглМнФормы = "DataProcessors";
	СтрокаСоответствия.Имя = "Обработка";
	СтрокаСоответствия.ИмяМнФормы = "Обработки";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ChartOfCharacteristicTypes";
	СтрокаСоответствия.ИмяАнглМнФормы = "ChartsOfCharacteristicTypes";
	СтрокаСоответствия.Имя = "ПланВидовХарактеристик";
	СтрокаСоответствия.ИмяМнФормы = "ПланыВидовХарактеристик";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ChartOfAccounts";
	СтрокаСоответствия.ИмяАнглМнФормы = "ChartsOfAccounts";
	СтрокаСоответствия.Имя = "ПланСчетов";
	СтрокаСоответствия.ИмяМнФормы = "ПланыСчетов";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ChartOfCalculationTypes";
	СтрокаСоответствия.ИмяАнглМнФормы = "ChartsOfCalculationTypes";
	СтрокаСоответствия.Имя = "ПланВидовРасчета";
	СтрокаСоответствия.ИмяМнФормы = "ПланыВидовРасчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "InformationRegister";
	СтрокаСоответствия.ИмяАнглМнФормы = "InformationRegisters";
	СтрокаСоответствия.Имя = "РегистрСведений";
	СтрокаСоответствия.ИмяМнФормы = "РегистрыСведений";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "AccumulationRegister";
	СтрокаСоответствия.ИмяАнглМнФормы = "AccumulationRegisters";
	СтрокаСоответствия.Имя = "РегистрНакопления";
	СтрокаСоответствия.ИмяМнФормы = "РегистрыНакопления";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "AccountingRegister";
	СтрокаСоответствия.ИмяАнглМнФормы = "AccountingRegisters";
	СтрокаСоответствия.Имя = "РегистрБухгалтерии";
	СтрокаСоответствия.ИмяМнФормы = "РегистрыБухгалтерии";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "CalculationRegister";
	СтрокаСоответствия.ИмяАнглМнФормы = "CalculationRegisters";
	СтрокаСоответствия.Имя = "РегистрРасчета";
	СтрокаСоответствия.ИмяМнФормы = "РегистрыРасчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "BusinessProcess";
	СтрокаСоответствия.ИмяАнглМнФормы = "BusinessProcesses";
	СтрокаСоответствия.Имя = "БизнесПроцесс";
	СтрокаСоответствия.ИмяМнФормы = "БизнесПроцессы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Task";
	СтрокаСоответствия.ИмяАнглМнФормы = "Tasks";
	СтрокаСоответствия.Имя = "Задача";
	СтрокаСоответствия.ИмяМнФормы = "Задачи";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Form";
	СтрокаСоответствия.ИмяАнглМнФормы = "Forms";
	СтрокаСоответствия.Имя = "Форма";
	СтрокаСоответствия.ИмяМнФормы = "Формы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Attribute";
	СтрокаСоответствия.ИмяАнглМнФормы = "Attributes";
	СтрокаСоответствия.Имя = "Реквизит";
	СтрокаСоответствия.ИмяМнФормы = "Реквизиты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "ExchangePlan";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExchangePlans";
	СтрокаСоответствия.Имя = "ПланОбмена";
	СтрокаСоответствия.ИмяМнФормы = "ПланыОбмена";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Characteristic";
	СтрокаСоответствия.ИмяАнглМнФормы = "Characteristics";
	СтрокаСоответствия.Имя = "Характеристика";
	СтрокаСоответствия.ИмяМнФормы = "Характеристики";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Sequence";
	СтрокаСоответствия.ИмяАнглМнФормы = "Sequences";
	СтрокаСоответствия.Имя = "Последовательность";
	СтрокаСоответствия.ИмяМнФормы = "Последовательности";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Recalculation";
	СтрокаСоответствия.ИмяАнглМнФормы = "Recalculations";
	СтрокаСоответствия.Имя = "Перерасчет";
	СтрокаСоответствия.ИмяМнФормы = "Перерасчеты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Dimension";
	СтрокаСоответствия.ИмяАнглМнФормы = "Dimensions";
	СтрокаСоответствия.Имя = "Измерение";
	СтрокаСоответствия.ИмяМнФормы = "Измерения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Resource";
	СтрокаСоответствия.ИмяАнглМнФормы = "Resources";
	СтрокаСоответствия.Имя = "Ресурс";
	СтрокаСоответствия.ИмяМнФормы = "Ресурсы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "TabularSection";
	СтрокаСоответствия.ИмяАнглМнФормы = "TabularSections";
	СтрокаСоответствия.Имя = "ТабличнаяЧасть";
	СтрокаСоответствия.ИмяМнФормы = "ТабличныеЧасти";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Attribute";
	СтрокаСоответствия.ИмяАнглМнФормы = "Attributes";
	СтрокаСоответствия.Имя = "Реквизит";
	СтрокаСоответствия.ИмяМнФормы = "РеквизитыТабличнойЧасти";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Command";
	СтрокаСоответствия.ИмяАнглМнФормы = "Commands";
	СтрокаСоответствия.Имя = "Команда";
	СтрокаСоответствия.ИмяМнФормы = "Команды";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "Role";
	СтрокаСоответствия.ИмяАнглМнФормы = "Roles";
	СтрокаСоответствия.Имя = "Роль";
	СтрокаСоответствия.ИмяМнФормы = "Роли";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "SessionParameter";
	СтрокаСоответствия.ИмяАнглМнФормы = "SessionParameters";
	СтрокаСоответствия.Имя = "ПараметрСеанса";
	СтрокаСоответствия.ИмяМнФормы = "ПараметрыСеанса";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonModules";
	СтрокаСоответствия.Имя = "ОбщийМодуль";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеМодули";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "FilterCriterion";
	СтрокаСоответствия.ИмяАнглМнФормы = "FilterCriteria";
	СтрокаСоответствия.Имя = "КритерийОтбора";
	СтрокаСоответствия.ИмяМнФормы = "КритерииОтбора";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "EventSubscription";
	СтрокаСоответствия.ИмяАнглМнФормы = "EventSubscriptions";
	СтрокаСоответствия.Имя = "ПодпискаНаСобытие";
	СтрокаСоответствия.ИмяМнФормы = "ПодпискиНаСобытия";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "ScheduledJob";
	СтрокаСоответствия.ИмяАнглМнФормы = "ScheduledJobs";
	СтрокаСоответствия.Имя = "РегламентноеЗадание";
	СтрокаСоответствия.ИмяМнФормы = "РегламентныеЗадания";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "SettingsStorage";
	СтрокаСоответствия.ИмяАнглМнФормы = "SettingsStorages";
	СтрокаСоответствия.Имя = "ХранилищеНастроек";
	СтрокаСоответствия.ИмяМнФормы = "ХранилищаНастроек";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonForm";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonForms";
	СтрокаСоответствия.Имя = "ОбщаяФорма";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеФормы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonCommand";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonCommands";
	СтрокаСоответствия.Имя = "ОбщаяКоманда";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеКоманды";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommandGroup";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommandGroups";
	СтрокаСоответствия.Имя = "ГруппаКоманд";
	СтрокаСоответствия.ИмяМнФормы = "ГруппыКоманд";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "Interface";
	СтрокаСоответствия.ИмяАнглМнФормы = "Interfaces";
	СтрокаСоответствия.Имя = "Интерфейс";
	СтрокаСоответствия.ИмяМнФормы = "Интерфейсы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonTemplate";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonTemplates";
	СтрокаСоответствия.Имя = "ОбщийМакет";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеМакеты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonPicture";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonPictures";
	СтрокаСоответствия.Имя = "ОбщаяКартинка";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеКартинки";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "XDTOPackage";
	СтрокаСоответствия.ИмяАнглМнФормы = "XDTOPackages";
	СтрокаСоответствия.Имя = "ПакетXDTO";
	СтрокаСоответствия.ИмяМнФормы = "ПакетыXDTO";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "WebService";
	СтрокаСоответствия.ИмяАнглМнФормы = "WebServices";
	СтрокаСоответствия.Имя = "WebСервис";
	СтрокаСоответствия.ИмяМнФормы = "WebСервисы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "Style";
	СтрокаСоответствия.ИмяАнглМнФормы = "Styles";
	СтрокаСоответствия.Имя = "Стиль";
	СтрокаСоответствия.ИмяМнФормы = "Стили";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "StyleItem";
	СтрокаСоответствия.ИмяАнглМнФормы = "StyleItems";
	СтрокаСоответствия.Имя = "ЭлементСтиля";
	СтрокаСоответствия.ИмяМнФормы = "ЭлементыСтиля";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "DocumentNumerator";
	СтрокаСоответствия.ИмяАнглМнФормы = "DocumentNumerators";
	СтрокаСоответствия.Имя = "НумераторДокументов";
	СтрокаСоответствия.ИмяМнФормы = "НумераторыДокументов";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "AddressingAttribute";
	СтрокаСоответствия.ИмяАнглМнФормы = "AddressingAttributes";
	СтрокаСоответствия.Имя = "РеквизитАдресации";
	СтрокаСоответствия.ИмяМнФормы = "РеквизитыАдресации";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "AccountingFlag";
	СтрокаСоответствия.ИмяАнглМнФормы = "AccountingFlags";
	СтрокаСоответствия.Имя = "ПризнакУчета";
	СтрокаСоответствия.ИмяМнФормы = "ПризнакиУчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ExtDimensionAccountingFlag";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExtDimensionAccountingFlags";
	СтрокаСоответствия.Имя = "ПризнакУчетаСубконто";
	СтрокаСоответствия.ИмяМнФормы = "ПризнакиУчетаСубконто";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "Subsystem";
	СтрокаСоответствия.ИмяАнглМнФормы = "Subsystems";
	СтрокаСоответствия.Имя = "Подсистема";
	СтрокаСоответствия.ИмяМнФормы = "Подсистемы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "WSReference";
	СтрокаСоответствия.ИмяАнглМнФормы = "WSReferences";
	СтрокаСоответствия.Имя = "WSСсылка";
	СтрокаСоответствия.ИмяМнФормы = "WSСсылки";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "FunctionalOptionsParameter";
	СтрокаСоответствия.ИмяАнглМнФормы = "FunctionalOptionsParameters";
	СтрокаСоответствия.Имя = "ПараметрФункциональныхОпций";
	СтрокаСоответствия.ИмяМнФормы = "ПараметрыФункциональныхОпций";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "FunctionalOption";
	СтрокаСоответствия.ИмяАнглМнФормы = "FunctionalOptions";
	СтрокаСоответствия.Имя = "ФункциональнаяОпция";
	СтрокаСоответствия.ИмяМнФормы = "ФункциональныеОпции";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "CommonAttribute";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommonAttributes";
	СтрокаСоответствия.Имя = "ОбщийРеквизит";
	СтрокаСоответствия.ИмяМнФормы = "ОбщиеРеквизиты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Template";
	СтрокаСоответствия.ИмяАнглМнФормы = "Templates";
	СтрокаСоответствия.Имя = "Макет";
	СтрокаСоответствия.ИмяМнФормы = "Макеты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Predefined";
	СтрокаСоответствия.ИмяАнглМнФормы = "Predefined";
	СтрокаСоответствия.Имя = "Предопределенный";
	СтрокаСоответствия.ИмяМнФормы = "Предопределенные";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Configuration";
	СтрокаСоответствия.ИмяАнглМнФормы = "Configuration";
	СтрокаСоответствия.Имя = "Конфигурация";
	СтрокаСоответствия.ИмяМнФормы = "Конфигурация";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "Language";
	СтрокаСоответствия.ИмяАнглМнФормы = "Languages";
	СтрокаСоответствия.Имя = "Язык";
	СтрокаСоответствия.ИмяМнФормы = "Языки";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "EnumValue";
	СтрокаСоответствия.ИмяАнглМнФормы = "EnumValues";
	СтрокаСоответствия.Имя = "ЗначениеПеречисления";
	СтрокаСоответствия.ИмяМнФормы = "ЗначенияПеречисления";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Column";
	СтрокаСоответствия.ИмяАнглМнФормы = "Columns";
	СтрокаСоответствия.Имя = "Графа";
	СтрокаСоответствия.ИмяМнФормы = "Графы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ExternalDataSource";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExternalDataSources";
	СтрокаСоответствия.Имя = "ВнешнийИсточникДанных";
	СтрокаСоответствия.ИмяМнФормы = "ВнешниеИсточникиДанных";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Table";
	СтрокаСоответствия.ИмяАнглМнФормы = "Tables";
	СтрокаСоответствия.Имя = "Таблица";
	СтрокаСоответствия.ИмяМнФормы = "Таблицы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Field";
	СтрокаСоответствия.ИмяАнглМнФормы = "Fields";
	СтрокаСоответствия.Имя = "Поле";
	СтрокаСоответствия.ИмяМнФормы = "Поля";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Operation";
	СтрокаСоответствия.ИмяАнглМнФормы = "Operations";
	СтрокаСоответствия.Имя = "Операция";
	СтрокаСоответствия.ИмяМнФормы = "Операции";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Aggregate";
	СтрокаСоответствия.ИмяАнглМнФормы = "Aggregates";
	СтрокаСоответствия.Имя = "Агрегат";
	СтрокаСоответствия.ИмяМнФормы = "Агрегаты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "Общие";
	СтрокаСоответствия.ИмяАнгл = "DefinedType";
	СтрокаСоответствия.ИмяАнглМнФормы = "DefinedTypes";
	СтрокаСоответствия.Имя = "ОпределяемыйТип";
	СтрокаСоответствия.ИмяМнФормы = "ОпределяемыеТипы";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "StandardTabularSection";
	СтрокаСоответствия.ИмяАнглМнФормы = "StandardTabularSections";
	СтрокаСоответствия.Имя = "СтандартнаяТабличнаяЧасть";
	СтрокаСоответствия.ИмяМнФормы = "СтандартныеТабличныеЧасти";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "StandardAttribute";
	СтрокаСоответствия.ИмяАнглМнФормы = "StandardAttributes";
	СтрокаСоответствия.Имя = "СтандартныйРеквизит";
	СтрокаСоответствия.ИмяМнФормы = "СтандартныеРеквизиты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Ref";
	СтрокаСоответствия.ИмяАнглМнФормы = "Ref";
	СтрокаСоответствия.Имя = "Ссылка";
	СтрокаСоответствия.ИмяМнФормы = "Ссылка";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "DeletionMark";
	СтрокаСоответствия.ИмяАнглМнФормы = "DeletionMark";
	СтрокаСоответствия.Имя = "ПометкаУдаления";
	СтрокаСоответствия.ИмяМнФормы = "ПометкаУдаления";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Predefined";
	СтрокаСоответствия.ИмяАнглМнФормы = "Predefined";
	СтрокаСоответствия.Имя = "Предопределенный";
	СтрокаСоответствия.ИмяМнФормы = "Предопределенный";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Date";
	СтрокаСоответствия.ИмяАнглМнФормы = "Date";
	СтрокаСоответствия.Имя = "Дата";
	СтрокаСоответствия.ИмяМнФормы = "Дата";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Number";
	СтрокаСоответствия.ИмяАнглМнФормы = "Number";
	СтрокаСоответствия.Имя = "Номер";
	СтрокаСоответствия.ИмяМнФормы = "Номер";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Posted";
	СтрокаСоответствия.ИмяАнглМнФормы = "Posted";
	СтрокаСоответствия.Имя = "Проведен";
	СтрокаСоответствия.ИмяМнФормы = "Проведен";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "LineNumber";
	СтрокаСоответствия.ИмяАнглМнФормы = "LineNumber";
	СтрокаСоответствия.Имя = "НомерСтроки";
	СтрокаСоответствия.ИмяМнФормы = "НомерСтроки";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Code";
	СтрокаСоответствия.ИмяАнглМнФормы = "Code";
	СтрокаСоответствия.Имя = "Код";
	СтрокаСоответствия.ИмяМнФормы = "Код";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Description";
	СтрокаСоответствия.ИмяАнглМнФормы = "Description";
	СтрокаСоответствия.Имя = "Наименование";
	СтрокаСоответствия.ИмяМнФормы = "Наименование";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Parent";
	СтрокаСоответствия.ИмяАнглМнФормы = "Parent";
	СтрокаСоответствия.Имя = "Родитель";
	СтрокаСоответствия.ИмяМнФормы = "Родитель";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Owner";
	СтрокаСоответствия.ИмяАнглМнФормы = "Owner";
	СтрокаСоответствия.Имя = "Владелец";
	СтрокаСоответствия.ИмяМнФормы = "Владелец";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "IsFolder";
	СтрокаСоответствия.ИмяАнглМнФормы = "IsFolder";
	СтрокаСоответствия.Имя = "ЭтоГруппа";
	СтрокаСоответствия.ИмяМнФормы = "ЭтоГруппа";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Order";
	СтрокаСоответствия.ИмяАнглМнФормы = "Order";
	СтрокаСоответствия.Имя = "Порядок";
	СтрокаСоответствия.ИмяМнФормы = "Порядок";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "OffBalance";
	СтрокаСоответствия.ИмяАнглМнФормы = "OffBalance";
	СтрокаСоответствия.Имя = "Забалансовый";
	СтрокаСоответствия.ИмяМнФормы = "Забалансовый";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Executed";
	СтрокаСоответствия.ИмяАнглМнФормы = "Executed";
	СтрокаСоответствия.Имя = "Выполнена";
	СтрокаСоответствия.ИмяМнФормы = "Выполнена";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "RoutePoint";
	СтрокаСоответствия.ИмяАнглМнФормы = "RoutePoint";
	СтрокаСоответствия.Имя = "ТочкаМаршрута";
	СтрокаСоответствия.ИмяМнФормы = "ТочкаМаршрута";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "BusinessProcess";
	СтрокаСоответствия.ИмяАнглМнФормы = "BusinessProcess";
	СтрокаСоответствия.Имя = "БизнесПроцесс";
	СтрокаСоответствия.ИмяМнФормы = "БизнесПроцесс";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Recorder";
	СтрокаСоответствия.ИмяАнглМнФормы = "Recorder";
	СтрокаСоответствия.Имя = "Регистратор";
	СтрокаСоответствия.ИмяМнФормы = "Регистратор";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "CalculationType";
	СтрокаСоответствия.ИмяАнглМнФормы = "CalculationType";
	СтрокаСоответствия.Имя = "ВидРасчета";
	СтрокаСоответствия.ИмяМнФормы = "ВидРасчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ActionPeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "ActionPeriod";
	СтрокаСоответствия.Имя = "ПериодДействия";
	СтрокаСоответствия.ИмяМнФормы = "ПериодДействия";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "BegOfActionPeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "BegOfActionPeriod";
	СтрокаСоответствия.Имя = "ПериодДействияНачало";
	СтрокаСоответствия.ИмяМнФормы = "ПериодДействияНачало";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "EndOfActionPeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "EndOfActionPeriod";
	СтрокаСоответствия.Имя = "ПериодДействияКонец";
	СтрокаСоответствия.ИмяМнФормы = "ПериодДействияКонец";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "BegOfBasePeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "BegOfBasePeriod";
	СтрокаСоответствия.Имя = "БазовыйПериодНачало";
	СтрокаСоответствия.ИмяМнФормы = "БазовыйПериодНачало";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "EndOfBasePeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "EndOfBasePeriod";
	СтрокаСоответствия.Имя = "БазовыйПериодКонец";
	СтрокаСоответствия.ИмяМнФормы = "БазовыйПериодКонец";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Active";
	СтрокаСоответствия.ИмяАнглМнФормы = "Active";
	СтрокаСоответствия.Имя = "Активность";
	СтрокаСоответствия.ИмяМнФормы = "Активность";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ReversingEntry";
	СтрокаСоответствия.ИмяАнглМнФормы = "ReversingEntry";
	СтрокаСоответствия.Имя = "Сторно";
	СтрокаСоответствия.ИмяМнФормы = "Сторно";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "RegistrationPeriod";
	СтрокаСоответствия.ИмяАнглМнФормы = "RegistrationPeriod";
	СтрокаСоответствия.Имя = "ПериодРегистрации";
	СтрокаСоответствия.ИмяМнФормы = "ПериодРегистрации";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "SentNo";
	СтрокаСоответствия.ИмяАнглМнФормы = "SentNo";
	СтрокаСоответствия.Имя = "НомерОтправленного";
	СтрокаСоответствия.ИмяМнФормы = "НомерОтправленного";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ReceivedNo";
	СтрокаСоответствия.ИмяАнглМнФормы = "ReceivedNo";
	СтрокаСоответствия.Имя = "НомерПринятого";
	СтрокаСоответствия.ИмяМнФормы = "НомерПринятого";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Account";
	СтрокаСоответствия.ИмяАнглМнФормы = "Account";
	СтрокаСоответствия.Имя = "Счет";
	СтрокаСоответствия.ИмяМнФормы = "Счет";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "RecordType";
	СтрокаСоответствия.ИмяАнглМнФормы = "RecordType";
	СтрокаСоответствия.Имя = "ВидДвижения";
	СтрокаСоответствия.ИмяМнФормы = "ВидДвижения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Period";
	СтрокаСоответствия.ИмяАнглМнФормы = "Period";
	СтрокаСоответствия.Имя = "Период";
	СтрокаСоответствия.ИмяМнФормы = "Период";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Started";
	СтрокаСоответствия.ИмяАнглМнФормы = "Started";
	СтрокаСоответствия.Имя = "Стартован";
	СтрокаСоответствия.ИмяМнФормы = "Стартован";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "HeadTask";
	СтрокаСоответствия.ИмяАнглМнФормы = "HeadTask";
	СтрокаСоответствия.Имя = "ВедущаяЗадача";
	СтрокаСоответствия.ИмяМнФормы = "ВедущаяЗадача";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Completed";
	СтрокаСоответствия.ИмяАнглМнФормы = "Completed";
	СтрокаСоответствия.Имя = "Завершен";
	СтрокаСоответствия.ИмяМнФормы = "Завершен";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ActionPeriodIsBasic";
	СтрокаСоответствия.ИмяАнглМнФормы = "ActionPeriodIsBasic";
	СтрокаСоответствия.Имя = "ПериодДействияБазовый";
	СтрокаСоответствия.ИмяМнФормы = "ПериодДействияБазовый";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ValueType";
	СтрокаСоответствия.ИмяАнглМнФормы = "ValueType";
	СтрокаСоответствия.Имя = "ТипЗначения";
	СтрокаСоответствия.ИмяМнФормы = "ТипЗначения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Type";
	СтрокаСоответствия.ИмяАнглМнФормы = "Type";
	СтрокаСоответствия.Имя = "Тип";
	СтрокаСоответствия.ИмяМнФормы = "Тип";// - ЖурналДокументов
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Type";
	СтрокаСоответствия.ИмяАнглМнФормы = "Type";
	СтрокаСоответствия.Имя = "Вид";
	СтрокаСоответствия.ИмяМнФормы = "Вид";// - ПланСчетов
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ExtDimensionTypes";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExtDimensionTypes";
	СтрокаСоответствия.Имя = "ВидыСубконто";
	СтрокаСоответствия.ИмяМнФормы = "ВидыСубконто";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "TurnoversOnly";
	СтрокаСоответствия.ИмяАнглМнФормы = "TurnoversOnly";
	СтрокаСоответствия.Имя = "ТолькоОбороты";
	СтрокаСоответствия.ИмяМнФормы = "ТолькоОбороты";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ExtDimensionType";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExtDimensionType";
	СтрокаСоответствия.Имя = "ВидСубконто";
	СтрокаСоответствия.ИмяМнФормы = "ВидСубконто";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "BaseCalculationTypes";
	СтрокаСоответствия.ИмяАнглМнФормы = "BaseCalculationTypes";
	СтрокаСоответствия.Имя = "БазовыеВидыРасчета";
	СтрокаСоответствия.ИмяМнФормы = "БазовыеВидыРасчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "DisplacingCalculationTypes";
	СтрокаСоответствия.Имя = "ВытесняющиеВидыРасчета";
	СтрокаСоответствия.ИмяМнФормы = "ВытесняющиеВидыРасчета";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "LeadingCalculationTypes";
	СтрокаСоответствия.ИмяАнглМнФормы = "LeadingCalculationTypes";
	СтрокаСоответствия.Имя = "ВедущиеВидыРасчета";
	СтрокаСоответствия.ИмяМнФормы = "ВедущиеВидыРасчета";
	
	// Модули
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Module";
	СтрокаСоответствия.ИмяАнглМнФормы = "Module";
	СтрокаСоответствия.Имя = "Модуль";
	СтрокаСоответствия.ИмяМнФормы = "Модуль";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "CommandModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "CommandModule";
	СтрокаСоответствия.Имя = "МодульКоманды";
	СтрокаСоответствия.ИмяМнФормы = "МодульКоманды";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ObjectModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ObjectModule";
	СтрокаСоответствия.Имя = "МодульОбъекта";
	СтрокаСоответствия.ИмяМнФормы = "МодульОбъекта";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ManagerModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ManagerModule";
	СтрокаСоответствия.Имя = "МодульМенеджера";
	СтрокаСоответствия.ИмяМнФормы = "МодульМенеджера";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "RecordSetModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "RecordSetModule";
	СтрокаСоответствия.Имя = "МодульНабораЗаписей";
	СтрокаСоответствия.ИмяМнФормы = "МодульНабораЗаписей";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ValueManagerModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ValueManagerModule";
	СтрокаСоответствия.Имя = "МодульМенеджераЗначения";
	СтрокаСоответствия.ИмяМнФормы = "МодульМенеджераЗначения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ApplicationModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ApplicationModule";
	СтрокаСоответствия.Имя = "МодульПриложения";
	СтрокаСоответствия.ИмяМнФормы = "МодульПриложения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ManagedApplicationModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ManagedApplicationModule";
	СтрокаСоответствия.Имя = "МодульУправляемогоПриложения";
	СтрокаСоответствия.ИмяМнФормы = "МодульУправляемогоПриложения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "SessionModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "SessionModule";
	СтрокаСоответствия.Имя = "МодульСеанса";
	СтрокаСоответствия.ИмяМнФормы = "МодульСеанса";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "ExternalConnectionModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "ExternalConnectionModule";
	СтрокаСоответствия.Имя = "МодульВнешнегоСоединения";
	СтрокаСоответствия.ИмяМнФормы = "МодульВнешнегоСоединения";
	
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "OrdinaryApplicationModule";
	СтрокаСоответствия.ИмяАнглМнФормы = "OrdinaryApplicationModule";
	СтрокаСоответствия.Имя = "МодульОбычногоПриложения";
	СтрокаСоответствия.ИмяМнФормы = "МодульОбычногоПриложения";
	
	// Права
	СтрокаСоответствия = СоответствияНазванийВидовОбъектов.Добавить();
	СтрокаСоответствия.Группа = "";
	СтрокаСоответствия.ИмяАнгл = "Rights";
	СтрокаСоответствия.ИмяАнглМнФормы = "Rights";
	СтрокаСоответствия.Имя = "Право";
	СтрокаСоответствия.ИмяМнФормы = "Права";
	
	СоответствияНазванийВидовОбъектов.Индексы.Добавить("ИмяАнгл");
	СоответствияНазванийВидовОбъектов.Индексы.Добавить("Имя");
	СоответствияНазванийВидовОбъектов.Индексы.Добавить("ИмяМнФормы");
	СоответствияНазванийВидовОбъектов.Индексы.Добавить("ИмяАнглМнФормы");
	
	Возврат СоответствияНазванийВидовОбъектов;
	
КонецФункции

Функция ПолучитьСоответствиеНазванияВидаОбъекта(ЗначениеПоиска, КолонкаПоиска = "ИмяАнгл", КолонкаИмени = "Имя", ЗначениеПоУмолчанию = Неопределено) Экспорт
	
	СтандартныйТип = СоответствияНазванийВидовОбъектов.Найти(ЗначениеПоиска, КолонкаПоиска);
	Возврат ?(СтандартныйТип = Неопределено,
		?(ЗначениеПоУмолчанию = Неопределено, ЗначениеПоиска, ЗначениеПоУмолчанию),
		СтандартныйТип[КолонкаИмени]);
	
КонецФункции

СоответствияНазванийВидовОбъектовИнициализировать();