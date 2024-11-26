---
title: Задаване на настройките за зареждане C#
second_title: Aspose.Words вместо .NET
articleTitle: Задаване на настройките за зареждане
linktitle: Задаване на настройките за зареждане
description: "По-точно управление на процеса на натоварване, като се използва C#."
type: docs
weight: 10
url: /bg/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

При зареждане на документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) клас, който позволява по-точен контрол на процеса на натоварване. Някои формати на натоварване имат съответен клас, който държи опции за натоварване за този формат на натоварване, например, има [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) за зареждане във формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) за зареждане на TXT. Тази статия дава примери за работа с опции на **LoadOptions** Клас.

## Задаване Microsoft Word Версия за промяна на външния вид

Различни версии на Microsoft Word приложението може да показва документи по различен начин. Например, има добре известен проблем с документи OOXML като DOX или DOTX произведени чрез WPS Office. В такъв случай съществени елементи за маркиране на документи могат да липсват или да бъдат тълкувани по различен начин, причиняващи Microsoft Word 2019 г. да се покаже такъв документ по различен начин в сравнение с Microsoft Word 2010.

По подразбиране Aspose.Words отваря документи, като използва Microsoft Word Правила от 2019 г. Ако трябва да се направи зареждане на документи изглежда като това ще се случи в един от предишните Microsoft Word версии на приложения, трябва изрично да посочите желаната версия с помощта на [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) собственост на **LoadOptions** Клас.

Следният пример с код показва как да зададете Microsoft Word версия с опции за зареждане:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Задаване на езикови предпочитания за промяна на външния вид

Подробности за показване на документ в Microsoft Word зависи не само от версията на заявлението и **MswVersion** стойност на имота, но също и на езиковите настройки. Microsoft Word може да показва документи по различен начин в зависимост от настройките на диалоговия прозорец "Office Language," който може да се намери в "File → Options → Language." Използвайки този диалогов прозорец, потребителят може да избере, например, първичен език, да доказва езици, да показва езици и т.н. Aspose.Words осигурява [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) собственост като еквивалент на този диалогов прозорец. Ако Aspose.Words изход се различава от Microsoft Word изход, задаване на подходяща стойност за **EditingLanguage** Това може да подобри изходния документ.

Следният пример за код показва как да зададете японски като **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Използване WarningCallback Контрол върху проблемите При зареждане на документ

Някои документи могат да бъдат повредени, да съдържат невалидни записи или да имат функции, които понастоящем не са подкрепени от Aspose.Words. Ако искате да знаете за проблеми, възникнали при зареждане на документ, Aspose.Words осигурява [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) интерфейс.

Следният пример с код показва прилагането на **IWarningCallback** интерфейс:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

За да получите информация за всички проблеми през цялото време на натоварване, използвайте [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) собственост.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Използване на Ресурси Обаждане за контрол на външните ресурси Зареждане

Документът може да съдържа външни връзки към изображения, разположени някъде на местен диск, мрежа или интернет. Aspose.Words автоматично зарежда такива изображения в документ, но има ситуации, когато този процес трябва да бъде контролиран. Например, да решим дали наистина трябва да заредим определено изображение или да го пропуснем. На [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) опцията за зареждане ви позволява да контролирате това.

Следният пример с код показва прилагането на [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) интерфейс:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Следният пример с код показва как да използвате **ResourceLoadingCallback** собственост:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Използвайте Temp папка, за да избегнете изключение на паметта

Aspose.Words поддържа изключително големи документи, които имат хиляди страници, пълни с богато съдържание. Зареждането на такива документи може да изисква много RAM. В процеса на товарене, Aspose.Words се нуждае от още повече памет, за да държи временни структури, използвани за анализ на документ.

Ако имате проблем с изключение на Out of Memory при зареждане на документ, опитайте се да използвате [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) собственост. В този случай, Aspose.Words ще съхранява някои данни във временни файлове вместо памет, и това може да помогне да се избегне такова изключение.

Следният пример с код показва как да зададете **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Задаване на кодовото описание

Повечето съвременни формати на документи съхраняват съдържанието си в Unicode и не изискват специална обработка. От друга страна, все още има много документи, които използват някои предварително Unicode кодиране и понякога пропуснете кодиране информация или дори не поддържа кодиране информация по природа. Aspose.Words се опитва автоматично да открие подходящо кодиране по подразбиране, но в редки случаи може да се наложи да използвате кодиране различно от това, открито от нашия алгоритъм за разпознаване. В този случай използвайте [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) имот, за да получите или настроите кодирането.

Следният пример за код показва как да се зададе кодирането, за да се преодолее автоматично избраното кодиране:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Зареждане на кодирани документи

Можеш да заредиш. Документи с думи кодирани с парола. За да направите това, използвайте специален конструктор претоварване, което приема [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) Възразявам. Този обект съдържа [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) имот, който определя низ с парола.

Следният пример с код показва как да заредите криптиран документ с парола:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Ако не знаете предварително дали файлът е криптиран, можете да използвате [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) клас, който осигурява полезни методи за работа с файлови формати, като например откриване на файлов формат или конвертиране на файлови разширения към/от файлов формат изброявания. За да откриете дали документът е криптиран и изисква парола за отваряне, използвайте [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) собственост.

Следният пример за код показва как да се провери Open Document или е криптиран или не:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
