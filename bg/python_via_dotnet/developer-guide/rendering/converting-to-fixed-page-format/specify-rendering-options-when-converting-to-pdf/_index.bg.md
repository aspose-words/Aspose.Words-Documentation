---
title: Опции при преобразуване в PDF
second_title: Aspose.Words вместо Python via .NET
articleTitle: Посочете настройките за прехвърляне при преобразуване в PDF
linktitle: Посочете настройките за прехвърляне при преобразуване в PDF
description: "Конвертиране на документ в PDF с разширени опции Python. Използвайте PdfSaveOptions за промяна на резултата от запис на документ във формат PDF."
type: docs
weight: 20
url: /bg/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Форматът на PDF е стационарен формат, който е много популярен сред потребителите и широко поддържан от различни приложения, защото PDF документ изглежда същият на всяко устройство. Поради тази причина превръщането в PDF е важна характеристика на Aspose.Words.

PDF е сложен формат. В процеса на конвертиране на документ в PDF са необходими няколко етапа от изчисленията, включително изчисляване на оформлението. Тъй като тези етапи включват сложни изчисления, те са отнема време. Също така PDF форматът е доста сложен само по себе си. Той има специфична файлова структура, графичен модел и вграждане на шрифт. Освен това той разполага с някои сложни функции на изхода, като например документи структура тагове, криптиране, цифрови подписи, и редактирани форми.

Aspose.Words монтаж на двигателя имитира начина, по който Microsoft WordРаботи на макет на страницата. Затова, Aspose.Words прави PDF изходни документи да изглеждат възможно най-близо до това, което можете да видите в Microsoft Word. Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ във формат PDF. Тези опции могат да бъдат посочени чрез използване на [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас, съдържащ свойствата, които определят как ще бъде показан PDF изхода.

Някои примери за използване [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) са предоставени по- долу.

{{% alert color="primary" %}}

В момента можете да запазите и в PDF/A-1 и PDF/A-2 формати. Имайте предвид, че с формата PDF/A размерът на изходния файл е по-голям от размера на редовния PDF файл.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) както и [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) са маркирани като остарели.

За повече информация относно PDF/A, вижте следващата статия, "Научете характеристики на преобразуване на PDF/A."

{{% /alert %}}

## Създаване на PDF Документ с формуляри за попълване

Също така е възможно да се изнасят формуляри за попълване от a Microsoft Word документ в изход PDF, който има запълваеми формуляри вместо обикновен текст. Използвайте [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) имот, за да запазите документ като PDF с запълващи се формуляри.

Обърнете внимание, че за разлика от <span notrans="<span notrans=" Microsoft Word"=""></span>,"> форматът PDF има ограничен брой опции за редактиране на формуляри, като например текстова кутия, композиция и чекова кутия. Microsoft Word има повече видове форми, например, избор на дати за календар. По принцип не е възможно да се имитира напълно Microsoft Word поведение в PDF. Следователно, в някои сложни случаи, PDF изход може да се различава от това, което виждате в Microsoft Word.

Примерът с кода по-долу показва как да се запази документ като PDF с запълващи се формуляри с определено Jpeg компресия и качество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Експортиране на структурата на документа и потребителските свойства

На [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) Имотът ви позволява да експортирате структурата на документите в PDF изхода.

PDF логически структури осигуряват механизъм за включване на информация, по отношение на структурата на съдържанието на документа, в PDF файл. Aspose.Words запазва информация за структурата от Microsoft Word документ, като например параграфи, списъци, таблици, бележки под линия/изпрати и др.

Следният пример показва как да запишете документ във формат PDF, запазвайки структурата на документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words също така ви позволява да експортирате потребителските свойства на документа в PDF, което се доказва със следния пример:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Експортиране на Outlines от отметки и заглавия в изход PDF

Ако искате да експортирате отметките като очертания в изход PDF, можете да използвате [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) собственост. Това свойство определя нивото по подразбиране в очертанията на документите, на които Microsoft Word Показани са отметки. Ако документът съдържа отметки в заглавната част на документа, можете да зададете [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) собственост на [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) или [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) за да се уточни как се изнасят в изход PDF. Отметките в заглавни/краки не се изнасят, когато стойността на [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) е [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Примерът с кода по-долу показва как да се експортират отметките от първия заглавен/футър на раздел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Изходът PDF от този пример е показан по-долу:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Кога [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) е зададено [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) и документът има дори и странни заглавни части/краки или различна заглавна страница/футър, отметките се изнасят за първите уникални заглавни части/краки в секция.

Можете също така да експортирате заглавия в изхода PDF, използвайки [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) собственост. Този имот посочва колко нива на заглавия са включени в очертанията на документа.

Примерът с кода по-долу показва как да се изнасят заглавията с три нива:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Изходът PDF от този пример е изобразен по-долу:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Отметките или навигацията могат да имат различен вид в различни PDF зрители. Освен това в някои приложения в UI не се предлагат отметки и навигация.

{{% /alert %}}

## Сваляне на изображения за намаляване размера на документа

Aspose.Words осигурява възможност за сваляне на изображенията, за да се намали размерът на изхода PDF, като се използва [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) собственост. Свалянето е активирано по подразбиране в [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) собственост.

Имайте предвид, че е възможно също така да се определи конкретна резолюция в [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) собственост или праг на преобразуване в [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) собственост. Във втория случай, ако разделителната способност на изображението е по-малка от граничната стойност, тогава намаляването няма да се прилага.

Примерът с кода по-долу показва как да се промени резолюцията на изображенията в изходен PDF документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Резолюцията се изчислява според реалния размер на изображението на страницата.

## Вграждане на шрифтове в Adobe PDF формат

Aspose.Words Също така ви позволява да контролирате как шрифтовете са вградени в получените PDF документи. Шрифтовете трябва да бъдат вградени във всеки документ на Adobe PDF, за да се гарантира, че документът може да се предава правилно на всяка машина (вж. повече подробности за текстовото предаване в раздела [Използване на истината Тип шрифтове](/words/bg/python-net/using-truetype-fonts/)). По подразбиране, Aspose.Words въвежда подмножество шрифтове, използвани в документа, в генерирания PDF. В този случай, само glyphs (характерове) използвани в документа се записват в PDF.

### Кога да използвате пълни шрифтове и кога да зададете

Има начин да се определи опция за Aspose.Words да се вграждат пълни шрифтове. Допълнителни подробности, заедно с някои предимства и недостатъци на всяка настройка са описани в таблицата по-долу.

| Режим на вградени шрифтове |  Предимства | Недостатъци |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, когато искате да редактирате получения PDF по-късно чрез добавяне или промяна на текста. Всички шрифтове са включени, затова всички glyphса налице. | Тъй като някои шрифтове са големи (няколко мегабайта), вграждането им без разстройване може да доведе до големи изходни файлове. |
|  `Subset`  | Заместването е полезно, ако искате да запазите размера на изходния файл по-малък. | <p>Потребителят не може напълно да добавя или редактира текст с помощта на подмножествен шрифт в изходния PDF документ. Това е защото не всичко glyphна шрифта са налице.</p>

<p>Ако няколко PDF шрифта са записани с подмножествени шрифтове и събрани заедно, тогава комбинираният PDF документ може да има шрифт, съдържащ много ненужни подгрупи.</p>
 |

### Вграждане на пълни шрифтове в PDF

На [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) Имотът ви позволява да посочите как Aspose.Words вграждане на шрифтове в изходен PDF документ.

- За да вградите пълни шрифтове в изходния PDF документ, задайте [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *True*
- За да подмножите шрифтовете при запис в PDF, задайте [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *False*

Следният пример показва как се вграждат пълни шрифтове в изходния PDF документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Следващият пример показва как да зададете Aspose.Words за подмножество шрифтове в изходния PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл за тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как да контролирате вградените основни шрифтове и Windows Стандартни шрифтове

Основни шрифтове и Windows Стандартните шрифтове са набори от шрифтове, които обикновено присъстват на целевата машина или са предоставени от четеца на документа, затова не е необходимо те да бъдат вградени в изходния PDF. Като не вграждате тези шрифтове, можете да намалите размера на предадените PDF документи и да запазите преносимостта.

Aspose.Words предлага опции за избор как се изнасят шрифтовете в PDF. Можете да изберете да внедрите ядрото и стандартните шрифтове в изходния PDF или да пропуснете включването им и да използвате стандартни PDF шрифтове или системни шрифтове на целевата машина вместо това. Използването на някоя от тези опции обикновено води до значително намаляване на размера на файла за PDF документи, генерирани от Aspose.Words.

- Тъй като тези възможности са взаимно изключващи се, трябва да избирате само един по един.
- Когато спестявате с PDF/A-1 съответствие, всички използвани шрифтове трябва да бъдат вградени с PDF документа. Когато спестявате с това съответствие, [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) имотът трябва да бъде определен *False* и [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) имотът трябва да бъде определен [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Вграждане на основни шрифтове

Опцията за включване на Core шрифтове може да бъде активирана или изключена чрез използване на [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) собственост. Когато е настроено true, най-популярните шрифтове (Base 14 шрифтове) не са включени в изходния PDF документ:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Тези шрифтове се заменят със съответните основни шрифтове от тип 1, които се предоставят от читател при отварянето на PDF.

Примерът по-долу показва как да зададете Aspose.Words за да се избегне включването на основни шрифтове и да се позволи на читателя да ги замени с PDF Тип 1 шрифтове:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

За този пример можете да изтеглите шаблонния файл [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Тъй като PDF зрителите предоставят основни шрифтове на всяка поддържана платформа, тази опция също е полезна, когато се изисква по-голяма преносимост на документи. Въпреки това, основните шрифтове могат да изглеждат различни от системните шрифтове.

{{% alert color="primary" %}}

Тази настройка работи само за ANSI (Windows-1252) кодиране на текст. Писането на не-ANSI текст в PDF винаги ще изисква съответните шрифтове да бъдат вградени.

{{% /alert %}}

### Вграждане на системни шрифтове

Тази опция може да бъде активирана или изключена чрез използване на [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Когато този имот е настроен на [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), Ариел и Ню Роман. true шрифтовете не са вградени в PDF документ. В този случай клиентският зрител разчита на шрифтовете, инсталирани на операционната система на клиента. Когато [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) Имотът е зададен [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words не вграждайте шрифтове.

Примерът по-долу показва как да зададете Aspose.Words за да прескочите вграждането на Arial и Times New Roman шрифтове в PDF документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Този режим е най-полезен, когато искате да видите документите си на същата платформа, запазвайки точния вид на шрифтовете в изходния PDF.

{{% alert color="primary" %}}

Тази настройка работи само за ANSI (Windows-1252) кодиране на текст. Записването на не-ANSI текст в PDF изисква съответният шрифт да бъде вграден.

{{% /alert %}}
