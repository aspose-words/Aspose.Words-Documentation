﻿---
title: Укажите расположение шрифтов TrueType в Java
second_title: Aspose.Words для Java
articleTitle: Укажите расположение шрифтов TrueType
linktitle: Укажите расположение шрифтов TrueType
description: "Укажите различные источники шрифтов TrueType: системную папку, пользовательские источники, загрузку шрифтов из потока, файловую систему или память, используя Java."
type: docs
weight: 30
url: /ru/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

В этом разделе описывается поведение Aspose.Words по умолчанию при поиске шрифтов TrueType, включая различия в операционной системе, и демонстрируется, как указать пользовательские источники шрифтов.

Класс [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) используется для указания различных источников шрифтов. Существует несколько реализаций класса **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Подробности реализации для некоторых классов описаны ниже.

## Загрузка шрифтов из системы {#loading-fonts-from-system}

Существует специальный класс [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/), который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с **SystemFontSource** и любыми другими необходимыми источниками:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

По умолчанию в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) определен один экземпляр класса **SystemFontSource**. В разных операционных системах шрифты могут располагаться в разных местах. Однако использование экземпляра **FontSettings** для каждого документа не является оптимальным решением. В большинстве случаев использования [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) должно быть достаточно.

Отдельные экземпляры для каждого документа нужны только в том случае, если требуется использовать разные источники шрифтов для разных документов, что является редким случаем. Использование нескольких экземпляров **FontSettings** снижает производительность, поскольку они не используют общий кэш.

### Где Aspose.Words Ищет TrueType Шрифты в Windows

В большинстве случаев Windows пользователи не сталкиваются с серьезными проблемами, связанными с пропущенными шрифтами или неправильным расположением. Как правило, Aspose.Words просматривает документ и, обнаружив ссылку на шрифт, успешно извлекает данные о шрифте из системной папки.

В Windows, Aspose.Words сначала используются все доступные шрифты из папки _%windir%\Fonts. Эта настройка будет работать для вас большую часть времени. Вы можете указать свои собственные папки шрифтов только в том случае, если это необходимо. Aspose.Words также выполняет поиск дополнительных шрифтов, зарегистрированных в разделе реестра HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Кроме того, Windows 10 позволяет установить шрифты для текущего пользователя. Шрифты помещаются в папку %userprofile%\AppData\Local\Microsoft\Windows\Fonts и также указываются в реестре HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, где Aspose.Words будет искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words может считывать соответствующие данные о шрифтах из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, и в этом случае могут сработать следующие сценарии:

- Пользователи могут настраивать новые источники шрифтов с помощью класса **FontSettings**
- Aspose.Words можно попробовать заменить пропущенный шрифт на аналогичный

### Шрифты в системах, отличных отWindows

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно просмотреть с помощью метода [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders). Если поддерживаемые шрифты не найдены, Aspose.Words будет использовать встроенный шрифт по умолчанию Fanwood.ttf.

Поскольку параметры шрифта Windows и шрифта, отличного от Windows OS, различны, Aspose.Words делает все возможное, чтобы найти похожий шрифт и создать макет, аналогичный оригинальному. Однако это не всегда возможно. В этих случаях класс **FontSettings** следует использовать для добавления пользовательских шрифтов или правил подстановки.

#### Где Aspose.Words Ищет TrueType Шрифты в Linux

В разных дистрибутивах Linux шрифты могут храниться в разных папках. Aspose.Words поиск шрифтов осуществляется в нескольких местах. По умолчанию Aspose.Words выполняет поиск шрифтов во всех следующих местах: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Это поведение по умолчанию будет работать для большинства дистрибутивов Linux, но не гарантируется, что оно будет работать постоянно, и в этом случае вам может потребоваться явно указать расположение шрифтов true type. Для этого вам необходимо знать, где установлены шрифты TrueType в вашем дистрибутиве Linux.

#### Где Aspose.Words Ищет TrueType Шрифты в Mac OS X

Aspose.Words выполняет поиск шрифтов в папке `/Library/Fonts`, которая является стандартным расположением для TrueType шрифтов в Mac OS X. Хотя эта настройка будет работать для вас большую часть времени, в случае необходимости вам может потребоваться указать свои собственные папки со шрифтами.

#### TrueType Шрифты на Android

В Android рабочий процесс fonts инкапсулирован в класс Typeface.
Существует пять типов шрифтов, каждый из которых представляет собой группу схожих семейств шрифтов:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Например, в соответствии с Android-м [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) конфигурационный файл "times" принадлежит к семейству "serif", поэтому при запросе "times" будет использоваться NotoSerif-Regular.ttf:

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Для поиска похожих шрифтов используются стратегии, описанные ранее.

В дополнение к ним, у Aspose.Words есть свой собственный список замен для платформы Android.

Допустим, документ содержит шрифт PMingLiU-ExtB, прежде всего, Aspose.Words ищет нужный шрифт в системных источниках.

По умолчанию список папок шрифта Android выглядит следующим образом:

- /система/шрифты
- /системный/шрифт
- /данные/шрифты

Параметр Aspose.Words просматривает определенные пользователем источники, которые были установлены с помощью метода:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

В случае, если была указана явная замена, Aspose.Words заменяет отсутствующий шрифт на предложенный пользователем:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Если ни одно из правил не сработало, Aspose.Words проверьте внутреннюю таблицу замены. Если таблица содержит информацию о подходящем шрифте, то шрифт будет заменен. В нашем случае Aspose.Words выберет `Typeface.SERIF`. Но если таблица ничего не знает о запрашиваемом шрифте, то Aspose.Words выбирает шрифт, основанный на специальных правилах MS для слов или на самом близком расстоянии в окружающем пространстве.

#### TrueType Шрифты на .NET Core и Xamarin

Для .NET Core и Xamarin применяется то же правило, что и для Aspose.Words для версии Java. По умолчанию доступны все системные шрифты платформы, на которой запущено приложение.
Список папок, в которых будет выполняться поиск, можно найти, вызвав метод:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Загрузить шрифты из папки {#loading-fonts-from-folder}

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или у вас нет прав доступа, то лучшим решением будет добавить папку с вашими собственными шрифтами, используя метод `SetFontsSources`. Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или в папке Windows\Font, а вместо этого будет сканировать шрифты только в указанных папках. Метод `GetFontSources` вернет соответствующие значения.

### Укажите одну или несколько папок шрифтов

Методы [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) и SetFontsFolders являются сокращениями к методу **SetFontSources** с одним или несколькими экземплярами [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/). Эти методы используются для указания того, где Aspose.Words следует искать шрифты. Если папка не существует или недоступна, Aspose.Words просто игнорирует эту папку. Если все папки, включая исходные тексты для замены шрифта, были проигнорированы, Aspose.Words будет использовать шрифт Fanwood по умолчанию.

В следующем примере показано, как задать папку или источник, который Aspose.Words впоследствии будет использоваться для поиска шрифтов TrueType во время рендеринга или встраивания шрифтов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Дополнительный логический параметр определяет, будут ли шрифты проверяться рекурсивно по всем папкам, следовательно, будут проверяться все дочерние папки указанной папки. В следующем примере показано, как задать Aspose.Words для поиска шрифтов TrueType в нескольких папках при рендеринге или внедрении шрифтов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Обратите внимание на приоритеты. Если в разных источниках шрифтов есть шрифты с одинаковым названием семейства и стилем, то Aspose.Words выберет шрифт из источника с более высоким приоритетом. Смотрите описание поля "Приоритет" ниже.

{{% /alert %}}

Если вы вообще не хотите использовать системные шрифты, Aspose.Words позволяет вам игнорировать их и использовать только свои собственные шрифты:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Приоритетное свойство

Свойство [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) используется, когда в разных источниках шрифтов есть шрифты с одинаковым названием семейства и стилем. В этом случае Aspose.Words выбирает шрифт из источника с более высоким значением приоритета. Например, в системной папке есть старая версия шрифта, а клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Загрузка шрифтов из потока {#loading-fonts-from-stream}

Aspose.Words предоставляет класс [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/), который позволяет загружать шрифты из потока. Чтобы использовать источник шрифтов stream, пользователю необходимо создать производный класс из **StreamFontSource** и предоставить реализацию метода [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream). Метод **OpenFontDataStream** может быть вызван несколько раз. В первый раз он будет вызван, когда Aspose.Words просмотрит предоставленные источники шрифтов, чтобы получить список доступных шрифтов. Позже он может быть вызван, если шрифт используется в документе для анализа данных шрифта и для встраивания данных шрифта в некоторые выходные форматы. **StreamFontSource** может быть полезен, поскольку позволяет загружать данные шрифта только тогда, когда это требуется, а не хранить их в памяти в течение всего срока службы `FontSettings`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## Сохранение и загрузка кэша поиска шрифтов

При первом поиске шрифта Aspose.Words выполняется перебор источников шрифтов, указанных пользователем, и формируется кэш поиска шрифтов на основе данных из этих источников. Таким образом, кэш будет собирать информацию о доступных шрифтах: семейство шрифтов, стиль, полное название шрифта и другие. При последующих вызовах Aspose.Words выполняет поиск информации о нужном шрифте по его названию в кэше поиска шрифтов, после чего анализирует указанные файлы для использования шрифта.

Процедура разбора всех доступных файлов шрифтов для инициализации кэша занимает довольно много времени. Aspose.Words позволяет сохранять и загружать кэш с помощью метода **FontSettings.SaveSearchCache** для решения проблемы с производительностью. То есть пользователь может загрузить ранее сохраненный кэш из файла и пропустить этап разбора всех доступных файлов шрифтов.

{{% alert color="primary" %}}

Используйте тот же метод **SaveSearchCache** для обновления кэша.

{{% /alert %}}

{{% alert color="primary" %}}

Кэш также подходит для других сценариев, когда шрифты загружаются по сети. Или для сценариев, когда нет возможности сохранить экземпляр `FontSettings` с загруженным кэшем.

{{% /alert %}}


## Получить список доступных шрифтов {#get-a-list-of-available-fonts}

Если вы хотите получить список доступных шрифтов, которые, например, могут быть использованы для рендеринга документа PDF, вы можете использовать метод [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts), как показано в следующем примере кода. Класс [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) определяет информацию о физическом шрифте, доступном для движка шрифтов Aspose.Words:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
