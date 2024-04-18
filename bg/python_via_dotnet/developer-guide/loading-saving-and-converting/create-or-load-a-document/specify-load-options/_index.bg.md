---
title: Задаване на настройките за зареждане Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Задаване на настройките за зареждане
linktitle: Задаване на настройките за зареждане
description: "По-точно управление на процеса на натоварване, като се използва Python."
type: docs
weight: 10
url: /bg/python-net/specify-load-options/
---

При зареждане на документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) клас, който позволява по-точен контрол на процеса на натоварване. Някои формати на натоварване имат съответен клас, който държи опции за натоварване за този формат на натоварване, например, има [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) за зареждане във формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) за зареждане на TXT. Тази статия дава примери за работа с опции на [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Клас.

## Задаване Microsoft Word Версия за промяна на външния вид

Различни версии на Microsoft Word приложението може да показва документи по различен начин. Например, има добре известен проблем с документи OOXML като DOX или DOTX произведени чрез WPS Office. В такъв случай съществени елементи за маркиране на документи могат да липсват или да бъдат тълкувани по различен начин, причиняващи Microsoft Word 2019 г. да се покаже такъв документ по различен начин в сравнение с Microsoft Word 2010.

По подразбиране Aspose.Words отваря документи, като използва Microsoft Word Правила от 2019 г. Ако трябва да се направи зареждане на документи изглежда като това ще се случи в един от предишните Microsoft Word версии на приложения, трябва изрично да посочите желаната версия с помощта на [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) собственост на [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Клас.

Следният пример с код показва как да зададете Microsoft Word версия с опции за зареждане:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Задаване на езикови предпочитания за промяна на външния вид

Подробности за показване на документ в Microsoft Word зависи не само от версията на заявлението и [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) стойност на имота, но също и на езиковите настройки. Microsoft Word може да показва документи по различен начин в зависимост от настройките на диалоговия прозорец "Office Language," който може да се намери в "File → Options → Language." Използвайки този диалогов прозорец, потребителят може да избере, например, първичен език, да доказва езици, да показва езици и т.н. Aspose.Words осигурява [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) собственост като еквивалент на този диалогов прозорец. Ако Aspose.Words изход се различава от Microsoft Word изход, задаване на подходяща стойност за [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) Това може да подобри изходния документ.

Следният пример за код показва как да зададете японски като [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Използвайте Temp папка, за да избегнете изключение на паметта

Aspose.Words поддържа изключително големи документи, които имат хиляди страници, пълни с богато съдържание. Зареждането на такива документи може да изисква много RAM. В процеса на товарене, Aspose.Words се нуждае от още повече памет, за да държи временни структури, използвани за анализ на документ.

Ако имате проблем с изключение на Out of Memory при зареждане на документ, опитайте се да използвате [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) собственост. В този случай, Aspose.Words ще съхранява някои данни във временни файлове вместо памет, и това може да помогне да се избегне такова изключение.

Следният пример с код показва как да зададете [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Задаване на кодовото описание

Повечето съвременни формати на документи съхраняват съдържанието си в Unicode и не изискват специална обработка. От друга страна, все още има много документи, които използват някои предварително Unicode кодиране и понякога пропуснете кодиране информация или дори не поддържа кодиране информация по природа. Aspose.Words се опитва автоматично да открие подходящо кодиране по подразбиране, но в редки случаи може да се наложи да използвате кодиране различно от това, открито от нашия алгоритъм за разпознаване. В този случай използвайте [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) имот, за да получите или настроите кодирането.

Следният пример за код показва как да се зададе кодирането, за да се преодолее автоматично избраното кодиране:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Зареждане на кодирани документи

Можеш да заредиш. Документи с думи кодирани с парола. За да направите това, използвайте специален конструктор претоварване, което приема [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Възразявам. Този обект съдържа [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) имот, който определя низ с парола.

Следният пример с код показва как да заредите криптиран документ с парола:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Ако не знаете предварително дали файлът е криптиран, можете да използвате [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) клас, който осигурява полезни методи за работа с файлови формати, като например откриване на файлов формат или конвертиране на файлови разширения към/от файлов формат изброявания. За да откриете дали документът е криптиран и изисква парола за отваряне, използвайте [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) собственост.

Следният пример за код показва как да се провери документът е криптиран или не:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
