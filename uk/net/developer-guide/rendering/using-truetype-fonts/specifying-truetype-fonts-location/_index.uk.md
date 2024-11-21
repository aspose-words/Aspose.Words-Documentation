---
title: Вкажіть вірний Тип Розташування шрифтів C#
second_title: Aspose.Words для .NET
articleTitle: Вкажіть вірний Тип Розташування шрифтів
linktitle: Вкажіть вірний Тип Розташування шрифтів
description: "Вказати різні Про нас Тип джерел шрифтів: папка системи, джерела користувачів, завантаження шрифтів з потоку, файлова система або пам'ять за допомогою C#й"
type: docs
weight: 30
url: /uk/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Ця тема описує поведінку за замовчуванням Aspose.Words коли він дивиться на шрифти TrueType, включаючи певні відмінності операційної системи, і показує, як вказати джерела шрифтів користувачів.

Про нас [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) клас використовується для визначення різних джерел шрифту. Є кілька впровадження **FontSourceBase** клас:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Деталі реалізації для деяких класів описані нижче.

## Завантаження шрифтів з системи {#loading-fonts-from-system}

Особлива інформація [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) клас, який завжди використовується за замовчуванням. На системі встановлено всі шрифти TrueType. Тому можна створити вихідний список з **SystemFontSource** і будь-які інші необхідні джерела:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Єдиний екземпляр **SystemFontSource** клас визначається за замовчуванням в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/)й На різних операційних системах, шрифти можуть розташовуватися в різних місцях. Однак, використовуючи **FontSettings** не є оптимальним рішенням. У більшості випадків, використовуючи [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) повинен бути достатнім.

Для різних документів, які є рідкісною справою. Використання декількох **FontSettings** інстанції зменшують продуктивність, оскільки вони не діляться кешем.

### Де придбати Aspose.Words Шукаємо TrueType Fonts Windows

У більшості випадків, Windows Користувачі не стикаються з значними проблемами з пропущеними шрифтами або неправильними макетами. Зазвичай, Aspose.Words переходить через документ, і коли він зіткнувся з посиланнямом шрифту, успішно захоплює дані шрифту з папки системи.

Про нас <span notrans="<span notrans=" Windows"=""></span>, > Aspose.Words спочатку приймає всі доступні шрифти з _%windir%\ Папка шрифтів. Ця установка буде працювати для вас більшою кількістю часу. Ви можете вказати папки власних шрифтів, якщо вам потрібно. Aspose.Words для .NET також шукає додаткові шрифти, зареєстровані в HKEY_ ЛОКАЛЬ_МАХІН\СОФТВАРЕ\MicrosoftЗWindows NT\CurrentVersion\ Фонти реєстр ключ. Додатково Windows 10 дозволяє встановлювати шрифти для поточного користувача. Шрифти розміщені на %userprofile%\ Додаток\Local\MicrosoftЗWindowsЗ Папка шрифтів і також вказана в HKEY_ CURRENT_USER\Software\MicrosoftЗWindows NT\CurrentVersion\ Реєстрація шрифтів, де Aspose.Words буде шукати ці шрифти.

Якщо документ містить вбудовані шрифти, Aspose.Words може прочитати відповідні дані шрифту з документа і використовувати його для створення макета документа. Документи можуть також містити посилання на шрифти, які не в папках системи, в яких виникають такі сценарії:

- Користувачі можуть встановити нові джерела шрифту через **FontSettings** клас
- до Aspose.Words може спробувати замінити пропущений шрифт з аналогічним

{{% alert color="primary" %}}

Aspose.Words Отримання на сервері, як правило, не працює з ASP.NET Додаток налаштовується для запуску під рівнем Medium Trust, оскільки він забороняє доступ до реєстру та обмеження доступу до файлової системи.

{{% /alert %}}

### Шрифти на не-Windows Системи

Aspose.Words буде шукати шрифти в папках системного шрифту. Перелік цих папок можна побачити [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) метод. Якщо не знайдено шрифтів, Aspose.Words використовувати вбудовану за замовчуванням font Fanwood.ttf.

З параметрів шрифту Windows і не-Windows ОС відрізняється, Aspose.Words дозволяє знайти схожий шрифт і створити макет, схожий на оригінальний. Однак це не завжди можливо. У цих випадках **FontSettings** клас повинен бути використаний для додавання користувацьких шрифтів або правила заміни.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts Linux

Інша Linux розподіли можуть зберігати шрифти в різних папках. Aspose.Words шукає шрифти в декількох місцях. За замовчуванням, Aspose.Words Шукаємо шрифти у всіх адресах: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Ця поведінка за замовчуванням буде працювати для більшості Linux розподіли, але не гарантовано працювати весь час, в якому випадку необхідно вказати місце розташування true шрифти типу явно. Для цього потрібно знати, куди встановлюються шрифти TrueType Linux розподіл.

#### Де придбати Aspose.Words Шукаємо TrueType Fonts на Mac OS X

Aspose.Words Шукаємо шрифти в папці "Library/Fonts", яка є стандартним розташуванням для шрифтів TrueType на Mac OS X. В той час як цей параметр буде працювати для вас більшого часу, вам може знадобитися вказати власні папки шрифтів у випадку, коли вам потрібно.

## Завантаження шрифтів з папки {#loading-fonts-from-folder}

Якщо документ, що оброблюється, містить посилання на шрифти, які не на системі, або ви не хочете додавати їх в папку системи, або ви не маєте дозволу, то краще рішення буде додати папку з власними шрифтами за допомогою папки [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) метод. Це дозволить замінити джерело системи з джерелом користувача. Aspose.Words більше не буде шукати шрифти в реєстрі або WindowsЗ Папка шрифтів і замість сканування шрифтів у зазначеній папці (s). Про нас [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) метод поверне відповідні значення.

### Вкажіть один або кілька шрифтів

Про нас [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) і [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) Методи ярлики до **SetFontSources** метод з одним або декількома [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) екземпляри. Ці методи використовуються для позначення, де Aspose.Words варто шукати шрифти. Якщо папка не існує або не доступна, Aspose.Words просто ігнорує цю папку. Якщо всі папки, зокрема джерела для заміни шрифту, ігнорувалися, Aspose.Words використовувати шрифт Fanwood як за замовчуванням.

Наступний приклад показує, як встановити папку або джерело, яка Aspose.Words далі буде використовуватися для перегляду шрифтів TrueType під час рендерингу або тиснення шрифтів:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

Додатковий параметр Boolean контролює, чи скануються шрифти прямо через всі папки, отже, сканування всіх папок дитини вказаної папки. Наступний приклад показує, як встановити Aspose.Words Щоб переглянути декілька папок для шрифтів TrueType при рендерингу або тиснення шрифтів:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Зверніть увагу на пріоритети. Якщо є шрифти з тим самим ім'ям сім'ї та стилем в різних джерелах шрифту, то Aspose.Words оберіть шрифт з джерела з більш високим пріоритетом. Переглянути опис поля "Приорітет" нижче.

Якщо ви не хочете використовувати шрифти системи на всіх, Aspose.Words дозволяє ігнорувати їх і використовувати власні шрифти тільки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Пріоритетна нерухомість

Про нас [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) використовується при наявності шрифтів з однаковим іменем і стилем в різних джерелах шрифту. У цьому випадку Aspose.Words вибирає шрифт з джерела з вищим пріоритетним значенням. Наприклад, є застаріла версія шрифту на папці системи і клієнт додано нову версію одного шрифту в папці на замовлення.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Завантаження шрифтів з потоку {#loading-fonts-from-stream}

Aspose.Words забезпечує [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) клас, що дозволяє завантажувати шрифти з потоку. Для використання джерела шрифтів потокового передавання, користувач повинен створити вихідний клас **StreamFontSource** і забезпечення реалізації [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) метод. Про нас **OpenFontDataStream** метод можна назвати кілька разів. За перший раз буде викликано, Aspose.Words сканування наданих джерел шрифту для отримання списку доступних шрифтів. Після цього можна назвати, якщо шрифт використовується в документі, щоб записати дані шрифту і вставляти дані шрифту на деякі вихідні формати. **StreamFontSource** може бути корисною, оскільки вона дозволяє завантажувати дані шрифтів тільки при необхідності, а не зберігати її в пам'яті для [Шрифти](https://fontsettings/) життя.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** Альтернативою [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) З тих пір, як завжди можна завантажити потік на пам'ять і перенести його до **MemoryFontSource**й Різниця полягає в тому, що **MemoryFontSource** зберігають в пам'яті весь час, і **StreamFontSource** завантажується на вимогу і відхиляється прямо. Але це може бути завантажено кілька разів, як описано вище. У деяких випадках **MemoryFontSource** краще, і в інших, **StreamFontSource**й

## Заощаджуйте та навантажуйте кеш-пам'ятку

При пошуку шрифту вперше, Aspose.Words переходить на джерела шрифтів, вказані користувачем і формує кеш пошуку шрифтів на основі даних з цих джерел. Таким чином, кеш збиратиме інформацію про доступні шрифти: сім'я шрифтів, стиль, ім'я шрифту та інші. На наступні дзвінки, Aspose.Words пошук інформації про бажаний шрифт за його ім'ям в кеші пошуку шрифтів, після чого він підписує вказані файли для використання шрифту.

Процедура оформлення всіх доступних файлів шрифтів для ініціалізації кешу досить трудомістка. Aspose.Words дозволяє зберегти і завантажувати кеш за допомогою кешу [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) метод вирішення проблеми виконання. Це, користувач може завантажити раніше збережений кеш з файлу і пропустити крок оформлення всіх доступних файлів шрифтів.

{{% alert color="primary" %}}

Використовуйте той же **SaveSearchCache** метод оновлення кешу.

{{% /alert %}}

Приклад коду показує, як підготувати джерела шрифтів і створити кеш пошуку шрифтів заздалегідь:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Приклад коду показує, як встановити джерела шрифтів і пошук навантаження кешу перед обробкою документів:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Фонтан пошуковий кеш відмінно підходить для Aspose.Words інтеграція в AWS Lambda через ряд обмежень. Наприклад, на основних розмірах контейнера і, в результаті, на кількість шрифтів.

Кеш також підходить для інших сценаріїв, коли шрифти завантажуються через мережу. Або для сценаріїв, коли немає способу зберігати `FontSettings` екземпляр з завантаженим кешем.

{{% /alert %}}

## Отримати список доступних шрифтів {#get-a-list-of-available-fonts}

Якщо ви хочете отримати список доступних шрифтів, які, наприклад, можуть бути використані для надання документа PDF, ви можете використовувати [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) метод, як показано в наступному прикладі коду. Про нас [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) клас визначає інформацію про фізичні шрифти, доступні для Aspose.Words Двигун шрифту:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
