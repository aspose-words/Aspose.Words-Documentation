---
title: Строител на документи Преглед C#
second_title: Aspose.Words вместо .NET
articleTitle: Преглед на строителя на документи
linktitle: Преглед на строителя на документи
type: docs
description: "DocumentBuilder ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуващи такива, като използвате C#. DocumentBuilder предоставя методи за вмъкване на текст, чекови кутии, таблици, изображения и други елементи на съдържание в .NET."
weight: 30
url: /bg/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) е мощен клас, който свързва с [Document](https://reference.aspose.com/words/net/aspose.words/document/) и ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуваща.

**DocumentBuilder** осигурява методи за вмъкване на текст, чекови кутии, оле обекти, параграфи, списъци, таблици, изображения и други елементи на съдържанието. Тя ви позволява да посочите шрифтове, параграф или раздел форматиране, и да извършва други операции.

## Строител на документи или Aspose.Words DOM

**DocumentBuilder** допълва класове и методи, налични в Aspose.Words Document Object Model (DOM) да опрости най-често срещаните задачи за изграждане на документи. Това означава, че можете да създавате и променяте съдържанието на документите както чрез Aspose.Words DOM, което изисква добро разбиране на структурата на дървото и използване на DocumentBuilder. На `DocumentBuilder` е "фасада" за комплекса **Document** структура, която ви позволява бързо и лесно да вмъквате съдържание и форматиране.

Операции, които са възможни с **DocumentBuilder** са възможни и при използване на класовете на Aspose.Words DOM директно. Употребата обаче Aspose.Words DOM класове директно обикновено изискват повече редове на код, отколкото използване **DocumentBuilder**.

## Навигация на документа

Навигацията на документа се основава на концепцията за виртуален курсор, с който можете да се преместите на друго място в документа с помощта на различни **DocumentBuilder.MoveToXXX** методи като [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) както и [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Този виртуален курсор показва къде ще бъде поставен текстът при свикване на методите [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/), и други. Вижте следващата статия "Навигация с курсор," за да научите повече за виртуалния курсор.

Следният пример за код показва как да преминете към отметки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Сграда и промяна на документи

Aspose.Words API осигурява няколко класа, които са отговорни за форматиране на различни елементи на документ. Всеки от класовете капсулира форматиращи свойства, свързани с конкретен документен елемент, като текст, параграф, раздел и други. Например, [Font](https://reference.aspose.com/words/net/aspose.words/font/) клас представлява символично форматиране свойства, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) Класът представлява свойства, форматиращи параграфа, и така нататък. Обектите на тези класове се връщат от съответния **DocumentBuilder** имоти, които имат същите имена като класовете. Ето защо можете да получите достъп до тях и да зададете желания формат по време на изграждането на документа.

Можете също така да вмъкнете текст, чекова кутия, ole обект, изображения, отметки, форма полета, и други елементи на документа в позицията на курсора с помощта на `Write` метод или нещо от **DocumentBuilder.InsertXXX** методи като [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/), и подобни методи.

Да видим как да създадем прост документ с помощта на **DocumentBuilder**.

### Създаване на документ с помощта на DocumentBuilder

За начало, трябва да се създаде **DocumentBuilder** и го свързва с **Document** Възразявам. Създавате нов случай на **DocumentBuilder** като се обади на конструктора си и го предаде на **Document** обект за привързаност към строителя.

За да въведете текст, подайте низ от текста, който трябва да въведете в документа **Write** метод.

Следният пример за код показва как да се създаде прост документ с помощта на строител на документи.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Посочете форматирането на документа

На [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) Имотът определя форматирането на текст. Този обект съдържа различни атрибути на шрифта (фонт име, размер на шрифта, цвят и така нататък). Някои важни атрибути на шрифта също са представени от **DocumentBuilder** Имоти, които ви позволяват да получите достъп до тях директно. Това са [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/), както и [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) Булеански имоти.

Следният пример с код показва как да се вмъкне форматиран текст, като се използва **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) посочва формата на символите, които ще бъдат приложени към целия текст, поставен от текущата позиция в документа нататък.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) определя формата на параграфа за текущия и всички параграфи, които се вмъкват.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) определя свойствата на страницата и раздела за текущия раздел и целия раздел, който ще бъде поставен.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) както и [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) посочва свойствата на форматирането, които ще се прилагат към таблиците и редовете от текущата позиция в документа нататък.

В тази ситуация "текущ" означава позицията, параграф, раздел, клетка или ред, в който курсорът е.

{{% /alert %}}

{{% alert color="primary" %}}

Имайте предвид, че **Font**, **ParagraphFormat**, както и **PageSetup** свойствата се актуализират, когато се движите на различно място в документа, за да отразите форматиращите свойства на това място.

{{% /alert %}}
