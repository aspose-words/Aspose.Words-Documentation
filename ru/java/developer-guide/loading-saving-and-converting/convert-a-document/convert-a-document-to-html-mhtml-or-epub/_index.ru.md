---
title: Преобразование документа в HTML, MHTML или EPUB
second_title: Aspose.Words для Java
articleTitle: Преобразование документа в HTML, MHTML или EPUB
linktitle: Преобразование документа в HTML, MHTML или EPUB
description: "Использовать Aspose.Words для Java конвертировать документы из Word или любых других поддерживаемых форматов в HTML, MHTML или EPUB."
type: docs
weight: 20
url: /ru/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Документы в форматах HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной особенностью. Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат на основе HTML, обычно используемый для распространения электронных книг. Данный формат полностью поддерживается в Aspose.Words Экспорт электронных книг, совместимых с большинством устройств чтения.

## Преобразовать документ

Для простого преобразования в HTML, MHTML или EPUB [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) Используется метод перегрузок. Вы можете сохранить документ в файл или поток и явно установить формат сохранения выходного документа или определить его из расширения имени файла.

Следующий пример показывает, как конвертировать DOCX в HTML с указанием формата сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Чтобы конвертировать документ в MHTML или EPUB, используйте `SaveFormat.MHTML` или `SaveFormat.EPUB` соответственно.

## Преобразование документа с информацией о кругосветном пути

HTML-формат не поддерживает многих Microsoft Word Если нам нужно восстановить модель документа как можно ближе к оригиналу, нам нужно сохранить дополнительную информацию в HTML-файле. Такую информацию еще называют "информацией круглого пути". Для этой цели, Aspose.Words предоставляет возможность экспортировать информацию в оба конца при сохранении в HTML, MHTML или EPUB с использованием [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) собственность. Сохранение информации в оба конца позволяет восстановить свойства документа, такие как вкладки, комментарии, заголовки и нижние колонтитулы во время загрузки документов перечисленных форматов обратно в **Document** объект.

Значение по умолчанию является **true** для HTML и **false** для MHTML и EPUB:

- Когда **true**, информация в оба конца экспортируется как - aw - * CSS свойства соответствующих элементов HTML
- Когда **false**, нет информации о кругообороте, которая должна быть выведена в созданные файлы

Следующий пример кода показывает, как экспортировать информацию в оба конца при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при конвертации в HTML

Aspose.Words позволяет конвертировать документ Word в HTML с использованием опций сохранения по умолчанию или на заказ. Несколько примеров пользовательских вариантов сохранения описаны ниже.

### Укажите папку для экономии ресурсов

Использовать Aspose.Words Мы можем указать физическую папку, в которой все ресурсы, такие как изображения, шрифты и внешний CSS, сохраняются при преобразовании документа в HTML. По умолчанию это пустая строка.

Определяя [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) Собственность - это самый простой способ установить папку, где должны быть написаны все ресурсы. Можно использовать индивидуальные свойства, такие как: [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) который сохраняет шрифты в указанной папке и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) который сохраняет изображения в указанную папку. Когда определен относительный путь, **FontsFolder** и **ImagesFolder** ссылаться на папку, где находится сборка кода, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) Обратитесь к выходной папке, где находится HTML-документ.

В этом примере, **ResourceFolder** Укажите относительный путь. Этот путь относится к выходной папке, где сохраняется HTML-документ. Значение этого **ResourceFolderAlias** Собственность используется для создания URL-адресов для всех ресурсов.

Следующий пример кода показывает, как работать с этими свойствами:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Используя [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) Собственность, мы также можем указать название папки, используемой для построения URI всех ресурсов, записанных в HTML-документ. Это самый простой способ определить, как должны быть созданы URI для всех файлов ресурсов. Одна и та же информация может быть указана для изображений и шрифтов отдельно. [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) и [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) свойств соответственно.

Отдельного имущества для CSS нет. Поведение этого **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** Свойства не меняются. Обратите внимание, что **CssStyleSheetFileName** Собственность используется как для указания имени папки, так и имени файла.

- **ResourceFolder** имеет меньший приоритет, чем папки, указанные через **FontsFolder**, **ImagesFolder**, и **CssStyleSheetFileName**. Если папка указана в **ResourceFolder** Не существует, он будет создан автоматически.
- **ResourceFolderAlias** имеет более низкий приоритет, чем **FontsFolderAlias** и **ImagesFolderAlias**. Если **ResourceFolderAlias** Он пуст, ценность его **ResourceFolder** Собственность будет использоваться для создания ресурса URI. Если **ResourceFolderAlias** Настроен на "." (точка), ресурс URI будет содержать только имена файлов без указания пути.

### Экспортная база 64 Ресурсы кодирования шрифтов

Aspose.Words Это дает возможность определить, должны ли ресурсы шрифта быть встроены в HTML в кодировке Base64. Чтобы сделать это, используйте [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) Собственность – это расширение [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) собственность. По умолчанию его ценность **false**, Шрифты пишутся в отдельные файлы. Но если этот вариант будет **true**, Шрифты будут встроены в CSS документа в кодировке Base64. The **Обсуждение ExportFontsAsBase64** Свойство влияет только на формат HTML и не влияет на EPUB и MHTML.

Следующий пример кода показывает, как экспортировать шрифты с кодом Base64 в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Укажите параметры сохранения при конвертации в EPUB

Aspose.Words позволяет конвертировать документ Word в формат EPUB с использованием опций сохранения по умолчанию или на заказ. Вы можете указать несколько вариантов, передав пример [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) к [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) метод.

Следующий пример кода показывает, как конвертировать документ Word в EPUB с указанием некоторых пользовательских опций сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Смотрите также

- [Как экспортировать информацию в оба конца при сохранении в HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
