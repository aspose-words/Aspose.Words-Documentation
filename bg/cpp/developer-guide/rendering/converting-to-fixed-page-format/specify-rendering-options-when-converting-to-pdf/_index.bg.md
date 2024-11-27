---
title: Задаване на опции за рендиране при конвертиране в PDF
second_title: Aspose.Words за C++
articleTitle: Задаване на опции за рендиране при конвертиране в PDF
linktitle: Задаване на опции за рендиране при конвертиране в PDF
description: "Конвертирайте документ в PDF с разширени опции, като използвате C++. Използвайте PdfSaveOptions, за да промените резултата от записването на документ във формат PDF."
type: docs
weight: 30
url: /bg/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Форматът PDF е формат с фиксирана страница, който е много популярен сред потребителите и широко се поддържа от различни приложения, защото документ PDF изглежда еднакво на всяко устройство. Поради тази причина превръщането в PDF е важна характеристика на Aspose.Words.

PDF е сложен формат. Няколко етапа на изчисления са необходими в процеса на конвертиране на документ до PDF, включително и изчислението на оформлението. Тъй като тези етапи включват сложни изчисления, те отнемат много време. Също така, форматът PDF е доста сложен сам по себе си. Той има специфична файлова структура, графичен модел и вграждане на шрифтове. Освен това той разполага с някои сложни функции на изхода, като например тагове за структурата на документа, криптиране, цифрови подписи и редактируеми формуляри.

Aspose.Words оформлението имитира начина, по който работи оформлението на страницата на Microsoft Word. Следователно Aspose.Words прави PDF изходните документи да изглеждат възможно най-близо до това, което можете да видите в Microsoft Word. Понякога е необходимо да зададете допълнителни опции, които могат да повлияят на резултата от записването на документ във формат PDF. Тези опции могат да бъдат зададени чрез използването на клас [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), съдържащ свойствата, които определят как ще се показва изходът PDF.

Някои примери за употреба на **PdfSaveOptions** са дадени по-долу.

{{% alert color="primary" %}}

В момента можете да запазите PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, и PDF/UA-1 формати. Използвайте изброяването [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/), за да зададете нивото на съответствие на стандартите PDF. Имайте предвид, че при формат PDF/A размерът на изходния файл е по-голям от нормалния PDF Размер на файла.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) са маркирани като остарели.

За повече информация относно PDF/A вижте следващата статия, " научете характеристиките на конвертирането до PDF/A".

{{% /alert %}}

## Създаване на PDF документ с Попълними формуляри

Също така е възможно да експортирате формуляри за попълване от документ Microsoft Word в изход PDF, който има формуляри за попълване вместо обикновен текст. Използвайте свойството [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/), за да запишете документ като PDF с формуляри за попълване.

Обърнете внимание, че за разлика от Microsoft Word, формат PDF има ограничен брой опции за редактируеми формуляри, като например текстово поле, combobox и checkbox. Microsoft Word има повече типове формуляри, например контрола за избор на календарна дата. Като цяло не е възможно напълно да се имитира Microsoft Word поведение в PDF. Следователно, в някои сложни случаи PDF изходът може да се различава от това, което виждате в Microsoft Word.

Примерът с код по-долу показва как да запишете документ като PDF с формуляри за попълване с определена компресия и качество:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Експортиране на структурата на документа и потребителски свойства

Свойството [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) ви позволява да експортирате структурата на документа в PDF изход.

PDF средствата за логическа структура осигуряват механизъм за включване на информация относно структурата на съдържанието на документа във файл PDF. Aspose.Words запазва информация за структурата от Microsoft Word документ, като например параграфи, списъци, таблици, бележки под линия/бележки в края и т.н.

Следващият пример показва как да запишете документ във формат PDF, запазвайки структурата на документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words също така ви позволява да експортирате документ персонализирани свойства до PDF, което се демонстрира от следния пример:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Експортиране на очертания от отметки и заглавия в Изход PDF

Ако искате да експортирате отметките като очертания в изход PDF, можете да използвате свойството [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Това свойство задава нивото по подразбиране в структурата на документа, при което се показват Microsoft Word отметки. Ако документът съдържа отметки в горния / долния колонтитул на документа, можете да зададете свойството [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) на [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) или [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/), за да зададете как да се експортират в изход PDF. Отметките в горни / долни колонтитули не се експортират, когато стойността на **HeaderFooterBookmarksExportMode** е [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

Примерът код по-долу показва как да експортирате отметки от първия горен / долен колонтитул на секция:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Резултатът PDF от този пример е показан по-долу:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Когато **HeaderFooterBookmarksExportMode** е зададено на първо място и документът има четни и нечетни горни колонтитули/долни колонтитули или различен горен/долен колонтитул на първа страница, отметките се експортират за първите уникални горни/долни колонтитули в секция.

Можете също да експортирате заглавия в изход PDF, като използвате свойството [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Това свойство указва колко нива на заглавия са включени в структурата на документа.

Примерът с кода по-долу показва как да експортирате заглавия с три нива:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Резултатът PDF от този пример е показан по-долу.:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Маркер или навигация в заглавието може да има различни изяви в различни PDF зрители. Освен това в някои приложения отметките и навигацията в заглавията не са налични в UI.

{{% /alert %}}

## Намаляване на изображенията, за да се намали размерът на документа

Aspose.Words осигурява възможност за намаляване на семплиране на изображения, за да се намали размера на изхода PDF, като се използва свойството [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Настройката надолу е активирана по подразбиране в свойството [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Обърнете внимание, че е възможно също да зададете конкретна резолюция в свойството [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) или праг на резолюция в свойството [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Във втория случай, ако разделителната способност на изображението е по-малка от праговата стойност, тогава няма да се прилага понижаване.

Примерът код по-долу показва как да промените разделителната способност на изображенията в изходния документ PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Резолюцията се изчислява според реалния размер на изображението на страницата.

## Вграждане на шрифтове във формат PDF

Aspose.Words също така ви позволява да контролирате как шрифтовете са вградени в получените PDF документи. Шрифтовете трябва да бъдат вградени във всеки документ PDF, за да се гарантира, че документът може да бъде правилно рендиран на всяка машина (Вижте повече подробности за рендирането на шрифта в раздела [Използване На TrueType Шрифтове](/words/cpp/using-truetype-fonts/)). По подразбиране Aspose.Words вгражда подмножество от шрифтове, използвани в документа, в генерирания PDF. В този случай само глифовете (знаците), използвани в документа, се запазват в PDF.

### Кога да се използват пълни шрифтове и кога да се подменят

Има начин да се посочи опция за Aspose.Words за вграждане на пълни шрифтове. Допълнителни подробности, заедно с някои предимства и недостатъци на всяка настройка, са описани в таблицата по-долу.

| Режим На Вграждане На Шрифтове | Предимства | Недостатъци |
| :- | :- | :- |
| `Full` | Полезно, когато искате да редактирате получения PDF по-късно чрез добавяне или модифициране на текста. Всички шрифтове са включени, следователно всички глифове са налице. | Тъй като някои шрифтове са големи (няколко мегабайта), вграждането им без подмножество може да доведе до големи изходни файлове. |
| `Subset` | Подмножаването е полезно, ако искате да запазите размера на изходния файл по-малък. | <p>Потребителят не може напълно да добавя или редактира текста, като използва подмножествения шрифт в изходния документ PDF. Това е така, защото не всички глифове на шрифта са налице.</p><p>Ако няколко PDFs са записани с подмножествени шрифтове и са сглобени заедно, тогава комбинираният PDF документ може да има шрифт, съдържащ много ненужни подмножества.</p> |

### Вграждане на пълни шрифтове в PDF

Свойството [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) ви позволява да укажете как Aspose.Words вгражда шрифтове в изходен документ PDF.

- За да вградите пълни шрифтове в изходния документ PDF, задайте **EmbedFullFonts** да е вярно
- За да подмножите шрифтове, когато записвате до PDF, задайте **EmbedFullFonts** на невярно

Следващият пример показва как да вградите пълни шрифтове в изходния документ PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Следващият пример показва как да зададете Aspose.Words да подмножество шрифтове в изхода PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл за тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Как да контролирате вграждането на основни шрифтове и Windows стандартни шрифтове

Основните шрифтове и Windows стандартните шрифтове са" стандартните " набори от шрифтове, които обикновено присъстват на целевата машина или се предоставят от четеца на документи, поради което не е необходимо да бъдат вградени в изхода PDF. Като не вградите тези шрифтове, можете да намалите размера на рендираните PDF документи и все пак да поддържате преносимост.

Aspose.Words предоставя опции за избор как шрифтовете да се експортират в PDF. Можете да изберете да вградите основни и стандартни шрифтове в изхода PDF или да пропуснете вграждането им и да използвате стандартни шрифтове PDF или системни шрифтове на целевата машина. Използването на която и да е от тези опции обикновено води до значително намаляване на размера на файла за PDF документи, генерирани от Aspose.Words.

- Тъй като тези опции са взаимно изключващи се, трябва да изберете само един по един.
- Когато записвате с PDF/A-1 съответствие, всички използвани шрифтове трябва да бъдат вградени в документа PDF. Когато записвате с това съответствие, свойството [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) трябва да бъде настроено на невярно, а свойството [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) трябва да бъде настроено на [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Вграждане На Основни Шрифтове

Опцията за вграждане на основни шрифтове може да бъде активирана или деактивирана с помощта на свойството `UseCoreFonts`. Когато е настроено на вярно, следните най-популярни шрифтове от "истински Тип" (основни шрифтове 14) не са вградени в изходния документ PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Тези шрифтове се заменят със съответните основни шрифтове от тип 1, които се предоставят от четец при отваряне на PDF.

Примерът, предоставен по-долу, показва как да зададете Aspose.Words, за да избегнете вграждането на основни шрифтове и да позволите на читателя да ги замени с PDF шрифтове от тип 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл за този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Тъй като PDF зрителите предоставят основни шрифтове на всяка поддържана платформа, тази опция е полезна и когато се изисква по-голяма преносимост на документите. Въпреки това, основните шрифтове могат да изглеждат различно от системните шрифтове.

{{% alert color="primary" %}}

Тази настройка работи само за кодиращ текст ANSI (Windows-1252). Писането на текст от не - ANSI до PDF винаги ще изисква съответните шрифтове да бъдат вградени.

{{% /alert %}}

### Вграждане На Системни Шрифтове

Тази опция може да бъде активирана или деактивирана чрез използване на собствеността [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Когато това свойство е зададено на [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), шрифтовете от истински Тип "Ариал" и "пъти нов римски" не са вградени в документ PDF. В този случай зрителят на клиента разчита на шрифтовете, които са инсталирани на операционната система на клиента. Когато свойството **FontEmbeddingMode** е зададено на [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words не вграждайте никакви шрифтове.

Примерът по-долу показва как да зададете Aspose.Words да пропуснете вграждането на Ариални и времена нови римски шрифтове в документ PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Този режим е най-полезен, когато искате да видите документите си на една и съща платформа, запазвайки точния вид на шрифтовете в изхода PDF.

{{% alert color="primary" %}}

Тази настройка работи само за кодиращ текст ANSI (Windows-1252). Писането на текст от не - ANSI до PDF изисква съответният шрифт да бъде вграден.

{{% /alert %}}
