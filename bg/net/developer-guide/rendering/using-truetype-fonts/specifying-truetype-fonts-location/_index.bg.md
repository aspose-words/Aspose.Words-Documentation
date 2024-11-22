---
title: Посочване на вярното Тип Шрифтове Местоположение в C#
second_title: Aspose.Words вместо .NET
articleTitle: Посочване на вярното Тип шрифтове Местоположение
linktitle: Посочване на вярното Тип шрифтове Местоположение
description: "Посочете различни Вярно е. Тип източници на шрифт: системна папка, потребителски източници, зареждане на шрифтове от поток, файлова система или памет, използвайки C#."
type: docs
weight: 30
url: /bg/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Тази тема описва поведението по подразбиране на Aspose.Words когато търси шрифтове TrueType, включително специфични разлики в операционната система и показва как да се определят източниците на потребителски шрифтове.

На [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) класа се използва за определяне на различни източници на шрифт. Има няколко приложения на **FontSourceBase** клас:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Подробностите за някои класове са обяснени по-долу.

## Зареждане на шрифтове от системата {#loading-fonts-from-system}

Има един специален [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) клас, който винаги се използва по подразбиране. Тя представлява всички шрифтове TrueType инсталирани на системата. Следователно е възможно да се създаде списък с източници с **SystemFontSource** и всякакви други необходими източници:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Един единствен случай на **SystemFontSource** класът се определя по подразбиране в [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). На различни операционни системи шрифтовете могат да бъдат разположени на различни места. Въпреки това, с помощта на **FontSettings** пример за всеки документ не е оптимално решение. В повечето случаи, като се използва [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) Трябва да е достатъчно.

За документи са необходими примери само ако е необходимо да се използват различни източници на шрифт за различни документи, което е рядкост. Използване на няколко **FontSettings** случаи намалява ефективността, защото те не споделят кеш.

### Къде? Aspose.Words Търсете TrueType шрифтове на Windows

В повечето случаи, Windows потребителите не са изправени пред значителни проблеми с пропуснати шрифтове или неправилно оформление. Обикновено, Aspose.Words преминава през документ и когато се натъкне на линк за шрифтове, успешно получава данните за шрифта от системната папка.

На Windows Aspose.Words първо взема всички налични шрифтове от _% windir% \ Папка с шрифтове. Тази обстановка ще работи за вас през повечето време. Можете да посочите собствени папки с шрифтове само ако е необходимо. Aspose.Words вместо .NET Също така търси допълнителни шрифтове регистрирани в HKEY_ LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\ Текуща версия\ Ключ за регистъра на шрифтовете. Освен това, Windows 10 позволява инсталиране на шрифтове за текущия потребител. Шрифтове се поставят в% потребител профил%\ AppData\ Local\Microsoft\Windows\ Шрифтове папка и също така посочени в HKEY_ CURRENT_USER\ Софтуер\Microsoft\Windows NT\ Текуща версия\ Регистър на шрифтовете, където Aspose.Words ще търси тези шрифтове.

Ако документът съдържа вградени шрифтове, Aspose.Words Можете да прочетете съответните данни за шрифта от документа и да го използвате, за да създадете документ за макет. Документите могат да съдържат и линкове към шрифтове, които не са в системните папки, в който случай се появяват следните сценарии:

- Потребителите могат да настроят нови източници на шрифт през **FontSettings** клас
- Aspose.Words може да се опита да замени пропуснатия шрифт с подобен

{{% alert color="primary" %}}

Aspose.Words превод на сървър обикновено няма да работи с ASP.NET приложение, конфигурирано да работи под средното ниво на доверие, защото забранява достъпа до регистър и ограничава достъпа до файловата система.

{{% /alert %}}

### Шрифтове на Non-Windows Системи

Aspose.Words ще търсите шрифтовете в папките със системни шрифтове. Списък на тези папки може да се види от [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) метод. Ако не бъдат намерени поддържани шрифтове, Aspose.Words ще използва вградения шрифт Fanwood.ttf.

Тъй като параметрите на шрифта Windows и не-Windows OS са различни, Aspose.Words прави всичко възможно да се намери подобен шрифт и да се изгради оформление подобно на оригинала. Това обаче не винаги е възможно. В тези случаи, **FontSettings** класа трябва да се използва за добавяне на потребителски шрифтове или правила за заместване.

#### Къде? Aspose.Words Търсете TrueType шрифтове на Linux

Различно Linux дистрибуциите могат да съхраняват шрифтове в различни папки. Aspose.Words търси шрифтове на няколко места. По подразбиране, Aspose.Words търси шрифтовете на всички от следните места: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Това поведение по подразбиране ще работи за повечето Linux дистрибуции, но не е гарантирано да работи през цялото време, в който случай може да се наложи да се уточни местоположението на true напишете изрично шрифтовете. За да направите това, трябва да знаете къде са инсталирани шрифтовете TrueType Linux разпределение.

#### Къде? Aspose.Words Търси TrueType шрифтове на Mac OS X

Aspose.Words търси шрифтове в папката /Библиотека/ Fonts, която е стандартното местоположение за TrueType шрифтове на Mac OS X. Въпреки че тази настройка ще работи за вас през повечето време, може да се наложи да посочите свои собствени папки шрифтове в случая, когато трябва.

## Зареждане на шрифтове от папка {#loading-fonts-from-folder}

Ако документът, който се обработва, съдържа линкове към шрифтове, които не са в системата, или не искате да ги добавите в системния файл или нямате права, тогава най-доброто решение ще бъде да добавите папка със собствени шрифтове, използвайки [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) метод. Това ще позволи да се замени източникът на системата с потребител. Aspose.Words няма повече да търси шрифтове в регистъра или Windows\ Шрифт папка и вместо това сканирайте само за шрифтове в посочената папка(s). На [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) методът ще върне съответните стойности.

### Задаване на един или няколко шрифта

На [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) както и [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) методи са преки пътища към **SetFontSources** метод с един или няколко [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) случаи. Тези методи се използват, за да се посочи къде Aspose.Words Трябва да търсим шрифтове. Ако папката не съществува или не е достъпна, Aspose.Words Просто игнорира тази папка. Ако всички папки, включително източниците за заместване на шрифта, са били игнорирани, Aspose.Words ще използва Fanwood шрифт като по подразбиране.

Следният пример показва как да зададете папка или източник, който Aspose.Words впоследствие ще се използва за търсене на шрифтове TrueType по време на рендиране или вграждане на шрифтове:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Допълнителен булев параметър контролира дали шрифтовете се сканират рекурсивно през всички папки, като по този начин се сканират всички детски папки на определена папка. Следващият пример показва как да зададете Aspose.Words да търсите в няколко папки за TrueType шрифтове при издаване или вграждане на шрифтове:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обърни внимание на приоритетите. Ако има шрифтове със същото фамилно име и стил в различни източници на шрифтове, тогава Aspose.Words ще изберете шрифта от източника с по-висок приоритет. Вж. описанието на полето "Приоритет" по-долу.

Ако не искате да използвате системни шрифтове на всички, Aspose.Words позволява да ги игнорирате и да използвате само собствените си шрифтове:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Приоритетна собственост

На [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) имот се използва, когато има шрифтове със същото фамилно име и стил в различни източници на шрифтове. В този случай Aspose.Words избира шрифта от източника с по-висока приоритетна стойност. Например, има стара версия на шрифта в системната папка и клиентът добавя нова версия на същия шрифт в персонализирана папка.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Зареждане на шрифтове от Stream {#loading-fonts-from-stream}

Aspose.Words осигурява [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) клас, който позволява зареждане на шрифтове от потока. За да използвате източника на шрифта, потребителят трябва да създаде получен клас от **StreamFontSource** и да се осигури изпълнението на [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) метод. На **OpenFontDataStream** метод може да се нарече няколко пъти. За първи път ще се казва кога Aspose.Words сканира предоставените източници на шрифт, за да получи списък с налични шрифтове. По-късно тя може да бъде наречена, ако шрифтът се използва в документа за анализ на данните за шрифта и за включване на данните за шрифта в някои изходни формати. **StreamFontSource** може да бъде полезно, защото позволява зареждане на данните за шрифта само когато е необходимо, а не да го съхранява в паметта за [Настройки на шрифта](https://fontsettings/) цял живот.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** е алтернатива на [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) Тъй като винаги е възможно да се зареди поток към паметта и да се премине към **MemoryFontSource**. Разликата е, че **MemoryFontSource** се съхранява в паметта през цялото време, и **StreamFontSource** е натоварен при поискване и изхвърлен веднага. Но може да бъде зареден няколко пъти, както е описано по-горе. В някои случаи **MemoryFontSource** е за предпочитане, а при други, **StreamFontSource**.

## Запис и зареждане на кеш за търсене на шрифт

Когато търсите шрифт за първи път, Aspose.Words iterates над източниците на шрифт, посочени от потребителя и образува кеш за търсене на шрифт въз основа на данни от тези източници. По този начин кешът ще събира информация за наличните шрифтове: семейство шрифтове, стил, пълно име на шрифта и др. При последващи обаждания, Aspose.Words търсене на информация за желания шрифт с името му в кеша за търсене на шрифт, след което съпоставя посочените файлове, за да използва шрифта.

Процедурата за анализ на всички налични файлове с шрифтове за инициализиране на кеша отнема доста време. Aspose.Words позволява да запишете и заредите кеша с помощта на [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) метод за решаване на проблема с ефективността. Това означава, че потребителят може да зареди предварително записан кеш от файл и да пропусне стъпката на анализ на всички налични файлове с шрифтове.

{{% alert color="primary" %}}

Използвайте същото. **SaveSearchCache** метод за актуализиране на кеша.

{{% /alert %}}

Следният пример с код показва как да се подготвят източниците на шрифтове и да се генерира кеш за търсене на шрифтове предварително:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Следният пример с код показва как да зададете източници на шрифт и да заредите кеша за търсене преди обработка на документи:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Търсенето на шрифт е страхотно за Aspose.Words интеграция в AWS Lambda поради редица ограничения. Например, на основния размер контейнер и в резултат на това, на броя на шрифтовете.

Кешът е подходящ и за други сценарии, когато шрифтовете се зареждат през мрежата. Или за сценарии, когато няма начин да се съхранява `FontSettings` Например със зареден кеш.

{{% /alert %}}

## Вземи списък на наличните шрифтове {#get-a-list-of-available-fonts}

Ако искате да получите списъка с налични шрифтове, които, например, могат да се използват за представяне на PDF документ, можете да използвате [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) метод, както е показано в следния пример за код. На [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) клас определя информация за физическия шрифт, наличен за Aspose.Words шрифтов двигател:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
