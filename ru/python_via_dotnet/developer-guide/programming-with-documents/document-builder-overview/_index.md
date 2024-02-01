---
title: Обзор конструктора документов в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обзор конструктора документов
linktitle: Обзор конструктора документов
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим, используя Python. DocumentBuilder предоставляет методы для вставки текста, флажков, таблиц, изображений и других элементов контента в Python."
weight: 30
url: /ru/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) — это мощный класс, который связан с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и позволяет создавать динамические документы с нуля или добавлять новые элементы к существующему.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет методы для вставки текста, флажков, объектов ole, абзацев, списков, таблиц, изображений и других элементов контента. Он позволяет указывать шрифты, форматирование абзацев или разделов и выполнять другие операции.

## Строитель документов или Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) дополняет классы и методы, доступные в Aspose.Words Document Object Model (DOM), чтобы упростить наиболее распространенные задачи создания документов. То есть создавать и изменять содержимое документов можно как через Aspose.Words DOM, что требует хорошего понимания древовидной структуры, так и с помощью DocumentBuilder. `DocumentBuilder` — это "фасад" сложной структуры **Document**, который позволяет быстро и легко вставлять контент и форматировать.

Операции, которые возможны с [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), также возможны при непосредственном использовании классов Aspose.Words DOM. Однако для прямого использования классов Aspose.Words DOM обычно требуется больше строк кода, чем для использования [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Навигация по документу

Навигация по документу основана на концепции виртуального курсора, с помощью которого вы можете перемещаться в другое место документа, используя различные методы **DocumentBuilder.move_to_XXX**, такие как [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Этот виртуальный курсор указывает, куда будет вставлен текст при вызове методов [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/)., [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) и другие. Дополнительную информацию о виртуальном курсоре см. в следующей статье "Навигация с помощью курсора".

В следующем примере кода показано, как перейти к закладке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Создание и изменение документов

Aspose.Words API предоставляет несколько классов, отвечающих за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, относящиеся к определенному элементу документа, например тексту, абзацу, разделу и другим. Например, класс [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) представляет свойства форматирования символов, класс [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) представляет свойства форматирования абзаца и т.д. Объекты этих классов возвращаются соответствующими свойствами [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), имеющими те же имена, что и классы. Таким образом, вы можете получить к ним доступ и установить желаемое форматирование во время сборки документа.

Вы также можете вставлять текст, флажок, объект ole, изображения, закладки, поля формы и другие элементы документа в позицию курсора, используя метод `Write` или любой из методов **DocumentBuilder.insert_XXX**, таких как [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) и подобные методы.

Давайте посмотрим, как создать простой документ, используя номер [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Создайте документ с помощью DocumentBuilder

Для начала вам нужно создать [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) и связать его с объектом [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Вы создаете новый экземпляр [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), вызывая его конструктор, и передаете его объекту [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) для присоединения к сборщику.

Чтобы вставить текст, передайте строку текста, которую необходимо вставить в документ, методу [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

В следующем примере кода показано, как создать простой документ с помощью построителя документов.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Укажите форматирование документа

Свойство [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (имя шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены свойствами [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), что позволяет вам напрямую обращаться к ним. Это логические свойства [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) и [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

В следующем примере кода показано, как вставить форматированный текст с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) определяет форматирование текущего абзаца и всех абзацев, которые будут вставлены.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) указывает свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) и [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) определяют свойства форматирования, которые будут применяться к ячейкам и строкам таблицы, начиная с текущей позиции в документе.

В этой ситуации "текущий" означает позицию, абзац, раздел, ячейку или строку, в которой находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что свойства [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) и [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) обновляются всякий раз, когда вы переходите в другое место в документе, чтобы отразить свойства форматирования этого места.

{{% /alert %}}
