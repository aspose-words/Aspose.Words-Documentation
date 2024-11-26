---
title: Обзор конструктора документов в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обзор конструктора документов
linktitle: Обзор конструктора документов
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим с помощью Python. DocumentBuilder предоставляет методы для вставки текста, checkbox строк, таблиц, изображений и других элементов содержимого в Python."
weight: 30
url: /ru/python-net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) - это мощный класс, который ассоциируется с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет методы для вставки текста, checkbox файлов, ole-объектов, абзацев, списков, таблиц, изображений и других элементов содержимого. Позволяет задавать шрифты, форматирование абзацев или разделов и выполнять другие операции.

## Конструктор документов или Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) дополняет классы и методы, доступные в объектной модели документа Aspose.Words (DOM), чтобы упростить наиболее распространенные задачи по созданию документов. То есть вы можете создавать и изменять содержимое документов как с помощью Aspose.Words DOM, что требует хорошего понимания древовидной структуры, так и с помощью DocumentBuilder. `DocumentBuilder` - это "фасад" сложной структуры **Document**, который позволяет вам быстро и легко вставлять содержимое и форматировать его.

Операции, которые возможны с [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), также возможны при непосредственном использовании классов Aspose.Words DOM. Однако прямое использование классов Aspose.Words DOM обычно требует большего количества строк кода, чем использование [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Навигация по документам

Навигация по документу основана на концепции виртуального курсора, с помощью которого вы можете перемещаться в другое место документа, используя различные методы **DocumentBuilder.move_to_XXX**, такие как [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Этот виртуальный курсор указывает, куда будет вставляться текст при вызове методов [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), и других. Подробнее о виртуальном курсоре читайте в следующей статье "Навигация с помощью курсора".

В следующем примере кода показано, как перейти к закладке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Создание и модификация документов

Aspose.Words API предоставляет несколько классов, которые отвечают за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, относящиеся к определенному элементу документа, такому как текст, абзац, раздел и другие. Например, класс [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) представляет свойства форматирования символов, класс [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) представляет свойства форматирования абзацев и т.д. Объекты этих классов возвращаются соответствующими свойствами [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), которые имеют те же имена, что и классы. Таким образом, вы можете получить к ним доступ и задать желаемое форматирование во время создания документа.

Вы также можете вставить текст, checkbox, ole-объект, изображения, закладки, поля формы и другие элементы документа в положение курсора, используя метод `Write` или любой из методов **DocumentBuilder.insert_XXX**, таких как [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) и аналогичные методы.

Давайте посмотрим, как создать простой документ, используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Создайте документ, используя DocumentBuilder

Для начала вам нужно создать [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) и связать его с объектом [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Вы создаете новый экземпляр [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), вызывая его конструктор, и передаете его объекту [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) для присоединения к конструктору.

Чтобы вставить текст, передайте строку текста, которую вам нужно вставить в документ, методу [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

В следующем примере кода показано, как создать простой документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Укажите форматирование документа

Свойство [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (название шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены свойствами [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), что позволяет получить к ним прямой доступ. Это логические свойства [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) и [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

В следующем примере кода показано, как вставить форматированный текст с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) определяет форматирование абзаца для текущего и всех остальных абзацев, которые будут вставлены.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) задает свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) и [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) задают свойства форматирования, которые будут применяться к ячейкам и строкам таблицы, начиная с текущей позиции в документе и далее.

В этой ситуации "текущий" означает позицию, абзац, раздел, ячейку или строку, в которых находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что свойства [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) и [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) обновляются всякий раз, когда вы переходите к другому местоположению в документе, чтобы отразить свойства форматирования этого местоположения.

{{% /alert %}}
