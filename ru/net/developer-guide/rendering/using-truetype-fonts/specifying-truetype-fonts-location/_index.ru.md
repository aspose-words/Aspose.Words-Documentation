---
title: Укажите истинное Тип шрифтов Расположение в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите истинное Тип расположения шрифтов
linktitle: Укажите истинное Тип расположения шрифтов
description: "Укажите различные Правда Источники шрифтов типа: системная папка, источники пользователей, загрузка шрифтов из потока, файловая система или память с использованием C#."
type: docs
weight: 30
url: /ru/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Эта тема описывает поведение по умолчанию Aspose.Words когда он ищет шрифты TrueType, включая специфические отличия операционной системы, и демонстрирует, как указать источники шрифтов пользователя.

The [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) Класс используется для указания различных источников шрифтов. Существует несколько реализаций **FontSourceBase** класс:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Подробная информация о реализации некоторых классов объясняется ниже.

## Загрузка шрифтов из системы {#loading-fonts-from-system}

Есть особая [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) Класс, который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с **SystemFontSource** и любые другие необходимые источники:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Один экземпляр из **SystemFontSource** Класс определяется по умолчанию в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). На разных операционных системах шрифты могут располагаться в разных местах. Однако, используя a **FontSettings** Пример для каждого документа не является оптимальным решением. В большинстве случаев, используя [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) Должно быть достаточно.

Инстанции для каждого документа нужны только в том случае, если для разных документов требуется использовать разные источники шрифтов, что является редким случаем. Использование нескольких **FontSettings** Примеры снижают производительность, потому что они не разделяют кэш.

### Где? Aspose.Words Ищите шрифты TrueType Windows

В большинстве случаев, Windows Пользователи не сталкиваются со значительными проблемами с пропущенными шрифтами или неправильными макетами. Как правило, Aspose.Words проходит через документ и, когда он сталкивается со ссылкой шрифта, успешно извлекает данные шрифта из системной папки.

На <p notrans="<p notrans=" Windows"=""></p>"> Aspose.Words Сначала берет все доступные шрифты из _%windir% Папка шрифтов. Эта настройка будет работать для вас большую часть времени. Вы указываете только свои собственные папки шрифтов, если это необходимо. Aspose.Words для .NET Ищите дополнительные шрифты, зарегистрированные в HKEY_ LOCAL_MACHINE\SOFTWAREMicrosoft\Windows NT\CurrentVersion\ Ключ реестра шрифтов. Кроме того, Windows 10 позволяет устанавливать шрифты для текущего пользователя. Шрифты помещаются в %userprofile%\ AppData\LocalMicrosoft\Windows\ Папка шрифтов, а также указанная в HKEY_ Current_USER\SoftwareMicrosoft\Windows NT\CurrentVersion\ Реестр шрифтов, где Aspose.Words Будем искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words Вы можете прочитать соответствующие данные шрифта из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, и в этом случае работают следующие сценарии:

- Пользователи могут создавать новые источники шрифтов через **FontSettings** класс
- Aspose.Words можно попытаться заменить пропущенный шрифт на аналогичный

{{% alert color="primary" %}}

Aspose.Words рендеринг на сервере обычно не работает с ASP.NET Приложение сконфигурировано для работы на уровне Medium Trust, поскольку запрещает доступ к реестру и ограничивает доступ к файловой системе.

{{% /alert %}}

### Фонты на Non-Windows Системы

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно увидеть по [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) метод. Если не найдено поддерживаемых шрифтов, Aspose.Words Используется встроенный по умолчанию шрифт Fanwood.ttf.

Поскольку метрики шрифтов Windows и не-Windows OS отличается, Aspose.Words делает все возможное, чтобы найти похожий шрифт и построить макет, похожий на оригинал. Однако это не всегда возможно. В этих случаях, **FontSettings** Класс должен использоваться для добавления пользовательских шрифтов или правил замены.

#### Где? Aspose.Words Ищите шрифты TrueType Linux

Различный Linux Дистрибутивы могут хранить шрифты в разных папках. Aspose.Words Ищите шрифты в нескольких местах. По умолчанию, Aspose.Words * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Это поведение по умолчанию будет работать для большинства Linux дистрибутивы, но это не гарантируется работать все время, в этом случае вам может потребоваться указать местоположение true шрифтов явно. Для этого вам нужно знать, где на вашем устройстве установлены шрифты TrueType. Linux распределения.

#### Где? Aspose.Words Поиск шрифтов TrueType на Mac OS X

Aspose.Words Поиск шрифтов в папке /Library/Fonts, которая является стандартным расположением шрифтов TrueType на Mac OS X. Хотя этот параметр будет работать для вас большую часть времени, вам может потребоваться указать свои собственные папки шрифтов в случае, когда вам нужно.

## Загрузка шрифтов из папки {#loading-fonts-from-folder}

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или вам не хватает разрешений, то лучшим решением будет добавить папку со своими собственными шрифтами с помощью системы. [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) метод. Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или Windows\ Папка шрифта и вместо этого только сканирование шрифтов в указанной папке (ах). The [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) Метод возвращает соответствующие значения.

### Укажите одну или несколько папок шрифта

The [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) и [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) Методы являются короткими для **SetFontSources** Способ с одним или несколькими [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) Примеры. Эти методы используются для определения того, где Aspose.Words Нужно искать шрифты. Если папка отсутствует или недоступна, Aspose.Words Просто игнорирует эту папку. Если все папки, включая источники для замены шрифта, были проигнорированы, Aspose.Words По умолчанию будет использоваться шрифт Fanwood.

Следующий пример показывает, как установить папку или источник, который Aspose.Words Впоследствии будет использоваться для поиска шрифтов TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Дополнительный булевой параметр контролирует, сканируются ли шрифты рекурсивно через все папки, следовательно, сканируют все детские папки указанной папки. Следующий пример показывает, как установить Aspose.Words искать в нескольких папках шрифты TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обратите внимание на приоритеты. Если есть шрифты с одинаковым фамилией и стилем в разных источниках шрифтов, то Aspose.Words Выберите шрифт из источника с более высоким приоритетом. См. описание поля "Приоритет" ниже.

Если вы не хотите использовать системные шрифты, Aspose.Words Позволяет игнорировать их и использовать только собственные шрифты:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Приоритетное имущество

The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) Собственность используется, когда есть шрифты с одинаковым именем и стилем в разных источниках шрифтов. В этом случае Aspose.Words Выберите шрифт из источника с более высоким приоритетным значением. Например, есть старая версия шрифта в системной папке, и клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Загрузка шрифтов от Stream {#loading-fonts-from-stream}

Aspose.Words обеспечивает [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) класс, который позволяет загружать шрифты из потока. Для использования источника потокового шрифта пользователю необходимо создать производный класс из **StreamFontSource** и обеспечить осуществление [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) метод. The **OpenFontDataStream** Метод можно назвать несколько раз. Впервые он будет называться Aspose.Words сканирует предоставленные источники шрифтов, чтобы получить список доступных шрифтов. Позже его можно назвать, если шрифт используется в документе для разбора данных шрифта и встраивания данных шрифта в некоторые выходные форматы. **StreamFontSource** может быть полезным, поскольку позволяет загружать данные шрифта только тогда, когда это необходимо, и не хранить их в памяти для [Настройки шрифтов](https://fontsettings/) пожизненно.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** является альтернативой [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) Поскольку всегда можно загрузить поток в память и передать его в **MemoryFontSource**. Разница заключается в том, что **MemoryFontSource** хранится в памяти постоянно, и **StreamFontSource** Загружен по требованию и утилизирован сразу. Но он может быть загружен несколько раз, как описано выше. В некоторых случаях **MemoryFontSource** предпочтительнее, а в других **StreamFontSource**.

## Сохраните и загрузите кэш поиска шрифта

При первом поиске шрифта, Aspose.Words Итерирует по источникам шрифта, указанным пользователем, и формирует кэш поиска шрифта на основе данных из этих источников. Таким образом, кэш будет собирать информацию о доступных шрифтах: семействе шрифтов, стиле, полном названии шрифта и других. Последующие звонки, Aspose.Words осуществляет поиск информации о желаемом шрифте по его названию в кэше поиска шрифта, после чего анализирует указанные файлы для использования шрифта.

Процедура анализа всех доступных файлов шрифтов для инициализации кэша занимает довольно много времени. Aspose.Words позволяет сохранять и загружать кэш с помощью [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) Способ решения проблемы производительности. То есть пользователь может загрузить ранее сохраненный кэш из файла и пропустить этап разбора всех доступных файлов шрифтов.

{{% alert color="primary" %}}

Используйте тот же **SaveSearchCache** Способ обновления кэша.

{{% /alert %}}

Следующий пример кода показывает, как заранее подготовить источники шрифтов и создать кэш поиска шрифтов:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Следующий пример кода показывает, как установить источники шрифтов и загрузить кэш поиска перед обработкой документов:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Поисковый кэш отлично подходит для Aspose.Words интеграция в AWS Lambda из-за ряда ограничений. Например, на основной размер контейнера и, как следствие, на количество шрифтов.

Кэш также подходит для других сценариев, когда шрифты загружаются по сети. Или для сценариев, когда нет возможности хранить `FontSettings` Пример с загруженным кэшем.

{{% /alert %}}

## Получите список доступных шрифтов {#get-a-list-of-available-fonts}

Если вы хотите получить список доступных шрифтов, которые, например, могут быть использованы для рендеринга PDF-документа, вы можете использовать [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) Способ, как показано в следующем примере кода. The [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) класс указывает информацию о физическом шрифте, доступном для Aspose.Words Двигатель шрифта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
