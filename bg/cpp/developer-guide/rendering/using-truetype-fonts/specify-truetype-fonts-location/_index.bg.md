---
title: Посочете TrueType местоположение на шрифтовете в C++
second_title: Aspose.Words за C++
articleTitle: Посочете TrueType Местоположение На Шрифтовете
linktitle: Посочете TrueType Местоположение На Шрифтовете
description: "Посочете различни TrueType източници на шрифтове: системна папка, потребителски източници, зареждане на шрифтове от поток, файлова система или памет."
type: docs
weight: 30
url: /bg/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Тази тема описва поведението по подразбиране на Aspose.Words, когато търси TrueType шрифтове, включително разлики, специфични за операционната система, и показва как да се определят източниците на шрифтове на потребителя.

[FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) класът се използва за обозначаване на различни източници на шрифт. Има няколко имплементации на класа **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Подробности за имплементацията за някои класове са обяснени по-долу.

## Зареждане на шрифтове от системата {#loading-fonts-from-system}

Има специален [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) клас, който винаги се използва по подразбиране. Той представлява всички TrueType шрифтове, инсталирани на системата. Следователно е възможно да се създаде списък с източници с **SystemFontSource** и други необходими източници:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Една единствена инстанция на класа **SystemFontSource** е дефинирана по подразбиране в [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). На различни операционни системи шрифтовете могат да бъдат разположени на различни места. Използването на образец **FontSettings** за всеки документ обаче не е оптимално решение. В повечето случаи използването на [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) трябва да е достатъчно.

Екземпляри на документ са необходими само ако се изисква да се използват различни източници на шрифт за различни документи, което е рядък случай. Използването на няколко **FontSettings** екземпляра намалява производителността, защото те не споделят кеша.

### Където Aspose.Words търси TrueType шрифтове на Windows

В повечето случаи Windows потребителите не се сблъскват със значителни проблеми с пропуснати шрифтове или неправилни оформления. Обикновено Aspose.Words преминава през документ и когато срещне връзка с шрифт, той успешно извлича данните за шрифта от системната папка.

На Windows, Aspose.Words първо взема всички налични шрифтове от папката _%windir%\Fonts. Тази настройка ще работи за вас през по-голямата част от времето. Можете само да зададете ваши собствени папки с шрифтове, ако е необходимо. Aspose.Words също така търси допълнителни шрифтове, регистрирани в HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts ключ на системния регистър. В допълнение Windows 10 позволява инсталирането на шрифтове за текущия потребител. Шрифтовете се поставят в папката %userprofile%\AppData\Local\Microsoft\Windows\Fonts и също са посочени в регистъра HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, където Aspose.Words ще търси тези шрифтове.

Ако даден документ съдържа вградени шрифтове, Aspose.Words може да чете съответните данни за шрифта от документа и да ги използва за създаване на оформлението на документа. Документите могат да съдържат и връзки към шрифтове, които не са в системните папки, като в този случай се задействат следните сценарии:

- Потребителите могат да настройват нови източници на шрифтове през класа **FontSettings**
- Aspose.Words може да се опита да замени пропуснатия шрифт с подобен

{{% alert color="primary" %}}

Aspose.Words рендирането на сървър обикновено не работи с ASP.NET приложение, конфигурирано да работи под средното ниво на доверие, защото забранява достъпа до регистъра и ограничава достъпа до файловата система.

{{% /alert %}}

### Шрифтове на Не - Windows системи

Aspose.Words ще търси шрифтовете в системните папки с шрифтове. Списък на тези папки може да се види по метода [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Ако не са намерени поддържани шрифтове, Aspose.Words ще използва вградената по подразбиране Фенууд на шрифта.ттф.

Тъй като показателите на шрифта на Windows и не-Windows OS са различни, Aspose.Words прави всичко възможно да намери подобен шрифт и да изгради оформление, подобно на оригинала. Това обаче не винаги е възможно. В тези случаи клас **FontSettings** трябва да се използва за добавяне на потребителски шрифтове или правила за заместване.

#### Където Aspose.Words търси TrueType шрифтове на Linux

Различни Linux дистрибуции могат да съхраняват шрифтове в различни папки. Aspose.Words търси шрифтове на няколко места. По подразбиране Aspose.Words търси шрифтовете във всички от следните местоположения: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Това поведение по подразбиране ще работи за повечето дистрибуции Linux, но не е гарантирано, че ще работи през цялото време, в който случай може да се наложи изрично да зададете местоположението на истинските шрифтове. За да направите това, трябва да знаете къде TrueType шрифтове са инсталирани във Вашата Linux дистрибуция.

#### Където Aspose.Words търси TrueType шрифтове на Mac OS X

Aspose.Words търси шрифтове в папката `/Library/Fonts`, която е стандартното място за TrueType шрифтове на Mac OS X. Докато тази настройка ще работи за вас през по-голямата част от времето, може да се наложи да зададете свои собствени папки с шрифтове в случай, когато трябва да.

#### TrueType шрифтове на Android

На Android работният поток от шрифтове е капсулиран в класа на шрифта.
Има пет вида шрифтове, всеки шрифт представлява група от подобни семейства шрифтове.:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Например, според Android [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) конфигурационен файл, "пъти" принадлежи към" сериф " семейство така NotoSerif - редовен.ттф ще се използва, когато се изисква "Таймс":

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

За търсене на подобни шрифтове се използват стратегиите, описани по-горе.

В допълнение към тях Aspose.Words има собствен списък на заместителите за платформата Android.

Да речем, че документът съдържа PMingLiU - Екстб шрифт, на първо място Aspose.Words търси необходимия шрифт в системните източници.

Списъкът по подразбиране на папките Android на шрифта е:

- / система / шрифтове
- / система / шрифт
- / данни / шрифтове

Aspose.Words преглежда дефинирани от потребителя източници, зададени с метода:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

В случай, че е посочена изрична замяна, Aspose.Words замества липсващия шрифт с предложение на потребителя:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Ако нито едно от правилата не работи, Aspose.Words Проверете вътрешната таблица за заместване. Ако таблицата съдържа информация за добро прилягане, шрифтът се заменя. В нашия случай Aspose.Words ще избере `Typeface.SERIF`. Но ако таблицата не знае нищо за желания шрифт, тогава Aspose.Words взима шрифт въз основа на специални MS Word правила или най-близкото разстояние в пространството за Панос.

#### TrueType шрифтове на .NET Core и Xamarin

За .NET Core и Xamarin важи същото правило, както за Aspose.Words за Java Версия. По подразбиране всички системни шрифтове на платформата, на която работи приложението, са налични.
Списъкът с папки, в които ще се извършва търсенето, може да бъде намерен чрез извикване на метода:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Зареждане на шрифтове от папка {#loading-fonts-from-folder}

Ако документът, който се обработва, съдържа връзки към шрифтове, които не са в системата, или не искате да ги добавяте в системната папка, или нямате разрешения, тогава най-доброто решение би било да добавите папка със собствени шрифтове, като използвате метода [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Това ще позволи замяна на системния източник с потребителски източник. Aspose.Words вече няма да търси шрифтове в системния регистър или Windows\Fпапка, а вместо това ще сканира само за шрифтове в посочената(ите) папка (и). Методът [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) ще върне съответните стойности.

### Задаване на една или няколко папки с шрифтове

Методите [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) и [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) са преки пътища към метода **SetFontSources** с един или няколко [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/) екземпляра. Тези методи се използват, за да се посочи къде Aspose.Words трябва да се търсят шрифтове. Ако дадена папка не съществува или не е достъпна, Aspose.Words просто игнорира тази папка. Ако всички папки, включително източниците за заместване на шрифта, са били игнорирани, Aspose.Words ще използва шрифта по подразбиране.

Следващият пример показва как да настроите папката или източника, който Aspose.Words впоследствие ще използва, за да търси TrueType шрифтове по време на рендирането или вграждането на шрифтове.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Допълнителен Булев параметър контролира дали шрифтовете се сканират рекурсивно през всички папки, следователно сканира всички дъщерни папки на определена папка. Следващият пример показва как да настроите Aspose.Words да търсите в няколко папки за TrueType шрифтове при рендиране или вграждане на шрифтове:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Обърнете внимание на приоритетите. Ако има шрифтове с едно и също фамилно име и стил в различни източници на шрифт, тогава Aspose.Words ще избере шрифта от източника с по-висок приоритет. Вижте описанието на полето "приоритет" по-долу.

Ако изобщо не искате да използвате системни шрифтове, Aspose.Words ви позволява да ги игнорирате и да използвате само ваши собствени шрифтове:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Приоритетен Имот

Свойството [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) се използва, когато има шрифтове с едно и също фамилно име и стил в различни източници на шрифт. В този случай Aspose.Words избира шрифта от източника с по-висока стойност на приоритет. Например има стара версия на шрифта в системната папка и клиентът е добавил нова версия на същия шрифт в персонализирана папка.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Зареждане на шрифтове от поток {#loading-fonts-from-stream}

Aspose.Words осигурява [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) клас, който позволява зареждане на шрифтове от потока. За да използва източника на шрифта на потока, потребителят трябва да създаде производен клас от **StreamFontSource** и да предостави имплементация на метода [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). **OpenFontDataStream** методът може да бъде извикан няколко пъти. За първи път тя ще бъде извикана, когато Aspose.Words сканира предоставените източници на шрифтове, за да получи списък с наличните шрифтове. По-късно може да се извика, ако шрифтът се използва в документа, за да се анализират данните за шрифта и да се вградят данните за шрифта в някои изходни формати. **StreamFontSource** може да е полезно, защото позволява зареждането на данните за шрифта само когато е необходимо, а не да се съхраняват в паметта за [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) живота.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Запазване и зареждане на кеша за търсене на шрифтове

Когато търсите шрифт за първи път, Aspose.Words итерира над източниците на шрифта, посочени от потребителя, и образува кеш за търсене на шрифт въз основа на данни от тези източници. По този начин кешът ще събира информация за наличните шрифтове: семейство шрифтове, стил, Име на пълен шрифт и други. При следващи повиквания Aspose.Words търси информация за желания шрифт по името му в кеша за търсене на шрифт, след което анализира посочените файлове, за да използва шрифта.

Процедурата за анализ на всички налични шрифтови файлове за инициализиране на кеша е доста времеемка. Aspose.Words Позволява ви да запазите и заредите кеша, като използвате метода [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/), за да разрешите проблема с производителността. Това означава, че потребителят може да зареди предварително записан кеш от файл и да пропусне стъпката за анализ на всички налични файлове с шрифтове.

{{% alert color="primary" %}}

Използвайте същия метод **SaveSearchCache**, за да актуализирате кеша.

{{% /alert %}}

{{% alert color="primary" %}}

Кешът е подходящ и за други сценарии, когато шрифтовете се зареждат по мрежата. Или за сценарии, когато няма начин да се съхранява екземпляр `FontSettings` със зареден кеш.

{{% /alert %}}

## Получете списък с наличните шрифтове {#get-a-list-of-available-fonts}

Ако искате да получите списъка с налични шрифтове, които например могат да се използват за рендиране на документ PDF, можете да използвате метода [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), както е показано в следващия пример за код. Класът [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) задава информация за физическия шрифт, наличен за двигателя Aspose.Words шрифт:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
