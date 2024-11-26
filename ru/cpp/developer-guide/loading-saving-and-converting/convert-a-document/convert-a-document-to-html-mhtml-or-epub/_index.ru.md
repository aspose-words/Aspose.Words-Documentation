---
title: Преобразуйте документ в HTML, MHTML или EPUB
second_title: Aspose.Words для C++
articleTitle: Преобразуйте документ в HTML, MHTML или EPUB
linktitle: Преобразуйте документ в HTML, MHTML или EPUB
description: "Преобразуйте документ практически из любого формата в HTML или MHTML, а также в формат EPUB с помощью C++. Вы также можете указать параметры сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Документы в форматах flow-layout HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной функцией Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат на основе HTML, обычно используемый для распространения электронных книг. Этот формат полностью поддерживается в Aspose.Words для экспорта электронных книг, совместимых с большинством устройств для чтения.

## Преобразование документа

Для простого преобразования в HTML, MHTML или EPUB используется одна из перегрузок метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Вы можете сохранить документ в файл или поток и явно задать формат сохранения выходного документа или определить его по расширению имени файла.

В следующем примере показано, как преобразовать DOCX в HTML с указанием формата сохранения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Чтобы преобразовать документ в формат MHTML или EPUB, используйте `SaveFormat.Mhtml` или `SaveFormat.Epub` соответственно.

## Преобразование документа с информацией о возврате в оба конца

Формат HTML не поддерживает многие функции Microsoft Word, и если нам нужно восстановить модель документа, максимально приближенную к оригиналу, нам необходимо сохранить некоторую дополнительную информацию в HTML-файле. Такая информация также называется "информацией о ходе выполнения". Для этой цели Aspose.Words предоставляет возможность экспортировать информацию о возврате при сохранении в HTML, MHTML или EPUB, используя свойство [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Сохранение обратной информации позволяет восстановить свойства документа, такие как вкладки, комментарии, верхние и нижние колонтитулы, при загрузке документов перечисленных форматов обратно в объект **Document**.

Значение по умолчанию равно **true** для HTML и **false** для MHTML и EPUB:

- При значении **true** информация о возврате экспортируется в виде - aw - * CSS-свойств соответствующих HTML-элементов
- При значении **false** нет информации о возврате в оба конца, которая должна быть выведена в созданные файлы

В следующем примере кода показано, как экспортировать информацию о возврате при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Укажите параметры сохранения при преобразовании в HTML

Aspose.Words позволяет преобразовать документ Word в HTML с использованием стандартных или пользовательских параметров сохранения. Ниже описано несколько примеров пользовательских параметров сохранения.

### Укажите папку для сохранения ресурсов

Используя Aspose.Words, мы можем указать физическую папку, в которую сохраняются все ресурсы, такие как изображения, шрифты и внешний CSS, при преобразовании документа в HTML. По умолчанию это пустая строка.

Указание свойства [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) - это самый простой способ указать папку, в которую должны быть записаны все ресурсы. Мы можем использовать отдельные свойства, такие как [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), которое сохраняет шрифты в указанную папку, и [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), которое сохраняет изображения в указанную папку. Когда указан относительный путь, **FontsFolder** и **ImagesFolder** указывают на папку, в которой находится сборка кода, **ResourceFolder** и [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) указывают на выходную папку, в которой находится HTML-документ.

В этом примере **ResourceFolder** указывает относительный путь. Этот путь относится к выходной папке, в которой сохраняется HTML-документ. Значение свойства **ResourceFolderAlias** используется для создания URL-адресов для всех ресурсов.

В следующем примере кода показано, как работать с этими свойствами:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Используя свойство [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), мы также можем указать имя папки, используемой для создания URI всех ресурсов, записанных в HTML-документ. Это самый простой способ указать, как должны генерироваться URI для всех файлов ресурсов. Та же информация может быть указана для изображений и шрифтов отдельно через свойства [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) и [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) соответственно.

Однако для CSS нет отдельного свойства. Поведение свойств **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** и **CssStyleSheetFileName** не изменено. Обратите внимание, что свойство **CssStyleSheetFileName** используется как для указания имени папки, так и для указания имени файла.

- **ResourceFolder** имеет более низкий приоритет, чем папки, указанные с помощью **FontsFolder**, **ImagesFolder** и **CssStyleSheetFileName**. Если папка, указанная с помощью **ResourceFolder**, не существует, она будет создана автоматически.
- **ResourceFolderAlias** имеет более низкий приоритет, чем **FontsFolderAlias** и **ImagesFolderAlias**. Если значение **ResourceFolderAlias** пусто, то для создания URI ресурсов будет использовано значение свойства **ResourceFolder**. Если для параметра **ResourceFolderAlias** задано значение "." (точка), URI ресурсов будут содержать только имена файлов без указания пути.

### Экспорт ресурсов шрифтов в кодировке Base64

Aspose.Words предоставляет возможность указать, следует ли встраивать шрифтовые ресурсы в HTML в кодировках Base64. Для этого используйте свойство [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – это расширение свойства [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). По умолчанию его значение равно **false**, и шрифты записываются в отдельные файлы. Но если для этого параметра установлено значение **true**, шрифты будут встроены в CSS документа в кодировке Base64. Свойство **ExportFontsAsBase64** влияет только на формат HTML и не влияет на EPUB и MHTML.

В следующем примере кода показано, как экспортировать шрифты в кодировке Base64 в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Укажите параметры сохранения при преобразовании в EPUB

Aspose.Words позволяет преобразовать документ Word в формат EPUB, используя стандартные или пользовательские параметры сохранения. Вы можете указать несколько параметров, передав экземпляр [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) методу `Save`.

В следующем примере кода показано, как преобразовать документ Word в EPUB с указанием некоторых пользовательских параметров сохранения:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Вы можете загрузить файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
