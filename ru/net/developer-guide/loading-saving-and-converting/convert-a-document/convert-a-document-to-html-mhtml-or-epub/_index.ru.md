---
title: Преобразование документа в HTML, MHTML или EPUB в C#
second_title: Aspose.Words для .NET
articleTitle: Преобразование документа в HTML, MHTML или EPUB
linktitle: Преобразование документа в HTML, MHTML или EPUB
description: "Конвертируйте документ практически из любого формата в HTML или MHTML, а также в формат EPUB с помощью C#. Вы также можете указать параметры сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/net/convert-a-document-to-html-mhtml-or-epub/
---

Документы в форматах потоковой компоновки HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной функцией Aspose.Words.

EPUB (сокращение от "Электронная публикация") — это формат на основе HTML, обычно используемый для распространения электронных книг. Этот формат полностью поддерживается в Aspose.Words для экспорта электронных книг, совместимых с большинством устройств чтения.

## Преобразование документа

Для простого преобразования в HTML, MHTML или EPUB используется одна из перегрузок метода [Save](https://reference.aspose.com/words/ru/net/aspose.words/document/save/#save/). Вы можете сохранить документ в файл или поток и явно указать формат сохранения выходного документа или определить его по расширению имени файла.

В следующем примере показано, как преобразовать DOCX в HTML с указанием формата сохранения:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Чтобы преобразовать документ в MHTML или EPUB, используйте `SaveFormat.Mhtml` или `SaveFormat.Epub` соответственно.

## Преобразование документа с двусторонней информацией

Формат HTML не поддерживает многие функции Microsoft Word, и если нам нужно восстановить модель документа как можно ближе к оригиналу, нам необходимо сохранить некоторую дополнительную информацию в файле HTML. Такую информацию также называют "информацией туда и обратно". Для этой цели Aspose.Words предоставляет возможность экспортировать информацию туда и обратно при сохранении в HTML, MHTML или EPUB с использованием свойства [ExportRoundtripInformation](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Сохранение двусторонней информации позволяет восстановить свойства документа, такие как вкладки, комментарии, верхние и нижние колонтитулы, во время загрузки документов перечисленных форматов обратно в объект **Document**.

Значение по умолчанию — **истинный** для HTML и **ЛОЖЬ** для MHTML и EPUB:

- Если **истинный**, информация туда и обратно экспортируется как - aw - * свойства CSS соответствующих элементов HTML
- Если **ЛОЖЬ**, нет никакой информации о двустороннем пути для вывода в создаваемые файлы

В следующем примере кода показано, как экспортировать двустороннюю информацию при преобразовании документа из DOCX в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при преобразовании в HTML

Aspose.Words позволяет конвертировать документ Word в HTML, используя параметры сохранения по умолчанию или пользовательские. Ниже описаны несколько примеров пользовательских вариантов сохранения.

### Укажите папку для сохранения ресурсов

Используя Aspose.Words, мы можем указать физическую папку, в которой все ресурсы, такие как изображения, шрифты и внешний CSS, сохраняются при преобразовании документа в HTML. По умолчанию это пустая строка.

Указание свойства [ResourceFolder](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) — это самый простой способ указать папку, в которую должны быть записаны все ресурсы. Мы можем использовать отдельные свойства, например [FontsFolder](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), который сохраняет шрифты в указанную папку, и [ImagesFolder](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), который сохраняет изображения в указанную папку. Если указан относительный путь, **FontsFolder** и **ImagesFolder** относятся к папке, в которой находится сборка кода, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) относятся к выходной папке, в которой находится HTML-документ.

В этом примере **ResourceFolder** указывает относительный путь. Этот путь относится к выходной папке, в которой сохраняется HTML-документ. Значение свойства **ResourceFolderAlias** используется для создания URL-адресов для всех ресурсов.

В следующем примере кода показано, как работать с этими свойствами:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Используя свойство [ResourceFolderAlias](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), мы также можем указать имя папки, используемой для создания URI всех ресурсов, записанных в HTML-документ. Это самый простой способ указать, как URI должны генерироваться для всех файлов ресурсов. Эту же информацию можно указать для изображений и шрифтов отдельно через свойства [ImagesFolderAlias](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) и [FontsFolderAlias](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) соответственно.

Однако для CSS не существует отдельного свойства. Поведение свойств **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** не изменилось. Обратите внимание, что свойство **CssStyleSheetFileName** используется как для указания имени папки, так и имени файла.

- **ResourceFolder** имеет более низкий приоритет, чем папки, указанные в **FontsFolder**, **ImagesFolder** и **CssStyleSheetFileName**. Если папка, указанная в **ResourceFolder**, не существует, она будет создана автоматически.
— **ResourceFolderAlias** имеет более низкий приоритет, чем **FontsFolderAlias** и **ImagesFolderAlias**. Если **ResourceFolderAlias** пусто, значение свойства **ResourceFolder** будет использоваться для создания URI ресурсов. Если для **ResourceFolderAlias** установлено значение "." (точка), URI ресурсов будут содержать только имена файлов без указания пути.

### Экспорт ресурсов шрифтов с кодировкой Base64

Aspose.Words предоставляет возможность указать, следует ли встраивать ресурсы шрифтов в HTML в кодировках Base64. Для этого используйте свойство [ExportFontsAsBase64](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) — это расширение свойства [ExportFontResources](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). По умолчанию его значение — **ЛОЖЬ**, а шрифты записываются в отдельные файлы. Но если для этого параметра установлено значение **истинный**, шрифты будут встроены в CSS документа в кодировке Base64. Свойство **Экспорт шрифтовAsBase64** влияет только на формат HTML и не влияет на EPUB и MHTML.

В следующем примере кода показано, как экспортировать шрифты в кодировке Base64 в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Укажите параметры сохранения при преобразовании в EPUB

Aspose.Words позволяет конвертировать документ Word в формат EPUB, используя параметры сохранения по умолчанию или пользовательские. Вы можете указать несколько параметров, передав экземпляр [HtmlSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/htmlsaveoptions/) методу [Save](https://reference.aspose.com/words/ru/net/aspose.words/document/save/#save/).

В следующем примере кода показано, как преобразовать документ Word в EPUB с указанием некоторых пользовательских параметров сохранения:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Смотрите также

- [Как экспортировать информацию о поездке туда и обратно при сохранении в HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
