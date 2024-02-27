---
title: Обзор конструктора документов в C#
second_title: Aspose.Words для .NET
articleTitle: Обзор конструктора документов
linktitle: Обзор конструктора документов
type: docs
description: "DocumentBuilder позволяет создавать динамические документы с нуля или добавлять новые элементы к существующим, используя C#. DocumentBuilder предоставляет методы для вставки текста, флажков, таблиц, изображений и других элементов контента в .NET."
weight: 30
url: /ru/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) — это мощный класс, который связан с [Document](https://reference.aspose.com/words/net/aspose.words/document/) и позволяет создавать динамические документы с нуля или добавлять новые элементы к существующему.

**DocumentBuilder** предоставляет методы для вставки текста, флажков, старых объектов, абзацев, списков, таблиц, изображений и других элементов контента. Он позволяет указывать шрифты, форматирование абзацев или разделов и выполнять другие операции.

## Создатель документов или Aspose.Words DOM

**DocumentBuilder** дополняет классы и методы, доступные в Aspose.Words Document Object Model (DOM), чтобы упростить наиболее распространенные задачи создания документов. То есть создавать и изменять содержимое документов можно как через Aspose.Words DOM, что требует хорошего понимания древовидной структуры, так и с помощью DocumentBuilder. `DocumentBuilder` — это "фасад" сложной структуры **Document**, который позволяет быстро и легко вставлять контент и форматировать.

Операции, которые возможны с **DocumentBuilder**, также возможны при непосредственном использовании классов Aspose.Words DOM. Однако для прямого использования классов Aspose.Words DOM обычно требуется больше строк кода, чем для использования **DocumentBuilder**.

## Навигация по документу

Навигация по документу основана на концепции виртуального курсора, с помощью которого вы можете перемещаться в другое место документа, используя различные методы **DocumentBuilder.MoveToXXX**, такие как [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Этот виртуальный курсор указывает, куда будет вставлен текст при вызове методов [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index)., [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) и другие. Дополнительную информацию о виртуальном курсоре см. в следующей статье "Навигация с помощью курсора".

В следующем примере кода показано, как перейти к закладке:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Создание и изменение документов

Aspose.Words API предоставляет несколько классов, отвечающих за форматирование различных элементов документа. Каждый из классов инкапсулирует свойства форматирования, относящиеся к определенному элементу документа, например тексту, абзацу, разделу и другим. Например, класс [Font](https://reference.aspose.com/words/net/aspose.words/font/) представляет свойства форматирования символов, класс [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) представляет свойства форматирования абзацев и т.д. Объекты этих классов возвращаются соответствующими свойствами **DocumentBuilder**, имеющими те же имена, что и классы. Таким образом, вы можете получить к ним доступ и установить желаемое форматирование во время сборки документа.

Вы также можете вставлять текст, флажок, объект ole, изображения, закладки, поля формы и другие элементы документа в позицию курсора, используя метод `Write` или любой из методов **DocumentBuilder.InsertXXX**, таких как [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) и подобные методы.

Давайте посмотрим, как создать простой документ, используя код **DocumentBuilder**.

### Создайте документ с помощью DocumentBuilder

Для начала вам нужно создать **DocumentBuilder** и связать его с объектом **Document**. Вы создаете новый экземпляр **DocumentBuilder**, вызывая его конструктор, и передаете его объекту **Document** для присоединения к сборщику.

Чтобы вставить текст, передайте текстовую строку, которую необходимо вставить в документ, методу **Write**.

В следующем примере кода показано, как создать простой документ с помощью построителя документов.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Укажите форматирование документа

Свойство [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) определяет форматирование текста. Этот объект содержит различные атрибуты шрифта (имя шрифта, размер шрифта, цвет и т.д.). Некоторые важные атрибуты шрифта также представлены **DocumentBuilder** свойствами, что позволяет вам получить к ним прямой доступ. Это логические свойства [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) и [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

В следующем примере кода показано, как вставить форматированный текст с помощью **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) определяет форматирование символов, которое будет применяться ко всему тексту, вставленному начиная с текущей позиции в документе.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) определяет форматирование текущего абзаца и всех абзацев, которые будут вставлены.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) указывает свойства страницы и раздела для текущего раздела и всего раздела, который будет вставлен.
— [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) и [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) определяют свойства форматирования, которые будут применяться к ячейкам и строкам таблицы, начиная с текущей позиции в документе.

В этой ситуации "текущий" означает позицию, абзац, раздел, ячейку или строку, в которой находится курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что свойства **Font**, **ParagraphFormat** и **PageSetup** обновляются всякий раз, когда вы переходите в другое место в документе, чтобы отразить свойства форматирования этого места.

{{% /alert %}}
