---
title: Вкажіть вірний Тип Розташування шрифтів
second_title: Aspose.Words для Python via .NET
articleTitle: Вкажіть вірний Тип Розташування шрифтів
linktitle: Вкажіть вірний Тип Розташування шрифтів
description: "Вказати різні Про нас Тип джерел шрифтів: папка системи, джерела користувачів, завантаження шрифтів з потоку, файлова система або пам'ять за допомогою Pythonй"
type: docs
weight: 30
url: /uk/python-net/specifying-truetype-fonts-location/
---

Ця тема описує поведінку за замовчуванням Aspose.Words коли він дивиться на шрифти TrueType, включаючи певні відмінності операційної системи, і показує, як вказати джерела шрифтів користувачів.

Про нас [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) клас використовується для визначення різних джерел шрифту. Є кілька впровадження [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) клас:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Деталі реалізації для деяких класів описані нижче.

## Завантаження шрифтів з системи

Особлива інформація [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) клас, який завжди використовується за замовчуванням. На системі встановлено всі шрифти TrueType. Тому можна створити вихідний список з [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) і будь-які інші необхідні джерела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Єдиний екземпляр [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) клас визначається за замовчуванням в [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)й На різних операційних системах, шрифти можуть розташовуватися в різних місцях. Однак, використовуючи [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) не є оптимальним рішенням. У більшості випадків, використовуючи [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) повинен бути достатнім.

Для різних документів, які є рідкісною справою. Використання декількох [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) інстанції зменшують продуктивність, оскільки вони не діляться кешем.

### Де придбати Aspose.Words Шукаємо TrueType Fonts Windows

У більшості випадків, Windows Користувачі не стикаються з значними проблемами з пропущеними шрифтами або неправильними макетами. Зазвичай, Aspose.Words переходить через документ, і коли він зіткнувся з посиланнямом шрифту, успішно захоплює дані шрифту з папки системи.

Про нас <span notrans="<span notrans=" Windows"=""></span>, > Aspose.Words спочатку приймає всі доступні шрифти з _%windir%\ Папка шрифтів. Ця установка буде працювати для вас більшою кількістю часу. Ви можете вказати папки власних шрифтів, якщо вам потрібно. Aspose.Words для .NET також шукає додаткові шрифти, зареєстровані в *HKEY_LOCAL_ Машина\SOFTWARE\MicrosoftЗWindows NT\CurrentVersion\Fonts* ключ реєстру. Додатково Windows 10 дозволяє встановлювати шрифти для поточного користувача. Шрифти розміщені в *%userprofile%\ Додаток\Local\MicrosoftЗWindows\Фонтс* папка і також вказана в * HKEY_CURRENT_USER\Software\MicrosoftЗWindows NT\CurrentVersion\ Фонти* реєстр, де Aspose.Words буде шукати ці шрифти.

Якщо документ містить вбудовані шрифти, Aspose.Words може прочитати відповідні дані шрифту з документа і використовувати його для створення макета документа. Документи можуть також містити посилання на шрифти, які не в папках системи, в яких виникають такі сценарії:

- Користувачі можуть встановити нові джерела шрифту через [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) клас
- до Aspose.Words може спробувати замінити пропущений шрифт з аналогічним


### Шрифти на не-Windows Системи

Aspose.Words буде шукати шрифти в папках системного шрифту. Перелік цих папок можна побачити [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) метод. Якщо не знайдено шрифтів, Aspose.Words використовувати вбудовану за замовчуванням font Fanwood.ttf.

З параметрів шрифту Windows і не-Windows ОС відрізняється, Aspose.Words дозволяє знайти схожий шрифт і створити макет, схожий на оригінальний. Однак це не завжди можливо. У цих випадках [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) клас повинен бути використаний для додавання користувацьких шрифтів або правила заміни.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts Linux

Інша Linux розподіли можуть зберігати шрифти в різних папках. Aspose.Words шукає шрифти в декількох місцях. За замовчуванням, Aspose.Words Шукаємо шрифти у всіх адресах: */usr/share/fonts***/usr/local/share/fonts***/usr/X11R6/lib/X11/fonts*. Ця поведінка за замовчуванням буде працювати для більшості Linux розподіли, але не гарантовано працювати весь час, в якому випадку необхідно вказати місце розташування true шрифти типу явно. Для цього потрібно знати, куди встановлюються шрифти TrueType Linux розподіл.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts на Mac OS X

Aspose.Words Для шрифтів в папці */Library/Fonts*, яка є стандартним розташуванням для шрифтів TrueType на Mac OS X. В той час як цей параметр буде працювати для вас більшого часу, вам може знадобитися вказати власні папки шрифтів у випадку, коли вам потрібно.

## Завантаження шрифтів з папки

Якщо документ, що оброблюється, містить посилання на шрифти, які не на системі, або ви не хочете додавати їх в папку системи, або ви не маєте дозволу, то краще рішення буде додати папку з власними шрифтами за допомогою папки [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) метод. Це дозволить замінити джерело системи з джерелом користувача. Aspose.Words більше не буде шукати шрифти в реєстрі або WindowsЗ Папка шрифтів і замість сканування шрифтів у зазначеній папці (s). Про нас [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) метод поверне відповідні значення.

### Вкажіть один або кілька шрифтів

Про нас [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) і [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) Методи ярлики до [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) метод з одним або декількома [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) екземпляри. Ці методи використовуються для позначення, де Aspose.Words варто шукати шрифти. Якщо папка не існує або не доступна, Aspose.Words просто ігнорує цю папку. Якщо всі папки, зокрема джерела для заміни шрифту, ігнорувалися, Aspose.Words використовувати шрифт Fanwood як за замовчуванням.

Наступний приклад показує, як встановити папку або джерело, яка Aspose.Words далі буде використовуватися для перегляду шрифтів TrueType під час рендерингу або тиснення шрифтів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

Додатковий параметр Boolean контролює, чи скануються шрифти прямо через всі папки, отже, сканування всіх папок дитини вказаної папки. Наступний приклад показує, як встановити Aspose.Words Щоб переглянути декілька папок для шрифтів TrueType при рендерингу або тиснення шрифтів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Зверніть увагу на пріоритети. Якщо є шрифти з тим самим ім'ям сім'ї та стилем в різних джерелах шрифту, то Aspose.Words оберіть шрифт з джерела з більш високим пріоритетом. Переглянути опис поля "природи" нижче.

Якщо ви не хочете використовувати шрифти системи на всіх, Aspose.Words дозволяє ігнорувати їх і використовувати власні шрифти тільки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Пріоритетна нерухомість

Про нас **Головна** використовується при наявності шрифтів з однаковим іменем і стилем в різних джерелах шрифту. У цьому випадку Aspose.Words вибирає шрифт з джерела з вищим пріоритетним значенням. Наприклад, є застаріла версія шрифту на папці системи і клієнт додано нову версію одного шрифту в папці на замовлення.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Отримання списку доступних шрифтів

Якщо ви хочете отримати список доступних шрифтів, які, наприклад, можуть бути використані для надання документа PDF, ви можете використовувати [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) метод, як показано в наступному прикладі коду. Про нас [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) клас визначає інформацію про фізичні шрифти, доступні для Aspose.Words Двигун шрифту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
