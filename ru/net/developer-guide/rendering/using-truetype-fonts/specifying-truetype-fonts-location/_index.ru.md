---
title: Укажите расположение шрифтов TrueType в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите расположение шрифтов TrueType
linktitle: Укажите расположение шрифтов TrueType
description: "Укажите различные источники шрифтов TrueType: системную папку, пользовательские источники, загрузку шрифтов из потока, файловую систему или память, используя C#."
type: docs
weight: 30
url: /ru/net/specifying-truetype-fonts-location/
---

В этом разделе описывается поведение Aspose.Words по умолчанию при поиске шрифтов TrueType, включая различия, специфичные для операционной системы, и демонстрируется, как указать источники пользовательских шрифтов.

Класс [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) используется для указания различных источников шрифтов. Существует несколько реализаций класса **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Подробности реализации для некоторых классов описаны ниже.

## Загрузка шрифтов из системы {#loading-fonts-from-system}

Существует специальный класс [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/), который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с номером **SystemFontSource** и любыми другими необходимыми источниками:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Один экземпляр класса **SystemFontSource** по умолчанию определен в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). В разных операционных системах шрифты могут располагаться в разных местах. Однако использование экземпляра **FontSettings** для каждого документа не является оптимальным решением. В большинстве случаев использования [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) должно быть достаточно.

Экземпляры для каждого документа необходимы только в том случае, если требуется использовать разные источники шрифтов для разных документов, что является редким случаем. Использование нескольких экземпляров **FontSettings** снижает производительность, поскольку они не используют общий кеш.

### Где Aspose.Words ищет шрифты TrueType на Windows

В большинстве случаев пользователи Windows не сталкиваются с существенными проблемами с пропущенными шрифтами или неправильной раскладкой. Обычно Aspose.Words просматривает документ и, встречая ссылку на шрифт, успешно извлекает данные шрифта из системной папки.

На Windows Aspose.Words сначала берет все доступные шрифты из папки _%windir%\Fonts. Этот параметр будет работать для вас большую часть времени. Вы указываете свои собственные папки со шрифтами только в случае необходимости. Aspose.Words для .NET также ищет дополнительные шрифты, зарегистрированные в разделе реестра HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Кроме того, Windows 10 разрешает установку шрифтов для текущего пользователя. Шрифты помещаются в папку %userprofile%\AppData\Local\Microsoft\Windows\Fonts, а также указываются в реестре HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, где Aspose.Words будет искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words может прочитать соответствующие данные шрифта из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, в этом случае срабатывают следующие сценарии:

- Пользователи могут настраивать новые источники шрифтов с помощью класса **FontSettings**
- Aspose.Words может попробовать заменить пропущенный шрифт на аналогичный

{{% alert color="primary" %}}

Рендеринг Aspose.Words на сервере обычно не работает с приложением ASP.NET, настроенным для работы на уровне среднего доверия, поскольку оно запрещает доступ к реестру и ограничивает доступ к файловой системе.

{{% /alert %}}

### Шрифты в системах, отличных от Windows

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно просмотреть методом [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Если поддерживаемые шрифты не найдены, Aspose.Words будет использовать встроенный шрифт по умолчанию Fanwood.ttf.

Поскольку метрики шрифтов ОС Windows и не-Windows разные, Aspose.Words делает все возможное, чтобы найти похожий шрифт и построить макет, аналогичный оригиналу. Однако, это не всегда возможно. В этих случаях для добавления пользовательских шрифтов или правил замены следует использовать класс **FontSettings**.

#### Где Aspose.Words ищет шрифты TrueType на Linux

В разных дистрибутивах Linux шрифты могут храниться в разных папках. Aspose.Words ищет шрифты в нескольких местах. По умолчанию Aspose.Words ищет шрифты во всех следующих папках: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Это поведение по умолчанию будет работать для большинства дистрибутивов Linux., но не гарантируется, что он будет работать постоянно, и в этом случае вам может потребоваться явно указать расположение шрифтов истинного типа. Для этого вам необходимо знать, где в вашем дистрибутиве Linux установлены шрифты TrueType.

#### Где Aspose.Words ищет шрифты TrueType в Mac OS X

Aspose.Words ищет шрифты в папке /Library/Fonts, которая является стандартным расположением шрифтов TrueType в Mac OS X. Хотя этот параметр будет работать в большинстве случаев, вам может потребоваться указать собственные папки шрифтов в том случае, если вам нужно.

## Загрузить шрифты из папки {#loading-fonts-from-folder}

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или у вас нет прав, то лучшим решением будет добавить папку со своими шрифтами с помощью метод [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или папке Windows\Font, а будет сканировать шрифты только в указанных папках. Метод [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) вернет соответствующие значения.

### Укажите одну или несколько папок шрифтов

Методы [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) и [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) являются ярлыками метода **SetFontSources** с одним или несколькими экземплярами [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Эти методы используются для указания того, где Aspose.Words следует искать шрифты. Если папка не существует или недоступна, Aspose.Words просто игнорирует эту папку. Если все папки, включая источники подмены шрифтов, были проигнорированы, то Aspose.Words будет использовать шрифт Fanwood по умолчанию.

В следующем примере показано, как задать папку или источник, который Aspose.Words впоследствии будет использовать для поиска шрифтов TrueType во время рендеринга или внедрения шрифтов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Дополнительный логический параметр определяет, будут ли шрифты сканироваться рекурсивно во всех папках, следовательно, сканируются все дочерние папки указанной папки. В следующем примере показано, как настроить Aspose.Words для поиска шрифтов TrueType в нескольких папках при рендеринге или внедрении шрифтов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по номеру [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обратите внимание на приоритеты. Если в разных источниках шрифтов есть шрифты с одинаковым названием и стилем, то Aspose.Words выберет шрифт из источника с более высоким приоритетом. См. описание поля "Приоритет" ниже.

Если вы вообще не хотите использовать системные шрифты, Aspose.Words позволяет игнорировать их и использовать только свои собственные шрифты:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Приоритетная недвижимость

Свойство [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) используется, когда в разных источниках шрифтов имеются шрифты с одинаковым названием и стилем. В этом случае Aspose.Words выбирает шрифт из источника с более высоким значением приоритета. Например, в системной папке есть старая версия шрифта, и клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Загрузка шрифтов из потока {#loading-fonts-from-stream}

Aspose.Words предоставляет класс [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), который позволяет загружать шрифты из потока. Чтобы использовать источник потокового шрифта, пользователю необходимо создать производный класс от **StreamFontSource** и предоставить реализацию метода [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Метод **OpenFontDataStream** можно было вызывать несколько раз. Впервые он будет вызван, когда Aspose.Words просканирует предоставленные источники шрифтов, чтобы получить список доступных шрифтов. Позже его можно вызвать, если шрифт используется в документе для анализа данных шрифта и встраивания данных шрифта в некоторые выходные форматы. **StreamFontSource** может быть полезен, поскольку позволяет загружать данные шрифта только тогда, когда это необходимо, а не хранить их в памяти на время жизни [Настройки шрифта](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** является альтернативой [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/), поскольку всегда можно загрузить поток в память и передать его **MemoryFontSource**. Разница в том, что **MemoryFontSource** хранится в памяти постоянно, а **StreamFontSource** загружается по требованию и удаляется сразу. Но его можно загрузить несколько раз, как описано выше. В некоторых случаях предпочтительнее **MemoryFontSource**, а в других **StreamFontSource**.

## Сохранение и загрузка кэша поиска шрифтов

При первом поиске шрифта Aspose.Words перебирает указанные пользователем источники шрифтов и формирует кэш поиска шрифтов на основе данных из этих источников. Таким образом, в кэше будет собрана информация о доступных шрифтах: семействе шрифтов, стиле, полном названии шрифта и других. При последующих вызовах Aspose.Words ищет информацию о нужном шрифте по его названию в кэше поиска шрифтов, после чего анализирует указанные файлы для использования шрифта.

Процедура разбора всех доступных файлов шрифтов для инициализации кэша занимает достаточно много времени. Aspose.Words позволяет сохранять и загружать кеш с помощью метода [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) для решения проблемы с производительностью. То есть пользователь может загрузить ранее сохраненный кеш из файла и пропустить этап разбора всех доступных файлов шрифтов.

{{% alert color="primary" %}}

Используйте тот же метод **SaveSearchCache** для обновления кеша.

{{% /alert %}}

В следующем примере кода показано, как заранее подготовить источники шрифтов и создать кэш поиска шрифтов:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

В следующем примере кода показано, как установить источники шрифтов и загрузить кэш поиска перед обработкой документов:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Кэш поиска шрифтов отлично подходит для интеграции Aspose.Words в AWS Lambda из-за ряда ограничений. Например, от размера основного контейнера и, как следствие, от количества шрифтов.

Кэш также подходит для других сценариев, когда шрифты загружаются по сети. Или для сценариев, когда нет возможности сохранить экземпляр `FontSettings` с загруженным кешем.

{{% /alert %}}

## Получить список доступных шрифтов {#get-a-list-of-available-fonts}

Если вы хотите получить список доступных шрифтов, которые, например, можно использовать для рендеринга PDF-документа, вы можете использовать метод [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), как показано в следующем примере кода. Класс [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) указывает информацию о физическом шрифте, доступном для механизма шрифтов Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
