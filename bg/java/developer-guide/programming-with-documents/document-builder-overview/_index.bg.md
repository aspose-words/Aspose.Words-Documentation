---
title: Строител на документи Преглед в Java
second_title: Aspose.Words вместо Java
articleTitle: Преглед на строителя на документи
linktitle: Преглед на строителя на документи
type: docs
description: "DocumentBuilder ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуващи такива. DocumentBuilder предлага методи за вмъкване на текст, кутии, таблици, изображения и други елементи на съдържание в Java."
weight: 30
url: /bg/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) е мощен клас, който свързва с [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) и ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуваща.

**DocumentBuilder** осигурява методи за вмъкване на текст, чекови кутии, оле обекти, параграфи, списъци, таблици, изображения и други елементи на съдържанието. Тя ви позволява да посочите шрифтове, параграф или раздел форматиране, и да извършва други операции.

## Строител на документи или Aspose.Words DOM

**DocumentBuilder** допълва класове и методи, налични в Aspose.Words Document Object Model (DOM) да опрости най-често срещаните задачи за изграждане на документи. Това означава, че можете да създавате и променяте съдържанието на документите както чрез Aspose.Words DOM, което изисква добро разбиране на структурата на дървото, и използване на DocumentBuilder. На `DocumentBuilder` е "фасада" за комплекса **Document** структура, която ви позволява бързо и лесно да вмъквате съдържание и форматиране.

Операции, които са възможни с **DocumentBuilder** са възможни и при използване на класовете на Aspose.Words DOM директно. Употребата обаче Aspose.Words DOM класовете обикновено изискват повече редове код, отколкото използване **DocumentBuilder**.

## Навигация на документа

Навигацията на документа се основава на концепцията за виртуален курсор, с който можете да се преместите на друго място в документа с помощта на различни **DocumentBuilder.MoveToXXX** методи като [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) както и [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Този виртуален курсор показва къде ще бъде поставен текстът при свикване на методите [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), и други. Вижте следващата статия "Навигация с курсор," за да научите повече за виртуалния курсор.

Следният пример за код показва как да преминете към отметки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Сграда и промяна на документи

Aspose.Words API предоставя няколко класа, които са отговорни за форматиране на различни елементи на документ. Всеки от класовете капсулира форматиращи свойства, свързани с конкретен документен елемент, като текст, параграф, раздел и други. Например, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) клас представлява свойства за форматиране на символите, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) Класът представлява свойства, форматиращи параграфа, и така нататък. Обектите на тези класове се връщат от съответните **DocumentBuilder** имоти, които имат същите имена като класовете. Следователно, можете да получите достъп до тях и да зададете желаното форматиране по време на изграждането на документа.

Можете също така да вмъкнете текст, чекова кутия, ole обект, изображения, отметки, форма полета, и други елементи на документа в позицията на курсора с помощта на `Write` метод или нещо от **DocumentBuilder.InsertXXX** методи като [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), и подобни методи.

Да видим как да създадем прост документ с помощта на **DocumentBuilder**.

### Създаване на документ с помощта на DocumentBuilder

За да започнете, трябва да създадете **DocumentBuilder** и го свързва с **Document** Възразявам. Създавате нов случай на **DocumentBuilder** като се обади на конструктора си и го предаде на **Document** обект за закрепване към строителя.

За да въведете текст, подайте низ от текста, който трябва да въведете в документа **Write** метод.

Следният пример за код показва как да се създаде прост документ с помощта на строител на документи.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Посочете форматирането на документа

На [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) Имотът определя форматирането на текст. Този обект съдържа различни атрибути на шрифта (фонт име, размер на шрифта, цвят и така нататък). Някои важни атрибути на шрифта също са представени от **DocumentBuilder** имоти, които ви позволяват да получите достъп до тях директно. Това са [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), както и [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) Булеански имоти.

Следният пример с код показва как да се вмъкне форматиран текст, като се използва **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) посочва формата на символите, които ще се прилагат към целия текст, поставен от текущата позиция в документа нататък.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) определя формата на параграфа за текущия и всички параграфи, които се вмъкват.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) определя свойствата на страницата и раздела за текущия раздел и целия раздел, който ще бъде поставен.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) както и [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) посочва форматиращите свойства, които ще се прилагат към таблиците и редовете от текущата позиция в документа нататък.

В тази ситуация "текущ" означава позицията, параграф, раздел, клетка или ред, в който курсорът е.

{{% /alert %}}

{{% alert color="primary" %}}

Имайте предвид, че **Font**, **ParagraphFormat**, както и **PageSetup** свойствата се актуализират, когато се движите на различно място в документа, за да отразите форматиращите свойства на това място.

{{% /alert %}}
