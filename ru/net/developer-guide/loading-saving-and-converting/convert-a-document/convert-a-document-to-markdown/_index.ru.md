---
title: Преобразование документа в Markdown в C#
second_title: Aspose.Words для .NET
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразуйте документ в любом поддерживаемом формате загрузки в Markdown и наоборот, используя C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /ru/net/convert-a-document-to-markdown/
---

Markdown — популярный формат, используемый для разметки текста и его дальнейшего преобразования в HTML, PDF, DOCX или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей к публикации в блогах, описания проектов и так далее.

Markdown так популярен, потому что с этим форматом легко работать, а также его достаточно просто конвертировать в другие форматы. По этой причине Aspose.Words предоставляет возможность конвертировать документ из формата [любой поддерживаемый формат загрузки](https://reference.aspose.com/words/net/aspose.words/loadformat/) в Markdown и наоборот – Aspose.Words также поддерживает наиболее популярный формат [сохранять форматы](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Сейчас активно развивается функционал по работе с форматом Markdown, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразование документа

Чтобы преобразовать документ в Markdown, вам достаточно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем необходимо сохранить документ в формате Markdown.

В следующем примере кода показано, как преобразовать DOCX в Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Вы также можете указать физическую папку, в которой хотите сохранять изображения, при экспорте документа в формат Markdown. По умолчанию Aspose.Words сохраняет изображения в той же папке, где сохраняется файл документа, но вы можете переопределить это поведение с помощью свойства [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Указание папки через **ImagesFolder** также полезно, если вы сохраняете документ в поток, а в Aspose.Words нет папки для сохранения изображений.

Если указанный **ImagesFolder** не существует, он будет создан автоматически.

В следующем примере кода показано, как указать папку для изображений при сохранении документа в потоке:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Укажите параметры сохранения при преобразовании в Markdown

Aspose.Words предоставляет возможность использовать класс [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) для работы с дополнительными параметрами при сохранении документа в формате Markdown. Большинство свойств наследуют или перегружают свойства, которые уже существуют в других классах пространства имен [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/). Помимо них также добавлен ряд свойств, специфичных для формата Markdown. Например, свойство [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) для управления выравниванием содержимого в таблицах или [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) и [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) для управления сохранением изображений при преобразовании документа в формат Markdown.

## Поддерживаемые функции Markdown

Aspose.Words в настоящее время поддерживает следующие функции Markdown, которые в основном соответствуют спецификации `CommonMark` в Aspose.Words API и представлены в виде соответствующих стилей или прямого форматирования:

* Заголовки — это абзацы со стилями "Заголовок 1" — "Заголовок 6"
* Блок-кавычки — это абзацы со словом "Цитата" в названии стиля
* IndentedCode — это абзацы с "IndentedCode" в названии стиля
* FencedCode — это абзацы с "FencedCode" в названии стиля
* InlineCode запускается с "InlineCode" в имени стиля `Font`
* Горизонтальные линейки — это абзацы формы `HorizontalRule`
* Смелый акцент
* Курсив
* Зачеркнутое форматирование
* Списки представляют собой пронумерованные или маркированные абзацы
* Таблицы представлены классом `Table`
* Ссылки представлены как класс `FieldHyperlink`

В следующем примере показано, как создать документ с некоторыми стилями и сохранить его под номером Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Результат этого примера кода показан ниже.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных случаев, узнав которые вы сможете работать с файлами Markdown более гибко и удобно. Например, есть возможность использовать:

* SetextHeading, позволяющий создавать многострочные заголовки в Markdown, тогда как обычные заголовки в Markdown могут быть только однострочными. SetextHeading основан на стиле "Заголовок N", и его уровень может быть только 1 или 2. Если N в "Заголовке N" больше или равно 2, то соответствующий SetextHeading основан на "Заголовке 2", в противном случае — на "Заголовок 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию — "-".) и разные типы нумерации для упорядоченных списков ("." или ")", маркер по умолчанию — ".").
