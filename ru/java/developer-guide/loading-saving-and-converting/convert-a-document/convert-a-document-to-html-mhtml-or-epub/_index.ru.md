---
title: Преобразуйте документ в HTML, MHTML или EPUB
second_title: Aspose.Words для Java
articleTitle: Преобразуйте документ в HTML, MHTML или EPUB
linktitle: Преобразуйте документ в HTML, MHTML или EPUB
description: "Используйте Aspose.Words вместо Java, чтобы преобразовать документы из Word или любых других поддерживаемых форматов в HTML, MHTML или EPUB."
type: docs
weight: 20
url: /ru/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Документы в форматах flow-layout HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной функцией Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат, основанный на HTML, который обычно используется для распространения электронных книг. Этот формат полностью поддерживается в Aspose.Words для экспорта электронных книг, совместимых с большинством устройств для чтения.

## Преобразование документа

Для простого преобразования в HTML, MHTML или EPUB используется одна из перегрузок метода [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). Вы можете сохранить документ в файл или поток и явно задать формат сохранения выходного документа или определить его из расширения имени файла.

В следующем примере показано, как преобразовать DOCX в HTML с указанием формата сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Чтобы преобразовать документ в MHTML или EPUB, используйте `SaveFormat.MHTML` или `SaveFormat.EPUB` соответственно.

## Преобразование документа с информацией о возврате в оба конца

Формат HTML не поддерживает многие функции Microsoft Word, и если нам нужно восстановить модель документа, максимально приближенную к оригиналу, нам необходимо сохранить некоторую дополнительную информацию в файле HTML. Такая информация также называется "информацией о возврате". Для этой цели Aspose.Words предоставляет возможность экспортировать информацию о поездке в оба конца при сохранении в HTML, MHTML или EPUB, используя свойство [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Сохранение обратной информации позволяет восстановить свойства документа, такие как вкладки, комментарии, верхние и нижние колонтитулы, при загрузке документов перечисленных форматов обратно в объект **Document**.

Значение по умолчанию равно **true** для HTML и **false** для MHTML и EPUB:

- При значении **true** информация о маршруте в оба конца экспортируется в виде - aw - * CSS свойств соответствующих элементов HTML
- При значении **false** нет информации о возврате в оба конца, которая должна быть выведена в созданные файлы

В следующем примере кода показано, как экспортировать информацию о доставке в оба конца при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при преобразовании в HTML

Aspose.Words позволяет преобразовать документ Word в HTML, используя стандартные или пользовательские параметры сохранения. Ниже описано несколько примеров пользовательских параметров сохранения.

### Укажите папку для сохранения ресурсов

Используя Aspose.Words, мы можем указать физическую папку, в которую сохраняются все ресурсы, такие как изображения, шрифты и внешние CSS, при преобразовании документа в HTML. По умолчанию это пустая строка.

Указание свойства [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) - это самый простой способ указать папку, в которую должны быть записаны все ресурсы. Мы можем использовать отдельные свойства, такие как [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder), которые сохраняют шрифты в указанную папку, и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder), которые сохраняют изображения в указанную папку. Когда указан относительный путь, **FontsFolder** и **ImagesFolder** указывают на папку, в которой находится сборка кода, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) указывают на выходную папку, в которой находится документ HTML.

В этом примере **ResourceFolder** указывает относительный путь. Этот путь относится к выходной папке, в которой сохранен документ HTML. Значение свойства **ResourceFolderAlias** используется для создания URLs для всех ресурсов.

В следующем примере кода показано, как работать с этими свойствами:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Используя свойство [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), мы также можем указать имя папки, используемой для создания URIs всех ресурсов, записанных в документ HTML. Это самый простой способ указать, как URIs должно быть сгенерировано для всех файлов ресурсов. Та же информация может быть указана для изображений и шрифтов отдельно через свойства [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) и [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) соответственно.

Однако для CSS нет отдельного свойства. Поведение свойств **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** не изменено. Обратите внимание, что свойство **CssStyleSheetFileName** используется как для указания имени папки, так и для указания имени файла.

- **ResourceFolder** имеет более низкий приоритет, чем папки, указанные с помощью **FontsFolder**, **ImagesFolder** и **CssStyleSheetFileName**. Если папка, указанная с помощью **ResourceFolder**, не существует, она будет создана автоматически.
- **ResourceFolderAlias** имеет более низкий приоритет, чем **FontsFolderAlias** и **ImagesFolderAlias**. Если значение **ResourceFolderAlias** пусто, то для создания ресурса URIs будет использовано значение свойства **ResourceFolder**. Если для параметра **ResourceFolderAlias** задано значение "." (точка), ресурс URIs будет содержать только имена файлов без указания пути.

### Экспорт ресурсов шрифтов в кодировке Base64

Aspose.Words предоставляет возможность указать, должны ли ресурсы шрифта быть встроены в HTML в кодировках Base64. Для этого используйте свойство [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) – это расширение свойства [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). По умолчанию его значение равно **false**, и шрифты записываются в отдельные файлы. Но если для этого параметра установлено значение **true**, шрифты будут встроены в CSS документа в кодировке Base64. Свойство **ExportFontsAsBase64** влияет только на формат HTML и не влияет на EPUB и MHTML.

В следующем примере кода показано, как экспортировать шрифты в кодировке Base64 в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Укажите параметры сохранения при преобразовании в EPUB

Aspose.Words позволяет преобразовать документ Word в формат EPUB, используя стандартные или пользовательские параметры сохранения. Вы можете указать несколько параметров, передав экземпляр [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) методу [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

В следующем примере кода показано, как преобразовать документ Word в EPUB с указанием некоторых пользовательских параметров сохранения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Смотрите также

- [Как экспортировать информацию о поездке в оба конца при сохранении в HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
