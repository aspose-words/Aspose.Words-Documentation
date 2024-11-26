---
title: Преобразовать документ в Markdown
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразуйте документ в любом поддерживаемом формате загрузки в Markdown и наоборот, используя Python."
keywords: how to convert a document to markdown python
weight: 40
url: /ru/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown - популярный формат, используемый для разметки текста и его дальнейшего преобразования в HTML, PDF, DOCX, или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей для публикации в блогах, описания проектов и так далее.

Markdown настолько популярен, потому что с этим форматом легко работать, а также его можно довольно просто преобразовать в другие форматы. По этой причине Aspose.Words предоставляет возможность конвертировать документ из [any supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) в Markdown и наоборот – Aspose.Words также поддерживает большинство популярных [save formats](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Сейчас активно развивается функционал для работы с форматом Markdown, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразование документа

Чтобы преобразовать документ в формат Markdown, вам просто нужно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем вам нужно сохранить документ в формате Markdown.

В следующем примере кода показано, как преобразовать DOCX в Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Вы также можете указать физическую папку, в которую вы хотите сохранить изображения, при экспорте документа в формат Markdown. По умолчанию Aspose.Words сохраняет изображения в той же папке, в которой сохранен файл документа, но вы можете изменить это поведение, используя свойство [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Указание папки с помощью [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) также полезно, если вы сохраняете документ в потоке, а в Aspose.Words нет папки для сохранения изображений.

Если указанный параметр [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) не существует, он будет создан автоматически.

В следующем примере кода показано, как указать папку для изображений при сохранении документа в поток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Укажите параметры сохранения при преобразовании в Markdown

Aspose.Words предоставляет возможность использовать класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) для работы с расширенными параметрами при сохранении документа в формате Markdown. Большинство свойств наследуют или перегружают свойства, которые уже существуют в других классах [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). В дополнение к ним также был добавлен ряд свойств, специфичных для формата Markdown. Например, свойство [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) для управления выравниванием содержимого в таблицах или [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) для управления сохранением изображений при преобразовании документа в формат Markdown.

## Поддерживаемые функции Markdown

Aspose.Words в настоящее время поддерживает следующие Markdown функции, которые в основном соответствуют спецификации `CommonMark` в Aspose.Words API и представлены в виде соответствующих стилей или прямого форматирования:

* Заголовки – это абзацы со стилями Heading 1 - Heading 6
* Блок-кавычки - это абзацы с надписью "Quote" в названии стиля
* IndentedCode - это абзацы с "IndentedCode" в названии стиля
* FencedCode - это абзацы с "FencedCode" в названии стиля
* InlineCode - это запуски с "InlineCode" в названии стиля `Font`
* Горизонтальные правила - это абзацы с формой `HorizontalRule`
* Жирный акцент
* Выделено курсивом
* StrikeThrough форматирование
* Списки представляют собой пронумерованные или маркированные абзацы
* Таблицы представлены с помощью класса [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Ссылки представлены в виде класса [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

В следующем примере показано, как создать документ с некоторыми стилями и сохранить его в Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Результат выполнения этого примера кода показан ниже.

![markdown-example-aspose-words-net](markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных кейсов, узнав которые, вы сможете работать с файлами Markdown более гибко и удобно. Например, есть возможность использовать:

* SetextHeading это позволяет создавать многострочные заголовки в Markdown, в то время как обычные заголовки в Markdown могут быть только однострочными. SetextHeading основан на стиле "Заголовок N", и его уровень может быть только 1 или 2. Если N в "товарной позиции N" больше или равно 2, то соответствующий SetextHeading основан на "Heading 2", в противном случае - на "Heading 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию равен "-".) и различные типы нумерации для упорядоченных списков ("." или ")", маркер по умолчанию равен ".").
