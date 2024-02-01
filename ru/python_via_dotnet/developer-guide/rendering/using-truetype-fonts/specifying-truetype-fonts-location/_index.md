---
title: Укажите расположение шрифтов TrueType
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите расположение шрифтов TrueType
linktitle: Укажите расположение шрифтов TrueType
description: "Укажите различные источники шрифтов TrueType: системную папку, пользовательские источники, загрузку шрифтов из потока, файловую систему или память, используя Python."
type: docs
weight: 30
url: /ru/python-net/specifying-truetype-fonts-location/
---

В этом разделе описывается поведение Aspose.Words по умолчанию при поиске шрифтов TrueType, включая различия, специфичные для операционной системы, и демонстрируется, как указать источники пользовательских шрифтов.

Класс [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) используется для указания различных источников шрифтов. Существует несколько реализаций класса [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Подробности реализации для некоторых классов описаны ниже.

## Загрузка шрифтов из системы

Существует специальный класс [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/), который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с номером [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) и любыми другими необходимыми источниками:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

По умолчанию в [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) определен один экземпляр класса [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/). В разных операционных системах шрифты могут располагаться в разных местах. Однако использование экземпляра [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) для каждого документа не является оптимальным решением. В большинстве случаев использования [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) должно быть достаточно.

Экземпляры для каждого документа необходимы только в том случае, если требуется использовать разные источники шрифтов для разных документов, что является редким случаем. Использование нескольких экземпляров [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) снижает производительность, поскольку они не используют общий кэш.

### Где Aspose.Words ищет шрифты TrueType на Windows

В большинстве случаев пользователи Windows не сталкиваются с существенными проблемами, связанными с пропущенными шрифтами или неправильной раскладкой. Обычно Aspose.Words просматривает документ и, встречая ссылку на шрифт, успешно извлекает данные шрифта из системной папки.

На Windows Aspose.Words сначала берет все доступные шрифты из папки _%windir%\Fonts. Этот параметр будет работать для вас большую часть времени. Вы указываете свои собственные папки со шрифтами только в случае необходимости. Aspose.Words для .NET также ищет дополнительные шрифты, зарегистрированные в ключе реестра *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Кроме того, Windows 10 разрешает установку шрифтов для текущего пользователя. Шрифты помещаются в папку *%userprofile%\AppData\Local\Microsoft\Windows\Fonts*, а также указываются в реестре *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, где Aspose.Words будет искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words может прочитать соответствующие данные шрифта из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, в этом случае срабатывают следующие сценарии:

- Пользователи могут настраивать новые источники шрифтов с помощью класса [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words может попробовать заменить пропущенный шрифт на аналогичный


### Шрифты в системах, отличных от Windows

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно просмотреть методом [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Если поддерживаемые шрифты не найдены, Aspose.Words будет использовать встроенный шрифт по умолчанию Fanwood.ttf.

Поскольку метрики шрифтов ОС Windows и не Windows разные, Aspose.Words делает все возможное, чтобы найти похожий шрифт и построить макет, аналогичный оригиналу. Однако, это не всегда возможно. В этих случаях для добавления пользовательских шрифтов или правил замены следует использовать класс [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/).

#### Где Aspose.Words ищет шрифты TrueType на Linux

В разных дистрибутивах Linux шрифты могут храниться в разных папках. Aspose.Words ищет шрифты в нескольких местах. По умолчанию Aspose.Words ищет шрифты во всех следующих папках: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Это поведение по умолчанию будет работать для большинства дистрибутивов Linux, но не гарантируется, что оно будет работать постоянно, и в этом случае вам может потребоваться явно указать расположение шрифтов истинного типа. Для этого вам необходимо знать, где в вашем дистрибутиве Linux установлены шрифты TrueType.

#### Где Aspose.Words ищет шрифты TrueType в Mac OS X

Aspose.Words ищет шрифты в папке */Library/Fonts*, которая является стандартным расположением шрифтов TrueType в Mac OS X. Хотя этот параметр будет работать в большинстве случаев, вам может потребоваться указать собственные папки шрифтов в папке случай, когда вам это нужно.

## Загрузка шрифтов из папки

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или у вас нет прав, то лучшим решением будет добавить папку со своими шрифтами с помощью метод [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или папке Windows\Font, а вместо этого сканирует шрифты только в указанных папках. Метод [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) вернет соответствующие значения.

### Указание одной или нескольких папок шрифтов

Методы [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) и [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) являются ярлыками метода [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) с одним или несколькими экземплярами [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Эти методы используются для указания того, где Aspose.Words следует искать шрифты. Если папка не существует или недоступна, Aspose.Words просто игнорирует эту папку. Если все папки, включая источники подмены шрифтов, были проигнорированы, то Aspose.Words будет использовать шрифт Fanwood по умолчанию.

В следующем примере показано, как задать папку или источник, который Aspose.Words впоследствии будет использовать для поиска шрифтов TrueType во время рендеринга или внедрения шрифтов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Вы можете скачать файл шаблона этого примера по номеру [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Дополнительный логический параметр определяет, будут ли шрифты сканироваться рекурсивно во всех папках, следовательно, сканируются все дочерние папки указанной папки. В следующем примере показано, как настроить Aspose.Words для поиска шрифтов TrueType в нескольких папках при рендеринге или внедрении шрифтов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обратите внимание на приоритеты. Если в разных источниках шрифтов есть шрифты с одинаковым названием и стилем, то Aspose.Words выберет шрифт из источника с более высоким приоритетом. См. описание поля "приоритет" ниже.

Если вы вообще не хотите использовать системные шрифты, Aspose.Words позволяет вам игнорировать их и использовать только свои собственные шрифты:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Приоритетная недвижимость

Свойство **приоритет** используется, когда в разных источниках шрифтов имеются шрифты с одинаковым названием и стилем. В этом случае Aspose.Words выбирает шрифт из источника с более высоким значением приоритета. Например, в системной папке есть старая версия шрифта, и клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Получение списка доступных шрифтов

Если вы хотите получить список доступных шрифтов, которые, например, можно использовать для рендеринга PDF-документа, вы можете использовать метод [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), как показано в следующем примере кода. Класс [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) указывает информацию о физическом шрифте, доступном для механизма шрифтов Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
