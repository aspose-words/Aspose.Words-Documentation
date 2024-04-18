---
title: Посочване на вярното Тип шрифтове Местоположение
second_title: Aspose.Words вместо Python via .NET
articleTitle: Посочване на вярното Тип шрифтове Местоположение
linktitle: Посочване на вярното Тип шрифтове Местоположение
description: "Посочете различни Вярно е. Тип източници на шрифт: системна папка, потребителски източници, зареждане на шрифтове от поток, файлова система или памет, използвайки Python."
type: docs
weight: 30
url: /bg/python-net/specifying-truetype-fonts-location/
---

Тази тема описва поведението по подразбиране на Aspose.Words когато търси шрифтове TrueType, включително специфични разлики в операционната система и показва как да се определят източниците на потребителски шрифтове.

На [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) класа се използва за определяне на различни източници на шрифт. Има няколко приложения на [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) клас:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Подробностите за някои класове са обяснени по-долу.

## Зареждане на шрифтове от системата

Има един специален [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) клас, който винаги се използва по подразбиране. Тя представлява всички шрифтове TrueType инсталирани на системата. Следователно е възможно да се създаде списък с източници с [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) и всякакви други необходими източници:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Един единствен случай на [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) класът се определя по подразбиране в [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). На различни операционни системи шрифтовете могат да бъдат разположени на различни места. Въпреки това, с помощта на [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) пример за всеки документ не е оптимално решение. В повечето случаи, като се използва [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) Трябва да е достатъчно.

За документи са необходими примери само ако е необходимо да се използват различни източници на шрифт за различни документи, което е рядкост. Използване на няколко [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) случаи намалява ефективността, защото те не споделят кеш.

### Къде? Aspose.Words Търсете TrueType шрифтове на Windows

В повечето случаи, Windows потребителите не са изправени пред значителни проблеми с пропуснати шрифтове или неправилно оформление. Обикновено, Aspose.Words преминава през документ и когато се натъкне на линк за шрифтове, успешно получава данните за шрифта от системната папка.

На <span notrans="<span notrans=" Windows"=""></span>,"> Aspose.Words първо взема всички налични шрифтове от _% windir% \ Папка с шрифтове. Тази обстановка ще работи за вас през повечето време. Можете да посочите собствени папки с шрифтове само ако е необходимо. Aspose.Words вместо .NET Също така търси допълнителни шрифтове, регистрирани в * HKEY_LOCAL_ MACHINE\ SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* регистрационен ключ. Освен това, Windows 10 позволява инсталиране на шрифтове за текущия потребител. Шрифтове са поставени в *% потребител профил% \ AppData\ Local\Microsoft\Windows\Fonts* папка и също така е посочено в * HKEY_CURRENT_USER\ Software\Microsoft\Windows NT\ Текуща версия\ Шрифтове* регистър, където Aspose.Words ще търси тези шрифтове.

Ако документът съдържа вградени шрифтове, Aspose.Words Можете да прочетете съответните данни за шрифта от документа и да го използвате, за да създадете документ за макет. Документите могат да съдържат и линкове към шрифтове, които не са в системните папки, в който случай се появяват следните сценарии:

- Потребителите могат да настроят нови източници на шрифт през [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) клас
- Aspose.Words може да се опита да замени пропуснатия шрифт с подобен


### Шрифтове на Non-Windows Системи

Aspose.Words ще търсите шрифтовете в папките със системни шрифтове. Списък на тези папки може да се види от [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) метод. Ако не бъдат намерени поддържани шрифтове, Aspose.Words ще използва вградения шрифт Fanwood.ttf.

Тъй като параметрите на шрифта Windows и не-Windows OS са различни, Aspose.Words прави всичко възможно да се намери подобен шрифт и да се изгради оформление подобно на оригинала. Това обаче не винаги е възможно. В тези случаи, [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) класа трябва да се използва за добавяне на потребителски шрифтове или правила за заместване.

#### Къде? Aspose.Words Търсете TrueType шрифтове на Linux

Различно Linux дистрибуциите могат да съхраняват шрифтове в различни папки. Aspose.Words търси шрифтове на няколко места. По подразбиране, Aspose.Words търси шрифтовете на всички от следните места: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Това поведение по подразбиране ще работи за повечето Linux дистрибуции, но не е гарантирано да работи през цялото време, в който случай може да се наложи да се уточни местоположението на true напишете изрично шрифтовете. За да направите това, трябва да знаете къде са инсталирани шрифтовете TrueType Linux разпределение.

#### Къде? Aspose.Words Търси TrueType шрифтове на Mac OS X

Aspose.Words търси шрифтове в папката * / Library/Fonts*, която е стандартното местоположение за TrueType шрифтове на Mac OS X. Въпреки че тази настройка ще работи за вас през повечето време, може да се наложи да посочите свои собствени папки шрифтове в случая, когато трябва.

## Зареждане на шрифтове от папка

Ако документът, който се обработва, съдържа линкове към шрифтове, които не са в системата, или не искате да ги добавите в системния файл или нямате права, тогава най-доброто решение ще бъде да добавите папка със собствени шрифтове, използвайки [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) метод. Това ще позволи да се замени източникът на системата с потребител. Aspose.Words няма повече да търси шрифтове в регистъра или Windows\ Шрифт папка и вместо това сканирайте само за шрифтове в посочената папка(s). На [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) методът ще върне съответните стойности.

### Посочване на един или няколко шрифта

На [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) както и [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) методи са преки пътища към [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) метод с един или няколко [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) случаи. Тези методи се използват, за да се посочи къде Aspose.Words Трябва да търсим шрифтове. Ако папката не съществува или не е достъпна, Aspose.Words Просто игнорира тази папка. Ако всички папки, включително източниците за заместване на шрифта, са били игнорирани, Aspose.Words ще използва Fanwood шрифт като по подразбиране.

Следният пример показва как да зададете папка или източник, който Aspose.Words впоследствие ще се използва за търсене на шрифтове TrueType по време на рендиране или вграждане на шрифтове:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Допълнителен булев параметър контролира дали шрифтовете се сканират рекурсивно през всички папки, като по този начин се сканират всички детски папки на определена папка. Следващият пример показва как да зададете Aspose.Words да търсите в няколко папки за TrueType шрифтове при издаване или вграждане на шрифтове:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Обърни внимание на приоритетите. Ако има шрифтове със същото фамилно име и стил в различни източници на шрифтове, тогава Aspose.Words ще изберете шрифта от източника с по-висок приоритет. Вж. описанието на полето за приоритет по-долу.

Ако не искате да използвате системни шрифтове на всички, Aspose.Words позволява да ги игнорирате и да използвате само собствените си шрифтове:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Приоритетна собственост

На **приоритет** имот се използва, когато има шрифтове със същото фамилно име и стил в различни източници на шрифтове. В този случай Aspose.Words избира шрифта от източника с по-висока приоритетна стойност. Например, има стара версия на шрифта в системната папка и клиентът добавя нова версия на същия шрифт в персонализирана папка.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Получаване на списък на наличните шрифтове

Ако искате да получите списъка с налични шрифтове, които, например, могат да се използват за представяне на PDF документ, можете да използвате [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) метод, както е показано в следния пример за код. На [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) клас определя информация за физическия шрифт, наличен за Aspose.Words шрифтов двигател:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
