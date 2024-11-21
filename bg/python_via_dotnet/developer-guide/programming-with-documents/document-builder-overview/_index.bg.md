---
title: Строител на документи Преглед Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Преглед на строителя на документи
linktitle: Преглед на строителя на документи
type: docs
description: "DocumentBuilder ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуващи такива, като използвате Python. DocumentBuilder предоставя методи за вмъкване на текст, чекови кутии, таблици, изображения и други елементи на съдържание в Python."
weight: 30
url: /bg/python-net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) е мощен клас, който свързва с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуваща.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) осигурява методи за вмъкване на текст, чекови кутии, оле обекти, параграфи, списъци, таблици, изображения и други елементи на съдържанието. Тя ви позволява да посочите шрифтове, параграф или раздел форматиране, и да извършва други операции.

## Строител на документи или Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) допълва класове и методи, налични в Aspose.Words Document Object Model (DOM) да опрости най-често срещаните задачи за изграждане на документи. Това означава, че можете да създавате и променяте съдържанието на документите както чрез Aspose.Words DOM, което изисква добро разбиране на структурата на дървото и използване на DocumentBuilder. На `DocumentBuilder` е "фасада" за комплекса **Document** структура, която ви позволява бързо и лесно да вмъквате съдържание и форматиране.

Операции, които са възможни с [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) са възможни и при използване на класовете на Aspose.Words DOM директно. Употребата обаче Aspose.Words DOM класове директно обикновено изискват повече редове на код, отколкото използване [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Навигация на документа

Навигацията на документа се основава на концепцията за виртуален курсор, с който можете да се преместите на друго място в документа с помощта на различни **Документ Builder.move_to_XXX** методи като [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) както и [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Този виртуален курсор показва къде ще бъде поставен текстът при свикване на методите [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), и други. Вижте следващата статия "Навигация с курсор," за да научите повече за виртуалния курсор.

Следният пример за код показва как да преминете към отметки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Сграда и промяна на документи

Aspose.Words API осигурява няколко класа, които са отговорни за форматиране на различни елементи на документ. Всеки от класовете капсулира форматиращи свойства, свързани с конкретен документен елемент, като текст, параграф, раздел и други. Например, [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) клас представлява символично форматиране свойства, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) Класът представлява свойства, форматиращи параграфа, и така нататък. Обектите на тези класове се връщат от съответния [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) имоти, които имат същите имена като класовете. Ето защо можете да получите достъп до тях и да зададете желания формат по време на изграждането на документа.

Можете също така да вмъкнете текст, чекова кутия, ole обект, изображения, отметки, форма полета, и други елементи на документа в позицията на курсора с помощта на `Write` метод или нещо от **Документ Builder.enter_XXX** методи като [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), и подобни методи.

Да видим как да създадем прост документ с помощта на [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Създаване на документ с помощта на DocumentBuilder

За начало, трябва да се създаде [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) и го свързва с [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възразявам. Създавате нов случай на [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) като се обади на конструктора си и го предаде на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) обект за привързаност към строителя.

За да въведете текст, подайте низ от текста, който трябва да въведете в документа [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) метод.

Следният пример за код показва как да се създаде прост документ с помощта на строител на документи.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Посочете форматирането на документа

На [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) Имотът определя форматирането на текст. Този обект съдържа различни атрибути на шрифта (фонт име, размер на шрифта, цвят и така нататък). Някои важни атрибути на шрифта също са представени от [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Имоти, които ви позволяват да получите достъп до тях директно. Това са [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), както и [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) Булеански имоти.

Следният пример с код показва как да се вмъкне форматиран текст, като се използва [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) посочва формата на символите, които ще бъдат приложени към целия текст, поставен от текущата позиция в документа нататък.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) определя формата на параграфа за текущия и всички параграфи, които се вмъкват.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) определя свойствата на страницата и раздела за текущия раздел и целия раздел, който ще бъде поставен.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) както и [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) посочва свойствата на форматирането, които ще се прилагат към таблиците и редовете от текущата позиция в документа нататък.

В тази ситуация "текущ" означава позицията, параграф, раздел, клетка или ред, в който курсорът е.

{{% /alert %}}

{{% alert color="primary" %}}

Имайте предвид, че [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), както и [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) свойствата се актуализират, когато се движите на различно място в документа, за да отразите форматиращите свойства на това място.

{{% /alert %}}
