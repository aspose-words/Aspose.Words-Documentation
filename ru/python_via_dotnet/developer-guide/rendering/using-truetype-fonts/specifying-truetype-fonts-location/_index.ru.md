---
title: Укажите истинное Тип расположения шрифтов
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите истинное Тип расположения шрифтов
linktitle: Укажите истинное Тип расположения шрифтов
description: "Укажите различные Правда Источники шрифтов типа: системная папка, источники пользователей, загрузка шрифтов из потока, файловая система или память с использованием Python."
type: docs
weight: 30
url: /ru/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Эта тема описывает поведение по умолчанию Aspose.Words когда он ищет шрифты TrueType, включая специфические отличия операционной системы, и демонстрирует, как указать источники шрифтов пользователя.

The [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) Класс используется для указания различных источников шрифтов. Существует несколько реализаций [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) класс:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Подробная информация о реализации некоторых классов объясняется ниже.

## Загрузка шрифтов из системы

Есть особая [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) Класс, который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) и любые другие необходимые источники:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Один экземпляр из [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) Класс определяется по умолчанию в [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). На разных операционных системах шрифты могут располагаться в разных местах. Однако, используя a [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) Пример для каждого документа не является оптимальным решением. В большинстве случаев, используя [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) Должно быть достаточно.

Инстанции для каждого документа нужны только в том случае, если для разных документов требуется использовать разные источники шрифтов, что является редким случаем. Использование нескольких [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) Примеры снижают производительность, потому что они не разделяют кэш.

### Где? Aspose.Words Ищите шрифты TrueType Windows

В большинстве случаев, Windows Пользователи не сталкиваются со значительными проблемами с пропущенными шрифтами или неправильными макетами. Как правило, Aspose.Words проходит через документ и, когда он сталкивается со ссылкой шрифта, успешно извлекает данные шрифта из системной папки.

На Windows Aspose.Words Сначала берет все доступные шрифты из _%windir% Папка шрифтов. Эта настройка будет работать для вас большую часть времени. Вы указываете только свои собственные папки шрифтов, если это необходимо. Aspose.Words для .NET Также ищите дополнительные шрифты, зарегистрированные в *HKEY_LOCAL_ MACHINE\SOFTWAREMicrosoft\Windows NT\CurrentVersion\Fonts* Регистрационный ключ. Кроме того, Windows 10 позволяет устанавливать шрифты для текущего пользователя. Шрифты помещаются в *%userprofile%\ AppData\LocalMicrosoft\Windows\Fonts* folder and also specified in the *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\ Реестр шрифтов*, где Aspose.Words Будем искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words Вы можете прочитать соответствующие данные шрифта из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, и в этом случае работают следующие сценарии:

- Пользователи могут создавать новые источники шрифтов через [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) класс
- Aspose.Words можно попытаться заменить пропущенный шрифт на аналогичный


### Фонты на Non-Windows Системы

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно увидеть по [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) метод. Если не найдено поддерживаемых шрифтов, Aspose.Words Используется встроенный по умолчанию шрифт Fanwood.ttf.

Поскольку метрики шрифтов Windows и не-Windows OS отличается, Aspose.Words делает все возможное, чтобы найти похожий шрифт и построить макет, похожий на оригинал. Однако это не всегда возможно. В этих случаях, [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) Класс должен использоваться для добавления пользовательских шрифтов или правил замены.

#### Где? Aspose.Words Ищите шрифты TrueType Linux

Различный Linux Дистрибутивы могут хранить шрифты в разных папках. Aspose.Words Ищите шрифты в нескольких местах. По умолчанию, Aspose.Words `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`. Это поведение по умолчанию будет работать для большинства Linux дистрибутивы, но это не гарантируется работать все время, в этом случае вам может потребоваться указать местоположение true шрифтов явно. Для этого вам нужно знать, где на вашем устройстве установлены шрифты TrueType. Linux распределения.

#### Где? Aspose.Words Поиск шрифтов TrueType на Mac OS X

Aspose.Words Ищите шрифты в папке */Library/Fonts*, которая является стандартным местом для шрифтов TrueType на Mac OS X. Хотя этот параметр будет работать для вас большую часть времени, вам может потребоваться указать свои собственные папки шрифтов в случае, когда вам нужно.

## Загрузка шрифтов из папки

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или вам не хватает разрешений, то лучшим решением будет добавить папку со своими собственными шрифтами с помощью системы. [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) метод. Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или Windows\ Папка шрифта и вместо этого только сканирование шрифтов в указанной папке (ах). The [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) Метод возвращает соответствующие значения.

### Определение одной или нескольких папок шрифта

The [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) и [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) Методы являются короткими для [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) Способ с одним или несколькими [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) Примеры. Эти методы используются для определения того, где Aspose.Words Нужно искать шрифты. Если папка отсутствует или недоступна, Aspose.Words Просто игнорирует эту папку. Если все папки, включая источники для замены шрифта, были проигнорированы, Aspose.Words По умолчанию будет использоваться шрифт Fanwood.

Следующий пример показывает, как установить папку или источник, который Aspose.Words Впоследствии будет использоваться для поиска шрифтов TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Дополнительный булевой параметр контролирует, сканируются ли шрифты рекурсивно через все папки, следовательно, сканируют все детские папки указанной папки. Следующий пример показывает, как установить Aspose.Words искать в нескольких папках шрифты TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обратите внимание на приоритеты. Если есть шрифты с одинаковым фамилией и стилем в разных источниках шрифтов, то Aspose.Words Выберите шрифт из источника с более высоким приоритетом. См. описание поля "приоритет" ниже.

Если вы не хотите использовать системные шрифты, Aspose.Words Позволяет игнорировать их и использовать только собственные шрифты:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Приоритетное имущество

The **приоритет** Собственность используется, когда есть шрифты с одинаковым именем и стилем в разных источниках шрифтов. В этом случае Aspose.Words Выберите шрифт из источника с более высоким приоритетным значением. Например, есть старая версия шрифта в системной папке, и клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Получить список доступных шрифтов

Если вы хотите получить список доступных шрифтов, которые, например, могут быть использованы для рендеринга PDF-документа, вы можете использовать [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) Способ, как показано в следующем примере кода. The [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) класс указывает информацию о физическом шрифте, доступном для Aspose.Words Двигатель шрифта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
