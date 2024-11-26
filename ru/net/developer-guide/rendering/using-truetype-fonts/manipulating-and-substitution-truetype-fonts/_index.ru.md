---
title: Манипулирование и замена шрифтов TrueType C#
second_title: Aspose.Words для .NET
articleTitle: Манипулирование и замена шрифтов TrueType
linktitle: Манипулирование и замена шрифтов TrueType
description: "Aspose.Words для .NET может вставлять правильные шрифты TrueType в полученный документ, чтобы гарантировать, что он отображается точно с использованием C#. Если шрифт или конкретный символ недоступен, Aspose.Words ищет подходящую замену шрифта или использует резервный механизм шрифта."
type: docs
weight: 10
url: /ru/net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words Требуется истинное Тип шрифтов для различных задач, включая визуализацию документов в форматы фиксированной страницы, например, PDF или XPS. Когда Aspose.Words визуализирует документ, он должен выполнять встраивание и подмножество встраивания шрифтов TrueType в полученный документ, что является обычной практикой во время генерации документа, включая популярный PDF или XPS Форматы. Это гарантирует, что документ будет выглядеть одинаково для любого зрителя. Более того, XPS Спецификация требует, чтобы шрифты всегда были встроены в документ.

Обеспечить Aspose.Words точно измеряет символы и успешно встраивает соответствующие шрифты, должны соблюдаться следующие условия:

1. Aspose.Words Найти и получить доступ к файлам шрифтов TrueType в системе.
1. Должно быть достаточно шрифтов TrueType Aspose.Words, предпочтительно с теми же фамилиями шрифтов, что и используемые в документе.

Обратите внимание, что шрифт в документе представляет собой объект, такой как фамилия, стиль, размер, цвет, который отличается от названия. `TrueType` Фонт (физический шрифт). Aspose.Words разрешает шрифт в документе к физическому шрифту на определенном этапе обработки. Это позволяет выполнять определенные задачи, чаще всего задачу расчета размера текста во время построения макета и встраивания / подстановки в форматы фиксированной страницы. Также включен ряд других менее популярных задач, таких как разрешение шрифта и замена при загрузке HTML или встраивание / подключение к некоторым форматам потока.

## Манипуляция шрифтом и проблемы производительности

Все доступные механизмы манипулирования шрифтом содержатся в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) класс. Этот класс отвечает за получение шрифтов в определенных источниках шрифтов, а также за процесс замены шрифтов, как описано ниже.

Шрифты разбираются в несколько шагов:

1. Получение информации для шрифта, разрешение со всех доступных шрифтов.
1. Парсинг разрешенных шрифтов, чтобы получить доступ glyphs и метрики (горизонтальные и вертикальные).
1. Парсирование разрешенных шрифтов для встраивания и поднастройки.

Когда Aspose.Words Впервые встречает шрифт в документе, он пытается получить основную информацию о шрифте, такую как полное имя шрифта, фамилия, версия, стиль, из файлов шрифта, расположенных в каждом источнике шрифта. После того, как все шрифты восстановлены, Aspose.Words использует эти данные для поиска необходимых данных шрифта или подходящей замены запрашиваемого шрифта.

Поскольку описанная выше процедура занимает много времени, она может негативно повлиять на производительность приложения при первом запуске. Однако каждый случай **FontSettings** Имеет собственный кэш, что может сократить время обработки последующих документов. Например, вы можете поделиться примером **FontSettings** класс между различными документами, что позволяет ускорить загрузку документов. Следующий пример демонстрирует это:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

В случае, когда **FontSettings** не определяется явно, Aspose.Words использует дефолт **FontSettings** Например. Этот экземпляр также автоматически делится между документами и может быть извлечен следующим образом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Если вы уверены, что все документы обработки требуют одинаковых настроек шрифта, то рекомендуется настроить и использовать по умолчанию **FontSettings** Например. Предположим, что вам нужно использовать одни и те же источники шрифтов для всех ваших документов. В этом случае вы можете просто изменить пример по умолчанию следующим образом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Обычай **FontSettings** имеют более высокий приоритет, чем в случае по умолчанию.

{{% /alert %}}

## Доступность шрифта и замена

Текст в документе может быть отформатирован различными шрифтами, такими как Arial, Times New Roman, Verdana и другими. Когда Aspose.Words отображает документ, он пытается выбрать шрифты, которые указаны в документе.

Однако бывают ситуации, когда точный шрифт не может быть найден и Aspose.Words Вместо этого необходимо заменить его на аналогичный шрифт. Aspose.Words Выбирает шрифт в соответствии со следующим процессом:
1. Aspose.Words пытается найти шрифт среди доступных источников шрифта с точным названием шрифта.
1. Aspose.Words пытается найти нужный шрифт среди шрифтов, встроенных в оригинальный документ. Некоторые форматы документов, такие как DOCX, могут содержать встроенные шрифты.
1. Если Aspose.Words не может найти требуемый шрифт с точным названием соответствия, и [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) свойство, определенное для этого шрифта, затем Aspose.Words Найдет шрифт, определенный с **AltName** из которого [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) класс, который определяет информацию о шрифте.
1. Если Aspose.Words не может найти определенный шрифт, и **AltName** Также не определено, затем применяются правила замены шрифта один за другим, как описано ниже (когда найдена соответствующая замена, процесс замены шрифта прекращается и следующий шаг не выполняется):
   Во-первых, Aspose.Words Он пытается обработать название шрифта, чтобы получить замену, в частности, он пытается удалить суффиксы с "-" и "", разделителями.<br/>
      Если это правило замещения имеет место, "Фонт <ОригиналФонт>" не найден. Вместо этого используется шрифт <SubstitutionFont>. Причина: замена названия шрифта". Появляется предупреждение.<br/>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1 Тогда Aspose.Words попытки применить настройки шрифта ОС, если они доступны, используя **FontConfig** полезность. Этот не-Windows Функция должна использоваться с совместимой с FontConfig ОС. Практически любая Unix-ОС уже имеет `FontConfig` Библиотека, которая предназначена для обеспечения общесистемной конфигурации шрифта, настройки и доступа к приложениям. В противном случае эта библиотека может быть легко установлена пользователем.
      Aspose.Words Он знает, как запрашивать данные и интерпретировать результаты FontConfig для своих целей. По умолчанию, `FontConfig` Полезность отключена. Вы можете включить его следующим образом:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1.На следующем этапе используется простой, но мощный механизм, называемый **Table** Правило замещения. По умолчанию эта функция активна и доступна для данной операционной системы. Aspose.Words заменят шрифт этим правилом, если он не замещен `FontConfig` Правило замещения.<br/>
      Aspose.Words Использует таблицы XML, которые определяют основные правила замены для разных ОС. Согласно правилу замещения таблицы будет использоваться список имен заменяющих шрифтов.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Главной особенностью этого правила является возможность загрузки собственных таблиц замены, как это показано в следующем примере:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Несмотря на гибкость этого механизма, бывают случаи, когда его лучше отключить, как показано ниже:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1.The **FontInfo** Правило замещения применяется, если правило замещения таблицы не может найти шрифт. Этот механизм включен по умолчанию. Aspose.Words находит наиболее подходящий шрифт в соответствии с информацией о шрифте, содержащейся в конкретном документе. Эту информацию можно получить из **FontInfo** класс, как показано ниже:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Пользователи не могут вмешиваться в рабочий процесс этой функции, если они не решат отключить ее в случае неудовлетворительных результатов:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Если **FontInfo** недоступен для отсутствующего шрифта, затем процесс прекращается.<br/>
   1. **DefaultFont** Правило замещения применяется в случае, когда `FontInfo` Замена тоже провалилась. Это правило также включено по умолчанию. Согласно этому правилу, Aspose.Words будет пытаться использовать шрифт по умолчанию, указанный в [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) собственность. Если пользователь не выбрал свой собственный шрифт по умолчанию, то в качестве шрифта по умолчанию будет использоваться "Times New Roman". Это правило может быть отключено, как показано ниже:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Чтобы проверить текущий шрифт по умолчанию, используйте:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Чтобы создать свой собственный вариант замены, примените:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Если Aspose.Words не в состоянии выполнить замену шрифта, он пытается получить первый доступный шрифт из доступных источников шрифта.
1. Наконец, если Aspose.Words не может найти никаких шрифтов среди доступных источников шрифта, он отображает документ с помощью бесплатного шрифта Fanwood, который встроен в источник. Aspose.Words собрание.<br/>

Если **FontInfo** Доступно, правило замены *FontInfo* всегда разрешает шрифт и отменяет правило шрифта по умолчанию. Если вы хотите использовать правило шрифта по умолчанию, вы должны отключить правило замены *FontInfo *. Обратите внимание, что правило замены *FontConfig* в большинстве случаев разрешает шрифт и, таким образом, отменяет все другие правила.

## Как распознать Что шрифт был заменен

Иногда может быть неясно, почему изменился макет документа или почему какой-то шрифт выглядит не так, как ожидалось. В таких случаях сообщения о замене шрифта, реализуемые [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) Интерфейс приходит на помощь. У них есть [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) тип предупреждения и стандартный текстовый формат описания "Фонт"<originalfont>Не найдено. Используя<substitutionfont>Вместо этого шрифт. Причина: <reason>", по следующим причинам:</reason></substitutionfont></originalfont>

- "альтернативное название из документа" - для замены [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "замена шрифта" - для замены правилом конфигурации шрифта
- "замена стола" - замена по правилу стола
- "font info substitution" - для замены правилом font info
- "замена шрифта по умолчанию" - для замены правилом шрифта по умолчанию
- "первый доступный шрифт" - для замены первым доступным шрифтом

## Настройки FallBack от XML

Существуют два различных механизма, используемых в Aspose.Words - Замена шрифта и резервный шрифт. Замена шрифта используется, когда шрифт, указанный в документе, не может быть найден среди источников шрифта, как это было описано в вышеуказанных разделах. Механизм резервного копирования шрифта используется при разрешении шрифта, но он не содержит определенного характера. В этом случае, Aspose.Words пытается использовать один из резервных шрифтов для персонажа.

Существует A [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) метод, который автоматически создает резервные настройки путем сканирования доступных шрифтов. Поскольку этот метод может производить неоптимальную настройку резервного копирования, вы можете контролировать резервное поведение шрифта, используя свойства резервного копирования. [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) класс. Этот класс определяет настройки механизма резервного копирования шрифта. Вы можете получить экземпляр **FontFallbackSettings** класс следующим образом:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Аналогично правилу замещения таблицы, этот механизм использует таблицы XML для конфигурации. Эти таблицы XML могут быть загружены и сохранены следующими способами:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

The Aspose.Words Выпуск включает две таблицы: *MsOfficeFallbackSetting.xml* и *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* Таблица определяет стратегию замены для ряда символов, которая аналогична стратегии, используемой Microsoft Word. Таким образом, стратегия требует установки Microsoft Офисные шрифты. *MsOfficeFallbackSetting* Можно активировать следующим способом:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

The *NotoFallbackSetting* Стол создан специально для использования с Google Noto шрифты (см. подробнее) Google Noto Настройки шрифта в следующем разделе) и могут быть включены следующим образом:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Следующий пример кода показывает, как загрузить параметры резервного копирования шрифта из XML-файла:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

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

## Предопределенные настройки Font FallBack для Google Noto Шрифты

Aspose.Words обеспечивает предопределенные настройки резервного копирования шрифта для Google Noto шрифты. Это бесплатные шрифты, лицензированные в соответствии с лицензией SIL Open Font License, которые можно загрузить из Google Noto Шрифты. The **FontFallbackSettings** Класс обеспечивает [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) метод. Он загружает предопределенные настройки резервного копирования, которые используют Google Noto шрифты, как показано в примере кода ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

В предопределенных настройках используются только шрифты Noto в стиле Sans с регулярным весом.

{{% /alert %}}

## Где? Aspose.Words Ищите шрифты

Aspose.Words Попытки найти шрифты TrueType в файловой системе автоматически. Обычно вы можете полагаться на поведение по умолчанию. Aspose.Words Чтобы найти `TrueType` шрифты, но иногда нужно указывать собственные папки, содержащие шрифты TrueType. The [Укажите истинное Тип расположения шрифтов](/words/ru/net/specifying-truetype-fonts-location/) Тема описывает, как и где Aspose.Words Ищите шрифты, а также как указать свои собственные места шрифтов.

## Различия в обработке шрифтовых форм в Aspose.Words и Microsoft Word

Существуют некоторые различия в обработке форматов шрифтов в Aspose.Words и Microsoft Word Как показано в таблице ниже:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Шрифты TrueType и OpenType с очертаниями TrueType | Поддерживаю. | Поддерживаю. |
| Шрифты OpenType с очертаниями PostScript | Поддерживается в большинстве сценариев. Встраивание в форматы фиксированной страницы, такие как PDF и XPS Они не поддерживаются. Текст заменяется растровыми изображениями. | Поддерживается для большинства сценариев, включая встраивание в форматы фиксированной страницы. |
| Вариации шрифта OpenType | Поддерживаются только названные экземпляры. Постоянные вариации не поддерживаются. | Поддерживается только по умолчанию. Названные экземпляры и постоянные вариации не поддерживаются. |
| Шрифты типа 1 | Поддерживается на Windows версии до 2013 года и в версиях для MacOS. Поддержка прекращается Windows Версии, начиная с 2013 года. | Не поддерживается. |

## Смотрите также

- [Google Noto Шрифты](https://fonts.google.com/noto) Скачать бесплатные шрифты
