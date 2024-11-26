---
title: Посочете опциите за зареждане в C++
second_title: Aspose.Words за C++
articleTitle: Посочете Опциите За Зареждане
linktitle: Посочете Опциите За Зареждане
description: "По-точно контролирайте процеса на зареждане."
type: docs
weight: 10
url: /bg/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Когато зареждате документ, можете да зададете някои разширени свойства. Aspose.Words ви предоставя [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) клас, което позволява по-прецизен контрол на процеса на зареждане. Някои формати на натоварване имат съответен клас, който съдържа опции за натоварване за този формат на натоварване, например има [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) за зареждане на PDF формат или [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) за зареждане на TXT. Тази статия дава примери за работа с опции от класа **LoadOptions**.

## Задаване на Microsoft Word версия за промяна на облика

Различните версии на Microsoft Word Приложението може да показва документи безразлично. Например, има добре известен проблем с OOXML документи като DOCX или DOTX, произведени чрез WPS офис. В такъв случай може да липсват съществени елементи за маркиране на документа или да се тълкуват по различен начин, което да доведе до това, че Microsoft Word 2019 г.показва такъв документ по различен начин в сравнение с Microsoft Word 2010 г.

По подразбиране Aspose.Words отваря документи, като използва Microsoft Word 2019 правила. Ако трябва да направите зареждането на документи да изглежда така, както би се случило в една от предишните версии на Microsoft Word приложение, трябва изрично да посочите желаната версия, като използвате свойството [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) на класа **LoadOptions**.

Следващият пример за код показва как да зададете версията Microsoft Word с опции за зареждане:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Задаване на езикови предпочитания за промяна на облика

Подробностите за показването на документ в Microsoft Word зависят не само от версията на приложението и стойността на свойствата **MswVersion**, но и от езиковите настройки. Microsoft Word може да показва документи по различен начин в зависимост от настройките на диалоговия прозорец "Предпочитания за език на офиса", които могат да бъдат намерени в "Опции за файл → → език". С помощта на този диалогов прозорец потребителят може да избере например основен език, езици за проверка, езици за показване и т.н. Aspose.Words предоставя свойството [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) като еквивалент на този диалогов прозорец. Ако Aspose.Words изход се различава от Microsoft Word изход, задайте подходящата стойност за **EditingLanguage** - това може да подобри изходния документ.

Следващият пример за код показва как да зададете японски като **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Използвайте WarningCallback, за да контролирате проблеми при зареждане на документ

Някои документи може да са повредени, да съдържат невалидни записи или да имат функции, които в момента не се поддържат от Aspose.Words. Ако искате да знаете за проблеми, възникнали при зареждането на документ, Aspose.Words предоставя интерфейс [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Следващият пример за код показва имплементацията на **IWarningCallback** интерфейса:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

За да получите информация за всички проблеми през времето за зареждане, използвайте свойството `WarningCallback`.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Използвайте ResourceLoadingCallback, за да контролирате зареждането на външните ресурси

Документът може да съдържа външни връзки към изображения, разположени някъде на локален диск, мрежа или интернет. Aspose.Words автоматично зарежда такива изображения в документ, но има ситуации, когато този процес трябва да бъде контролиран. Например, за да решим дали наистина трябва да заредим определено изображение или може би да го пропуснем. Опцията ResourceLoadingCallback натоварване ви позволява да контролирате това.

Следващият пример за код показва имплементацията на IResourceLoadingCallback интерфейса:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Следният пример за код показва как да използвате **ResourceLoadingCallback** свойството:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Използвайте TempFolder, за да избегнете изключение от паметта

Aspose.Words поддържа изключително големи документи, които имат хиляди страници, пълни с богато съдържание. Зареждането на такива документи може да изисква много RAM. В процеса на зареждане Aspose.Words се нуждае от още повече памет, за да държи временните структури, използвани за анализ на документ.

Ако имате проблем с изключението за липса на памет, докато зареждате документ, опитайте да използвате свойството [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). В този случай Aspose.Words ще съхранява някои данни във временни файлове вместо в паметта и това може да помогне да се избегне такова изключение.

Следващият пример за код показва как да зададете **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Задаване на кодирането изрично

Повечето съвременни формати на документи съхраняват съдържанието си в Уникод и не изискват специална обработка. От друга страна, все още има много документи, които използват някакво кодиране преди Уникод и понякога или пропускат кодиращата информация, или дори не поддържат кодиращата информация по природа. Aspose.Words се опитва автоматично да открие подходящото кодиране по подразбиране, но в редки случаи може да се наложи да използвате кодиране, различно от това, открито от нашия алгоритъм за разпознаване на кодиране. В този случай използвайте свойството [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/), за да получите или зададете кодирането.

Следващият пример за код показва как да зададете кодирането да замени автоматично избраното кодиране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Зареждане На Криптирани Документи

Можете да заредите Word документи, криптирани с парола. За да направите това, използвайте специално претоварване на конструктора, което приема обект [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Този обект съдържа свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), което задава низа за парола.

Следващият пример за код показва как да заредите документ, криптиран с парола:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Ако не знаете предварително дали файлът е криптиран, можете да използвате клас [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), който предоставя полезни методи за работа с файлови формати, като например откриване на файлов формат или конвертиране на файлови разширения към/от файлови формати. За да откриете дали документът е криптиран и изисква парола, за да го отворите, използвайте свойството `IsEncrypted`.

Следващият пример за код показва как да проверите OpenDocument дали е криптиран или не:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
