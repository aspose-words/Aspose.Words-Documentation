---
title: Налаштування та налаштування TrueType Fonts
second_title: Aspose.Words для Java
articleTitle: Налаштування та налаштування TrueType Fonts
linktitle: Налаштування та налаштування TrueType Fonts
description: "Aspose.Words для Java може вставляти правильні шрифти TrueType в отриманий документ, щоб переконатися, що він відображає точно, або пошук відповідної заміни шрифту, або використовує механізм западання шрифту."
type: docs
weight: 10
url: /uk/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words вимагає Правда Види шрифтів для різних завдань, в тому числі надання документів для фіксованих форматів сторінок, наприклад, PDF або XPSй Коли Aspose.Words надає документ, що має право виконувати збірку та заміщення в отриманому документі шрифтів TrueType, що є нормальною практикою під час створення документа, включаючи популярні PDF або XPS формати. Це гарантує, що документ з'явиться таким же для будь-якого глядача. Більше, XPS специфікація вимагає шрифтів, щоб завжди бути вбудованим в документ.

Забезпечити Aspose.Words Точно вимірює символи та вдало поширює відповідні шрифти, необхідно дотримуватися наступних умов:

1,1 км Aspose.Words Щоб знайти та отримати доступ до файлів шрифтів TrueType на системі.
1,1 км Ви повинні бути достатні шрифти TrueType, доступні для Aspose.Words, бажано з тим самим іменами сімей шрифтів, що використовуються в документі.

Зверніть увагу, що шрифт у документі є суб'єктом, таких як назва сім'ї, стиль, розмір, колір, який відрізняється від `TrueType` шрифт (фізичний шрифт) Aspose.Words Вирішує шрифт у документі до фізичного шрифту на певній стадії обробки. Це дозволяє виконувати певні завдання, найбільш часто завдання обчислення текстового розміру під час побудови макетів та складання / складання на стаціонарні формати сторінок. Кількість інших менш популярних завдань, таких як розв'язання шрифтів і заміщення при завантаженні HTML або тиснення/підписання до деяких форматів потоку, також ввімкнено.

## Визначення маніпуляції та продуктивності

Всі доступні механізми маніпуляції шрифтом містяться в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) клас. Цей клас відповідає за викладання шрифтів у визначених джерелах шрифтів, а також для процесу заміни шрифту, описаних нижче.

Шрифти задаються в декількох кроках:

1,1 км Отримання інформації для шрифту, вирішення всіх доступних шрифтів.
1,1 км Вирішені шрифти для отримання доступу glyphs і метрики (горизонтальний і вертикальний).
1,1 км Придбання вирішених шрифтів для розкладання та підкріплення.

Коли Aspose.Words стикається з шрифтом в документі вперше, він намагається отримати базову інформацію шрифту, наприклад, ім'я шрифту, ім'я сім'ї, версія, стиль, з файлів шрифтів, розташованих в кожному джерела шрифту. Після отримання всіх шрифтів, Aspose.Words Використовуйте ці дані для пошуку необхідних даних шрифтів або відповідної заміни для запитуваного шрифту.

Оскільки процедура, описана вище, є трудомістким, вона може негативно вплинути на продуктивність програми на першому запуску. Однак кожен екземпляр **FontSettings** має власний кеш, який може скоротити час обробки наступних документів. Наприклад, ви можете поділитися екземпляром екземпляра **FontSettings** клас між різними документами, що дозволяє прискорити завантаження документів. Цей приклад показує:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

У випадку, коли **FontSettings** не визначено явно, Aspose.Words Використання за замовчуванням **FontSettings** ін. Цей екземпляр також автоматично поділяється між документами, а також може бути вилучений наступним чином:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Якщо ви впевнені, що всі документи для обробки вимагають однакових параметрів шрифту, то рекомендується налаштувати і використовувати за замовчуванням **FontSettings** ін. Припустимо, що вам необхідно використовувати однакові джерела шрифтів для всіх документів. У цьому випадку ви можете змінити типовий екземпляр:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

На замовлення **FontSettings** має більш високий пріоритет, ніж екземпляр за замовчуванням.

{{% /alert %}}

## Доступність та заміна шрифтів

Текст у документі можна форматувати різними шрифтами, такими як Arial, Times New Roman, Verdana та інші. Коли Aspose.Words надає документ, він намагається вибрати шрифти, які вказані в документі.

Однак виникають ситуації, коли не знайдено точний шрифт Aspose.Words замініть його на схожий шрифт замість. Aspose.Words вибирає шрифт відповідно до наступного процесу:

1,1 км Aspose.Words намагається знайти шрифт серед доступних джерел шрифту з точним ім'ям шрифту.
1,1 км Aspose.Words намагається знайти необхідний шрифт серед шрифтів, вбудованих в оригінальний документ. Деякі формати документів, такі як DOCX, можуть містити вбудовані шрифти.
1,1 км Якщо Aspose.Words не в змозі знайти необхідний шрифт з точним іменем, і [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) властивість, визначена для цього шрифту, потім Aspose.Words знайти шрифт, визначений з **AltName** з [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) клас, який визначає інформацію шрифту.
1,1 км Якщо Aspose.Words не в змозі знайти визначений шрифт, і **AltName** не визначено, після чого правила заміни шрифту наносяться на одну сторону, як описано нижче (при виявленні відповідної заміни, припиняється процес заміни шрифту та наступний крок не виконується):
   1,1 км Aspose.Words намагатиметься застосувати параметри шрифту OS, якщо вони доступні, використовуючи `FontConfig` утиліта. Не-Windows Функція повинна бути використана з FTPConfig-сумісною ОС. Майже будь-яка ОС Unix вже має `FontConfig` Бібліотека, яка призначена для забезпечення конфігурації системного шрифту, налаштування та доступу до додатків. В іншому випадку ця бібліотека може бути легко встановлена користувачем.<br/>
      Aspose.Words Дізнайтеся, як переробити дані та інтерпретувати результати FontConfig для власних цілей. За замовчуванням, `FontConfig` утиліта вимкнена. Ви можете включити його наступним чином:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Наступний крок простий, але неймовірно потужний механізм називається [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)й За замовчуванням, ця функція активна і доступна для будь-якої ОС. Aspose.Words використовує XML таблиці, які визначають основні правила заміни для різних ОС. За правилом заміни таблиці буде використовуватися список замінних імен шрифтів.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Select LanguageУкраїнськийالعربيةБългарскиCeskyDanskDeutscheΕλληνικάEspanolSuomenFrancaisHrvatskiMagyarItalianoעברית日本語한국어LietuviųLatviešuNederlandseNorskPolskiPortuguêsRomânăSlovenskejРускиSvenskaไทยTürkçe Для заміни використовується перший доступний шрифт.<br/>
      Головною особливістю цього правила є можливість завантаження власних заміських таблиць, оскільки показано на наступному прикладі:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Ви можете взяти в основу існуючий столик з баночки або зберегти його за допомогою:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Незважаючи на гнучкість цього механізму, є деякі випадки, коли краще його відключити, як показано нижче:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Серія **FontInfo** правило заміщення буде застосовано, якщо правило заміни таблиці не може знайти шрифт. Цей механізм увімкнено за замовчуванням. Aspose.Words знаходить найбільш підходящий шрифт відповідно до інформації шрифту, що міститься в певному документі. Ця інформація може бути отримана з **FontInfo** клас, як показано нижче:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Користувачі не можуть заважати в роботі цієї функції, якщо вони вирішили відхилити її в разі незадоволених результатів:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Якщо **FontInfo** не доступний для відсутніх шрифтів, після чого процес припиняється.
   1,1 км **DefaultFont** правило заміщення буде застосовуватися в разі, коли `FontInfo` не вдалося. Це правило також ввімкнено за замовчуванням. За цим правилом, Aspose.Words спробує використовувати шрифт за замовчуванням, зазначений в [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) майно. Якщо користувач не вибрав власний шрифт за замовчуванням, то "Час Новий Роман" буде використовуватися як шрифт за замовчуванням. Це правило може бути відключена, як показано нижче:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Для перевірки поточного шрифту за замовчуванням використовуйте:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Щоб налаштувати власний варіант заміни, скористайтеся:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1,1 км Якщо Aspose.Words не в змозі виконати заміщення шрифту, він намагається отримати перший доступний шрифт з доступних джерел шрифту.
1,1 км Нарешті, якщо Aspose.Words не вдається знайти будь-які шрифти з доступних джерел шрифту, він надає документ, використовуючи вільний шрифт Fanwood, який вбудований в Aspose.Words збірка.

{{% alert color="primary" %}}

Якщо **FontInfo** Доступно, правила заміни *FontInfo * завжди буде вирішувати шрифт і перенаправлення правила шрифту за замовчуванням. Якщо ви хочете використовувати правило шрифту за замовчуванням, ви повинні відключити правила заміни *FontInfo *. Зверніть увагу, що правила заміщення *FontConfig* вирішить шрифт у більшості випадків, і таким чином перенадає всі інші правила.

{{% /alert %}}

## Як розпізнати Що було замінено шрифт

Іноді це може бути незрозуміло, чому змінено макет документа, або чому деякі шрифти не виглядають як очікувано. У таких випадках повідомлення про заміщення шрифту, що реалізовані повідомленнями, що містяться [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) інтерфейс приходять на допомогу. Вони мають [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) Тип попередження та стандартний текстовий формат "Фонт"<originalfont>- Не знайдено. Використання<substitutionfont>' шрифт замість. Причини: <reason>", з такими причинами:</reason></substitutionfont></originalfont>

- "визначне ім’я з документа" – за за заміщення [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "Файлконфігурація заміщення" - для заміщення правила налаштування шрифту
- "стабільна заміна" - за заміщення за правилом таблиці
- "Фільтова заміна інформації" - для заміщення правилом шрифтів
- "Заміна шрифту за замовчуванням"
- "перший доступний шрифт" - для заміни з першим доступним шрифтом

## Налаштування Font FallBack від XML

Є два різні механізми, які використовуються в Aspose.Words - Заміна шрифту та падлогу шрифту. Заміщення шрифту використовується, коли шрифт, зазначений у документі, не можна знайти серед джерел шрифту, як це було описано в вищезазначених розділах. Механізм западу шрифту використовується при вирішенні шрифту, але не містить певного символу. У цьому випадку Aspose.Words намагається використовувати один з недоліків для персонажа.

Є [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) метод, який автоматично будує параметри пада, шляхом сканування доступних шрифтів. Оскільки цей метод може виготовити неоптимальну фіксацію, ви можете керувати поведінкою шрифту, використовуючи властивості [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) клас. Цей клас визначає параметри механізму зворотного виклику шрифту. Ви можете отримати екземпляр **FontFallbackSettings** клас наступним чином:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Аналогічно до *Постанова заміщення *, цей механізм використовує XML таблиці для конфігурації. Ці таблиці XML можуть бути завантажені та збережені з наступними методами:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Про нас Aspose.Words випуск включає два таблиці: *MsOfficeFallbackSetting.xml* і *NotoFallbackSetting.xml*й

Про нас *MsOfficeFallbackSetting* Таблиця визначає стратегію заміни для діапазону символів, яка схожа на стратегію, що використовується Microsoft Wordй Таким чином, стратегія вимагає установки Microsoft Офісні шрифти. *MsOfficeFallbackSetting* можна активувати за допомогою методу:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Про нас *NotoFallbackSetting* стіл створений спеціально для використання Google Noto шрифти (див. більше про Google Noto Параметри шрифту в наступному розділі можна ввімкнути:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Приклад наступного коду показує, як завантажити параметри випадання шрифтів з XML-файлу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

У прикладі вище коду використовується наступний файл XML:

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

## Визначені параметри FTP FallBack для Google Noto Кошик

Aspose.Words забезпечує заздалегідь визначені параметри зворотного запису шрифту для Google Noto шрифти. Це безкоштовні шрифти, ліцензовані під SIL Open Font ліцензія, які можна завантажити з Google Noto Шрифти. Про нас **FontFallbackSettings** Клас надає [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) метод. Навантаження заданих параметрів пада, які використовують Google Noto шрифти, як показано на прикладі коду нижче:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Тільки стилі Санс Ното шрифти з регулярною вагою використовуються в заздалегідь визначених налаштуваннях.

{{% /alert %}}

## Де придбати Aspose.Words Шукаємо шрифти

Aspose.Words намагається знайти шрифти TrueType на файловій системі автоматично. Як правило, ви можете спиратися на поведінку за замовчуванням Aspose.Words знайти `TrueType` шрифти, але іноді потрібно вказати власні папки, що містять шрифти TrueType. Про нас [Вкажіть вірний Тип Розташування шрифтів](/words/uk/java/specify-truetype-fonts-location/) тема описує, як і де Aspose.Words як визначити власні шрифти.

## Відмінності обробки шрифтів у форматах Aspose.Words і Microsoft Word

Є деякі відмінності в обробці шрифтів у Aspose.Words і Microsoft Word як показано в таблиці нижче:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Т шрифти TrueType та шрифти OpenType з контурами TrueType | Підтримка. | Підтримка. |
| Відкриті шрифти з позначками PostScript | Підтримка більшості сценаріїв. Вбудовування для форматів сторінок, таких як PDF та XPS не підтримується. Текст замінюється зображеннями бітмапа. | Підтримувані для більшості сценаріїв, включаючи вбудовування для форматів сторінок. |
| Сортування шрифту OpenType | Підтримуються лише іменні екземпляри. Безперервні варіації не підтримуються. | Підтримувані тільки екземпляр за замовчуванням. Не підтримується іменовані екземпляри і безперервні варіації. |
| Тип1 шрифти | Підтримка Windows версії до 2013 і на версіях MacOS. Підтримка скидається на Windows версії з 2013 року | Не підтримується. |

## Дивитися ще

- до [Google Noto Кошик](https://fonts.google.com/noto) скачати безкоштовно шрифти


