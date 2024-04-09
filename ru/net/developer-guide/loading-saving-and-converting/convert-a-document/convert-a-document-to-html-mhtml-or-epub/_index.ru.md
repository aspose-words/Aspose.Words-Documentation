---
title: Преобразовать документ в HTML, MHTML или EPUB C#
second_title: Aspose.Words для .NET
articleTitle: Преобразование документа в HTML, MHTML или EPUB
linktitle: Преобразование документа в HTML, MHTML или EPUB
description: "Преобразование документа практически из любого формата в HTML или MHTML, а также в формат EPUB с использованием C#. Вы также можете указать варианты сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/net/convert-a-document-to-html-mhtml-or-epub/
---

Документы в форматах HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной особенностью. Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат на основе HTML, обычно используемый для распространения электронных книг. Данный формат полностью поддерживается в Aspose.Words Экспорт электронных книг, совместимых с большинством устройств чтения.

## Преобразовать документ

Для простого преобразования в HTML, MHTML или EPUB [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) Используется метод перегрузок. Вы можете сохранить документ в файл или поток и явно установить формат сохранения выходного документа или определить его из расширения имени файла.

Следующий пример показывает, как конвертировать DOCX в HTML с указанием формата сохранения:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Чтобы конвертировать документ в MHTML или EPUB, используйте `SaveFormat.Mhtml` или `SaveFormat.Epub` соответственно.

## Преобразуйте документ с информацией о кругосветном пути

HTML-формат не поддерживает многих Microsoft Word Если нам нужно восстановить модель документа как можно ближе к оригиналу, нам нужно сохранить дополнительную информацию в HTML-файле. Такую информацию еще называют "информацией круглого пути". Для этой цели, Aspose.Words предоставляет возможность экспортировать информацию в оба конца при сохранении в HTML, MHTML или EPUB с использованием [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) собственность. Сохранение информации в оба конца позволяет восстановить свойства документа, такие как вкладки, комментарии, заголовки и нижние колонтитулы во время загрузки документов перечисленных форматов обратно в **Document** объект.

Значение по умолчанию является **true** для HTML и **false** для MHTML и EPUB:

- Когда **true**, информация в оба конца экспортируется как - aw - * CSS свойства соответствующих элементов HTML
- Когда **false**, нет информации о кругообороте, которая должна быть выведена в созданные файлы

Следующий пример кода показывает, как экспортировать информацию в оба конца при преобразовании документа из DOCX в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при конвертации в HTML

Aspose.Words позволяет конвертировать документ Word в HTML, используя опции сохранения по умолчанию или на заказ. Несколько примеров пользовательских вариантов сохранения описаны ниже.

### Укажите папку для экономии ресурсов

Использовать Aspose.Words Мы можем указать физическую папку, где все ресурсы, такие как изображения, шрифты и внешний CSS, сохраняются при преобразовании документа в HTML. По умолчанию это пустая строка.

Определяя [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) Собственность - это самый простой способ установить папку, где должны быть написаны все ресурсы. Можно использовать индивидуальные свойства, такие как: [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) который сохраняет шрифты в указанной папке и [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) который сохраняет изображения в указанную папку. Когда определен относительный путь, **FontsFolder** и **ImagesFolder** ссылаться на папку, где находится сборка кода, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) Обратитесь к выходной папке, где находится HTML-документ.

В этом примере, **ResourceFolder** Укажите относительный путь. Этот путь относится к выходной папке, где сохраняется HTML-документ. Значение этого **ResourceFolderAlias** Собственность используется для создания URL-адресов для всех ресурсов.

Следующий пример кода показывает, как работать с этими свойствами:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Используя [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) Собственность, мы также можем указать название папки, используемой для построения URI всех ресурсов, записанных в HTML-документ. Это самый простой способ определить, как должны быть созданы URI для всех файлов ресурсов. Та же информация может быть указана для изображений и шрифтов отдельно. [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) и [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) свойств соответственно.

Отдельного имущества для CSS нет. Поведение этого **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** Свойства не меняются. Обратите внимание, что **CssStyleSheetFileName** Собственность используется как для указания имени папки, так и имени файла.

- **ResourceFolder** имеет меньший приоритет, чем папки, указанные через **FontsFolder**, **ImagesFolder**, и **CssStyleSheetFileName**. Если папка указана в **ResourceFolder** Не существует, он будет создан автоматически.
- **ResourceFolderAlias** имеет более низкий приоритет, чем **FontsFolderAlias** и **ImagesFolderAlias**. Если **ResourceFolderAlias** Он пуст, ценность его **ResourceFolder** Собственность будет использоваться для создания ресурса URI. Если **ResourceFolderAlias** Настроен на "." (точка), ресурс URI будет содержать только имена файлов без указания пути.

### Экспортная база 64 Ресурсы кодирования шрифтов

Aspose.Words Это дает возможность определить, должны ли ресурсы шрифта быть встроены в HTML в кодировке Base64. Чтобы сделать это, используйте [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) Собственность – это расширение [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) собственность. По умолчанию его ценность **false**, Шрифты пишутся в отдельные файлы. Но если этот вариант будет **true**, Шрифты будут встроены в CSS документа в кодировке Base64. The **ЭкспортФонтАсБаза64** Свойство влияет только на формат HTML и не влияет на EPUB и MHTML.

Следующий пример кода показывает, как экспортировать шрифты с кодом Base64 в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Укажите параметры сохранения при конвертации в EPUB

Aspose.Words позволяет конвертировать документ Word в формат EPUB с использованием опций сохранения по умолчанию или на заказ. Вы можете указать несколько вариантов, передав пример [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) к [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод.

Следующий пример кода показывает, как конвертировать документ Word в EPUB с указанием некоторых пользовательских опций сохранения:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Смотрите также

- [Как экспортировать информацию в оба конца при сохранении в HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
