---
title: Манипулиране и заместване на TrueType шрифтове в C#
second_title: Aspose.Words вместо .NET
articleTitle: Манипулиране и заместване на шрифтове TrueType
linktitle: Манипулиране и заместване на шрифтове TrueType
description: "Aspose.Words вместо .NET може да включи правилните шрифтове TrueType в получения документ, за да се гарантира, че той показва точно използване C#. Ако няма шрифт или специфичен символ, Aspose.Words търсене на подходящ заместител на шрифта или използване на механизма за изтегляне на шрифта."
type: docs
weight: 10
url: /bg/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words изисква True Тип шрифтове за различни задачи, включително предоставяне на документи във формат с фиксирана страница, например PDF или XPS. Кога Aspose.Words прави документ, той трябва да извършва вграждане и подмножество на TrueType шрифтове в получения документ, което е нормална практика по време на създаване на документ, включително популярен PDF или XPS формати. Това гарантира, че документът ще изглежда същият на всеки зрител. Освен това, XPS Спецификацията изисква шрифтовете винаги да бъдат вградени в документа.

За да се гарантира Aspose.Words точно измерва символите и успешно вгражда съответните шрифтове, трябва да бъдат изпълнени следните условия:

1. Aspose.Words трябва да има достъп до файловете с TrueType за шрифтове в системата.
1. Трябва да има достатъчно шрифтове TrueType Aspose.Words, за предпочитане със същите фамилни имена като използваните в документа.

Имайте предвид, че шрифтът в документа представлява субект, като фамилно име, стил, размер, цвят, който е различен от `TrueType` структура на шрифта (физически шрифт). Aspose.Words решава шрифта в документа на физически шрифт на някакъв етап от обработката. Това дава възможност за определени задачи, най-често задачата за изчисляване на размера на текста по време на изграждането на оформлението и вграждане/заместване във формат с фиксирана страница. Редица други по-малко популярни задачи, като решаване на шрифтове и заместване при зареждане на HTML или вграждане/заместване в някои формати на потоци, също са активирани.

## Манипулация на шрифтове и проблеми с изпълнението

Всички налични механизми за манипулиране на шрифта се съдържат в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) Клас. Този клас отговаря за извличането на шрифтове в рамките на определени източници на шрифт, както и за процеса на заместване на шрифта, както е описано по-долу.

Шрифтовете се парализират в няколко стъпки:

1. Получаване на информация за шрифт, решаване от всички налични шрифтове.
1. Преглед на решените шрифтове за достъп glyphs и метрици (хоризонтално и вертикално).
1. Преглед на решените шрифтове за вграждане и разстройване.

Кога Aspose.Words среща шрифт в документа за първи път, той се опитва да получи основна информация за шрифта, като например пълното име на шрифта, фамилно име, версия, стил, от шрифтовете, разположени във всеки източник на шрифт. След като всички шрифтове са изтеглени, Aspose.Words използва тези данни, за да намери необходимите данни за шрифта или подходяща замяна на поискания шрифт.

Тъй като описаната по-горе процедура отнема време, тя може да повлияе отрицателно на ефективността на приложението при първото му пускане. Но всеки случай на **FontSettings** има собствен кеш, който може да намали времето за обработка на последващите документи. Например, можете да споделите случай на **FontSettings** клас между различните документи, което ви позволява да ускорите зареждането на документите. Следният пример показва следното:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

В случай, когато **FontSettings** не е определено изрично, Aspose.Words използва по подразбиране **FontSettings** Например. Този случай се споделя автоматично между документите и може да бъде извлечен, както следва:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Ако сте сигурни, че всички документи за обработка изискват едни и същи настройки на шрифта, тогава се препоръчва да се създаде и да се използва по подразбиране **FontSettings** Например. Предполагам, че трябва да използвате едни и същи източници на шрифт за всички ваши документи. В този случай можете просто да измените процедурата по подразбиране, както следва:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Обичаят **FontSettings** имат по-висок приоритет от случая по подразбиране.

{{% /alert %}}

## Наличност на шрифта и заместване

Текст в документ може да бъде форматиран с различни шрифтове като Arial, Times New Roman, Verdana и др. Кога Aspose.Words прави документ, опитва се да избере шрифтовете, посочени в документа.

Въпреки това, има ситуации, когато точният шрифт не може да бъде намерен и Aspose.Words вместо това трябва да го замените с подобен шрифт. Aspose.Words Избор на шрифт според следния процес:
1. Aspose.Words опитва се да намери шрифт сред наличните източници на шрифт с точното име на шрифта.
1. Aspose.Words опитва се да намери необходимия шрифт сред шрифтовете, вградени в оригиналния документ. Някои формати на документи като DOCX могат да съдържат вградени шрифтове.
1. Ако Aspose.Words не е в състояние да открие желания шрифт с точното име, както и [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) свойство определено за този шрифт, след това Aspose.Words will find the font defined with **AltName** от [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) клас, който определя информацията за шрифта.
1. Ако Aspose.Words не може да намери определения шрифт, и **AltName** не се определя също така, след това правилата за заместване на шрифта се прилагат един по един, както е описано по-долу (когато бъде намерена подходящата замяна, процесът на заместване на шрифта спира и следващата стъпка не се изпълнява):
   1. Първо, Aspose.Words се опитва да обработи името на шрифта, за да получи заместването, особено се опитва да премахне наставките с "-" и "," сепаратори.<br/>
      Ако това правило за заместване стане, не е установено "Font" < OriginalFont>. Вместо това с шрифт '<SubstitutionFont >'. Причина: заместване на името на шрифта."<br/>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. След това Aspose.Words опитайте да приложите настройките на OS шрифта, ако са налични, като използвате **FontConfig** полезност. Това не-Windows функция трябва да се използва с FontConfig-съвместим OS. Почти всеки Unix-базиран OS вече има `FontConfig` библиотеката, която е проектирана да осигурява системна конфигурация на шрифта, персонализиране и достъп до приложения. В противен случай тази библиотека може лесно да бъде инсталирана от потребителя.
      Aspose.Words знае как да задава данни и интерпретира резултатите от FontConfig за свои собствени цели. По подразбиране, `FontConfig` Базата данни е изключена. Можете да го активирате, както следва:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Следващата стъпка използва прост, но мощен механизъм, наречен **Table** Правило за заместване. По подразбиране тази функция е активна и достъпна за дадена операционна система. Aspose.Words ще замени шрифта с това правило, ако той не бъде заменен с `FontConfig` Правило за заместване.<br/>
      Aspose.Words използва XML таблици, които определят основните правила за заместване на различни OS. Според правилото за заместване на таблицата ще се използва списъкът със заместващи имена на шрифтове.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Основната характеристика на това правило е способността да зареждате собствени таблици за заместване, както е показано в следния пример:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Въпреки гъвкавостта на този механизъм, има някои случаи, когато е по-добре да го деактивирате, както е показано по-долу:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. **FontInfo** Правилото за заместване се прилага, ако правилото за заместване на таблицата не може да намери шрифта. Този механизъм е активиран по подразбиране. Aspose.Words намира най-подходящия шрифт според информацията за шрифта, съдържаща се в конкретен документ. Тази информация може да бъде получена от **FontInfo** клас, както е показано по- долу:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Потребителите не могат да се намесват в работния процес на тази функция, освен ако не решат да я деактивират в случай на незадоволителни резултати:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Ако **FontInfo** не е на разположение за липсващия шрифт, след това процесът спира.<br/>
   1. **DefaultFont** Правилото за заместване се прилага в случаите, когато `FontInfo` Заместването също се провали. Това правило също е активирано по подразбиране. Според това правило, Aspose.Words ще се опита да използва шрифта по подразбиране, посочен в [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) собственост. Ако потребителят не е избрал своя собствен шрифт по подразбиране, тогава "Times New Roman" ще се използва като шрифт по подразбиране. Това правило може да бъде изключено, както е показано по-долу:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      За да проверите текущия шрифт по подразбиране, използвайте:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      За да създадете свой собствен вариант за замяна, кандидатствайте:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Ако Aspose.Words не е в състояние да изпълни замяната на шрифта, той се опитва да получи първия наличен шрифт от наличните източници на шрифтове.
1. Най-накрая, ако Aspose.Words не могат да се намерят шрифтове сред наличните източници на шрифтове, тя прави документа с помощта на безплатния Fanwood шрифт, който е вграден в Aspose.Words монтаж.<br/>

Ако **FontInfo** *FontInfo заместващото правило* винаги ще решава шрифта и ще отменя правилото за шрифта по подразбиране. Ако искате да използвате правилото за шрифта по подразбиране, трябва да изключите правилото за заместване *FontInfo. Имайте предвид, че правилото за заместване на FontConfig* ще реши шрифта в повечето случаи и по този начин отменя всички други правила.

## Как да разпознаем Че шрифтът е бил заменен

Понякога може да не е ясно защо оформлението на документа се е променило или защо някои шрифтове не изглеждат така, както се очакваше. В такива случаи съобщенията за предупреждения за заместване на шрифта се изпълняват от [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) Интерфейсът идва да ни спаси. Те имат [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) тип предупреждение и стандартен формат на описанието, "Font"<originalfont>Не е открит. Използване '<substitutionfont>вместо шрифт. Причина: <reason>", със следните причини:</reason></substitutionfont></originalfont>

- "алтернативно име от документ" за заместване от [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig заместване" за заместване по правило на шрифта
- "замяна на маса" .. за заместване по правило
- "font information replacement" за заместване по правило на шрифта
- "замяна на шрифта" за заместване по подразбиране
- "първи наличен шрифт" за заместване с първи наличен шрифт

## Шрифт FallBack Настройки от XML

Има два различни механизма, използвани в Aspose.Words Замяна на шрифта и обратно. Замяна на шрифта се използва, когато шрифтът, посочен в документа, не може да бъде намерен сред източниците на шрифта, както е описано в горните раздели. При решаването на шрифта се използва механизмът за изтегляне на шрифта, но той не съдържа специфичен характер. В този случай, Aspose.Words опитва се да използва един от резервните шрифтове за героя.

Има [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) метод, който автоматично изгражда резервните настройки чрез сканиране на наличните шрифтове. Тъй като този метод може да доведе до неоптимална настройка за връщане, можете да контролирате поведението на шрифта чрез използване на свойствата на [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) Клас. Този клас определя настройките на механизма за изтегляне на шрифта. Можете да получите случай на **FontFallbackSettings** клас, както следва:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Подобно на * Таблично правило за заместване *, този механизъм използва XML таблици за конфигурация. Тези XML таблици могат да бъдат заредени и записани със следните методи:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

На Aspose.Words освобождаването включва две таблици: *MsOfficeFallbackSetting.xml* както и *NotoFallbackSetting.xml*.

На *MsOfficeFallbackSetting* Таблицата определя стратегия за заместване на набор от символи, която е подобна на използваната от Microsoft Word. По този начин стратегията изисква инсталирането на Microsoft Офис шрифтове. *MsOfficeFallbackSetting* може да се активира по следния начин:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

На *NotoFallbackSetting* Таблицата е създадена специално за употреба с Google Noto шрифтове (вижте повече за Google Noto настройки на шрифта в следващия раздел) и може да бъде включена както следва:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Следният пример за код показва как да се заредят настройките за изтегляне на шрифта от XML файл:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

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

Aspose.Words осигурява предварително зададени настройки за изтегляне на шрифта Google Noto шрифтове. Това са безплатни шрифтове лицензирани под SIL Open Font License, които могат да бъдат изтеглени от Google Noto Шрифтове. На **FontFallbackSettings** Класът осигурява [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) метод. Зарежда предварително настройките за изтегляне, които използват Google Noto шрифтове, показани в примера с код по-долу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

В предварително зададените настройки се използват само шрифтове Sans стил Noto с редовно тегло.

{{% /alert %}}

## Къде? Aspose.Words Търси шрифтове

Aspose.Words се опитва да намери TrueType шрифтове на файловата система автоматично. Обикновено можете да разчитате на поведението по подразбиране на Aspose.Words да се намери `TrueType` шрифтове, но понякога трябва да посочите собствени папки, съдържащи TrueType шрифтове. На [Посочване на вярното Тип шрифтове Местоположение](/words/bg/net/specifying-truetype-fonts-location/) тема описва как и къде Aspose.Words търси шрифтове, както и как да посочите местоположението на шрифта си.

## Разлики в обработката на формати на шрифтове в Aspose.Words както и Microsoft Word

Има някои разлики в обработката на шрифтове в Aspose.Words както и Microsoft Word както е показано в таблицата по-долу:

|| Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType шрифтове и шрифтове OpenType с очертания на TrueType | Подкрепян. | Подкрепян. |
| OpenType шрифтове с PostScript очертания | Поддържа се за повечето сценарии. Вграждане в формати с фиксирана страница като PDF и XPS не се поддържат. Текстът се заменя с картинки. | Поддържа се за повечето сценарии, включително вграждане в формати с фиксирана страница. |
| Вариации на шрифта OpenType | Поддържат се само имена. Непрекъснатите варианти не се поддържат. | Поддържа се само за случай по подразбиране. Не се поддържат имена и непрекъснати вариации. |
| Шрифтове от тип 1 | Подкрепени Windows версии преди 2013 г. и на MacOS версии. Подкрепата пада. Windows версии, започващи от 2013 г. | Не подкрепя. |

## Вижте също

- [Google Noto Шрифтове](https://fonts.google.com/noto) за изтегляне на безплатни шрифтове
