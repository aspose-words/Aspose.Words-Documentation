---
title: Строитель документов Обзор в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обсуждение Document Builder
linktitle: Обсуждение Document Builder
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы к уже существующим. Python. DocumentBuilder предоставляет способы вставки текста, флажков, таблиц, изображений и других элементов контента в Python."
weight: 30
url: /ru/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Это мощный класс, который ассоциируется с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Это позволяет создавать динамические документы с нуля или добавлять новые элементы к уже существующим.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет методы для вставки текста, флажков, ole объектов, параграфов, списков, таблиц, изображений и других элементов контента. Он позволяет указывать шрифты, форматирование абзаца или раздела, а также выполнять другие операции.

## Строитель документов или Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) классы и методы, доступные в Aspose.Words Document Object Model ()DOM) для упрощения наиболее распространенных задач по созданию документов. То есть, вы можете создавать и изменять содержание документов как через Aspose.Words DOM, что требует хорошего понимания структуры дерева и использования документа. The `DocumentBuilder` Это "фасад" для комплекса. **Document** Структура, которая позволяет быстро и легко вставлять контент и форматирование.

Операции, которые возможны при [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Это возможно и при использовании классов Aspose.Words DOM напрямую. Однако, используя Aspose.Words DOM Классы напрямую обычно требуют больше строк кода, чем использование [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Навигация документов

Навигация по документам основана на понятии виртуального курсора, с помощью которого можно перемещаться в другое место документа с помощью различных **Разработчик: Move_to_XXX** Такие методы, как [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Этот виртуальный курсор указывает, где текст будет вставлен при вызове методов. [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), и другие. Смотрите следующую статью "Навигация с курсором", чтобы узнать больше о виртуальном курсоре.

Следующий пример кода показывает, как перейти к закладке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Создание и изменение документов

Aspose.Words API Предоставляет несколько классов, которые отвечают за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, связанные с конкретным элементом документа, таким как текст, абзац, раздел и другие. Например, в [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) класс представляет свойства форматирования символов, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) Класс представляет свойства форматирования абзацев и так далее. Объекты этих классов возвращаются соответствующими [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Свойства, имеющие те же названия, что и классы. Таким образом, вы можете получить к ним доступ и установить желаемое форматирование во время сборки документа.

Вы также можете вставить текст, флажок, оле-объект, изображения, закладки, поля форм и другие элементы документа в положение курсора, используя `Write` метод или любой из **DocumentBuilder.insert_XXX** методов, таких как [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), и аналогичных методов.

Рассмотрим, как создать простой документ, используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Создание документа с помощью DocumentBuilder

Для начала вам нужно создать [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) и связать его с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект. Вы создаете новый пример [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Позвонив своему конструктору и передав его [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект для крепления к строителю.

Чтобы вставить текст, передайте строку текста, которую вам нужно вставить в документ, на [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) метод.

Следующий пример кода показывает, как создать простой документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Укажите формат документа

The [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) Собственность определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (имя шрифта, размер шрифта, цвет и так далее). Некоторые важные атрибуты шрифта также представлены [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Свойства, позволяющие получить к ним прямой доступ. Они являются [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), и [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) Булевы свойства.

Следующий пример кода показывает, как вставить отформатированный текст с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному с текущей позиции в документе.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) определяет форматирование абзаца для текущего и всех абзацев, подлежащих вставке.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) Укажите свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) и [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) указать свойства форматирования, которые будут применяться к ячейкам таблиц и строкам из текущего положения в документе и далее.

В этой ситуации "ток" означает положение, абзац, секцию, ячейку или строку, в которой находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), и [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) Свойства обновляются всякий раз, когда вы переходите в другое место в документе, чтобы отразить свойства форматирования этого места.

{{% /alert %}}
