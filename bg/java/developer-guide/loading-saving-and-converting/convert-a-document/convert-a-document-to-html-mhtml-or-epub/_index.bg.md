---
title: Конвертиране на документ в HTML, MHTML или EPUB
second_title: Aspose.Words вместо Java
articleTitle: Конвертиране на документ в HTML, MHTML или EPUB
linktitle: Конвертиране на документ в HTML, MHTML или EPUB
description: "Използване Aspose.Words вместо Java да конвертирате документи от Word или други поддържани формати в HTML, MHTML или EPUB."
type: docs
weight: 20
url: /bg/java/convert-a-document-to-html-mhtml-or-epub/
---

Документи в HTML и MHTML формати са също много популярни и могат да се използват на всяка уеб платформа. Поради тази причина конвертирането на документи в HTML и MHTML е важна характеристика на Aspose.Words.

EPUB (кратко за "Electronic Publication") е HTML-базиран формат, често използван за електронно разпространение на книги. Този формат е напълно поддържан в Aspose.Words за износ на електронни книги, които са съвместими с повечето устройства за четене.

## Конвертиране на документ

За просто преобразуване в HTML, MHTML или EPUB, един от [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) използва се претоварване на метода. Можете да запишете документа във файл или поток и изрично да зададете формата за запис на изходния документ или да го дефинирате от разширението на името на файла.

Следният пример показва как да конвертирате DOCX в HTML с посочване на формат за запис:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

За да конвертирате документ в MHTML или EPUB, използвайте `SaveFormat.MHTML` или `SaveFormat.EPUB` съответно.

## Конвертиране на документ с информация за Round-trip

Форматът HTML не поддържа много Microsoft Word функции, и ако трябва да възстановим модел на документ възможно най-близо до оригинала, трябва да запазим допълнителна информация в HTML файла. Тази информация също се нарича "информация за пътуване в кръг." За тази цел, Aspose.Words дава възможност за експортиране на информация за кръгла обиколка при спестяване в HTML, MHTML или EPUB чрез използване на [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) собственост. Запазването на информацията за обиколката позволява възстановяване на свойствата на документите, като например раздели, коментари, заглавни части, и footers по време на зареждането на документите на изброените формати обратно в a **Document** Възразявам.

По подразбиране стойността е **true** за HTML и **false** за MHTML и EPUB:

- Кога **true**, информацията се изнася като - ав - * CSS свойства на съответните HTML елементи
- Кога **false**, няма информация, която да бъде получена в произведени файлове

Следният пример за код показва как да се експортира информация за кръгла лента при конвертиране на документ от DOCX в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Посочване на настройките при преобразуване в HTML

Aspose.Words позволява преобразуване на Word документ в HTML чрез използване на опции по подразбиране или по поръчка. Няколко примера за потребителски опции за запис са описани по-долу.

### Посочете папка за запазване на ресурси

Използване Aspose.Words можем да определим физическа папка, където всички ресурси, като изображения, шрифтове и външни CSS, се съхраняват при конвертиране на документ в HTML. По подразбиране, това е празен низ.

Определяне на [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) Имотът е най-простият начин да зададете папката, където трябва да бъдат написани всички ресурси. Можем да използваме индивидуални свойства, като [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) което запазва шрифтовете в посочената папка и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) което запазва изображения в определена папка. Когато е определен относителен път, **FontsFolder** както и **ImagesFolder** се отнасят до папката, в която е разположен кодовият монтаж, **ResourceFolder** както и [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) се отнасят до изходната папка, където се намира HTML документ.

В този пример, **ResourceFolder** посочва относителната пътека. Този път се отнася до изходната папка, където HTML документът е записан. Стойността на **ResourceFolderAlias** имот се използва за създаване на URL адреси за всички ресурси.

Следният пример за код показва как да работите с тези свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Използване на [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) имот, можем също така да посочим името на папката, използвана за изграждане на URIs на всички ресурси, написани в HTML документ. Това е най-простият начин да се уточни как URIs трябва да се генерира за всички файлове с ресурси. Същата информация може да бъде посочена за изображения и шрифтове поотделно чрез [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) както и [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) свойства, съответно.

Няма обаче индивидуално имущество за CSS. поведението на **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** както и **CssStyleSheetFileName** имотите не се променят. Имайте предвид, че **CssStyleSheetFileName** имотът се използва както за уточняване на името на папката, така и на името на файла.

- **ResourceFolder** има по-нисък приоритет от посочените в папките **FontsFolder**, **ImagesFolder**, както и **CssStyleSheetFileName**. Ако папката е посочена в **ResourceFolder** не съществува, той ще бъде създаден автоматично.
- **ResourceFolderAlias** има по-нисък приоритет от **FontsFolderAlias** както и **ImagesFolderAlias**. Ако **ResourceFolderAlias** е празна, стойността на **ResourceFolder** Имотът ще се използва за създаване на ресурсни URIs. Ако **ResourceFolderAlias** е настроен на "." (точка), ресурс URIs ще съдържа само имена на файлове, без да се посочва пътя.

### Export Base64 Encoding Fonts Resources

Aspose.Words предоставя възможност за уточняване дали ресурсите на шрифта следва да бъдат включени в HTML в кодирането Base64. За да извършите това, използвайте [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) Това е продължение на [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) собственост. По подразбиране стойността му е **false**, и шрифтовете са написани в отделни файлове. Но ако тази опция е зададена **true**, шрифтовете ще бъдат вградени в CSS на документа в Base64 кодиране. На **ExportFontsAsBase64** Имотът засяга само HTML формат и не засяга EPUB и MHTML.

Следният пример за код показва как да експортирате Base64 кодирани шрифтове в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Посочване на настройките при преобразуване в EPUB

Aspose.Words позволява конвертирането на Word документ във формат EPUB с помощта на опции по подразбиране или по поръчка. Можете да посочите няколко опции чрез преминаване на случай на [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) до [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) метод.

Следният пример за код показва как да конвертирате Word документ в EPUB с посочване на някои опции за запис по поръчка:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Вижте също

- [Как да се върна в HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
