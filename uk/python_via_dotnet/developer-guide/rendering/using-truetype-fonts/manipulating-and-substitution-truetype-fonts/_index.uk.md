---
title: Написання Правда Тип Шрифти
second_title: Aspose.Words для Python via .NET
articleTitle: Маніпулювати і підстановити TrueType Fonts
linktitle: Маніпулювати і підстановити TrueType Fonts
description: "Aspose.Words для Python via .NET може вставляти правильні шрифти TrueType в отриманий документ, щоб переконатися, що він відображає точно. Якщо шрифт або специфічний характер не доступний, Aspose.Words пошуки для відповідної заміни шрифту або використання механізму западання шрифту."
type: docs
weight: 10
url: /uk/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words вимагає Правда Види шрифтів для різних завдань, в тому числі надання документів для фіксованих форматів сторінок, наприклад, PDF або XPSй Коли Aspose.Words надає документ, що має право виконувати збірку та занурення повідомлень шрифтів TrueType у отриманому документі, що є нормальною практикою під час створення документа, включаючи популярні PDF або XPS формати. Це гарантує, що документ з’явиться таким же для будь-якого глядача. Більше, XPS специфікація вимагає шрифтів завжди бути вбудованим в документ.

Забезпечити Aspose.Words Точно вимірює символи та вдало поширює відповідні шрифти, необхідно дотримуватися наступних умов:

1,1 км Aspose.Words Щоб знайти та отримати доступ до файлів шрифтів TrueType на системі.
1,1 км Ви повинні бути достатні шрифти TrueType, доступні для Aspose.Words, бажано з тим самим іменами сімей шрифтів, що використовуються в документі.

Зверніть увагу, що шрифт у документі є суб'єктом, таких як назва сім'ї, стиль, розмір, колір, який відрізняється від `TrueType` шрифт (фізичний шрифт) Aspose.Words Вирішує шрифт у документі до фізичного шрифту на певній стадії обробки. Це дозволяє виконувати певні завдання, найбільш часто завдання обчислення текстового розміру під час побудови макетів та складання / складання на стаціонарні формати сторінок. Кількість інших менш популярних завдань, таких як розв’язання шрифтів і заміщення при завантаженні HTML або тиснення/підписання до деяких форматів потоку, також ввімкнено.

## Визначення маніпуляції та продуктивності

Всі доступні механізми маніпуляції шрифтом містяться в [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) клас. Цей клас відповідає за fetching шрифтів у визначених джерелах шрифтів, а також для процесу заміни шрифтів, описаних нижче.

Шрифти задаються в декількох кроках:

1,1 км Отримання інформації для шрифту, вирішення всіх доступних шрифтів.
1,1 км Вирішені шрифти для отримання доступу glyphs і метрики (горизонтальний і вертикальний).
1,1 км Придбання вирішених шрифтів для складання та підкріплення.

Коли Aspose.Words стикається з шрифтом в документі вперше, він намагається отримати базову інформацію шрифту, наприклад, ім'я шрифту, ім'я сім'ї, версія, стиль, з файлів шрифтів, розташованих в кожному джерела шрифту. Після отримання всіх шрифтів, Aspose.Words Використовуйте ці дані, щоб знайти необхідні дані шрифту або відповідну заміну для запитуваного шрифту.

Оскільки процедура, описана вище, трудомістка, вона може негативно вплинути на продуктивність заявки на перший запуск. Однак кожен екземпляр [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) має власний кеш, який може скоротити час обробки наступних документів. Наприклад, ви можете поділитися екземпляром екземпляра [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) клас між різними документами, що дозволяє прискорити завантаження документів. Цей приклад показує:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

У випадку, коли [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) не визначено явно, Aspose.Words Використання за замовчуванням [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ін. Цей екземпляр також автоматично поділяється між документами, а також може бути вилучений наступним чином:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

Якщо ви впевнені, що всі документи для обробки вимагають однакових параметрів шрифту, то рекомендується налаштувати і використовувати типовий стандарт [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ін. Припустимо, що вам необхідно використовувати однакові джерела шрифтів для всіх документів. У цьому випадку ви можете змінити типовий екземпляр:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

На замовлення [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) має більш високий пріоритет, ніж типовий екземпляр.

{{% /alert %}}

## Доступність та заміна шрифтів

Текст у документі можна форматувати різними шрифтами, такими як Arial, Times New Roman, Verdana та інші. Коли Aspose.Words надає документ, він намагається вибрати шрифти, які вказані в документі.

Однак виникають ситуації, коли не знайдено точний шрифт Aspose.Words замініть його на схожий шрифт замість. Aspose.Words обирає шрифт за наступним процесом:
1,1 км Aspose.Words намагається знайти шрифт серед доступних джерел шрифту з точним ім'ям шрифту.
1,1 км Aspose.Words намагається знайти необхідний шрифт серед шрифтів, вбудованих в оригінальний документ. Деякі формати документів, такі як DOCX, можуть містити вбудовані шрифти.
1,1 км Якщо Aspose.Words не в змозі знайти необхідний шрифт з точним іменем, і [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) властивість, визначена для цього шрифту, потім Aspose.Words знайти шрифт, визначений за допомогою [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) з [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) клас, який визначає інформацію шрифту.
1,1 км Якщо Aspose.Words не в змозі знайти визначений шрифт, і [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) не визначено, після чого правила заміни шрифту наносять один за одним, як описано нижче (при виявленні відповідної заміни, припиняється процес заміни шрифту та наступний крок не виконується):
   1. Перший, Aspose.Words намагається обробляти ім'я шрифту, щоб отримати заміщення, особливо вона намагається видалити суфікси з "-" і "," сепараторами.<br/>
      Якщо це правило заміщення відбувається, "Фонт '<OriginalFont>' не знайдено. Використання шрифту '<SubizationFont>'. Причина: заміна назв шрифту.<br/>
   1. Далі Aspose.Words спроби застосувати налаштування шрифтів OS, якщо вони доступні, використовуючи **FontConfig** утиліта. Це Не-Windows Функція повинна бути використана з FTPConfig-сумісною ОС. Майже будь-яка ОС Unix вже має `FontConfig` Бібліотека, яка призначена для забезпечення конфігурації системного шрифту, налаштування та доступу до додатків. В іншому випадку ця бібліотека може бути легко встановлена користувачем.
      Aspose.Words Дізнайтеся, як переробити дані та інтерпретувати результати FontConfig для власних цілей. За замовчуванням, `FontConfig` утиліта вимкнена. Ви можете ввімкнути його наступним чином:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. Наступний крок використовує простий, але потужний механізм називається **Table** правила заміщення. За замовчуванням, ця функція є активним і доступна для даної операційної системи. Aspose.Words замінить шрифт цим правилом, якщо він не заміняв `FontConfig` правила заміщення.<br/>
      Aspose.Words використовує XML таблиці, які визначають основні правила заміни для різних ОС. За правилом заміни таблиці буде використовуватися список замінних імен шрифтів.<br/>
      **XML**<br/>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      Головною особливістю цього правила є можливість завантаження власних заміських таблиць, оскільки показано на наступному прикладі:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      Незважаючи на гнучкість цього механізму, є деякі випадки, коли краще його відключити, як показано нижче:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. Серія [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) правило заміщення буде застосовано, якщо правило заміни таблиці не може знайти шрифт. Цей механізм увімкнено за замовчуванням. Aspose.Words знаходить найбільш підходящий шрифт відповідно до інформації шрифту, що міститься в певному документі. Ця інформація може бути отримана з [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) клас, як показано нижче:<br/>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      Користувачі не можуть заважати в роботі цієї функції, якщо вони вирішили відхилити її в разі незадоволених результатів:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      Якщо [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) не доступний для відсутніх шрифтів, після чого процес припиняється.<br/>
   1,1 км [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) правило заміщення буде застосовуватися в разі, коли `FontInfo` не вдалося. Це правило також ввімкнено за замовчуванням. За цим правилом, Aspose.Words намагатиметься використовувати шрифт за замовчуванням, зазначений в [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) майно. Якщо користувач не вибрав власний шрифт за замовчуванням, то "Час Новий Роман" буде використовуватися як шрифт за замовчуванням. Це правило може бути відключена, як показано нижче:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      Для перевірки поточного шрифту за замовчуванням використовуйте:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      Щоб налаштувати власний варіант заміни, скористайтеся:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1,1 км Якщо Aspose.Words не в змозі виконати заміщення шрифту, він намагається отримати перший доступний шрифт з доступних джерел шрифту.
1,1 км Нарешті, якщо Aspose.Words не вдається знайти будь-які шрифти з доступних джерел шрифту, він надає документ, використовуючи вільний шрифт Fanwood, який вбудований в Aspose.Words пакет.<br/>

Якщо [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) Доступно, правила заміни *FontInfo * завжди буде вирішувати шрифт і перенаправлення правила шрифту за замовчуванням. Якщо ви хочете використовувати правило шрифту за замовчуванням, ви повинні відключити правила заміни *FontInfo *. Зверніть увагу, що правила заміщення *FontConfig* вирішить шрифт у більшості випадків, і таким чином перенадає всі інші правила.

## Налаштування Font FallBack від XML

Є два різні механізми, які використовуються в Aspose.Words - Заміна шрифту та падлогіна. Заміщення шрифту використовується, коли шрифт, зазначений у документі, не можна знайти серед джерел шрифту, як це було описано в вищезазначених розділах. Механізм западу шрифту використовується при вирішенні шрифту, але не містить певного символу. У цьому випадку Aspose.Words намагається використовувати один з шрифтів пада для персонажа.

Є [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) метод, який автоматично будує параметри пада, шляхом сканування доступних шрифтів. Оскільки цей метод може виготовити неоптимальну фіксацію, можна контролювати поведінку шрифту, використовуючи властивості [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) клас. Цей клас визначає параметри механізму зворотного виклику шрифту. Ви можете отримати екземпляр [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) клас наступним чином:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

Аналогічно до *Вимкнути правило заміни*, цей механізм використовує XML таблиці для конфігурації. Ці таблиці можуть бути завантажені та збережені з наступними методами:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

Про нас Aspose.Words випуск включає два таблиці: *MsOfficeFallbackSetting.xml* і *NotoFallbackSetting.xml*й

Про нас *MsOfficeFallbackSetting* Таблиця визначає стратегію заміни для діапазону символів, що схожа на стратегію, що використовується Microsoft Wordй Таким чином, стратегія вимагає установки Microsoft Офісні шрифти. *MsOfficeFallbackSetting* може бути активований за допомогою методу:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

Про нас *NotoFallbackSetting* стіл створений спеціально для використання Google Noto шрифти (див. більше про Google Noto Параметри шрифту в наступному розділі можна ввімкнути:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

Приклад наступного коду показує, як завантажити параметри випадання шрифтів з XML-файлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

У наведеному вище прикладі коду використовується наступний файл XML:

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

Aspose.Words забезпечує заздалегідь визначені параметри зворотного запису шрифту Google Noto шрифти. Це безкоштовні шрифти, ліцензовані під SIL Open Font ліцензія, які можна завантажити з Google Noto Шрифти. Про нас [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) Клас надає [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) метод. Навантаження заданих параметрів пада, які використовують Google Noto шрифти, як показано на прикладі коду нижче:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

У попередньо визначених налаштуваннях використовуються тільки шрифти Сансу.

{{% /alert %}}

## Де придбати Aspose.Words Шукаємо шрифти

Aspose.Words намагається знайти шрифти TrueType на файловій системі автоматично. Як правило, ви можете спиратися на поведінку за замовчуванням Aspose.Words знайти `TrueType` шрифти, але іноді потрібно вказати власні папки, що містять шрифти TrueType. Про нас [Вкажіть вірний Тип Розташування шрифтів](/words/uk/python-net/specifying-truetype-fonts-location/) тема описує, як і де Aspose.Words як визначити власні шрифти.

## Відмінності обробки шрифтів у форматах Aspose.Words і Microsoft Word

Є деякі відмінності в обробці шрифтів у Aspose.Words і Microsoft Word як показано в таблиці нижче:

|| Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Т шрифти TrueType та шрифти OpenType з контурами TrueType | Підтримка. | Підтримка. |
| Відкриті шрифти з позначками PostScript | Підтримка більшості сценаріїв. Вбудовування для форматів сторінок, таких як PDF та XPS не підтримується. Текст замінюється зображеннями бітмапа. | Підтримувані для більшості сценаріїв, включаючи вбудовування для форматів сторінок. |
| Сортування шрифту OpenType | Підтримуються лише іменні екземпляри. Безперервні варіації не підтримуються. | Підтримувані тільки екземпляр за замовчуванням. Не підтримується іменовані екземпляри і безперервні варіації. |
| Тип1 шрифти | Підтримка Windows версії до 2013 і на версіях MacOS. Підтримка скидається на Windows версії з 2013 р. | Не підтримується. |

## Дивитися ще

- до [Google Noto Кошик](https://fonts.google.com/noto) скачати безкоштовно шрифти
