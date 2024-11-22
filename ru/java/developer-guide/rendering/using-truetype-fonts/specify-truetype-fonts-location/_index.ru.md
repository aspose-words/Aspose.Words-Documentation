---
title: Укажите истинное Тип шрифтов Расположение в Java
second_title: Aspose.Words для Java
articleTitle: Укажите истинное Тип расположения шрифтов
linktitle: Укажите истинное Тип расположения шрифтов
description: "Укажите различные Правда Источники шрифтов типа: системная папка, источники пользователей, загрузка шрифтов из потока, файловая система или память с использованием Java."
type: docs
weight: 30
url: /ru/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Эта тема описывает поведение по умолчанию Aspose.Words когда он ищет шрифты TrueType, включая специфические отличия операционной системы, и демонстрирует, как указать источники шрифтов пользователя.

The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) Класс используется для указания различных источников шрифтов. Существует несколько реализаций **FontSourceBase** класс:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Подробная информация о реализации некоторых классов объясняется ниже.

## Загрузка шрифтов из системы {#loading-fonts-from-system}

Есть особая [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) Класс, который всегда используется по умолчанию. Он представляет все шрифты TrueType, установленные в системе. Таким образом, можно создать список источников с **SystemFontSource** и любые другие необходимые источники:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Один экземпляр из **SystemFontSource** Класс определяется по умолчанию в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). На разных операционных системах шрифты могут располагаться в разных местах. Однако, используя a **FontSettings** Пример для каждого документа не является оптимальным решением. В большинстве случаев, используя [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Должно быть достаточно.

Индивидуальные экземпляры нужны только в том случае, если для разных документов требуется использовать разные источники шрифтов, что является редким случаем. Используя несколько **FontSettings** Примеры снижают производительность, потому что они не разделяют кэш.

### Где? Aspose.Words Ищите шрифты TrueType Windows

В большинстве случаев, Windows Пользователи не сталкиваются со значительными проблемами с пропущенными шрифтами или неправильными макетами. Как правило, Aspose.Words проходит через документ, и когда он сталкивается со ссылкой шрифта, он успешно извлекает данные шрифта из системной папки.

На Windows> Aspose.Words Сначала берет все доступные шрифты из _%windir%\Fonts папка. Эта настройка будет работать для вас большую часть времени. Вы указываете только свои собственные папки шрифтов, если это необходимо. Aspose.Words Ищите дополнительные шрифты, зарегистрированные в HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts Ключ от реестра. Кроме того, Windows 10 позволяет устанавливать шрифты для текущего пользователя. Фонты помещаются в %userprofile%\AppData\Local\Microsoft\Windows\Fonts в папке, а также указанной в HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts реестр, где Aspose.Words Будем искать эти шрифты.

Если документ содержит встроенные шрифты, Aspose.Words Вы можете прочитать соответствующие данные шрифта из документа и использовать их для создания макета документа. Документы также могут содержать ссылки на шрифты, которых нет в системных папках, и в этом случае работают следующие сценарии:

- Пользователи могут создавать новые источники шрифтов через **FontSettings** класс
- Aspose.Words Можно попытаться заменить пропущенный шрифт на аналогичный

### Фонты на Non-Windows Системы

Aspose.Words будет искать шрифты в системных папках шрифтов. Список этих папок можно увидеть по [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) метод. Если не найдено поддерживаемых шрифтов, Aspose.Words Используется встроенный по умолчанию шрифт Fanwood.ttf.

Поскольку метрики шрифтов Windows и не-Windows OS отличается, Aspose.Words делает все возможное, чтобы найти похожий шрифт и построить макет, похожий на оригинал. Однако это не всегда возможно. В этих случаях, **FontSettings** Класс должен использоваться для добавления пользовательских шрифтов или правил замены.

#### Где? Aspose.Words Ищите шрифты TrueType Linux

Различный Linux Дистрибутивы могут хранить шрифты в разных папках. Aspose.Words Ищите шрифты в нескольких местах. По умолчанию, Aspose.Words `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Такое поведение будет работать для большинства Linux дистрибутивы, но это не гарантируется работать все время, в этом случае вам может потребоваться указать местоположение true шрифтов явно. Для этого вам нужно знать, где на вашем устройстве установлены шрифты TrueType. Linux распределения.

#### Где? Aspose.Words Поиск шрифтов TrueType на Mac OS X

Aspose.Words Поиск шрифтов в папке /Library/Fonts, которая является стандартным расположением шрифтов TrueType на Mac OS X. Хотя этот параметр будет работать для вас большую часть времени, вам может потребоваться указать свои собственные папки шрифтов в случае, когда вам нужно.

#### Шрифты TrueType Android

На Android, Рабочий процесс шрифтов инкапсулируется в класс Typeface.
Существует пять типов шрифтов, каждый из которых представляет собой группу похожих семейств шрифтов:

- Несправедливо
- DEFAULT_BOLD
- Моноспес
- SANS_SERIF
- СЕРИФ

Например, согласно Androidэто [Шрифты.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) Файл config, "times" относится к семейству "serif", поэтому NotoSerif-Regular.ttf будет использоваться при запросе "times":

**Шрифты.xml**

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

Для поиска похожих шрифтов используются стратегии, описанные ранее

Помимо них, Aspose.Words Имеет собственный список замен для Android Платформа.

Допустим, документ содержит шрифт PMingLiU-ExtB, прежде всего, Aspose.Words Ищу нужный шрифт в системных источниках.

Список по умолчанию Android Папки шрифта это:

- /system/fonts
- /system/font
- /data/fonts

The Aspose.Words просматривает определяемые пользователем источники, которые были установлены с помощью метода:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Если указана явная замена, Aspose.Words Заменяет недостающий шрифт предложением пользователя:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Если ни одно из правил не сработало, Aspose.Words Проверьте таблицу внутренней замены. Если таблица содержит информацию о хорошей посадке, шрифт заменяется. В нашем случае Aspose.Words Выберите `Typeface.SERIF`. Но если таблица ничего не знает о запрашиваемом шрифте, Aspose.Words Подбирает шрифт на основе специальных правил MS Word или ближайшего расстояния в пространстве Panose.

#### Шрифты TrueType .NET Core и Xamarin

Для .NET Core и Xamarin применяется то же правило, что и для Aspose.Words для Java Версия. По умолчанию доступны все системные шрифты платформы, на которой работает приложение.
Список папок, где будет выполняться поиск, можно найти, позвонив по методу:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Загрузка шрифтов из папки {#loading-fonts-from-folder}

Если обрабатываемый документ содержит ссылки на шрифты, которых нет в системе, или вы не хотите добавлять их в системную папку, или вам не хватает разрешений, то лучшим решением будет добавить папку с собственными шрифтами с помощью системы. `SetFontsSources` метод. Это позволит заменить системный источник на пользовательский. Aspose.Words больше не будет искать шрифты в реестре или Windows\Font папка и вместо этого только сканировать шрифты в указанной папке (ах). The `GetFontSources` Метод возвращает соответствующие значения.

### Укажите одну или несколько папок шрифта

The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) Методы SetFontsFolders являются ярлыками для **SetFontSources** Способ с одним или несколькими [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) Примеры. Эти методы используются для определения того, где Aspose.Words Нужно искать шрифты. Если папка отсутствует или недоступна, Aspose.Words Просто игнорирует эту папку. Если все папки, включая источники для замены шрифта, были проигнорированы, Aspose.Words По умолчанию будет использоваться шрифт Fanwood.

Следующий пример показывает, как установить папку или источник, который Aspose.Words Впоследствии будет использоваться для поиска шрифтов TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Дополнительный булевой параметр контролирует, сканируются ли шрифты рекурсивно через все папки, следовательно, сканируют все детские папки указанной папки. Следующий пример показывает, как установить Aspose.Words искать в нескольких папках шрифты TrueType при рендеринге или встраивании шрифтов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Обратите внимание на приоритеты. Если есть шрифты с одинаковым именем и стилем в разных источниках шрифтов, то Aspose.Words Выберите шрифт из источника с более высоким приоритетом. См. описание поля "Приоритет" ниже.

{{% /alert %}}

Если вы не хотите использовать системные шрифты, Aspose.Words Позволяет игнорировать их и использовать только собственные шрифты:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Приоритетное имущество

The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) Собственность используется, когда есть шрифты с одинаковым именем и стилем в разных источниках шрифтов. В этом случае Aspose.Words Выберите шрифт из источника с более высоким приоритетом. Например, на системной папке есть старая версия шрифта, и клиент добавил новую версию того же шрифта в пользовательскую папку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Загрузка шрифтов от Stream {#loading-fonts-from-stream}

Aspose.Words обеспечивает [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) класс, который позволяет загружать шрифты из потока. Для использования источника потокового шрифта пользователю необходимо создать производный класс из **StreamFontSource** и обеспечить осуществление [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) метод. The **OpenFontDataStream** Метод можно назвать несколько раз. Впервые он будет называться Aspose.Words сканирует предоставленные источники шрифтов, чтобы получить список доступных шрифтов. Позже его можно назвать, если шрифт используется в документе для разбора данных шрифта и встраивания данных шрифта в некоторые форматы вывода. **StreamFontSource** может быть полезным, поскольку позволяет загружать данные шрифта только тогда, когда это необходимо, и не хранить их в памяти для `FontSettings` пожизненно.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** является альтернативой [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) Поскольку всегда можно загрузить поток в память и передать его в **MemoryFontSource**. Разница заключается в том, что **MemoryFontSource** хранится в памяти постоянно, и **StreamFontSource** Он загружается по требованию и утилизируется сразу. Но он может быть загружен несколько раз, как описано выше. В некоторых случаях **MemoryFontSource** предпочтительнее, а в других **StreamFontSource**.

## Сохраните и загрузите кэш поиска шрифта

При первом поиске шрифта, Aspose.Words Итерирует по источникам шрифта, указанным пользователем, и формирует кэш поиска шрифта на основе данных из этих источников. Таким образом, кэш будет собирать информацию о доступных шрифтах: семействе шрифтов, стиле, полном названии шрифта и других. Последующие звонки, Aspose.Words осуществляет поиск информации о желаемом шрифте по его имени в кэше поиска шрифта, после чего анализирует указанные файлы для использования шрифта.

Процедура анализа всех доступных файлов шрифтов для инициализации кэша занимает довольно много времени. Aspose.Words позволяет сохранять и загружать кэш с помощью **FontSettings.SaveSearchCache** Способ решения проблемы производительности. То есть пользователь может загрузить ранее сохраненный кэш из файла и пропустить этап разбора всех доступных файлов шрифтов.

{{% alert color="primary" %}}

Используйте тот же **SaveSearchCache** Способ обновления кэша.

{{% /alert %}}

{{% alert color="primary" %}}

Кэш также подходит для других сценариев, когда шрифты загружаются по сети. Или для сценариев, когда нет возможности хранить `FontSettings` Пример с загруженным кэшем.

{{% /alert %}}


## Получите список доступных шрифтов {#get-a-list-of-available-fonts}

Если вы хотите получить список доступных шрифтов, которые, например, могут быть использованы для рендеринга PDF-документа, вы можете использовать [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) Способ, как показано в следующем примере кода. The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) класс определяет информацию о физическом шрифте, доступном для Aspose.Words Двигатель шрифта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
