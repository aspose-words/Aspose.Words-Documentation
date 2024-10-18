---
title: Преобразовать документ в Markdown на C++
second_title: Aspose.Words для C++
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразуйте документ в любом поддерживаемом загружаемом формате в Markdown и наоборот с помощью C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /ru/cpp/convert-a-document-to-markdown/
---

Markdown - популярный формат, используемый для разметки текста и его дальнейшего преобразования в HTML, PDF, DOCX или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей для публикации в блогах, описания проектов и так далее.

Markdown настолько популярен, потому что с этим форматом легко работать, а также его можно довольно просто преобразовать в другие форматы. По этой причине Aspose.Words предоставляет возможность конвертировать документ из [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) в Markdown и наоборот – Aspose.Words также поддерживает наиболее популярный [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Сейчас активно развивается функционал для работы с форматом Markdown, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразование документа

Чтобы преобразовать документ в формат Markdown, вам просто нужно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем вам нужно сохранить документ в формате Markdown.

В следующем примере кода показано, как преобразовать DOCX в Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Вы также можете указать физическую папку, в которую вы хотите сохранить изображения, при экспорте документа в формат Markdown. По умолчанию Aspose.Words сохраняет изображения в той же папке, в которой сохранен файл документа, но вы можете изменить это поведение, используя свойство [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Указание папки с помощью **ImagesFolder** также полезно, если вы сохраняете документ в потоке, а в Aspose.Words нет папки для сохранения изображений.

Если указанный параметр **ImagesFolder** не существует, он будет создан автоматически.

В следующем примере кода показано, как указать папку для изображений при сохранении документа в поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Укажите параметры сохранения при преобразовании в Markdown

Aspose.Words предоставляет возможность использовать класс [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) для работы с расширенными параметрами при сохранении документа в формате Markdown. Большинство свойств наследуют или перегружают свойства, которые уже существуют в других классах пространства имен [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). В дополнение к ним также был добавлен ряд свойств, специфичных для формата Markdown. Например, свойство [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) для управления выравниванием содержимого в таблицах или [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) и [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) для управления сохранением изображений при преобразовании документа в формат Markdown.

## Поддерживаемые функции Markdown

Aspose.Words в настоящее время поддерживаются следующие Markdown функции, которые в основном соответствуют спецификации `CommonMark` в Aspose.Words API и представлены в виде соответствующих стилей или прямого форматирования:

* Заголовки – это абзацы со стилями Heading 1 - Heading 6
* Блок-кавычки - это абзацы с надписью "Quote" в названии стиля
* Код с отступом - это абзацы с "кодом с отступом" в названии стиля
* FencedCode - это абзацы с "FencedCode" в названии стиля
* Встроенный код выполняется с "InlineCode" в названии стиля `Font`
* Горизонтальные правила - это абзацы с формой `HorizontalRule`
* Жирный акцент
* Выделено курсивом
* Зачеркнутое форматирование
* Списки представляют собой пронумерованные или маркированные абзацы
* Таблицы представлены с помощью класса `Table`
* Ссылки представлены в виде класса `FieldHyperlink`

В следующем примере показано, как создать документ с некоторыми стилями и сохранить его в Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Результат выполнения этого примера кода показан ниже.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных кейсов, узнав которые, вы сможете работать с файлами Markdown более гибко и удобно. Например, есть возможность использовать:

* SetextHeading, который позволяет создавать многострочные заголовки в Markdown, в то время как обычные заголовки в Markdown могут быть только однострочными. SetextHeading основан на стиле "Заголовок N", и его уровень может быть только 1 или 2. Если N в "Заголовке N" больше или равно 2, то соответствующий SetextHeading основан на "Heading 2", в противном случае - на "Heading 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию равен "-".) и различные типы нумерации для упорядоченных списков ("." или ")", маркер по умолчанию равен ".").
