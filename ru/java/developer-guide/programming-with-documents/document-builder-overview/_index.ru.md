---
title: Строитель документов Обзор в Java
second_title: Aspose.Words для Java
articleTitle: Обсуждение Document Builder
linktitle: Обсуждение Document Builder
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы в существующие. DocumentBuilder предоставляет способы вставки текста, флажков, таблиц, изображений и других элементов контента в Java."
weight: 30
url: /ru/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Это мощный класс, который ассоциируется с [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Это позволяет создавать динамические документы с нуля или добавлять новые элементы к уже существующим.

**DocumentBuilder** предоставляет методы для вставки текста, флажков, ole объектов, параграфов, списков, таблиц, изображений и других элементов контента. Он позволяет указывать шрифты, форматирование абзаца или раздела, а также выполнять другие операции.

## Строитель документа или Aspose.Words DOM

**DocumentBuilder** классы и методы, доступные в Aspose.Words Document Object Model ()DOM) упрощение наиболее распространенных задач по созданию документов. То есть, вы можете создавать и изменять содержание документов как через Aspose.Words DOM, что требует хорошего понимания структуры дерева и использования документа. The `DocumentBuilder` Это "фасад" для комплекса. **Document** Структура, которая позволяет быстро и легко вставлять контент и форматирование.

Операции, которые возможны при **DocumentBuilder** Это возможно и при использовании классов Aspose.Words DOM напрямую. Однако, используя Aspose.Words DOM Классы напрямую обычно требуют больше строк кода, чем использование. **DocumentBuilder**.

## Навигация документов

Навигация по документам основана на понятии виртуального курсора, с помощью которого можно перемещаться в другое место документа с помощью различных **DocumentBuilder.MoveToXXX** Такие методы, как [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) и [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Этот виртуальный курсор указывает, где текст будет вставлен при вызове методов. [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), и другие. Смотрите следующую статью "Навигация с курсором", чтобы узнать больше о виртуальном курсоре.

Следующий пример кода показывает, как перейти к закладке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Создание и изменение документов

Aspose.Words API Предоставляет несколько классов, которые отвечают за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, связанные с конкретным элементом документа, таким как текст, абзац, раздел и другие. Например, в [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) класс представляет свойства форматирования символов, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) Класс представляет свойства форматирования абзацев и так далее. Объекты этих классов возвращаются соответствующими **DocumentBuilder** Свойства, имеющие те же названия, что и классы. Таким образом, вы можете получить к ним доступ и установить желаемое форматирование во время сборки документа.

Вы также можете вставить текст, флажок, оле-объект, изображения, закладки, поля форм и другие элементы документа в положение курсора, используя `Write` метод или любой из **DocumentBuilder.InsertXXX** методов, таких как [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), и аналогичных методов.

Рассмотрим, как создать простой документ, используя **DocumentBuilder**.

### Создание документа с помощью DocumentBuilder

Для начала вам нужно создать **DocumentBuilder** и связать его с **Document** объект. Вы создаете новый пример **DocumentBuilder** Позвонив своему конструктору и передав его **Document** объект для крепления к строителю.

Чтобы вставить текст, передайте строку текста, которую нужно вставить в документ, на **Write** метод.

Следующий пример кода показывает, как создать простой документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Укажите формат документа

The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) Собственность определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (имя шрифта, размер шрифта, цвет и так далее). Некоторые важные атрибуты шрифта также представлены **DocumentBuilder** Свойства, позволяющие получить к ним прямой доступ. Они являются [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), и [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) Булевы свойства.

Следующий пример кода показывает, как вставить отформатированный текст с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному с текущей позиции в документе.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) определяет форматирование абзаца для текущего и всех абзацев, подлежащих вставке.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Укажите свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) и [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) указать свойства форматирования, которые будут применяться к ячейкам таблиц и строкам из текущего положения в документе и далее.

В этой ситуации "ток" означает положение, абзац, секцию, ячейку или строку, в которой находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что **Font**, **ParagraphFormat**, и **PageSetup** Свойства обновляются всякий раз, когда вы переходите в другое место в документе, чтобы отразить свойства форматирования этого места.

{{% /alert %}}
