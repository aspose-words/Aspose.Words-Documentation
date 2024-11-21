---
title: Вкажіть вірний Тип Розташування шрифтів Java
second_title: Aspose.Words для Java
articleTitle: Вкажіть вірний Тип Розташування шрифтів
linktitle: Вкажіть вірний Тип Розташування шрифтів
description: "Вказати різні Про нас Тип джерел шрифтів: папка системи, джерела користувачів, завантаження шрифтів з потоку, файлова система або пам'ять за допомогою Javaй"
type: docs
weight: 30
url: /uk/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Ця тема описує поведінку за замовчуванням Aspose.Words коли він дивиться на шрифти TrueType, включаючи певні відмінності операційної системи, і показує, як вказати джерела шрифтів користувачів.

Про нас [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) клас використовується для визначення різних джерел шрифту. Є кілька впровадження **FontSourceBase** клас:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Деталі реалізації для деяких класів описані нижче.

## Завантаження шрифтів з системи {#loading-fonts-from-system}

Особлива інформація [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) клас, який завжди використовується за замовчуванням. На системі встановлено всі шрифти TrueType. Тому можна створити вихідний список з **SystemFontSource** і будь-які інші необхідні джерела:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Єдиний екземпляр **SystemFontSource** клас визначається за замовчуванням в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)й На різних операційних системах, шрифти можуть розташовуватися в різних місцях. Однак за допомогою **FontSettings** не є оптимальним рішенням. У більшості випадків, використовуючи [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) повинен бути достатнім.

Для різних документів, які є рідкісною справою. Використання декількох **FontSettings** інстанції зменшують продуктивність, оскільки вони не діляться кешем.

### Де придбати Aspose.Words Шукаємо TrueType Fonts Windows

У більшості випадків, Windows Користувачі не стикаються з значними проблемами з пропущеними шрифтами або неправильними макетами. Зазвичай, Aspose.Words переходить через документ, і коли він зіткнувся з посиланням шрифту, він успішно виводить дані шрифту з папки системи.

Про нас <span notrans="<span notrans=" Windows"=""></span>, > Aspose.Words спочатку потрібно всі доступні шрифти з _%windir%\Fonts папка. Ця установка буде працювати для вас більшою кількістю часу. Ви можете вказати папки власних шрифтів, якщо вам потрібно. Aspose.Words також дивиться на додаткові шрифти, зареєстровані в HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts ключ реєстру. Додатково Windows 10 дозволяє встановлювати шрифти для поточного користувача. Фонти розміщуються в %userprofile%\AppData\Local\Microsoft\Windows\Fonts папка і також вказана в HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts реєстр, де Aspose.Words буде шукати ці шрифти.

Якщо документ містить вбудовані шрифти, Aspose.Words може прочитати відповідні дані шрифту з документа і використовувати його для створення макета документа. Документи можуть також містити посилання на шрифти, які не в папках системи, в яких виникають такі сценарії:

- Користувачі можуть встановити нові джерела шрифту через **FontSettings** клас
- до Aspose.Words може спробувати замінити пропущений шрифт з схожим

### Шрифти на не-Windows Системи

Aspose.Words буде шукати шрифти в папках системного шрифту. Перелік цих папок можна побачити [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) метод. Якщо не знайдено шрифтів, Aspose.Words використовувати вбудований за замовчуванням font Fanwood.ttf.

З параметрів шрифту Windows і не-Windows ОС відрізняється, Aspose.Words дозволяє знайти схожий шрифт і створити макет, схожий на оригінальний. Однак це не завжди можливо. У цих випадках **FontSettings** клас повинен бути використаний для додавання користувацьких шрифтів або правила заміни.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts Linux

Різне Linux розподіли можуть зберігати шрифти в різних папках. Aspose.Words шукає шрифти в декількох місцях. За замовчуванням, Aspose.Words Шукаємо шрифти у всіх адресах: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Ця поведінка за замовчуванням буде працювати для більшості Linux розподіли, але це не гарантується, щоб працювати в будь-який час, в якому випадку потрібно вказати місце розташування true шрифти типу явно. Для цього потрібно знати, куди встановлюються шрифти TrueType Linux розподіл.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts на Mac OS X

Aspose.Words Шукаємо шрифти в папці / бібліотеки / фонти, яка є стандартним розташуванням для шрифтів TrueType на Mac OS X. В той час як цей параметр буде працювати для вас більшого часу, вам може знадобитися вказати власні папки шрифтів у випадку, коли вам потрібно.

#### Редагування Android

Про нас Android, У класі Typeface передбачено роботи шрифтів.
Є п'ять типів об'єктів, кожен типобличчя представляє групу подібних сімей шрифтів:

- ДЕФАУЛТ
- ДЕФАУЛТ
- МОНОСПАС
- SANS_SERIF
- СЕРІФ

Наприклад, згідно з Androidй [JavaРеєстрація API Веб-сайт](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" належить до сімейства "серіф", так що NotoSerif-Regular.ttf буде використовуватися при запитанні "times":

**JavaScript licenses API Веб-сайт**

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

Для пошуку аналогічних шрифтів використовуються стратегії, описані раніше

До них Aspose.Words має власний список замін Android платформа.

Скажіть документ, який містить шрифт PMingLiU-ExtB, перш за все, Aspose.Words шукає необхідний шрифт у джерелах системи.

Список за замовчуванням Android Теки шрифту:

- /системи / шрифти
- /система / шрифт
- / дані / шрифти

Про нас Aspose.Words дивиться через вибрані джерела, які було встановлено за допомогою методу:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

У разі уточнення явної заміни, Aspose.Words замінює відсутні шрифти з пропозицією користувача:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Якщо жодна з правил працювала, Aspose.Words перевірити внутрішній замінний стіл. Якщо таблиця містить інформацію про хорошу посадку, то шрифт замінюється. У нашому випадку Aspose.Words оберіть `Typeface.SERIF`й Але якщо таблиця не знає нічого про запитаний шрифт Aspose.Words Підібрати шрифт на основі спеціальних правил MS Word або найближчої відстані в просторі Panose.

#### Редагування .NET Core і Xamarin

Для .NET Core і Xamarin тим самим правилом діє як для Aspose.Words для Java версія. За замовчуванням, всі шрифти системи платформи, на якій доступні програми.
Перелік папок, де здійснюється пошук, можна знайти за допомогою методу:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Завантаження шрифтів з папки {#loading-fonts-from-folder}

Якщо документ, що оброблюється, містить посилання на шрифти, які не на системі, або ви не хочете додавати їх в папку системи, або ви не маєте дозволу, то краще рішення буде додати папку з власними шрифтами за допомогою папки `SetFontsSources` метод. Це дозволить замінити джерело системи з джерелом користувача. Aspose.Words більше не буде шукати шрифти в реєстрі або Windows\Font папка і замість сканування шрифтів у зазначеній папці (s). Про нас `GetFontSources` метод поверне відповідні значення.

### Вкажіть один або кілька шрифтів

Про нас [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) і SetFontsFolders методи скорочень до **SetFontSources** метод з одним або декількома [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) екземпляри. Ці методи використовуються для позначення, де Aspose.Words варто шукати шрифти. Якщо папка не існує або не доступна, Aspose.Words просто ігнорує цю папку. Якщо всі папки, включаючи джерела для заміни шрифту, ігнорувалися, Aspose.Words використовувати шрифт Fanwood як за замовчуванням.

Наступний приклад показує, як встановити папку або джерело, яка Aspose.Words далі використовуватиметься для перегляду шрифтів TrueType під час рендерингу або тиснення шрифтів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Додатковий параметр Boolean контролює, чи скануються шрифти прямо через всі папки, отже, сканування всіх папок дитини вказаної папки. Наступний приклад показує, як встановити Aspose.Words Щоб переглянути декілька папок для шрифтів TrueType при рендерингу або тиснення шрифтів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{% alert color="primary" %}}

Зверніть увагу на пріоритети. Якщо є шрифти з такою назвою і стилем в різних джерелах шрифтів, то Aspose.Words оберіть шрифт з джерела з більш високим пріоритетом. Переглянути опис поля "Приорітет" нижче.

{{% /alert %}}

Якщо ви не хочете використовувати шрифти системи на всіх, Aspose.Words дозволяє ігнорувати їх і використовувати власні шрифти тільки:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Пріоритетна нерухомість

Про нас [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) використовується при наявності шрифтів з тим самим сімейним ім'ям та стилем в різних джерелах шрифту. У цьому випадку Aspose.Words вибирає шрифт з джерела з вищим пріоритетним значенням. Наприклад, є застаріла версія шрифту на папці системи і клієнт додала нову версію одного шрифту в папці на замовлення.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Завантаження шрифтів з потоку {#loading-fonts-from-stream}

Aspose.Words забезпечує [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) клас, що дозволяє завантажувати шрифти з потоку. Для використання джерела шрифту потокового передавання, користувач повинен створити вихідний клас **StreamFontSource** і забезпечення реалізації [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) метод. Про нас **OpenFontDataStream** метод можна назвати кілька разів. За перший раз буде викликано, Aspose.Words сканування наданих джерел шрифту для отримання списку доступних шрифтів. Після цього можна назвати, якщо шрифт використовується в документі для оформлення даних шрифтів та складання даних шрифтів до деяких форматів виведення. **StreamFontSource** може бути корисною, оскільки вона дозволяє завантажувати дані шрифту тільки при необхідності, а не зберігати її в пам'яті для `FontSettings` життя.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** Альтернативою [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) З тих пір, як завжди можна завантажити потік на пам'ять і пропустити його **MemoryFontSource**й Різниця полягає в тому, що **MemoryFontSource** зберігають в пам'яті весь час, і **StreamFontSource** завантажується на вимогу і відхиляється від правого боку. Але це може бути завантажено кілька разів, як описано вище. У деяких випадках **MemoryFontSource** краще, і в інших, **StreamFontSource**й

## Заощаджуйте та навантажуйте кеш-пам'ятку

При пошуку шрифту вперше, Aspose.Words переходить на джерела шрифтів, вказані користувачем і формує кеш пошуку шрифтів на основі даних з цих джерел. Таким чином, кеш збиратиме інформацію про доступні шрифти: сім'я шрифтів, стиль, ім'я шрифту та інші. Про наступні дзвінки, Aspose.Words пошук інформації про бажаний шрифт за його ім'ям в кеші пошуку шрифтів, після чого він обробляє вказані файли для використання шрифту.

Процедура оформлення всіх доступних файлів шрифтів для ініціалізації кешу досить трудомістка. Aspose.Words дозволяє зберегти і завантажувати кеш за допомогою кешу **FontSettings.SaveSearchCache** метод вирішення проблеми виконання. Це, користувач може завантажити раніше збережений кеш з файлу і пропустити крок оформлення всіх доступних файлів шрифтів.

{{% alert color="primary" %}}

Використовуйте те саме **SaveSearchCache** метод оновлення кешу.

{{% /alert %}}

{{% alert color="primary" %}}

Кеш також підходить для інших сценаріїв, коли шрифти завантажуються через мережу. Або для сценаріїв, коли немає способу зберігати `FontSettings` екземпляр з завантаженим кешем.

{{% /alert %}}


## Отримати список доступних шрифтів {#get-a-list-of-available-fonts}

Якщо ви хочете отримати список доступних шрифтів, які, наприклад, можуть бути використані для надання документа PDF, ви можете використовувати [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) метод, як показано в наступному прикладі коду. Про нас [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) клас визначає інформацію про фізичний шрифт, доступний для Aspose.Words Двигун шрифту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
