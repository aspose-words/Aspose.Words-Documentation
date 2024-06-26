---
title: Особенности
second_title: Aspose.Words для Python via .NET
articleTitle: Поддерживаемые функции
linktitle: Поддерживаемые функции
description: "Aspose.Words для Python via .NET Он предоставляет пользователям широкий спектр функций от простого преобразования и изменения документов до создания структурированных и визуально привлекательных документов или автоматизации отчетности."
type: docs
weight: 30
url: /ru/python-net/features/
---

Aspose.Words предоставляет пользователям широкий спектр функций. Пользователи могут выполнять огромное количество задач, связанных с документами - от простого преобразования документов из одного поддерживаемого формата в другой и изменения этих документов в процессе преобразования до бизнес-задач, таких как создание структурированных и визуально привлекательных документов или автоматизация отчетности.

Современные форматы и стандарты документов сложны, и когда вам требуется конвертация документов или другие функции обработки документов в вашем проекте, единственным практическим решением часто является использование стороннего компонента, который реализует желаемую функциональность. Но использование стороннего компонента всегда сопряжено с определенным риском. Одним из уникальных рисков при обработке документов является вопрос о том, насколько полно и правильно библиотека реализует тот или иной формат документа или стандарт.

Aspose стремится обеспечить наиболее полное и точное внедрение форматов документов и стандартов. The Aspose.Words Команда демонстрирует свою приверженность взаимодействию, предоставляя подробные заметки о реализации поддерживаемых форматов документов на нескольких платформах.

Приведенные ниже таблицы суммируют и сопоставляют наличие Aspose.Words для Python via .NET функции и предоставлять ссылки на подробные описания функций.

## Поддерживаемые платформы

Платформы Aspose.Words для Python via .NET Можно использовать на Windows x64 или x86, macOS x86_x64 или arm64 и широкий диапазон Linux распределения с Python 3.5 или более поздней установки. Существуют дополнительные требования к цели Linux платформы macOS:
- библиотеки времени выполнения GCC-6 (или более поздние);
- Зависимости .NET Core Runtime. установка .NET Core Runtime само по себе является `NOT` необходимый
- Для Python 3.5-3.7: The `pymalloc` строить Python Это необходимо. The `--with-pymalloc` Python Опция сборки включена по умолчанию. Как правило, это `pymalloc` строить Python обозначается с `m` суффикс в имени файла.
- `libpython` делиться Python Библиотека. The `--enable-shared` Python опция сборки отключена по умолчанию, некоторые Python Распределения не содержат `libpython` Общая библиотека. Для некоторых платформ Linux `libpython` Общая библиотека может быть установлена с помощью менеджера пакетов, например: `sudo apt-get install libpython3.7`. Общий вопрос заключается в том, что `libpython` Библиотека установлена в другом месте, чем стандартная система расположения для общих библиотек. Проблема может быть решена с помощью Python создавать опции для установки альтернативных библиотечных путей при компиляции Pythonили фиксируется путем создания символической ссылки на `libpython` файл библиотеки в стандартном местоположении системы для общих библиотек. Как правило, это `libpython` Имя файла разделяемой библиотеки `libpythonX.Ym.so.1.0` для Python 3.5-3.7 или libpythonX.Y.so.1.0 для Python 3.8 или более поздней версии (например: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Если вам нужна поддержка большего количества платформ, ищите продукты "Брат-близнец". Aspose.Words для .NET или Aspose.Words для Java.

## Форматы файлов и конверсии

Многие клиенты по всему миру полагаются на подробные функции импорта и экспорта документов. Aspose.Words.

|  Особенность | Описание | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | Самый быстрый и полный формат DOC, который вы можете найти. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words Обеспечивает исчерпывающую поддержку OOXML, Flat OPC и Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Комплексная поддержка формата RTF для взаимодействия с различными приложениями. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Загрузите и сохраните HTML/XHTML для еще большей совместимости. Сохранить как MHTML также доступно. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words может загружать и сохранять документы в `OpenDocument` Текстовый (.odt) формат. | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Преобразуйте любой документ в PDF с высокой точностью. Поддерживается PDF/A. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Преобразовать любой документ в XPS с высокой точностью. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Легко извлекать текст, сохраняя в простом текстовом формате. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB является популярным форматом для электронных книг. Вы можете конвертировать любой документ из Aspose.Words Формат IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words для .NET Поддержка сохранения документа в формате PCL. | {{< emoticons/tick >}} |

## Чтение и печать

Aspose.Words Теперь обеспечивает высокую точность рендеринга страниц документов.

|  Особенность | Python via .NET |
|  :-  |  :-  |
| Раскладывайте документ на страницы с высокой точностью (точно так же, как и в других случаях). Microsoft Word® будет делать это) для всех форматов ниже. | {{< emoticons/tick >}} |
| Отправить отдельные страницы или полные документы в PDF или XPS. | {{< emoticons/tick >}} |
| Передача страниц документов на изображения BMP | {{< emoticons/tick >}} |
| Передача страниц документов на изображения (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Оформление отдельных форм из документа в растровые или векторные изображения. | {{< emoticons/tick >}} |
| Укажите разрешение изображения, качество, сжатие и другие варианты. | {{< emoticons/tick >}} |
| Передавать страницы или формы в .NET Графический объект с преобразованиями, до определенного размера. | {{< emoticons/tick >}} |
| Печать страниц документов с использованием .NET Печатная инфраструктура. | {{< emoticons/cross >}} |
| Обновление `TOC`, номера страниц и другие поля перед рендерингом или печатью. | {{< emoticons/tick >}} |

## Особенности содержания документов

Aspose.Words Предоставляет богатую объектную модель, которая состоит из более чем 100 общественных классов, которые позволяют программно генерировать, комбинировать, изменять, анализировать или иным образом изучать загруженные документы.

|  Особенность | Python via .NET |
|  :-  |  :-  |
| Доступ, создание и изменение абзацев и текста. | {{< emoticons/tick >}} |
| Доступ, создание и изменение изображений, текстовых ящиков и форм. | {{< emoticons/tick >}} |
| Доступ, создание и изменение таблиц, строк и ячеек. | {{< emoticons/tick >}} |
| Доступ, создание и изменение полей, форм полей, гиперссылок и закладок. | {{< emoticons/tick >}} |
| Доступ, создание и изменение разделов документов, заголовков и нижних колонок. | {{< emoticons/tick >}} |
| Доступ, создание и изменение сносок, сносок и комментариев. | {{< emoticons/tick >}} |
| Доступ, создание и изменение пользовательских XML, SmartTags и тегов структурированных документов (контроль контента). | {{< emoticons/tick >}} |
| Доступ и изменение всех элементов документа с использованием **XmlDocument** Как классы и методы. | {{< emoticons/tick >}} |
| Обновление полевых результатов `IF`, Формулы и другие популярные типы полей. | {{< emoticons/tick >}} |
| Восстановление и обновление полей Table of Contents (TOC) Microsoft Word Сделай это. | {{< emoticons/tick >}} |
| Копирование и перемещение элементов документа между документами. | {{< emoticons/tick >}} |
| Присоединяйтесь и разделите документы. | {{< emoticons/tick >}} |
| Получите и установите встроенные и пользовательские свойства документов. | {{< emoticons/tick >}} |
| Укажите защиту документов, открытых защищенных и зашифрованных документов. | {{< emoticons/tick >}} |
| Найти и заменить текст, перечислить содержание документа. | {{< emoticons/tick >}} |
| Принять все изменения в документе. | {{< emoticons/tick >}} |
| Сохранить или извлечь из документа объекты OLE и элементы управления ActiveX. | {{< emoticons/tick >}} |
| Сохранить или удалить макросы VBA из документа. Сохранение цифровой подписи VBA. | {{< emoticons/tick >}} |
| Обнаружение и проверка цифровых подписей в документах. | {{< emoticons/tick >}} |
| Вставьте HTML текст. | {{< emoticons/tick >}} |
| Экстракт VBA Макрос из Word Document. | {{< emoticons/tick >}} |

## Особенности форматирования документов

Aspose.Words обеспечивает детальный программный доступ к свойствам форматирования всех элементов документа.

|  Особенность | Python via .NET |
|  :-  |  :-  |
| Доступ и изменение всех форматов символов, включая шрифты, цвета, эффекты, границы и затенение. | {{< emoticons/tick >}} |
| Доступ и изменение форматирования всех абзацев, включая отступы, интервалы, границы и затенение, остановки вкладки. | {{< emoticons/tick >}} |
| Доступ и изменение всех пронумерованных и пронумерованных списков, включая нумерацию и уровни. | {{< emoticons/tick >}} |
| Доступ и изменение форматирования таблиц, включая выравнивание, ориентацию, границы и затенение. | {{< emoticons/tick >}} |
| Доступ и изменение всех свойств раздела, включая размер бумаги, поля и ориентацию. | {{< emoticons/tick >}} |
| Доступ, создание и изменение стилей документов. | {{< emoticons/tick >}} |
| Доступ и изменение объектов рисования, включая положение, размер, линии и свойства заполнения, байты изображения. | {{< emoticons/tick >}} |

## Mail Merge Особенности

Вы можете использовать Aspose.Words как самостоятельное решение проблемы. Создавайте свои отчеты в Microsoft Word а затем иметь Aspose.Words заполняют документы данными из различных источников данных.

|  Особенность | Python via .NET |
|  :-  |  :-  |
| Используйте все стандартные Microsoft Word mail merge в своих отчетах, в том числе `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, Приветствую. | {{< emoticons/tick >}} |
| Казнить mail merge для документов, содержащих даже самые сложные и вложенные `IF` Поля и формулы. | {{< emoticons/tick >}} |
| Населяйте и динамически выращивайте таблицы или фрагменты в документе из вашего источника данных с помощью mail merge регионов. | {{< emoticons/cross >}} |
| Легко генерировать отчеты, которые содержат основные данные (родитель-ребенок), такие как Заказ / Детали заказа. | {{< emoticons/cross >}} |
| Населенные документы с данными из любых .NET Источник данных, такой как DataSet, DataTable, DataView, DataReader или ADO Recordset. | {{< emoticons/cross >}} |
| Заполните документы из любого источника данных, такого как запрос LINQ, XML-файл или бизнес-объекты, реализуя [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) интерфейс. | {{< emoticons/cross >}} |
| Возьмите точный контроль, такой как форматирование чисел, над тем, как ваши данные объединяются с помощью событий. | {{< emoticons/cross >}} |
| Вставить изображения во время mail merge. | {{< emoticons/tick >}} |
| Программно создавать или изменять Microsoft Word mail merge Источник данных для документа. сохранять mail merge Настройки и источники данных. | {{< emoticons/tick >}} |
| Ретрив mail merge Названия полей. | {{< emoticons/tick >}} |

## Особенности отчетности

Линк Reporting Engine - это продвинутый инструмент отчетности, позволяющий создавать документы на основе шаблонных документов и данных, полученных из различных источников, включая базы данных, XML, JSON, OData, объекты пользовательских типов CLR, внешние документы и многое другое.

| Ключевые особенности | Python via .NET |
|  :-  |  :-  |
| Поддержка C# методы синтаксиса и расширения LINQ непосредственно в шаблонах (даже для `ADO.NET` источники данных) | {{< emoticons/tick >}} |
| Поддержка повторяемых и условных блоков документов (лупы и условия) для таблиц, списков и общего контента | {{< emoticons/tick >}} |
| Поддержка динамически генерируемых графиков и изображений | {{< emoticons/tick >}} |
| Поддержка вставки внешних документов и HTML-блоков в документ | {{< emoticons/tick >}} |
| Поддержка нескольких источников данных (в том числе различных типов) для создания единого документа | {{< emoticons/tick >}} |
| Встроенная поддержка отношений данных (мастер-деталь) | {{< emoticons/tick >}} |
| Комплексная поддержка различных манипуляций с данными, таких как группирование, сортировка, фильтрация и другие, непосредственно в шаблонах | {{< emoticons/tick >}} |
| WYSIWYG: сгенерированный документ сохраняет то же форматирование своих элементов, что и соответствующий шаблон | {{< emoticons/tick >}} |
