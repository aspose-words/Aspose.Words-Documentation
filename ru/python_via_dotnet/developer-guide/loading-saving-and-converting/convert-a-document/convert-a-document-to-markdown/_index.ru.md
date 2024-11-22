---
title: Преобразовать документ в Markdown
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразовать документ в любой поддерживаемый формат загрузки Markdown и наоборот, используя Python."
keywords: how to convert a document to markdown python
weight: 40
url: /ru/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown Это популярный формат, используемый для разметки текста и его дальнейшего преобразования в HTML, PDF, DOCX или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей для публикации в блогах, описания проектов и так далее.

Markdown Он настолько популярен, что с ним легко работать, а также его можно довольно просто конвертировать в другие форматы. По этой причине, Aspose.Words Возможность конвертировать документ в [любой поддерживаемый формат загрузки](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) то Markdown и наоборот – Aspose.Words Поддерживает самые популярные [Сохранить форматы](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Теперь функциональность для работы с Markdown Формат активно разрабатывается, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразовать документ

Преобразовать документ в Markdown Вам просто нужно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем необходимо сохранить документ для Markdown Формат.

Следующий пример кода показывает, как преобразовать DOCX в Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Вы также можете указать физическую папку, в которой вы хотите сохранить изображения при экспорте документа. Markdown Формат. По умолчанию, Aspose.Words сохраняет изображения в той же папке, где сохранен файл документа, но вы можете отменить это поведение, используя [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) собственность.

Укажите папку через [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) Это также полезно, если вы сохраняете документ в потоке. Aspose.Words Не имеет папки для сохранения изображений.

Если указанный [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) Не существует, он будет создан автоматически.

Следующий пример кода показывает, как указать папку для изображений при сохранении документа в потоке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Укажите параметры сохранения при переходе на Markdown

Aspose.Words дает возможность использовать [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) класс для работы с расширенными вариантами при сохранении документа на Markdown Формат. Большинство свойств наследуют или перегружают свойства, которые уже существуют в других. [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) классы. Кроме того, ряд свойств, которые являются специфическими для Markdown Также добавлен формат. Например, в [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) свойство контролировать выравнивание контента в таблицах, или [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) контролировать, где изображения сохраняются при преобразовании документа в Markdown Формат.

## Поддерживаемый Markdown Особенности

Aspose.Words В настоящее время поддерживает следующие Markdown Особенности, которые в основном следуют `CommonMark` Спецификация в Aspose.Words API и представлены в виде соответствующих стилей или прямого форматирования:

* Заголовки - это абзацы с заголовком 1 - заголовки 6 стилей
* Блоккоты - это абзацы с "цитатами" в названии стиля
* IndentedCode - параграфы с "IndentedCode" в названии стиля
* Огражденный Код - это абзацы с "FencedCode" в названии стиля
* InlineCode работает с "InlineCode" в `Font` Название стиля
* Горизонтальные правила - это параграфы с `HorizontalRule` форма
* Смелый акцент
* Итальянский акцент
* StrikeThrough форматирование
* Списки пронумерованы или пронумерованы
* Таблицы представлены с [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) класс
* Ссылки представлены как [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) класс

Следующий пример показывает, как создать документ с некоторыми стилями и сохранить его. Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Результат этого примера кода показан ниже.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных случаев, узнав, с чем можно работать. Markdown Файлы более гибко и удобно. Например, есть возможность использовать:

* SetextHeading позволяет создавать многострочные заголовки в Markdown В то время как регулярные заголовки в Markdown может быть только однолинейным. SetextHeading основан на стиле "Heading N", и его уровень может быть только 1 или 2. Если N в "Голова N" больше или равна 2, то соответствующая SetextHeading основана на "Голова 2", иначе на "Голова 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию - "-") и различные типы нумерации для упорядоченных списков ("" или ""), маркер по умолчанию - "".).
