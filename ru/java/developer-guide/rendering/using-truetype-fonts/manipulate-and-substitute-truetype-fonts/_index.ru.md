---
title: Манипулирование шрифтами TrueType и их замена
second_title: Aspose.Words для Java
articleTitle: Манипулирование шрифтами TrueType и их замена
linktitle: Манипулирование шрифтами TrueType и их замена
description: "Aspose.Words для Java может вставлять правильные шрифты TrueType в результирующий документ, чтобы обеспечить его точное отображение, или искать подходящую замену шрифта, или использовать резервный механизм изменения шрифта."
type: docs
weight: 10
url: /ru/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words требуются шрифты TrueType для выполнения различных задач, включая перевод документов в формат фиксированной страницы, например, PDF или XPS. Когда Aspose.Words отрисовывает документ, ему необходимо выполнить встраивание и подмножество шрифтов TrueType в результирующий документ, что является обычной практикой при создании документа, включая популярные форматы PDF или XPS. Это гарантирует, что документ будет выглядеть одинаково для любого пользователя. Кроме того, спецификация XPS требует, чтобы шрифты всегда были встроены в документ.

Чтобы гарантировать, что Aspose.Words точно отображает символы и успешно вставляет соответствующие шрифты, должны быть выполнены следующие условия:

1. Aspose.Words должна быть возможность находить файлы шрифтов TrueType в системе и получать к ним доступ.
1. Для Aspose.Words должно быть доступно достаточное количество шрифтов TrueType, предпочтительно с теми же названиями семейств шрифтов, что и те, которые используются в документе.

Обратите внимание, что шрифт в документе представляет собой объект, такой как фамилия, стиль, размер, цвет, который отличается от объекта `TrueType` font (физический шрифт). Aspose.Words преобразует шрифт в документе в физический шрифт на определенном этапе обработки. Это позволяет выполнять определенные задачи, чаще всего это задача расчета размера текста при создании макета и встраивания/подгонки к форматам фиксированных страниц. Аналогичным образом включен ряд других, менее популярных задач, таких как распознавание и замена шрифтов при загрузке HTML или встраивание/подстановка в некоторые форматы flow.

## Манипулирование шрифтами и проблемы с производительностью

Все доступные механизмы манипулирования шрифтами содержатся в классе [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Этот класс отвечает за выборку шрифтов из определенных источников, а также за процесс замены шрифта, как описано ниже.

Анализ шрифтов выполняется в несколько этапов:

1. Получение информации о шрифте, выбор из всех доступных шрифтов.
1. Анализ разрешенных шрифтов для получения доступных глифов и метрик (горизонтальных и вертикальных).
1. Анализ разрешенных шрифтов для встраивания и подгруппирования.

Когда Aspose.Words впервые встречает шрифт в документе, он пытается получить основную информацию о шрифте, такую как полное название шрифта, фамилия, версия, стиль, из файлов шрифтов, расположенных в каждом источнике шрифта. После извлечения всех шрифтов Aspose.Words использует эти сведения для поиска требуемых данных шрифта или подходящей замены запрашиваемого шрифта.

Поскольку описанная выше процедура занимает много времени, это может негативно сказаться на производительности приложения при его первом запуске. Однако каждый экземпляр **FontSettings** имеет свой собственный кэш, что может сократить время обработки последующих документов. Например, вы можете совместно использовать экземпляр класса **FontSettings** для разных документов, что позволяет ускорить загрузку документов. Следующий пример демонстрирует это:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

В случае, когда **FontSettings** не определено явно, Aspose.Words использует экземпляр по умолчанию **FontSettings**. Этот экземпляр также автоматически распределяется между документами и может быть извлечен следующим образом:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Если вы уверены, что для всех обрабатываемых документов требуются одинаковые настройки шрифта, рекомендуется настроить и использовать экземпляр по умолчанию **FontSettings**. Предположим, что вам нужно использовать одинаковые источники шрифтов для всех ваших документов. В этом случае вы можете просто изменить экземпляр по умолчанию следующим образом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Пользовательский экземпляр **FontSettings** имеет более высокий приоритет, чем экземпляр по умолчанию.

{{% /alert %}}

## Доступность и замена шрифтов

Текст в документе может быть отформатирован различными шрифтами, такими как Arial, Times New Roman, Verdana и другими. При отображении документа Aspose.Words выполняется попытка выбрать шрифты, указанные в документе.

Однако бывают ситуации, когда невозможно найти точный шрифт, и Aspose.Words необходимо заменить его на аналогичный шрифт. Aspose.Words выбор шрифта осуществляется в соответствии со следующим процессом:

1. Aspose.Words пытается найти шрифт с точным названием среди доступных источников шрифтов.
1. Aspose.Words пытается найти нужный шрифт среди шрифтов, встроенных в исходный документ. Некоторые форматы документов, такие как DOCX, могут содержать встроенные шрифты.
1. Если Aspose.Words не удается найти требуемый шрифт с точным совпадением названия и свойства [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName), определенного для этого шрифта, то Aspose.Words найдет шрифт, определенный с помощью **AltName** из класса [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), который определяет информацию о шрифте.
1. Если Aspose.Words не удается найти определенный шрифт, а **AltName** также не определен, то правила замены шрифта применяются последовательно, как описано ниже (когда соответствующая замена найдена, процесс замены шрифта останавливается и следующий шаг не выполняется).:
   1. Aspose.Words попытается применить настройки шрифта OS, если они доступны, с помощью утилиты `FontConfig`. Эта функция, не совместимая с Windows, должна использоваться с OS, совместимым с FontConfig. Практически в любой Unix-системе OS уже есть библиотека `FontConfig`, предназначенная для обеспечения общесистемной настройки шрифтов, кастомизации и доступа к приложениям. В противном случае пользователь может легко установить эту библиотеку.<br>
      Aspose.Words умеет запрашивать данные и интерпретировать результаты FontConfig для своих собственных целей. По умолчанию утилита `FontConfig` отключена. Вы можете включить ее следующим образом:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Следующий шаг - это простой, но невероятно мощный механизм, называемый [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). По умолчанию эта функция активна и доступна для любых OS. В Aspose.Words используются таблицы XML, которые определяют основные правила подстановки для различных OS. В соответствии с правилом подстановки в таблицу, будет использоваться список заменяющих названий шрифтов.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - шрифт, который необходимо заменить, SubstituteFonts - список вариантов замены, разделенных запятой. Для замены используется первый доступный шрифт.<br>
      Главной особенностью этого правила является возможность загрузки ваших собственных таблиц подстановки, как это показано в следующем примере:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Вы можете взять за основу существующую таблицу из jar или сохранить ее программно следующим образом:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Несмотря на гибкость этого механизма, в некоторых случаях его лучше отключить, как показано ниже:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Правило подстановки **FontInfo** будет применено, если не удается найти шрифт с помощью правила подстановки в таблицу. Этот механизм включен по умолчанию. Aspose.Words находит наиболее подходящий шрифт в соответствии с информацией о шрифте, содержащейся в конкретном документе. Эту информацию можно получить из класса **FontInfo**, как показано ниже:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Пользователи не могут вмешиваться в рабочий процесс этой функции, если только они не решат отключить ее в случае неудовлетворительных результатов:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Если **FontInfo** недоступно для отсутствующего шрифта, то процесс останавливается.
   1. правило подстановки **DefaultFont** будет применено в том случае, если подстановка `FontInfo` также завершилась неудачей. Это правило также включено по умолчанию. В соответствии с этим правилом Aspose.Words попытается использовать шрифт по умолчанию, указанный в свойстве [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Если пользователь не выбрал свой собственный шрифт по умолчанию, то в качестве шрифта по умолчанию будет использоваться "Times New Roman". Это правило можно отключить, как показано ниже:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Чтобы проверить текущий шрифт по умолчанию, используйте:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Чтобы настроить свой собственный вариант замены, примените:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Если Aspose.Words не может выполнить замену шрифта, он пытается получить первый доступный шрифт из доступных источников шрифтов.
1. Наконец, если Aspose.Words не удается найти какие-либо шрифты среди доступных источников шрифтов, документ отрисовывается с использованием бесплатного шрифта Fanwood, встроенного в сборку Aspose.Words.

{{% alert color="primary" %}}

Если доступно значение **FontInfo**, параметр *FontInfo substitution rule* всегда будет разрешать шрифт и переопределять правило шрифта по умолчанию. Если вы хотите использовать правило шрифта по умолчанию, вам следует отключить параметр *FontInfo substitution rule*. Обратите внимание, что *FontConfig substitution rule* в большинстве случаев определяет шрифт и, таким образом, переопределяет все остальные правила.

{{% /alert %}}

## Как распознать, Что Шрифт Был Заменен

Иногда может быть непонятно, почему изменился формат документа или почему какой-то шрифт выглядит не так, как ожидалось. В таких случаях на помощь приходят сообщения о замене шрифта, реализованные в интерфейсе [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/). Они имеют тип предупреждения [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) и стандартный текстовый формат описания "Шрифт '<OriginalFont>' не найден. Используя '<SubstitutionFont>' шрифт вместо этого. Причина: <Reason>", по следующим причинам:

- "альтернативное название из документа" – для замены на [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "подстановка fontconfig" – для подстановки по правилу настройки шрифта
- "подстановка в таблицу" – для подстановки по правилу таблицы
- "подстановка информации о шрифте" – для подстановки по правилу информации о шрифте
- "замена шрифта по умолчанию" – для замены по правилу шрифта по умолчанию
- "первый доступный шрифт" – для замены на первый доступный шрифт

## Настройки шрифта FallBack из XML

В Aspose.Words используются два разных механизма - подстановка шрифта и резервный вариант шрифта. Подстановка шрифта используется, когда шрифт, указанный в документе, не может быть найден среди источников шрифта, как это было описано в предыдущих разделах. Механизм восстановления шрифта используется, когда шрифт разрешен, но он не содержит определенного символа. В этом случае Aspose.Words пытается использовать один из резервных шрифтов для символа.

Существует метод [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic), который автоматически создает резервные настройки путем сканирования доступных шрифтов. Поскольку этот метод может привести к неоптимальным резервным настройкам, вы можете управлять поведением резервного шрифта, используя свойства класса [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Этот класс определяет настройки резервного механизма font. Вы можете получить экземпляр класса **FontFallbackSettings** следующим образом:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Аналогично *Table substitution rule*, этот механизм использует XML таблицы для настройки. Эти XML таблицы могут быть загружены и сохранены следующими способами:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Версия Aspose.Words содержит две таблицы: *MsOfficeFallbackSetting.xml* и *NotoFallbackSetting.xml*.

Таблица *MsOfficeFallbackSetting* определяет стратегию замены для диапазона символов, которая аналогична стратегии, используемой в Microsoft Word. Таким образом, стратегия требует установки шрифтов Office Microsoft. *MsOfficeFallbackSetting* можно активировать следующим способом:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Таблица *NotoFallbackSetting* создана специально для использования со шрифтами Google Noto (подробнее о настройках шрифта Google Noto читайте в следующем разделе) и может быть включена следующим образом:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

В следующем примере кода показано, как загрузить резервные настройки шрифта из файла XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

В приведенном выше примере кода используется следующий файл XML:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Предопределенные настройки шрифта FallBack для шрифтов Google Noto

Aspose.Words предоставляет предопределенные параметры резервного копирования шрифтов для Google Noto шрифтов. Это бесплатные шрифты, лицензированные по лицензии SIL Open Font, которые можно загрузить из Google Noto Fonts. Класс **FontFallbackSettings** предоставляет метод [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Он загружает предопределенные резервные настройки, в которых используются шрифты Google Noto, как показано в примере кода ниже:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

В предопределенных настройках используются только шрифты Sans style Noto с обычным весом.

{{% /alert %}}

## Где Aspose.Words Выполняет поиск шрифтов

Aspose.Words пытается автоматически найти TrueType шрифта в файловой системе. Обычно для поиска `TrueType` шрифтов вы можете положиться на поведение Aspose.Words по умолчанию, но иногда вам нужно указать свои собственные папки, содержащие TrueType шрифта. То [Укажите расположение TrueType шрифтов](/words/java/specify-truetype-fonts-location/) в этом разделе описывается, как и где Aspose.Words выполняет поиск шрифтов, а также как указать собственное расположение шрифтов.

## Различия в обработке форматов шрифтов в Aspose.Words и Microsoft Word

Существуют некоторые различия в обработке форматов шрифтов в Aspose.Words и Microsoft Word, как показано в таблице ниже:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType шрифтов и OpenType шрифтов с TrueType контурами | Поддерживаемый. | Поддерживаемый. |
| OpenType шрифты с PostScript контурами | Поддерживается для большинства сценариев. Встраивание в форматы с фиксированной страницей, такие как PDF и XPS, не поддерживается. Текст заменяется растровыми изображениями. | Поддерживается для большинства сценариев, включая встраивание в форматы с фиксированными страницами. |
| OpenType Варианты шрифта | Поддерживаются только именованные экземпляры. Непрерывные изменения не поддерживаются. | Поддерживается для единственного экземпляра по умолчанию. Именованные экземпляры и непрерывные изменения не поддерживаются. |
| Шрифты Type1 | Поддерживается в версиях Windows до 2013 года и в версиях MacOS. Начиная с 2013 года поддержка в версиях Windows прекращена. | Не поддерживается. |

## Смотрите также

- [Google Noto Шрифты](https://fonts.google.com/noto) как скачать бесплатные шрифты


