---
title: Конвертиране на документ в HTML, MHTML или EPUB
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ в HTML, MHTML или EPUB
linktitle: Конвертиране на документ в HTML, MHTML или EPUB
description: "Конвертирайте документ от почти всеки формат до HTML или MHTML, както и до EPUB формат, използвайки C++. Можете също да зададете опции за записване за управление на изходния документ."
type: docs
weight: 20
url: /bg/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Документи във формати HTML и MHTML поток-оформление също са много популярни и могат да се използват на всяка уеб платформа. Поради тази причина конвертирането на документи в HTML и MHTML е важна характеристика на Aspose.Words.

EPUB (съкратено за "електронна публикация") е формат HTML, който обикновено се използва за разпространение на електронни книги. Този формат се поддържа напълно в Aspose.Words за експортиране на електронни книги, които са съвместими с повечето устройства за четене.

## Конвертиране на документ

За просто преобразуване на HTML, MHTML или EPUB се използва едно от претоварванията на метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Можете да запишете документа във файл или поток и изрично да зададете формат за записване на изходния документ или да го дефинирате от разширението на името на файла.

Следващият пример показва как да конвертирате DOCX в HTML с задаване на формат за записване:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

За да конвертирате документ в MHTML или EPUB, Използвайте съответно `SaveFormat.Mhtml` или `SaveFormat.Epub`.

## Конвертиране на документ с информация за отиване и връщане

Форматът HTML не поддържа много Microsoft Word функции и ако трябва да възстановим модел на документ възможно най-близо до оригинала, трябва да запазим допълнителна информация във файла HTML. Тази информация се нарича още "двупосочна информация". За тази цел Aspose.Words осигурява възможност за експортиране на информация за отиване и връщане, когато се съхранява в HTML, MHTML или EPUB, използвайки [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) свойството. Записването на информацията за двупосочно пътуване позволява възстановяване на свойствата на документа, като например раздели, Коментари, горни и долни колонтитули, по време на зареждането на документите на изброените формати обратно в обект **Document**.

Стойността по подразбиране е **true** за HTML и **false** за MHTML и EPUB:

- Когато **true**, информацията за отиване и връщане се експортира като * CSS свойства на съответните HTML елементи
- Когато **false** няма информация за отиване и връщане, която да се извежда в произведени файлове

Следният пример за код показва как да експортирате информация за отиване и връщане, когато конвертирате документ от DOCX в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Задайте опциите за записване при конвертиране в HTML

Aspose.Words позволява конвертиране на Word документ в HTML, като се използват опциите за записване по подразбиране или по избор. Няколко примера за персонализирани опции за записване са описани по-долу.

### Задаване на папка за спестяване на ресурси

С Aspose.Words можем да обозначим физическа папка, в която се записват всички ресурси, като например изображения, шрифтове и външни CSS, Когато документът се преобразува в HTML. По подразбиране това е празен низ.

Задаването на свойство [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) е най-простият начин за задаване на папката, в която трябва да бъдат написани всички ресурси. Можем да използваме отделни свойства, като [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), който записва шрифтове в определена папка и [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), който записва изображения в определена папка. Когато е зададен относителен път, **FontsFolder** и **ImagesFolder** се отнасят до папката, където се намира Комплектът код, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) се отнасят до изходната папка, където се намира документът HTML.

В този пример **ResourceFolder** задава относителния път. Този път се отнася до изходната папка, където е записан документът HTML. Стойността на свойството **ResourceFolderAlias** се използва за създаване на URLs за всички ресурси.

Следният пример за код показва как да работите с тези свойства:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Използвайки свойството [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), можем също да посочим името на папката, използвана за изграждане на URIs от всички ресурси, написани в документ HTML. Това е най-простият начин да се определи как URIs трябва да се генерира за всички ресурсни файлове. Същата информация може да бъде посочена за изображения и шрифтове поотделно чрез [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) и [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) свойства, съответно.

Въпреки това, няма индивидуална собственост за CSS. Поведението на **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** свойствата не се променят. Обърнете внимание, че свойството **CssStyleSheetFileName** се използва както за задаване на име на папка, така и за име на файл.

- **ResourceFolder** има по-нисък приоритет от папките, посочени чрез **FontsFolder**, **ImagesFolder** и **CssStyleSheetFileName**. Ако папката, посочена в **ResourceFolder**, не съществува, тя ще бъде създадена автоматично.
- **ResourceFolderAlias** има по-нисък приоритет от **FontsFolderAlias** и **ImagesFolderAlias**. Ако **ResourceFolderAlias** е празна, стойността на свойството **ResourceFolder** ще се използва за създаване на ресурс URIs. Ако **ResourceFolderAlias** е зададено на "." (точка), ресурсът URIs ще съдържа само имена на файлове, без да посочва път.

### Експортиране на ресурси за кодиране на шрифтове Base64

Aspose.Words предоставя възможност за указване дали ресурсите на шрифта трябва да бъдат вградени в HTML в кодировки Base64. За да направите това, използвайте свойството [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – това е разширение на свойството [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). По подразбиране стойността му е **false**, а шрифтовете се записват в отделни файлове. Но ако тази опция е зададена на **true**, шрифтовете ще бъдат вградени в CSS на документа в кодиране Base64. Свойството **ExportFontsAsBase64** засяга само формата на HTML и не засяга EPUB и MHTML.

Следният примерен код показва как да експортирате Base64-кодирани шрифтове към HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Задайте опциите за записване при конвертиране в EPUB

Aspose.Words позволява конвертиране на Word документ във формат EPUB, като се използват опциите за записване по подразбиране или по избор. Можете да зададете няколко опции, като подадете екземпляр от [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) към метода `Save`.

Следващият пример за код показва как да конвертирате документ Word в EPUB С задаване на някои опции за записване по избор:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
