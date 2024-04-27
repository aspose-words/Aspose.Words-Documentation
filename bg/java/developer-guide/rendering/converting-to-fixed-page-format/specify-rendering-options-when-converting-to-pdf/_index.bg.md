---
title: Посочване на настройките при преобразуване в PDF
second_title: Aspose.Words вместо Java
articleTitle: Посочване на настройките при преобразуване в PDF
linktitle: Посочване на настройките при преобразуване в PDF
description: "Конвертиране на документ в PDF с напреднали опции. Използване на PdfSaveOptions за промяна на резултата от запис на документ във формат PDF чрез използване на Java."
type: docs
weight: 20
url: /bg/java/specify-rendering-options-when-converting-to-pdf/
---

PDF форматът е стационарен формат, който е много популярен сред потребителите и широко поддържан от различни приложения, защото PDF документ изглежда същият на всяко устройство. Поради тази причина превръщането в PDF е важна характеристика на Aspose.Words.

PDF е сложен формат. В процеса на конвертиране на документ в PDF са необходими няколко етапа от изчисленията, включително изчисляване на оформлението. Тъй като тези етапи включват сложни изчисления, те са отнема време. Освен това PDF форматът е доста сложен само по себе си. Има специфична файлова структура, графичен модел и вграждане на шрифт. Освен това той разполага с някои сложни изходни функции, като например документи структура тагове, криптиране, цифрови подписи, и редактирани форми.

Aspose.Words монтаж на двигателя имитира начина, по който Microsoft WordРаботи на макет на страницата. Следователно, Aspose.Words прави PDF изходни документи да изглеждат възможно най-близо до това, което можете да видите в Microsoft Word. Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запис на документ във формат PDF. Тези опции могат да бъдат посочени чрез използването на [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) клас, съдържащ свойствата, които определят как ще бъде показан изходът от PDF.

Някои примери за използване **PdfSaveOptions** са предоставени по- долу.

{{% alert color="primary" %}}

В момента можете да запазите на PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u и PDF/UA-1 формати. Използвайте [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) изброяване за определяне на нивото на съответствие на PDF стандартите. Имайте предвид, че с формата PDF/A размерът на изходния файл е по-голям от размера на редовния PDF файл.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) както и [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) са маркирани като остарели.

За повече информация относно PDF/A вижте следващата статия, "Научете характеристики на преобразуване на PDF/A."

{{% /alert %}}

## Създаване на PDF Документ с формуляри за попълване

Възможно е също така да се изнасят запълващи се формуляри от a Microsoft Word документ в изход PDF, който има запълващи се формуляри вместо обикновен текст. Използвайте [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) имот, за да запазите документ като PDF с запълващи се формуляри.

Обърнете внимание, че за разлика от <span notrans="<span notrans=" Microsoft Word"=""></span>,"> форматът PDF има ограничен брой опции за редактиране на формуляри, като например текстова кутия, комбо кутия и чекова кутия. Microsoft Word има повече видове форми, например, избирач на дати за календара. По принцип не е възможно напълно да се имитира Microsoft Word Поведение в PDF. Следователно, в някои сложни случаи, PDF изход може да се различава от това, което виждате в Microsoft Word.

Примерът с кода по-долу показва как да запишете документ като PDF с запълващи се формуляри с определено Jpeg компресия и качество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Експортиране на структурата на документа и потребителските свойства

На [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) имот ви позволява да експортирате структурата на документа в PDF продукция.

PDF логически структури осигуряват механизъм за включване на информация, по отношение на структурата на съдържанието на документа, в PDF файл. Aspose.Words запазва информация за структурата от Microsoft Word документ, като например параграфи, списъци, таблици, бележки под линия/изпрати и др.

Следният пример показва как да запишете документ във формат PDF, запазвайки структурата на документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words също така ви позволява да експортирате потребителските свойства на документа в PDF, което се доказва със следния пример:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Експортиране на Outlines от отметки и заглавия в изход PDF

Ако искате да експортирате отметки като очертания в изход PDF, можете да използвате [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) собственост. Това свойство определя нивото по подразбиране в очертанията на документите, на които Microsoft Word Показани са отметки. Ако документът съдържа отметки в заглавната част на документа, можете да зададете [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) собственост на [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) или [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) за да се уточни как се изнасят в изход PDF. Отметките в заглавни/краки не се изнасят, когато стойността на **HeaderFooterBookmarksExportMode** е [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Примерът с кода по-долу показва как да се експортират отметки от първата заглавна част/футър на раздел:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Изходът PDF от този пример е показан по-долу:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Кога **HeaderFooterBookmarksExportMode** е зададено [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) и документът има четни и странни заглавни части/краки или различна заглавна страница/футър, отметките се изнасят за първите уникални заглавни части/краки в секция.

Можете също така да експортирате заглавия в изхода PDF, използвайки [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) собственост. Този имот посочва колко нива на заглавия са включени в очертанията на документа.

Примерът с кода по-долу показва как да се изнасят заглавия с три нива:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Изходът PDF от този пример е изобразен по-долу:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Отметките или навигацията могат да имат различен вид в различни PDF зрители. Освен това в някои приложения в UI не се предлагат отметки и навигация.

{{% /alert %}}

## Сваляне на изображения за намаляване размера на документа

Aspose.Words осигурява възможност за сваляне на изображенията, за да се намали размерът на изхода PDF, като се използва [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) собственост. Свалянето е активирано по подразбиране [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) собственост.

Имайте предвид, че е възможно също така да се определи конкретна резолюция в [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) собственост или праг на преструктуриране в [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) собственост. Във втория случай, ако разделителната способност на изображението е по-малка от граничната стойност, тогава намаляването няма да се прилага.

Примерът с кода по-долу показва как да промените разделителната способност на изображенията в изходен PDF документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Резолюцията се изчислява според реалния размер на изображението на страницата.

## Вграждане на шрифтове в Adobe PDF формат

Aspose.Words Също така ви позволява да контролирате как шрифтовете са вградени в получените PDF документи. Шрифтове трябва да бъдат вградени във всеки документ на Adobe PDF, за да се гарантира, че документът може да бъде правилно предаден на всяка машина (вж. повече подробности за текстовото предаване в раздела [Използване на истината Тип шрифтове](/words/bg/java/using-truetype-fonts/)). По подразбиране, Aspose.Words вмъква подмножество шрифтове, използвани в документа в генерирания PDF. В този случай, само glyphs (характерове) използвани в документа се записват в PDF.

### Кога да използвате пълни шрифтове и кога да подменяте

Има начин да се определи опция за Aspose.Words за вграждане на пълни шрифтове. Допълнителни подробности, заедно с някои предимства и недостатъци на всяка настройка са описани в таблицата по-долу.

| Режим на вградени шрифтове |  Предимства | Недостатъци |
|  :-  |  :-  |  :-  |
|  `Full`  | Полезно, когато искате да редактирате получения PDF по-късно чрез добавяне или промяна на текста. Всички шрифтове са включени, затова всички glyphПрисъстват. | Тъй като някои шрифтове са големи (няколко мегабайта), вграждането им без разстройване може да доведе до големи изходни файлове. |
|  `Subset`  | Заместването е полезно, ако искате да запазите размера на изходния файл по-малък. | <p>Потребителят не може напълно да добави или редактира текста чрез подмножествения шрифт в изходния PDF документ. Това е защото не всичко glyphна шрифта са налице.</p>

<p>Ако няколко PDF шрифта са записани с подмножествени шрифтове и събрани заедно, тогава комбинираният PDF документ може да има шрифт, съдържащ много ненужни подгрупи.</p>
 |

### Вграждане на Full Fonts в PDF

На [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) имот ви позволява да посочите как Aspose.Words вграждане на шрифтове в изходен PDF документ.

- За да вградите пълни шрифтове в изходния PDF документ, задайте **EmbedFullFonts** до true
- За да подмножите шрифтовете при запис в PDF, задайте **EmbedFullFonts** до false

Следният пример показва как да вградите пълни шрифтове в изходния PDF документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Следващият пример показва как да зададете Aspose.Words за подмножество шрифтове в изходния PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл за тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Как да контролирате вградените основни шрифтове и Windows Стандартни шрифтове

Основни шрифтове и Windows Стандартните шрифтове са набори от шрифтове, които обикновено присъстват на целевата машина или са предоставени от четеца на документа, следователно не е необходимо те да бъдат вградени в изходния PDF. Като не вграждате тези шрифтове, можете да намалите размера на предадените PDF документи и да запазите преносимостта.

Aspose.Words предлага опции за избор как шрифтовете се изнасят в PDF. Можете да изберете или да внедрите ядрото и стандартните шрифтове в изходния PDF или да пропуснете включването им и да използвате стандартни PDF шрифтове или системни шрифтове на целевата машина. Използването на някоя от тези опции обикновено води до значително намаляване на размера на файла за PDF документи, генерирани от Aspose.Words.

- Тъй като тези възможности са взаимно изключващи се, трябва да избирате само един по един.
- Когато спестявате с PDF/A-1 съответствие, всички използвани шрифтове трябва да бъдат вградени с PDF документа. Когато спестявате с това съответствие, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) имотът трябва да бъде определен false и [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) имотът трябва да бъде определен [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Вграждане на основни шрифтове

Възможността за включване на Core шрифтове може да бъде активирана или изключена чрез използване на [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) собственост. Когато е настроено true, най-популярните шрифтове (Base 14 шрифтове) не са включени в изходния PDF документ:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Тези шрифтове се заменят със съответните основни шрифтове от тип 1, които се предоставят от читател при отварянето на PDF.

Примерът по-долу показва как да зададете Aspose.Words за да се избегне вграждането на основни шрифтове и да се позволи на читателя да ги замени с PDF Тип 1 шрифтове:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

За този пример можете да изтеглите шаблона [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Тъй като PDF зрителите предоставят основни шрифтове на всяка поддържана платформа, тази опция също е полезна, когато се изисква по-голяма преносимост на документи. Въпреки това, основните шрифтове могат да изглеждат различни от системните шрифтове.

{{% alert color="primary" %}}

Тази настройка работи само за ANSI (Windows-1252) кодиране на текст. Писането на не-ANSI текст в PDF винаги ще изисква съответните шрифтове да бъдат вградени.

{{% /alert %}}

### Вграждане на системни шрифтове

Тази опция може да бъде активирана или изключена чрез използване на [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) собственост. Когато този имот е настроен на [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), Ариел и Ню Роман. true шрифтовете не са вградени в PDF документ. В този случай клиентският зрител разчита на шрифтовете, инсталирани на операционната система на клиента. Когато **FontEmbeddingMode** имотът е зададен [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words не вграждайте шрифтове.

Примерът по-долу показва как да зададете Aspose.Words за да пропуснете включването на Arial и Times New Roman шрифтове в PDF документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Този режим е най-полезен, когато искате да видите документите си на същата платформа, запазвайки точния вид на шрифтовете в изходния PDF.

{{% alert color="primary" %}}

Тази настройка работи само за ANSI (Windows-1252) кодиране на текст. Писането на не-ANSI текст в PDF изисква съответният шрифт да бъде вграден.

{{% /alert %}}
