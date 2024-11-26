---
title: Задаване на настройките за зареждане Java
second_title: Aspose.Words вместо Java
articleTitle: Посочете настройките за зареждане
linktitle: Посочете настройките за зареждане
description: "Задаване на напреднали свойства при зареждане на документ с помощта на Java да се получи по-точен контрол на процеса."
type: docs
weight: 10
url: /bg/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

При зареждане на документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) клас, който позволява по-точен контрол на процеса на натоварване. Някои формати на натоварване имат съответен клас, който държи опции за натоварване за този формат на натоварване, например има [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) за зареждане във формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) за зареждане на TXT. Тази статия дава примери за работа с опции на **LoadOptions** Клас.

## Комплект Microsoft Word Версия за промяна на външния вид

Различни версии на Microsoft Word приложението може да показва документи по различен начин. Например, има известен проблем с документи OOXML като DOX или DOTX произведени чрез WPS Office. В такива случаи съществени елементи за маркиране на документи могат да липсват или да бъдат тълкувани по различен начин, причиняващи Microsoft Word 2019 г. да покаже такъв документ по различен начин в сравнение с Microsoft Word 2010.

По подразбиране Aspose.Words отваря документи, като използва Microsoft Word Правила от 2019 г. Ако трябва да направите зареждането на документи да изглежда така, както би се случило в един от предишните Microsoft Word версии на приложения, трябва изрично да посочите желаната версия с помощта на [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) собственост на **LoadOptions** Клас.

Следният пример с код показва как да зададете Microsoft Word версия с опции за зареждане:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Задаване на езикови предпочитания за промяна на външния вид

Подробности за показване на документ в Microsoft Word зависи не само от версията на заявлението и **MswVersion** стойност на имота, но също и на езиковите настройки. Microsoft Word може да показва документи различно в зависимост от настройките на диалоговия прозорец "Office Language," който може да се намери в "File → Options → Language." Използвайки този диалогов прозорец, потребителят може да избере например първичен език, да доказва езици, да показва езици и т.н. Aspose.Words осигурява [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) собственост като еквивалент на този диалогов прозорец. Ако Aspose.Words изход се различава от Microsoft Word изход, задаване на подходяща стойност за **EditingLanguage** Това може да подобри документа за изпълнение.

Следният пример за код показва как да зададете японски като **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Използване WarningCallback Контрол върху проблемите При зареждане на документ

Някои документи могат да бъдат повредени, да съдържат невалидни записи, или да имат функции, които понастоящем не са подкрепени от Aspose.Words. Ако искате да знаете за проблеми, възникнали при зареждане на документ, Aspose.Words осигурява [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) интерфейс.

Следният пример за код показва прилагането на **IWarningCallback** интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

За да получите информация за всички проблеми през цялото време на натоварване, използвайте [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) собственост.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Използване на Ресурси Обаждане за контрол на външното зареждане на ресурси

Документът може да съдържа външни връзки към изображения, разположени някъде на местен диск, мрежа или интернет. Aspose.Words автоматично зарежда такива изображения в документ, но има ситуации, когато този процес трябва да бъде контролиран. Например, за да решим дали наистина трябва да заредим определено изображение или може би да го пропуснем. На [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) опцията за зареждане ви позволява да контролирате това.

Следният пример за код показва прилагането на [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) интерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Следният пример с код показва как да използвате **ResourceLoadingCallback** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Използвайте Temp папка, за да избегнете изключение на паметта

Aspose.Words поддържа изключително големи документи, които имат хиляди страници, пълни с богато съдържание. Зареждането на такива документи може да изисква много RAM. В процеса на товарене, Aspose.Words се нуждае от още повече памет, за да държи временни структури, използвани за анализ на документ.

Ако имате проблем с изключение на Out of Memory при зареждане на документ, опитайте се да използвате [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) собственост. В този случай, Aspose.Words ще съхранява някои данни във временни файлове вместо памет, и това може да помогне да се избегне такова изключение.

Следният пример с код показва как да зададете **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Нагласяне на указанията

Повечето съвременни формати на документи съхраняват съдържанието си в Unicode и не изискват специална обработка. От друга страна, все още има много документи, които използват някои предварително Unicode кодиране и понякога пропуснете кодиране информация или дори не поддържа кодиране информация по природа. Aspose.Words се опитва автоматично да открие подходящо кодиране по подразбиране, но в редки случаи може да се наложи да използвате кодиране различно от това, открито от нашия алгоритъм за разпознаване. В този случай използвайте [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) собственост, за да получите или настроите кодирането.

Следният пример за код показва как да зададете кодирането, за да се преодолее автоматично избраното кодиране:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Зареждане на кодирани документи

Можеш да заредиш. Документи с думи кодирани с парола. За да направите това, използвайте специален конструктор претоварване, което приема [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) Възразявам. Този обект съдържа [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) имот, който определя низ с парола.

Следният пример за код показва как да заредите криптиран документ с парола:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Ако не знаете предварително дали файлът е криптиран, можете да използвате [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) клас, който осигурява полезни методи за работа с файлови формати, като например откриване на файлов формат или конвертиране на файлови разширения към/от файлов формат изброявания. За да откриете дали документът е криптиран и изисква парола за отваряне, използвайте [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) собственост.

Следният пример за код показва как да се провери Open Document или е криптиран или не:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
