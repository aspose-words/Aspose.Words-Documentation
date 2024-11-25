---
title: Преобразовать документ в Markdown в Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразуйте документ в любом поддерживаемом формате загрузки в Markdown и наоборот, используя Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ru/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown - популярный формат, используемый для разметки текста, который в дальнейшем преобразуется в HTML, PDF, DOCX, или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей для публикации в блогах, описания проектов и так далее.

Markdown настолько популярен, потому что с этим форматом легко работать, а также его можно довольно просто преобразовать в другие форматы. По этой причине Aspose.Words предоставляет возможность конвертировать документ из [любой поддерживаемый формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) в Markdown и наоборот – Aspose.Words также поддерживает наиболее популярный [сохранение форматов](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Сейчас активно развивается функционал для работы с форматом Markdown, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразовать документ в Markdown

Чтобы преобразовать документ в формат Markdown, вам просто нужно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем вам нужно сохранить документ в формате Markdown.

В следующем примере кода показано, как преобразовать DOCX в Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Укажите параметры сохранения при преобразовании в Markdown

Aspose.Words предоставляет возможность использовать класс [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) для работы с расширенными параметрами при сохранении документа в формате Markdown. В дополнение к другим наследуемым или перегружаемым свойствам, также был добавлен ряд свойств, специфичных для формата Markdown. Например, свойство [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) для управления выравниванием содержимого в таблицах или [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) для управления сохранением изображений при преобразовании документа в формат Markdown.

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
* Таблицы представлены с помощью класса `Table`
* Ссылки представлены в виде класса `FieldHyperlink`

В следующем примере показано, как создать документ с некоторыми стилями и сохранить его в Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Результат выполнения этого примера кода показан ниже.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных кейсов, узнав которые, вы сможете работать с файлами Markdown более гибко и удобно. Например, есть возможность использовать:

* SetextHeading это позволяет создавать многострочные заголовки в Markdown, в то время как обычные заголовки в Markdown могут быть только однострочными. SetextHeading основан на стиле "Заголовок N", и его уровень может быть только 1 или 2. Если N в "товарной позиции N" больше или равно 2, то соответствующий SetextHeading основан на "Heading 2", в противном случае - на "Heading 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию равен "-".) и различные типы нумерации для упорядоченных списков ("." или ")", маркер по умолчанию равен ".").
