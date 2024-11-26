---
title: Манипулиране и заместване на шрифтове TrueType
second_title: Aspose.Words вместо Java
articleTitle: Манипулиране и заместване на шрифтове TrueType
linktitle: Манипулиране и заместване на шрифтове TrueType
description: "Aspose.Words вместо Java може да внедри правилните шрифтове TrueType в получения документ, за да гарантира, че той показва точно, или да търси подходяща замяна на шрифта, или да използва механизма за изтегляне на шрифта."
type: docs
weight: 10
url: /bg/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words изисква True Тип шрифтове за различни задачи, включително предоставяне на документи във формат с фиксирана страница, например PDF или XPS. Кога Aspose.Words прави документ, той трябва да извършва вграждане и подмножество на TrueType шрифтове в получения документ, което е нормална практика по време на създаване на документ, включително популярен PDF или XPS формати. Това гарантира, че документът ще изглежда същият на всеки зрител. Освен това, XPS Спецификацията изисква шрифтовете винаги да бъдат вградени в документа.

За да се гарантира Aspose.Words точно измерва символите и успешно вгражда съответните шрифтове, трябва да бъдат изпълнени следните условия:

1. Aspose.Words трябва да има достъп до файловете с TrueType на системата.
1. Трябва да има достатъчно шрифтове TrueType Aspose.Words, за предпочитане със същите фамилни шрифтове като използваните в документа.

Имайте предвид, че шрифтът в документа представлява субект, като фамилно име, стил, размер, цвят, който е различен от `TrueType` структура на шрифта (физически шрифт). Aspose.Words решава шрифта в документа на физически шрифт на някакъв етап на обработка. Това дава възможност за определени задачи, най-често задачата за изчисляване на размера на текста по време на изграждането на оформлението и вграждане/заместване във формат с фиксирана страница. Редица други по-малко популярни задачи, като решаване на шрифтове и заместване при зареждане на HTML или вграждане/заместване в някои формати на потоци, също са активирани.

## Настройки на шрифта

Всички налични механизми за манипулиране на шрифта се съдържат в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) Клас. Този клас отговаря за извличането на шрифтове в рамките на определени източници на шрифт, както и за процеса на заместване на шрифта, както е описано по-долу.

Шрифтовете се парализират в няколко стъпки:

1. Получаване на информация за шрифт, решаване от всички налични шрифтове.
1. Преглед на решените шрифтове за достъп glyphs и метрици (хоризонтално и вертикално).
1. Преглед на решените шрифтове за вграждане и разстройване.

Кога Aspose.Words среща шрифт в документа за първи път, той се опитва да получи основна информация за шрифта, като например пълното име на шрифта, фамилно име, версия, стил, от шрифтовете, разположени във всеки източник на шрифт. След като всички шрифтове са изтеглени, Aspose.Words използва тези данни, за да намери необходимите данни за шрифта или подходяща замяна на поискания шрифт.

Тъй като описаната по-горе процедура отнема време, тя може да повлияе отрицателно на ефективността на приложението при първото му пускане. Въпреки това, всеки случай на **FontSettings** има собствен кеш, който може да намали времето за обработка на последващите документи. Например, можете да споделите случай на **FontSettings** клас между различните документи, което ви позволява да ускорите зареждането на документите. Следният пример показва следното:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

В случай, когато **FontSettings** не е определено изрично, Aspose.Words използва по подразбиране **FontSettings** Например. Този случай се споделя автоматично и между документите и може да бъде извлечен, както следва:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Ако сте сигурни, че всички документи за обработка изискват едни и същи настройки на шрифта, тогава се препоръчва да се създаде и да се използва по подразбиране **FontSettings** Например. Предполагам, че трябва да използвате едни и същи източници на шрифт за всички ваши документи. В този случай можете просто да измените процедурата по подразбиране, както следва:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Обичаят **FontSettings** имат по-висок приоритет от случаите на неизпълнение.

{{% /alert %}}

## Наличност на шрифта и заместване

Текстът в един документ може да бъде форматиран с различни шрифтове като Arial, Times New Roman, Verdana и др. Кога Aspose.Words прави документ, опитва се да избере шрифтовете, посочени в документа.

Въпреки това, има ситуации, когато точният шрифт не може да бъде намерен и Aspose.Words вместо това трябва да го замените с подобен шрифт. Aspose.Words Избор на шрифт според следния процес:

1. Aspose.Words опитва се да намери шрифт сред наличните източници на шрифт с точното име на шрифта.
1. Aspose.Words опитва се да намери необходимия шрифт сред шрифтовете, вградени в оригиналния документ. Някои формати на документи като DOCX могат да съдържат вградени шрифтове.
1. Ако Aspose.Words не е в състояние да локализира необходимия шрифт с точното име и [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) свойство, определено за този шрифт, след това Aspose.Words will find the font defined with **AltName** от [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) клас, който определя информацията за шрифта.
1. Ако Aspose.Words не може да намери определения шрифт, и **AltName** не е дефиниран също така, след това правилата за замяна на шрифта се прилагат един по един, както е описано по-долу (когато бъде намерена подходящата замяна, процесът на заместване спира и следващата стъпка не се изпълнява):
   1. Aspose.Words ще се опита да приложи настройките на OS шрифта, ако са налични, като използвате `FontConfig` полезност. Това...Windows функция трябва да се използва с FontConfig-съвместим OS. Почти всеки Unix-базиран OS вече има `FontConfig` библиотека, която е проектирана да осигурява конфигурация на шрифта в цялата система, персонализиране и достъп до приложения. В противен случай тази библиотека може лесно да бъде инсталирана от потребителя.<br/>
      Aspose.Words знае как да задава данни и интерпретира резултатите от FontConfig за свои собствени цели. По подразбиране, `FontConfig` Базата данни е изключена. Можете да го активирате, както следва:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Следващата стъпка е прост, но изключително мощен механизъм, наречен [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). По подразбиране, тази функция е активна и достъпна за всяка OS. Aspose.Words използва XML таблици, които определят основни правила за заместване на различни OS. Според правилото за заместване на таблицата ще се използва списъкът със заместващи имена на шрифтове.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - шрифт, който ще бъде заменен, SubstitutionFonts - списък на вариантите за заместване, разделени от запетая. Първият наличен шрифт се използва за замяна.<br/>
      Основната характеристика на това правило е способността да зареждате собствени таблици за заместване, както е показано в следния пример:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Можете да вземете като основа съществуващата таблица от буркана или да го запазите програмно по следния начин:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Въпреки гъвкавостта на този механизъм, има някои случаи, когато е по-добре да го деактивирате, както е показано по-долу:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** Правилото за заместване се прилага, ако правилото за заместване на таблицата не може да намери шрифта. Този механизъм е активиран по подразбиране. Aspose.Words намира най-подходящия шрифт според информацията за шрифта, съдържаща се в конкретен документ. Тази информация може да бъде получена от **FontInfo** клас, както е показано по- долу:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Потребителите не могат да се намесват в работния процес на тази функция, освен ако не решат да я деактивират в случай на незадоволителни резултати:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Ако **FontInfo** не е на разположение за липсващия шрифт, след това процесът спира.
   1. **DefaultFont** Правилото за заместване се прилага в случай, когато `FontInfo` Заместването също се провали. Това правило също е включено по подразбиране. Според това правило, Aspose.Words ще се опита да използва шрифта по подразбиране, посочен в [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) собственост. Ако потребителят не е избрал своя собствен шрифт по подразбиране, тогава "Times New Roman" ще се използва като шрифт по подразбиране. Това правило може да бъде изключено, както е показано по-долу:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      За да проверите текущия шрифт по подразбиране, използвайте:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      За да създадете собствен вариант за замяна, кандидатствайте:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Ако Aspose.Words не е в състояние да изпълни замяната на шрифта, той се опитва да получи първия наличен шрифт от наличните източници на шрифтове.
1. Най-накрая, ако Aspose.Words не може да намерите шрифтове сред наличните източници на шрифтове, той прави документа с помощта на безплатния Fanwood шрифт, който е вграден в Aspose.Words монтаж.

{{% alert color="primary" %}}

Ако **FontInfo** *FontInfo заместващото правило* винаги ще решава шрифта и ще отменя правилото за шрифта по подразбиране. Ако искате да използвате правилото за шрифта по подразбиране, трябва да деактивирате правилото за заместване * FontInfo. Имайте предвид, че правилото за заместване на FontConfig* ще разреши шрифта в повечето случаи и по този начин отменя всички други правила.

{{% /alert %}}

## Как да разпознаем Че шрифтът е заменен

Понякога може да не е ясно защо оформлението на документа се е променило или защо някои шрифтове не изглеждат както се очакваше. В такива случаи съобщенията за предупреждения за заместване на шрифта се прилагат от [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) интерфейсът идва да спаси. Те имат [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) тип предупреждение и стандартен формат на описанието, "Font"<originalfont>Не е открит. Използване '<substitutionfont>' шрифт вместо. Причина: <reason>", със следните причини:</reason></substitutionfont></originalfont>

- "алтернативно име от документа" за заместване от [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig заместване" за заместване по правило на шрифта
- "замяна на маса" гон за заместване по правило на масата
- "font info replacement" за заместване по правило на шрифта
- "Замяна на шрифта" за заместване по подразбиране
- "първи свободен шрифт" за заместване с първи наличен шрифт

## Шрифт FallBack Настройки от XML

Има два различни механизма, използвани в Aspose.Words Подмяна на шрифта и обратно. Замяна на шрифта се използва, когато шрифтът, посочен в документа, не може да бъде намерен сред източниците на шрифт, както е описано в горните раздели. Изходящият механизъм на шрифта се използва, когато шрифтът е решен, но не съдържа специфичен характер. В този случай, Aspose.Words опитва се да използва един от резервните шрифтове за героя.

Има [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) метод, който автоматично изгражда резервните настройки чрез сканиране на наличните шрифтове. Тъй като този метод може да доведе до неоптимална настройка за връщане, можете да контролирате поведението на шрифта чрез използване на свойствата на [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) Клас. Този клас определя настройките на механизма за изтегляне на шрифта. Можете да получите случай на **FontFallbackSettings** клас, както следва:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Подобно на * Таблично правило за заместване*, този механизъм използва XML таблици за конфигурация. Тези XML таблици могат да бъдат заредени и записани със следните методи:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

На Aspose.Words освобождаването включва две таблици: *MsOfficeFallbackSetting.xml* както и *NotoFallbackSetting.xml*.

На *MsOfficeFallbackSetting* Таблицата определя заместваща стратегия за набор от символи, която е подобна на използваната от Microsoft Word. По този начин стратегията изисква инсталирането на Microsoft Офис шрифтове. *MsOfficeFallbackSetting* може да се активира по следния начин:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

На *NotoFallbackSetting* Таблицата е създадена специално за употреба с Google Noto шрифтове (вижте повече за Google Noto настройки на шрифта в следващия раздел) и може да бъде включена както следва:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Следният пример за код показва как да се заредят настройките за изтегляне на шрифта от XML файл:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

В горния пример с код се използва следният XML файл:

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

## Предварително дефиниран шрифт FallBack Настройки за Google Noto Шрифтове

Aspose.Words осигурява предварително зададени настройки за изтегляне на шрифта Google Noto шрифтове. Това са безплатни шрифтове лицензирани под SIL Open Font License, които могат да бъдат изтеглени от Google Noto Шрифтове. На **FontFallbackSettings** Класът осигурява [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) метод. Зарежда предварително зададени резервни настройки, които използват Google Noto шрифтове, показани в примера с кода по-долу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Само Sans стил Ното шрифтове с редовно тегло се използват в предварително определени настройки.

{{% /alert %}}

## Къде? Aspose.Words Търсене на шрифтове

Aspose.Words се опитва да намери TrueType шрифтове на файловата система автоматично. Обикновено можете да разчитате на поведението по подразбиране на Aspose.Words да се намери `TrueType` шрифтове, но понякога трябва да посочите собствени папки, съдържащи TrueType шрифтове. На [Да се посочи вярно Тип шрифтове Местоположение](/words/bg/java/specify-truetype-fonts-location/) тема описва как и къде Aspose.Words търси шрифтове, както и как да посочите собствените си местоположения.

## Разлики в обработката на формати на шрифтове в Aspose.Words както и Microsoft Word

Има някои разлики в обработката на шрифтове в Aspose.Words както и Microsoft Word както е показано в таблицата по-долу:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| @ info: whatsthis | Подкрепян. | Подкрепян. |
| OpenType шрифтове с PostScript очертания | Подкрепян за повечето сценарии. Вграждане в формати с фиксирана страница като PDF и XPS не се поддържат. Текстът се заменя с картинки. | Поддържа се за повечето сценарии, включително включване към формати с фиксирана страница. |
| Вариации на шрифта OpenType | Поддържат се само имена. Непрекъснатите вариации не се поддържат. | Поддържа се за единствения случай по подразбиране. Назоваваните случаи и непрекъснатите вариации не се поддържат. |
| Тип 1 шрифтове | Подкрепа за Windows версии преди 2013 г. и на MacOS версии. Подкрепата пада. Windows версии, започващи от 2013 г. | Не подкрепям. |

## Вижте също

- [Google Noto Шрифтове](https://fonts.google.com/noto) за изтегляне на безплатни шрифтове


