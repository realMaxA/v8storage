# language: ru

Функционал: Работа с хранилищем конфигурации
    Как разработчик
    Я хочу иметь возможность работать с хранилищем конфигурации 1С без использования сторонних библиотек
    Чтобы мочь автоматизировать больше рутинных действий на OneScript

Контекст:
    Допустим Я создаю новый объект МенеджерХранилищаКонфигурации
    И Я создаю временный каталог и сохраняю его в контекст
    И Я сохраняю значение временного каталога в переменной "ВременнаяБаза"
    И Я создаю временную базу в каталоге из переменной "ВременнаяБаза"
    И я устанавливаю контекст выполнения конфигуратора
    И Я устанавливаю параметры авторитизации пользователя "Администратор" и пароль ""
    
Сценарий: Создание файлового хранилища конфигурации
    Допустим Я создаю временный каталог и сохраняю его в контекст
    И Я сохраняю значение временного каталога в переменной "КаталогХранилищаКонфигурации"
    И Я устанавливаю каталог хранилища из переменной "КаталогХранилищаКонфигурации"
    И Я загружаю файл конфигурации "./tests/fixtures/1Cv8.cf" в базу данных
    Когда Я создаю файловое хранилище с параметром подключения базы к хранилищу "Истина" 
    Тогда Вывод лога содержит "Создание хранилища конфигурации успешно завершено"
    И Я выполняю отключение от хранилища конфигурации

Сценарий: Подключение базы к хранилишю конфигурации  
    Допустим Я создаю временный каталог и сохраняю его в контекст
    И Я копирую тестовое хранилище во временный каталог
    И Я сохраняю значение временного каталога в переменной "КаталогХранилищаКонфигурации"
    И Я устанавливаю каталог хранилища из переменной "КаталогХранилищаКонфигурации"
    Когда Я устанавливаю параметры авторитизации пользователя "Администратор" и пароль ""
    И Я подключаю базу к хранилищу с параметром замены конфигурации "Истина"
    Тогда Вывод лога содержит "Подключение информационной базы к хранилищу успешно завершено"

Сценарий: Подключение базы к хранилишю конфигурации без замены конфигурации
    Допустим Я создаю временный каталог и сохраняю его в контекст
    И Я копирую тестовое хранилище во временный каталог
    И Я сохраняю значение временного каталога в переменной "КаталогХранилищаКонфигурации"
    И Я устанавливаю каталог хранилища из переменной "КаталогХранилищаКонфигурации"
    Когда Я устанавливаю параметры авторитизации пользователя "Администратор" и пароль ""
    И Я подключаю базу к хранилищу с параметром замены конфигурации "Ложь"
    Тогда Вывод лога содержит "Подключение информационной базы к хранилищу успешно завершено"

