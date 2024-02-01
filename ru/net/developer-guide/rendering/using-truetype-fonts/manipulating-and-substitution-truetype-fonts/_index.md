---
title: Манипулирование и замена шрифтов TrueType в C#
second_title: Aspose.Words для .NET
articleTitle: Манипулирование и замена шрифтов TrueType
linktitle: Манипулирование и замена шрифтов TrueType
description: "Aspose.Words для .NET может встроить в результирующий документ правильные шрифты TrueType, чтобы гарантировать его точное отображение, используя C#. Если шрифт или определенный символ недоступен, Aspose.Words ищет подходящую замену шрифта или использует резервный механизм шрифта."
type: docs
weight: 10
url: /ru/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words требуются шрифты TrueType для различных задач, включая преобразование документов в форматы с фиксированной страницей, например PDF или XPS. Когда Aspose.Words визуализирует документ, ему необходимо выполнить встраивание и встраивание подмножества шрифтов TrueType в результирующий документ, что является обычной практикой при создании документа, включая популярные форматы PDF или XPS. Это гарантирует, что документ будет выглядеть одинаково для любого зрителя. Более того, спецификация XPS требует, чтобы шрифты всегда были встроены в документ.

Чтобы Aspose.Words точно измерял символы и успешно встраивал соответствующие шрифты, должны быть выполнены следующие условия:

1. Aspose.Words должен иметь возможность находить и получать доступ к файлам шрифтов TrueType в системе.
1. Должно быть достаточно шрифтов TrueType для Aspose.Words, желательно с теми же названиями семейств шрифтов, что и те, которые используются в документе.

Обратите внимание, что шрифт в документе представляет собой объект, такой как фамилия, стиль, размер, цвет, который отличается от объекта шрифта `TrueType` (физического шрифта). Aspose.Words преобразует шрифт в документе в физический шрифт на определенном этапе обработки. Это позволяет выполнять определенные задачи, чаще всего задачу расчета размера текста во время построения макета и встраивания/поднабора в форматы с фиксированной страницей. Также включен ряд других менее популярных задач, таких как разрешение и замена шрифтов при загрузке HTML или встраивание/подстановка в некоторые форматы потока.

## Управление шрифтами и проблемы с производительностью

Все доступные механизмы манипуляции шрифтами содержатся в классе [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Этот класс отвечает за выборку шрифтов из определенных источников шрифтов, а также за процесс замены шрифтов, как описано ниже.

Шрифты анализируются в несколько этапов:

1. Получение информации о шрифте, разрешение из всех доступных шрифтов.
1. Анализ разрешенных шрифтов для получения доступных глифов и показателей (горизонтальных и вертикальных).
1. Разбор разрешенных шрифтов для встраивания и подмножества.

Когда Aspose.Words впервые встречает шрифт в документе, он пытается получить базовую информацию о шрифте, такую как полное имя шрифта, фамилия, версия, стиль, из файлов шрифтов, расположенных в каждом источнике шрифтов. После того как все шрифты получены, Aspose.Words использует эти данные для поиска необходимых данных о шрифте или подходящей замены запрошенного шрифта.

Поскольку описанная выше процедура занимает много времени, она может негативно повлиять на производительность приложения при его первом запуске. Однако каждый экземпляр **FontSettings** имеет свой собственный кэш, что могло бы сократить время обработки последующих документов. Например, вы можете использовать экземпляр класса **FontSettings** в разных документах, что позволяет ускорить загрузку документов. Следующий пример демонстрирует это:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

В случае, когда **FontSettings** не определен явно, Aspose.Words использует экземпляр **FontSettings** по умолчанию. Этот экземпляр также автоматически распределяется между документами и может быть извлечен следующим образом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Если вы уверены, что для всех обрабатываемых документов требуются одинаковые настройки шрифта, рекомендуется настроить и использовать экземпляр **FontSettings** по умолчанию. Предположим, вам нужно использовать одни и те же источники шрифтов для всех ваших документов. В этом случае вы можете просто изменить экземпляр по умолчанию следующим образом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Пользовательский **FontSettings** имеет более высокий приоритет, чем экземпляр по умолчанию.

{{% /alert %}}

## Наличие и замена шрифтов

Текст в документе может быть отформатирован различными шрифтами, например Arial, Times New Roman, Verdana и другими. Когда Aspose.Words визуализирует документ, он пытается выбрать шрифты, указанные в документе.

Однако бывают ситуации, когда точный шрифт не может быть найден, и вместо этого Aspose.Words должен заменить его на аналогичный шрифт. Aspose.Words выбирает шрифт согласно следующему процессу:
1. Aspose.Words пытается найти шрифт среди доступных источников шрифтов с точным именем шрифта.
1. Aspose.Words пытается найти нужный шрифт среди шрифтов, встроенных в исходный документ. Некоторые форматы документов, такие как DOCX, могут содержать встроенные шрифты.
1. Если Aspose.Words не может найти требуемый шрифт с точным совпадением имени и свойством [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/), определенным для этого шрифта, то Aspose.Words найдет шрифт, определенный с помощью **AltName** из класса [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/), который определяет информацию о шрифте.
1. Если Aspose.Words не может найти определенный шрифт, а **AltName** также не определен, то правила замены шрифтов применяются один за другим, как описано ниже (когда соответствующая замена найдена, процесс замены шрифта останавливается и следующий шаг не выполняется):
	1. Сначала Aspose.Words пытается обработать имя шрифта, чтобы получить замену, в частности, он пытается удалить суффиксы с разделителями "-" и ",".<br>
	Если это правило замены имеет место, "Шрифт '&lt;OriginalFont&gt;' не найден. Вместо этого используется шрифт '&lt;SubstitutionFont&gt;'. Причина: подмена имени шрифта". появляется предупреждение.<br>
	{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
	1. Затем Aspose.Words пытается применить настройки шрифтов ОС, если они доступны, с помощью утилиты **FontConfig**. Эту функцию, отличную от Windows, необходимо использовать с ОС, совместимой с FontConfig. Почти любая ОС на базе Unix уже имеет библиотеку `FontConfig`, предназначенную для обеспечения общесистемной настройки шрифтов, настройки и доступа к приложениям. В противном случае эта библиотека может быть легко установлена пользователем.
	Aspose.Words умеет запрашивать данные и интерпретировать результаты FontConfig для своих целей. По умолчанию утилита `FontConfig` отключена. Вы можете включить его следующим образом:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
	{{< /highlight >}}
	1. На следующем шаге используется простой, но мощный механизм, называемый правилом замены **Table**. По умолчанию эта функция активна и доступна для данной операционной системы. Aspose.Words заменит шрифт этим правилом, если он не будет заменен правилом замены `FontConfig`.<br>
	Aspose.Words использует XML-таблицы, определяющие основные правила замены для разных ОС. Согласно правилу подстановки таблицы, будет использоваться список замещающих названий шрифтов.<br>
	**XML**<br>
	{{< highlight html >}}
	<TableSubstitutionSettings xmlns="Aspose.Words"> 
		<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
		</SubstitutesTable> 
	</TableSubstitutionSettings>
	{{< /highlight >}}
	Основной особенностью этого правила является возможность загрузки собственных таблиц подстановок, как это показано в следующем примере:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
	{{< /highlight >}}
	Несмотря на гибкость этого механизма, в некоторых случаях его лучше отключить, как показано ниже:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
	{{< /highlight >}}
	1. Правило подстановки **FontInfo** будет применено, если правило подстановки таблицы не сможет найти шрифт. Этот механизм включен по умолчанию. Aspose.Words находит наиболее подходящий шрифт в соответствии с информацией о шрифте, содержащейся в конкретном документе. Эту информацию можно получить из класса **FontInfo**, как показано ниже:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	FontInfoCollection fontInfos = doc.FontInfos;
	{{< /highlight >}}
	Пользователи не могут вмешиваться в рабочий процесс этой функции, если только они не решат отключить ее в случае неудовлетворительных результатов:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
	{{< /highlight >}}
	Если **FontInfo** недоступен для отсутствующего шрифта, процесс останавливается.<br>
	1. Правило замены **DefaultFont** будет применяться в случае, если замена `FontInfo` также не удалась. Это правило также включено по умолчанию. Согласно этому правилу, Aspose.Words попытается использовать шрифт по умолчанию, указанный в свойстве [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). Если пользователь не выбрал собственный шрифт по умолчанию, то в качестве шрифта по умолчанию будет использоваться "Times New Roman". Это правило можно отключить, как показано ниже:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
	{{< /highlight >}}
	Чтобы проверить текущий шрифт по умолчанию, используйте:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
	{{< /highlight >}}
	Чтобы настроить собственный вариант замены, подайте заявку:<br>
	**.NET**<br>
	{{< highlight csharp >}}
	fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
	{{< /highlight >}}
1. Если Aspose.Words не может выполнить замену шрифта, он пытается получить первый доступный шрифт из доступных источников шрифтов.
1. Наконец, если Aspose.Words не может найти шрифты среди доступных источников шрифтов, он визуализирует документ, используя бесплатный шрифт Fanwood, встроенный в сборку Aspose.Words.<br>

Если **FontInfo** доступен, *правило замены FontInfo* всегда будет разрешать шрифт и переопределять правило шрифта по умолчанию. Если вы хотите использовать правило шрифта по умолчанию, вам следует отключить *правило подстановки FontInfo*. Обратите внимание, что *правило замены FontConfig* в большинстве случаев разрешает шрифт и, таким образом, переопределяет все остальные правила.

## Как распознать, что шрифт был заменен

Иногда может быть непонятно, почему изменился макет документа или почему какой-то шрифт выглядит не так, как ожидалось. В таких случаях на помощь приходят предупреждения о подмене шрифта, реализованные интерфейсом [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/). Они имеют тип предупреждения [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) и стандартный текстовый формат описания "Шрифт".<OriginalFont> ' не обнаружено. С использованием '<SubstitutionFont> вместо этого шрифт. Причина:<Reason> ", по следующим причинам:

- "альтернативное имя из документа" – для замены на [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "подстановка шрифта" – для замены по правилу конфигурации шрифта
- "подстановка таблицы" – для замены по табличному правилу
- "подстановка информации о шрифте" – для замены по правилу информации о шрифте
- "подмена шрифта по умолчанию" – для замены по правилу шрифта по умолчанию
- "первый доступный шрифт" – для замены на первый доступный шрифт

## Настройки резервного шрифта из XML

В Aspose.Words используются два разных механизма — замена шрифта и возврат шрифта. Подмена шрифта используется, когда шрифт, указанный в документе, не удалось найти среди источников шрифтов, как это было описано в предыдущих разделах. Механизм возврата шрифта используется, когда шрифт разрешен, но не содержит определенного символа. В этом случае Aspose.Words пытается использовать для символа один из резервных шрифтов.

Существует метод [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/), который автоматически создает резервные настройки путем сканирования доступных шрифтов. Поскольку этот метод может создать неоптимальную настройку резервного варианта, вы можете управлять поведением резервного шрифта, используя свойства класса [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/). Этот класс определяет настройки механизма резервного шрифта. Вы можете получить экземпляр класса **FontFallbackSettings** следующим образом:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Подобно *правилу подстановки таблиц*, этот механизм использует для конфигурации таблицы XML. Эти XML-таблицы можно загрузить и сохранить следующими методами:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Версия Aspose.Words включает две таблицы: *MsOfficeFallbackSetting.xml* и *NotoFallbackSetting.xml*.

Таблица *MsOfficeFallbackSetting* определяет стратегию замены диапазона символов, аналогичную стратегии, используемой Microsoft Word. Таким образом, стратегия требует установки шрифтов Office Microsoft. *MsOfficeFallbackSetting* можно активировать следующим способом:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Таблица *NotoFallbackSetting* создана специально для использования со шрифтами Google Noto (подробнее о настройках шрифта Google Noto см. в следующем разделе) и ее можно включить следующим образом:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

В следующем примере кода показано, как загрузить настройки резервного шрифта из файла XML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

В приведенном выше примере кода используется следующий XML-файл:

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

## Предопределенные настройки возврата шрифтов для Google Noto шрифтов

Aspose.Words предоставляет предопределенные настройки резервного шрифта для шрифтов Google Noto. Это бесплатные шрифты, лицензированные по лицензии SIL Open Font License, которые можно загрузить по адресу Google Noto Fonts. Класс **FontFallbackSettings** предоставляет метод [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). Он загружает предопределенные резервные настройки, в которых используются шрифты Google Noto, как показано в примере кода ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

В предустановленных настройках используются только шрифты Noto в стиле Sans с обычной толщиной.

{{% /alert %}}

## Где Aspose.Words ищет шрифты

Aspose.Words пытается автоматически найти шрифты TrueType в файловой системе. Обычно для поиска шрифтов `TrueType` можно использовать поведение по умолчанию Aspose.Words, но иногда вам нужно указать собственные папки, содержащие шрифты TrueType. В теме [Укажите расположение шрифтов TrueType](/words/ru/net/specifying-truetype-fonts-location/) описано, как и где Aspose.Words ищет шрифты, а также как указать собственное расположение шрифтов.

## Различия в обработке форматов шрифтов в Aspose.Words и Microsoft Word

Существуют некоторые различия в обработке форматов шрифтов Aspose.Words и Microsoft Word, как показано в таблице ниже:

|| Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Шрифты TrueType и шрифты OpenType с контурами TrueType | Поддерживается. | Поддерживается. |
| Шрифты OpenType с контурами PostScript | Поддерживается для большинства сценариев. Встраивание в форматы с фиксированной страницей, такие как PDF и XPS, не поддерживается. Текст заменяется растровыми изображениями. | Поддерживается для большинства сценариев, включая встраивание в форматы фиксированных страниц. |
| Варианты шрифтов OpenType | Поддерживаются только именованные экземпляры. Непрерывные вариации не поддерживаются. | Поддерживается только для экземпляра по умолчанию. Именованные экземпляры и непрерывные вариации не поддерживаются. |
| Шрифты Type1 | Поддерживается в версиях Windows до 2013 года и в версиях MacOS. Поддержка прекращена для версий Windows, начиная с 2013 года. | Не поддерживается. |

## Смотрите также

- [Google Noto Шрифты](https://fonts.google.com/noto) для загрузки бесплатных шрифтов
