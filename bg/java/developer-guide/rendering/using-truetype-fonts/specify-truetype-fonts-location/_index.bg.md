---
title: Да се посочи вярно Вид Шрифтове Местоположение в Java
second_title: Aspose.Words вместо Java
articleTitle: Да се посочи вярно Тип шрифтове Местоположение
linktitle: Да се посочи вярно Тип шрифтове Местоположение
description: "Посочете различни Вярно е. Тип източници на шрифт: системна папка, потребителски източници, зареждане на шрифтове от поток, файлова система или памет, използвайки Java."
type: docs
weight: 30
url: /bg/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Тази тема описва поведението по подразбиране на Aspose.Words когато търси шрифтове TrueType, включително специфични разлики в операционната система и показва как да се определят източниците на потребителски шрифтове.

На [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) класа се използва за определяне на различни източници на шрифт. Има няколко приложения на **FontSourceBase** клас:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Подробностите за някои класове са обяснени по-долу.

## Зареждане на шрифтове от системата {#loading-fonts-from-system}

Има един специален [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) клас, който винаги се използва по подразбиране. Той представлява всички TrueType шрифтове инсталирани на системата. Следователно е възможно да се създаде списък с източници с **SystemFontSource** и всякакви други необходими източници:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Един единствен случай на **SystemFontSource** класът се определя по подразбиране в [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). На различни операционни системи шрифтовете могат да бъдат разположени на различни места. Въпреки това, с помощта на **FontSettings** пример за всеки документ не е оптимално решение. В повечето случаи, като се използва [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Трябва да е достатъчно.

По документи са необходими случаи, само ако е необходимо да се използват различни източници на шрифт за различни документи, което е рядък случай. Използване на няколко **FontSettings** случаите намаляват ефективността, защото те не споделят кеша.

### Къде? Aspose.Words Търси TrueType шрифтове на Windows

В повечето случаи, Windows потребителите не са изправени пред значителни проблеми с пропуснати шрифтове или неправилно оформление. Обикновено, Aspose.Words преминава през документ и когато се натъкне на линк за шрифтове, той успешно получава данните за шрифта от системната папка.

На Windows Aspose.Words първо взема всички налични шрифтове от _%windir%\Fonts папка. Тази обстановка ще работи за вас през повечето време. Задаване на собствени папки с шрифтове само ако е необходимо. Aspose.Words също така търси допълнителни шрифтове регистрирани в HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts ключ от регистъра. Освен това, Windows 10 позволява инсталирането на шрифтове за текущия потребител. Шрифтове са поставени в %userprofile%\AppData\Local\Microsoft\Windows\Fonts папка и също така е посочено в HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts регистър, където Aspose.Words Ще потърся тези шрифтове.

Ако документът съдържа вградени шрифтове, Aspose.Words Можете да прочетете съответните данни за шрифта от документа и да го използвате, за да създадете макет на документа. Документите могат да съдържат и линкове към шрифтове, които не са в системните папки, в който случай се появяват следните сценарии:

- Потребителите могат да настроят нови източници на шрифт през **FontSettings** клас
- Aspose.Words може да се опита да замени пропуснатия шрифт с подобен

### Шрифтове на Non-Windows Системи

Aspose.Words ще търсите шрифтовете в папките със системни шрифтове. Списък на тези папки може да се види от [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) метод. Ако не бъдат намерени поддържани шрифтове, Aspose.Words ще използва вградения шрифт Fanwood.ttf.

От показателите на шрифта Windows и не-Windows OS са различни, Aspose.Words прави всичко възможно да се намери подобен шрифт и да се изгради оформление подобно на оригинала. Това обаче не винаги е възможно. В тези случаи, **FontSettings** класът трябва да се използва за добавяне на потребителски шрифтове или правила за заместване.

#### Къде? Aspose.Words Търси TrueType шрифтове на Linux

Различно Linux дистрибуциите могат да съхраняват шрифтове в различни папки. Aspose.Words търси шрифтове на няколко места. По подразбиране, Aspose.Words търси шрифтовете на всички от следните места: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Това поведение по подразбиране ще работи за повечето Linux дистрибуции, но не е гарантирано да работи през цялото време, в който случай може да се наложи да се уточни местоположението на true напишете изрично шрифтовете. За да направите това, трябва да знаете къде са инсталирани шрифтовете TrueType Linux разпределение.

#### Къде? Aspose.Words Търси TrueType шрифтове на Mac OS X

Aspose.Words търси шрифтове в папката /Библиотека/ Fonts, която е стандартното местоположение за TrueType шрифтове на Mac OS X. Докато тази настройка ще работи за вас през по-голямата част от времето, може да се наложи да посочите свои собствени папки с шрифтове в случая, когато е необходимо.

#### Шрифтове на TrueType Android

На Android, работния поток на шрифтовете е капсулиран в класа Typeface.
Има пет вида типови лица, всеки тип представлява група от подобни семейства шрифтове:

- ДЕФОЛТ
- ДЕФОЛТ_СИЛНО
- МОНОСПАСЕ
- SANS_ SERIF
- SERIF

Например, според Android. [Хефтов. xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) frig файл, гон. време е принадлежи към семейство, така че NotoSerif-Regular.ttf ще се използва, когато се изисква:

**Шрифтове.xml**

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

За търсене на подобни шрифтове се използват описаните по-рано стратегии

Освен тях, Aspose.Words има свой собствен списък на заместници за Android платформа.

Да кажем, че документът съдържа шрифта PMingLiU-ExtB, първо, Aspose.Words търси необходимия шрифт в системните източници.

Списък по подразбиране на Android папките на шрифта е:

- /система/фонтове
- /система/фонт
- /data/fonts

На Aspose.Words търси чрез потребителски определени източници, които са определени с метода:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

В случай че е посочено изрично заместване, Aspose.Words заменя липсващия шрифт с предложението на потребителя:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Ако нито едно от правилата не проработи, Aspose.Words Проверете вътрешната резервна маса. Ако таблицата съдържа информация за добър припадък, тогава шрифтът се заменя. В нашия случай Aspose.Words ще изберете `Typeface.SERIF`. Но ако масата не знае нищо за поискания шрифт тогава Aspose.Words Получава шрифт въз основа на специални правила на MS Word или най-близкото разстояние в Panose пространство.

#### Шрифтове на TrueType .NET Core както и Xamarin

За .NET Core както и Xamarin се прилага същото правило като за Aspose.Words вместо Java версия. По подразбиране, всички системни шрифтове на платформата, на която работи приложението.
Списъкът на папките, в които ще се извърши търсенето, може да бъде намерен чрез свикване на метода:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Зареждане на шрифтове от папка {#loading-fonts-from-folder}

Ако документът, който се обработва, съдържа линкове към шрифтове, които не са в системата или не искате да ги добавите в системния файл или нямате права, тогава най-доброто решение ще бъде да добавите папка със собствени шрифтове, използвайки `SetFontsSources` метод. Това ще позволи замяна на източника на системата с потребителски източник. Aspose.Words няма повече да търси шрифтове в регистъра или Windows\Font папка и вместо това сканирайте само за шрифтове в посочената папка(s). На `GetFontSources` методът ще върне съответните стойности.

### Посочете един или няколко файлови шрифта

На [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) и методите на SetFonts папките са преки пътища към **SetFontSources** метод с един или няколко [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) случаи. Тези методи се използват, за да се посочи къде Aspose.Words Трябва да търсим шрифтове. Ако папката не съществува или не е достъпна, Aspose.Words Просто игнорира тази папка. Ако всички папки, включително и източниците за заместване на шрифта, бъдат игнорирани, Aspose.Words ще използва Fanwood шрифт като по подразбиране.

Следният пример показва как да зададете папка или източник, който Aspose.Words впоследствие ще използвате за търсене на шрифтове TrueType по време на рендиране или вграждане на шрифтове:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Допълнителен булев параметър контролира дали шрифтовете се сканират рекурсивно през всички папки, като по този начин се сканират всички детски папки на определена папка. Следващият пример показва как да зададете Aspose.Words да търсите в няколко папки за TrueType шрифтове при представяне или вграждане на шрифтове:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Обърни внимание на приоритетите. Ако има шрифтове със същото фамилно име и стил в различни източници на шрифтове, тогава Aspose.Words ще изберете шрифта от източника с по-висок приоритет. Вж. описанието на полето "Приоритет" по-долу.

{{% /alert %}}

Ако не искате да използвате системни шрифтове изобщо, Aspose.Words позволява да ги игнорирате и да използвате само собствените си шрифтове:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Приоритетна собственост

На [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) имот се използва, когато има шрифтове със същото фамилно име и стил в различни източници на шрифтове. В този случай Aspose.Words избира шрифта от източника с по-висока приоритетна стойност. Например, има стара версия на шрифта в системната папка и клиентът добавя нова версия на същия шрифт в персонализирана папка.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Зареждане на шрифтове от Stream {#loading-fonts-from-stream}

Aspose.Words осигурява [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) клас, който позволява зареждане на шрифтове от потока. За да използвате източника на шрифта, потребителят трябва да създаде получен клас от **StreamFontSource** и осигурява изпълнението на [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) метод. На **OpenFontDataStream** метод може да се нарече няколко пъти. За първи път, ще се нарича когато Aspose.Words сканира предоставените източници на шрифт, за да получи списък с налични шрифтове. По-късно тя може да бъде наречена, ако шрифтът се използва в документа за анализ на данните за шрифта и за вграждане на данните за шрифта в някои изходни формати. **StreamFontSource** може да бъде полезно, защото позволява зареждане на данните за шрифта само когато е необходимо, а не да го съхранява в паметта за `FontSettings` цял живот.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** е алтернатива на [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) Тъй като винаги е възможно да заредите поток към паметта и да го предадете на **MemoryFontSource**. Разликата е, че **MemoryFontSource** се съхранява в паметта през цялото време, и **StreamFontSource** е натоварен при поискване и веднага се унищожава. Но може да бъде зареден няколко пъти, както е описано по-горе. В някои случаи **MemoryFontSource** е за предпочитане, а при други, **StreamFontSource**.

## Запис и зареждане на кеш за търсене на шрифт

Когато търсите шрифт за първи път, Aspose.Words iterates над източниците на шрифт, посочени от потребителя и образува кеш за търсене на шрифт въз основа на данни от тези източници. По този начин кешът ще събира информация за наличните шрифтове: шрифтово семейство, стил, пълно име на шрифта и др. При последващи обаждания, Aspose.Words търсене на информация за желания шрифт с името му в кеша за търсене на шрифта, след което той съпоставя посочените файлове, за да използва шрифта.

Процедурата за анализиране на всички налични файлове с шрифтове за инициализиране на кеша отнема доста време. Aspose.Words ви позволява да запишете и заредите кеша с помощта на **FontSettings.SaveSearchCache** метод за решаване на проблема с ефективността. Това означава, че потребителят може да зареди предварително записан кеш от файл и да пропусне стъпката на анализ на всички налични файлове с шрифтове.

{{% alert color="primary" %}}

Използвайте същото **SaveSearchCache** метод за актуализиране на кеша.

{{% /alert %}}

{{% alert color="primary" %}}

Кешът е подходящ и за други сценарии, когато шрифтовете се зареждат по мрежата. Или за сценарии, когато няма начин да се съхранява `FontSettings` Например със зареден кеш.

{{% /alert %}}


## Вземи списък на наличните шрифтове {#get-a-list-of-available-fonts}

Ако искате да получите списъка с налични шрифтове, които например могат да се използват за представяне на PDF документ, можете да използвате [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) метод, както е показано в следния пример за код. На [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) класа задава информация за физическия шрифт, наличен за Aspose.Words шрифтов двигател:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
