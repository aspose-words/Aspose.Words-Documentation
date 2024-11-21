---
title: Конвертиране на документ в HTML, MHTML или EPUB в C#
second_title: Aspose.Words вместо .NET
articleTitle: Конвертиране на документ в HTML, MHTML или EPUB
linktitle: Конвертиране на документ в HTML, MHTML или EPUB
description: "Конвертиране на документ от почти всеки формат към HTML или MHTML, както и към EPUB формат чрез използване на C#. Можете също така да посочите опции за запис за управление на изходния документ."
type: docs
weight: 20
url: /bg/net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-07-09-19-00-42
---

Документи в HTML и MHTML формати са също много популярни и могат да се използват на всяка уеб платформа. Поради тази причина конвертирането на документи в HTML и MHTML е важна характеристика на Aspose.Words.

EPUB (кратко за "Електронна публикация") е HTML-базиран формат, който често се използва за електронно разпространение на книги. Този формат е напълно поддържан в Aspose.Words за износ на електронни книги, които са съвместими с повечето устройства за четене.

## Конвертиране на документ

За просто преобразуване в HTML, MHTML или EPUB, един от [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод претоварване се използва. Можете да запишете документа във файл или поток и изрично да зададете формата за запис на изходния документ или да го дефинирате от разширението на името на файла.

Следният пример показва как да конвертирате DOCX да HTML с посочване на формат за запис:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

За да конвертирате документ в MHTML или EPUB, използвайте `SaveFormat.Mhtml` или `SaveFormat.Epub` съответно.

## Конвертиране на документ с информация за Round-trip

HTML форматът не поддържа много Microsoft Word функции и ако трябва да възстановим модел на документ възможно най-близо до оригинала, трябва да запазим допълнителна информация в HTML файла. Тази информация също се нарича "информация за пътуване в кръг." За тази цел, Aspose.Words осигурява възможност за експортиране на информация за кръгла обиколка при спестяване към HTML, MHTML или EPUB с помощта на [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) собственост. Запазването на информацията за обиколката позволява да се възстановят свойствата на документите, като например раздели, коментари, заглавни части, и footers по време на зареждане на документите на изброените формати обратно в a **Document** Възразявам.

По подразбиране стойността е **true** за HTML и **false** за MHTML и EPUB:

- Кога **true**, информацията се изнася като - ав - * CSS свойства на съответните HTML елементи
- Кога **false**, няма информация, която да бъде получена в произведени файлове

Следният пример с код показва как да се експортира информация с кръгла стъпка при конвертиране на документ от DOCX в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Посочване на настройките при преобразуване в HTML

Aspose.Words позволява конвертиране на Word документ в HTML чрез използване на опции по подразбиране или по поръчка. Няколко примера за потребителски опции за запис са описани по-долу.

### Посочете папка за запазване на ресурси

Използване Aspose.Words можем да посочим физическа папка, където всички ресурси, като изображения, шрифтове и външни CSS, се съхраняват, когато документ се преобразува в HTML. По подразбиране, това е празен низ.

Определяне на [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) Имотът е най-простият начин да зададете папка, където всички ресурси трябва да бъдат написани. Можем да използваме индивидуални свойства, като [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) което запазва шрифтове в посочената папка и [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) което запазва изображения в определена папка. Когато е определен относителен път, **FontsFolder** както и **ImagesFolder** се отнасят до папката, в която е разположен кодовият монтаж, **ResourceFolder** както и [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) се отнасят до изходната папка, където се намира HTML документ.

В този пример, **ResourceFolder** посочва относителния път. Този път се отнася до изходната папка, където се записва HTML документ. Стойността на **ResourceFolderAlias** имот се използва за създаване на URL адреси за всички ресурси.

Следният пример за код показва как да работите с тези свойства:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Използване на [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) имот, можем също така да посочим името на папката, използвана за изграждане на URIs на всички ресурси, написани в HTML документ. Това е най-лесният начин да се уточни как URI трябва да се генерира за всички файлове с ресурси. Същата информация може да се посочи за изображения и шрифтове поотделно чрез [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) както и [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) свойства, съответно.

Няма обаче индивидуално имущество за CSS. поведението на **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** както и **CssStyleSheetFileName** имотите не се променят. Имайте предвид, че **CssStyleSheetFileName** Имотът се използва както за определяне на името на папката, така и за името на файла.

- **ResourceFolder** има по-нисък приоритет от посочените през **FontsFolder**, **ImagesFolder**, както и **CssStyleSheetFileName**. Ако папката е посочена в **ResourceFolder** не съществува, той ще бъде създаден автоматично.
- **ResourceFolderAlias** има по-нисък приоритет от **FontsFolderAlias** както и **ImagesFolderAlias**. Ако **ResourceFolderAlias** е празна, стойността на **ResourceFolder** Имотът ще се използва за създаване на ресурс URIs. Ако **ResourceFolderAlias** е настроена на "." (точка), ресурс URIs ще съдържа само имена на файлове, без да се посочва пътя.

### Export Base64 Encoding Fonts Resources

Aspose.Words дава възможност да се уточни дали ресурсите на шрифта следва да бъдат вградени в HTML в базовите кодировки. За да извършите това, използвайте [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) Недвижими имоти Това е продължение на [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) собственост. По подразбиране стойността му е **false**, и шрифтовете са написани в отделни файлове. Но ако тази опция е зададена **true**, шрифтовете ще бъдат вградени в CSS на документа в Base64 кодиране. На **ExportFontsAsBase64** Имотът засяга само HTML формат и не засяга EPUB и MHTML.

Следният пример за код показва как да експортирате Base64 кодирани шрифтове в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Посочване на настройките при преобразуване в EPUB

Aspose.Words позволява конвертиране на Word документ във формат EPUB чрез опции по подразбиране или по поръчка. Можете да посочите няколко опции чрез преминаване на случай на [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) до [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод.

Следният пример за код показва как да конвертирате Word документ в EPUB с посочване на някои опции за запис по поръчка:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Вижте също

- [Как да експортирате информация за кръгла обиколка при запис в HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
