---
title: Обзор конструктора документов в Java
second_title: Aspose.Words для Java
articleTitle: Обзор конструктора документов
linktitle: Обзор конструктора документов
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим. DocumentBuilder предоставляет методы для вставки текста, checkbox файлов, таблиц, изображений и других элементов содержимого в Java."
weight: 30
url: /ru/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) - это мощный класс, который ассоциируется с [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) и позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим.

**DocumentBuilder**

## Конструктор документов или Aspose.Words DOM

**DocumentBuilder**

Операции, которые возможны с помощью **DocumentBuilder**, также возможны при непосредственном использовании классов Aspose.Words DOM. Однако прямое использование классов Aspose.Words DOM обычно требует большего количества строк кода, чем использование **DocumentBuilder**.

## Навигация по документам

Навигация по документу основана на концепции виртуального курсора, с помощью которого вы можете перемещаться в другое место документа, используя различные методы **DocumentBuilder.MoveToXXX**, такие как [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) и [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Этот виртуальный курсор указывает, куда будет вставляться текст при вызове методов [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), и других. Подробнее о виртуальном курсоре читайте в следующей статье "Навигация с помощью курсора".

В следующем примере кода показано, как перейти к закладке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Создание и модификация документов

Aspose.Words API предоставляет несколько классов, которые отвечают за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, относящиеся к определенному элементу документа, такому как текст, абзац, раздел и другие. Например, класс [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) представляет свойства форматирования символов, класс [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) представляет свойства форматирования абзацев и т.д. Объекты этих классов возвращаются соответствующими свойствами **DocumentBuilder**, которые имеют те же имена, что и классы. Таким образом, вы можете получить к ним доступ и задать желаемое форматирование во время создания документа.

Вы также можете вставить текст, checkbox, ole-объект, изображения, закладки, поля формы и другие элементы документа в положение курсора, используя метод `Write` или любой из методов **DocumentBuilder.InsertXXX**, таких как [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) и аналогичные методы.

Давайте посмотрим, как создать простой документ, используя **DocumentBuilder**.

### Создайте документ, используя DocumentBuilder

Для начала вам нужно создать **DocumentBuilder** и связать его с объектом **Document**. Вы создаете новый экземпляр **DocumentBuilder**, вызывая его конструктор, и передаете его объекту **Document** для присоединения к конструктору.

Чтобы вставить текст, передайте строку текста, которую вам нужно вставить в документ, методу **Write**.

В следующем примере кода показано, как создать простой документ с помощью конструктора документов.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Укажите форматирование документа

Свойство [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (название шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены свойствами **DocumentBuilder**, что позволяет получить к ним прямой доступ. Это логические свойства [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) и [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

В следующем примере кода показано, как вставить форматированный текст с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) определяет форматирование абзаца для текущего и всех остальных абзацев, которые будут вставлены.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) задает свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) и [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) задают свойства форматирования, которые будут применяться к ячейкам и строкам таблицы, начиная с текущей позиции в документе и далее.

В этой ситуации "текущий" означает позицию, абзац, раздел, ячейку или строку, в которых находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что свойства **Font**, **ParagraphFormat** и **PageSetup** обновляются всякий раз, когда вы переходите к другому местоположению в документе, чтобы отразить свойства форматирования этого местоположения.

{{% /alert %}}
