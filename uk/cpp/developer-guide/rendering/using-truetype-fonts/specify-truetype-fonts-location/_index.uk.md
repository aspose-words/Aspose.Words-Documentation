---
title: Вкажіть розташування шрифтів TrueType в C++
second_title: Aspose.Words для C++
articleTitle: Вкажіть розташування шрифтів TrueType
linktitle: Вкажіть розташування шрифтів TrueType
description: "Вкажіть різні джерела шрифтів TrueType: системну папку, користувацькі джерела, завантаження шрифтів із потоку, файлову систему або пам'ять."
type: docs
weight: 30
url: /uk/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Цей розділ описує поведінку Aspose.Words за замовчуванням під час пошуку шрифтів TrueType, включаючи відмінності в операційній системі, та демонструє, як вказати власні джерела шрифтів.

Клас [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) використовується для вказівки різних джерел шрифтів. Існує кілька реалізацій класу **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Деталі реалізації для деяких класів описані нижче.

## Завантаження шрифтів із системи {#loading-fonts-from-system}

Існує спеціальний клас [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/), який завжди використовується за замовчуванням. Він представляє всі шрифти TrueType, встановлені в системі. Таким чином, можна створити список джерел з **SystemFontSource** та будь-якими іншими необхідними джерелами:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

За замовчуванням в [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) визначено один екземпляр класу **SystemFontSource**. У різних операційних системах шрифти можуть розташовуватися в різних місцях. Однак використання екземпляра **FontSettings** для кожного документа не є оптимальним рішенням. У більшості випадків використання [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) має бути достатньо.

Окремі екземпляри для кожного документа потрібні тільки в тому випадку, якщо потрібно використовувати різні джерела шрифтів для різних документів, що є рідкісним випадком. Використання декількох екземплярів **FontSettings** знижує продуктивність, оскільки вони не використовують спільний кеш.

### Де Aspose.Words шукає TrueType шрифти в Windows

У більшості випадків Windows користувачі не стикаються з серйозними проблемами, пов'язаними з пропущеними шрифтами або неправильним розташуванням. Як правило, Aspose.Words переглядає документ і, знайшовши посилання на шрифт, успішно витягує дані про шрифт із системної папки.

В Windows, Aspose.Words спочатку використовуються всі доступні шрифти з папки _%windir%\Fonts. Ця настройка буде працювати для вас більшу частину часу. Ви можете вказати власні папки шрифтів, лише якщо це необхідно. Aspose.Words також здійснює пошук додаткових шрифтів, зареєстрованих у розділі реєстру HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Крім того, Windows 10 дозволяє встановити шрифти для поточного користувача. Шрифти поміщаються в папку %userprofile%\AppData\Local\Microsoft\Windows\Fonts і також вказуються в реєстрі HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, де Aspose.Words буде шукати ці шрифти.

Якщо документ містить вбудовані шрифти, Aspose.Words може зчитувати відповідні дані шрифту з документа та використовувати їх для створення макета документа. Документи також можуть містити посилання на Шрифти, яких немає в системних папках, і в цьому випадку можуть працювати такі сценарії:

- Користувачі можуть налаштувати нові джерела шрифтів за допомогою класу **FontSettings**
- Aspose.Words можна спробувати замінити пропущений шрифт на подібний

{{% alert color="primary" %}}

Aspose.Words візуалізація на сервері зазвичай не працює з програмою ASP.NET, налаштованою для запуску на середньому рівні довіри, оскільки вона забороняє доступ до Реєстру та обмежує доступ до файлової системи.

{{% /alert %}}

### Шрифти в системах, відмінних відWindows

Aspose.Words буде шукати шрифти в системних папках шрифтів. Список цих папок можна переглянути за допомогою методу [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Якщо підтримувані шрифти не знайдені, Aspose.Words використовуватиме вбудований шрифт за замовчуванням Fanwood.ttf.

Оскільки параметри шрифту Windows та шрифту, відмінного від Windows OS, різні, Aspose.Words робить все можливе, щоб знайти подібний шрифт і створити макет, подібний до оригінального. Однак це не завжди можливо. У цих випадках клас **FontSettings** слід використовувати для додавання спеціальних шрифтів або правил заміни.

#### Де Aspose.Words шукає TrueType шрифти в Linux

У різних дистрибутивах Linux шрифти можуть зберігатися в різних папках. Aspose.Words пошук шрифтів здійснюється в декількох місцях. За замовчуванням Aspose.Words здійснює пошук шрифтів у всіх наступних місцях: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Ця поведінка за замовчуванням буде працювати для більшості дистрибутивів Linux, але не гарантується, що вона буде працювати постійно, і в цьому випадку вам може знадобитися чітко вказати розташування шрифтів true type. Для цього вам потрібно знати, де встановлені шрифти TrueType у вашому дистрибутиві Linux.

#### Де Aspose.Words шукає TrueType шрифти в Mac OS X

Aspose.Words здійснює пошук шрифтів у папці `/Library/Fonts`, яка є стандартним розташуванням для TrueType шрифтів у Mac OS X. Хоча це налаштування буде працювати для вас більшу частину часу, у разі потреби вам може знадобитися вказати власні папки шрифтів.

#### TrueType шрифти на Android

Android робочий процес fonts інкапсульований у клас Typeface.
Існує п'ять типів шрифтів, кожен з яких є групою подібних сімейств шрифтів:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Наприклад, відповідно до Android - м [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) конфігураційний файл " times "належить до сімейства" serif", тому при запиті" times " буде використовуватися NotoSerif-Regular.ttf:

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

Для пошуку схожих шрифтів використовуються стратегії, описані раніше.

На додаток до них, у Aspose.Words є свій власний список замін для платформи Android.

Припустимо, документ містить шрифт PMingLiU-ExtB, перш за все, Aspose.Words шукає потрібний шрифт в системних джерелах.

За замовчуванням список папок шрифту Android виглядає наступним чином:

- / система / шрифти
- / системний / шрифт
- / дані / шрифти

Параметр Aspose.Words переглядає визначені користувачем джерела, які були встановлені методом:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

У разі, якщо була вказана явна Заміна, Aspose.Words замінює відсутній шрифт на запропонований Користувачем:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Якщо жодне з правил не спрацювало, Aspose.Words перевірте внутрішню таблицю заміни. Якщо таблиця містить інформацію про відповідний шрифт, то шрифт буде замінений. У нашому випадку Aspose.Words вибере `Typeface.SERIF`. Але якщо таблиця нічого не знає про запитуваний Шрифт, то Aspose.Words вибирає шрифт на основі спеціальних правил MS Word або найближчої відстані в просторі панорами.

#### TrueType шрифти на .NET Core та Xamarin

Для .NET Core та Xamarin застосовується те саме правило, що і для Aspose.Words для версії Java. За замовчуванням доступні всі системні шрифти платформи, на якій запущено додаток.
Список папок, в яких буде виконуватися пошук, можна знайти, викликавши метод:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Завантажити шрифти з папки {#loading-fonts-from-folder}

Якщо документ, що обробляється, містить посилання на Шрифти, яких немає в системі, або ви не хочете додавати їх до системної папки, або у вас немає прав доступу, то найкращим рішенням буде додати папку власних шрифтів за допомогою методу [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Це дозволить замінити системний джерело на користувальницький. Aspose.Words більше не буде шукати шрифти в реєстрі або Windows\F папці ont, а натомість скануватиме шрифти лише у зазначених папках. Метод [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) поверне відповідні значення.

### Вкажіть одну або кілька папок шрифтів

Методи [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) і [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) є скороченнями до методу **SetFontSources** з одним або декількома екземплярами [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Ці методи використовуються для вказівки, де Aspose.Words слід шукати шрифти. Якщо папка не існує або недоступна, Aspose.Words просто ігнорує цю папку. Якщо всі папки, включаючи джерела для заміни шрифту, були проігноровані, Aspose.Words використовуватиме шрифт Fanwood за замовчуванням.

У наступному прикладі показано, як задати папку або джерело, які Aspose.Words згодом буде використовувати для пошуку шрифтів TrueType під час рендеринга або вбудовування шрифтів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Додатковий логічний параметр визначає, чи будуть шрифти перевірятися рекурсивно по всіх папках, отже, будуть перевірятися всі дочірні папки зазначеної папки. У наступному прикладі показано, як задати Aspose.Words для пошуку шрифтів TrueType в декількох папках при рендерингу або впровадженні шрифтів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Зверніть увагу на пріоритети. Якщо різні джерела шрифтів мають шрифти з однаковою назвою сім'ї та стилем, тоді Aspose.Words вибере шрифт із джерела з вищим пріоритетом. Дивіться опис поля "пріоритет" нижче.

Якщо ви взагалі не хочете використовувати системні шрифти, Aspose.Words дозволяє ігнорувати їх і використовувати лише власні шрифти:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Пріоритетна властивість

Властивість [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) використовується, коли в різних джерелах шрифтів є шрифти з однаковою назвою сімейства та стилем. У цьому випадку Aspose.Words вибирає шрифт із джерела з вищим значенням пріоритету. Наприклад, у системній папці є стара версія шрифту, а клієнт додав нову версію того самого шрифту до папки користувача.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Завантаження шрифтів із потоку {#loading-fonts-from-stream}

Aspose.Words надає клас [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), який дозволяє завантажувати шрифти з потоку. Щоб використовувати джерело шрифтів stream, користувачеві потрібно створити похідний клас із **StreamFontSource** та надати реалізацію методу [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Метод **OpenFontDataStream** може бути викликаний кілька разів. Перший раз він буде викликаний, коли Aspose.Words перегляне надані джерела шрифтів, щоб отримати список доступних шрифтів. Пізніше це може бути викликано, якщо шрифт використовується в документі для аналізу даних шрифту та для вбудовування даних шрифту в деякі вихідні формати. **StreamFontSource** може бути корисним, оскільки дозволяє завантажувати дані шрифту лише тоді, коли це потрібно, а не зберігати їх у пам'яті протягом усього життя [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Збереження та завантаження кешу пошуку шрифтів

При першому пошуку шрифту Aspose.Words виконується перебір джерел шрифтів, зазначених користувачем, і формується кеш пошуку шрифтів на основі даних з цих джерел. Таким чином, кеш буде збирати інформацію про доступні шрифти: сімейство шрифтів, стиль, повна назва шрифту та інші. При наступних викликах Aspose.Words виконує пошук інформації про потрібний шрифт за його назвою в кеші пошуку шрифтів, після чого аналізує зазначені файли для використання шрифту.

Процедура розбору всіх доступних файлів шрифтів для ініціалізації кешу займає досить багато часу. Aspose.Words дозволяє зберігати та завантажувати кеш за допомогою методу [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) для вирішення проблеми продуктивності. Тобто користувач може завантажити раніше збережений кеш з файлу і пропустити етап розбору всіх доступних файлів шрифтів.

{{% alert color="primary" %}}

Використовуйте той самий метод **SaveSearchCache** для оновлення кешу.

{{% /alert %}}

{{% alert color="primary" %}}

Кеш також підходить для інших сценаріїв, коли шрифти завантажуються по мережі. Або для сценаріїв, коли немає можливості зберегти екземпляр `FontSettings` із завантаженим кешем.

{{% /alert %}}

## Отримати список доступних шрифтів {#get-a-list-of-available-fonts}

Якщо ви хочете отримати список доступних шрифтів, які, наприклад, можуть бути використані для візуалізації документа PDF, ви можете використовувати метод [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), як показано в наступному прикладі коду. Клас [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) визначає інформацію про фізичний шрифт, доступний для двигуна шрифтів Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
