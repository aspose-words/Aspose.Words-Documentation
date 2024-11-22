---
title: Преобразовать документ в Markdown в Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ в Markdown
linktitle: Преобразовать документ в Markdown
type: docs
description: "Преобразовать документ в любой поддерживаемый формат загрузки Markdown и наоборот, используя Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ru/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown Это популярный формат, используемый для разметки текста, и он дополнительно конвертируется в HTML, PDF, DOCX или другие форматы. Многие разработчики выбирают этот формат для написания документации, подготовки статей для публикации в блогах, описания проектов и так далее.

Markdown Он настолько популярен, что с ним легко работать, а также его можно довольно просто конвертировать в другие форматы. По этой причине, Aspose.Words Возможность конвертировать документ в [любой поддерживаемый формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) то Markdown и наоборот – Aspose.Words Также поддерживает самые популярные [Сохранить форматы](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Теперь функциональность для работы с Markdown Формат активно разрабатывается, чтобы предоставить вам больше возможностей для удобной и комфортной работы с документами.

## Преобразовать документ в Markdown

Преобразовать документ в Markdown> Вам просто нужно загрузить документ в любом поддерживаемом формате или создать новый программно. Затем необходимо сохранить документ для Markdown Формат.

Следующий пример кода показывает, как преобразовать DOCX в Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Укажите параметры сохранения при переходе на Markdown

Aspose.Words дает возможность использовать [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) класс для работы с расширенными вариантами при сохранении документа на Markdown Формат. В дополнение к другим наследственным или перегрузочным свойствам, ряд свойств, которые являются специфическими для Markdown Также добавлен формат. Например, в [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) свойство контролировать выравнивание контента в таблицах, или [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) контролировать, как изображения сохраняются при преобразовании документа в Markdown Формат.

## Поддерживаемый Markdown Особенности

Aspose.Words В настоящее время поддерживает следующие Markdown Особенности, которые в основном следуют `CommonMark` Спецификация в Aspose.Words API и представлены в виде соответствующих стилей или прямого форматирования:

* Заголовки - это абзацы с заголовком 1 - заголовки 6 стилей
* Блоккоты - это абзацы с "цитатами" в названии стиля
* IndentedCode - параграфы с "IndentedCode" в названии стиля
* Огражденный Код - это абзацы с "FencedCode" в названии стиля
* InlineCode работает с "InlineCode" в `Font` название стиля
* Горизонтальные правила - это параграфы с `HorizontalRule` форма
* Смелый акцент
* Итальянский акцент
* StrikeThrough форматирование
* Списки пронумерованы или пронумерованы
* Таблицы представлены с `Table` класс
* Ссылки представлены как `FieldHyperlink` класс

Следующий пример показывает, как создать документ с некоторыми стилями и сохранить его. Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Результат этого примера кода показан ниже.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Полезные советы

Есть несколько нюансов и интересных случаев, узнав, с чем можно работать. Markdown Файлы более гибко и удобно. Например, есть возможность использовать:

* SetextHeading позволяет создавать многострочные заголовки в Markdown> В то время как регулярные заголовки в Markdown Они могут быть только однолинейными. SetextHeading основан на стиле "Heading N", и его уровень может быть только 1 или 2. Если N в "Главе N" больше или равно 2, то соответствующее SetextHeading основано на "Главе 2", в противном случае на "Главе 1".
* Различные маркеры для первого уровня маркированных списков ("-", "+" или "*", маркер по умолчанию - "-") и различные типы нумерации для упорядоченных списков ("" или ""), маркер по умолчанию - ".").
