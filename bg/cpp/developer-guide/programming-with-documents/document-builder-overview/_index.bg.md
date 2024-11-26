---
title: Преглед на конструктора на документи в C++
second_title: Aspose.Words за C++
articleTitle: Преглед На Конструктора На Документи
linktitle: Преглед На Конструктора На Документи
type: docs
description: "DocumentBuilder Позволява ви да създавате динамични документи от нулата или да добавяте нови елементи към съществуващите, като използвате C++. DocumentBuilder осигурява методи за вмъкване на текст, checkboxЕС, таблици, изображения и други елементи на съдържанието в C++."
weight: 30
url: /bg/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) е мощен клас, който се асоциира с [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) и ви позволява да създавате динамични документи от нулата или да добавяте нови елементи към съществуващ.

**DocumentBuilder**

## Създател на документи или Aspose.Words DOM

**DocumentBuilder**

Операциите, които са възможни с **DocumentBuilder**, са възможни и при директно използване на класовете на Aspose.Words DOM. Въпреки това, използването на Aspose.Words DOM класове директно обикновено изисква повече редове код, отколкото използването на **DocumentBuilder**.

## Навигация На Документи

Навигацията в документа се основава на концепцията за виртуален курсор, с който можете да се преместите на друго място в документа, като използвате различни методи **DocumentBuilder.MoveToXXX**, като [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Този виртуален курсор показва къде ще бъде вмъкнат текстът при извикване на методите [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), и други.

Следващият пример за код показва как да навигирате до отметка:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Създаване и модифициране на документи

Aspose.Words API осигурява няколко класа, които са отговорни за форматирането на различни елементи от документ. Всеки от класовете капсулира свойства за форматиране, свързани с конкретен елемент на документа, като например текст, Абзац, раздел и други. Например класът [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) представлява свойствата за форматиране на знаци, класът [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) представлява свойствата за форматиране на абзаци и т.н. Обектите от тези класове се връщат със съответните **DocumentBuilder** свойства, които имат същите имена като класовете. Следователно можете да получите достъп до тях и да зададете желаното форматиране по време на изграждането на документа.

Можете също да вмъквате текст, checkbox, стар обект, изображения, отметки, полета на формуляр и други елементи на документа в позицията на курсора, като използвате метода `Write` или някой от методите **DocumentBuilder.InsertXXX**, като [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) и подобни методи.

Нека видим как да създадем прост документ, използвайки **DocumentBuilder**.

### Създаване на документ с DocumentBuilder

За да започнете, трябва да създадете **DocumentBuilder** и да го свържете с **Document** обект. Можете да създадете нова инстанция на **DocumentBuilder**, като извикате конструктора му и го предадете на **Document** обект за прикачване към строителя.

За да вмъкнете текст, подайте низа от текст, който трябва да вмъкнете в документа, към метода **Write**.

Следващият пример за код показва как да създадете прост документ с помощта на конструктор на документи.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Задаване На Форматиране На Документ

[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) свойството определя форматирането на текста. Този обект съдържа различни атрибути на шрифта (име на шрифта, размер на шрифта, цвят и т.н.). Някои важни атрибути на шрифта също са представени от **DocumentBuilder** свойства, за да ви позволят директен достъп до тях. Това са [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) и [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) булеви свойства.

Следващият пример за код показва как да вмъкнете форматиран текст, като използвате **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) задава форматирането на знаците, което ще бъде приложено към целия текст, вмъкнат от текущата позиция в документа нататък.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) задава форматирането на абзаца за текущия и всички абзаци, които да бъдат вмъкнати.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) указва страницата и свойствата на секцията за текущия раздел и целия раздел, който ще бъде вмъкнат.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) и [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) Задайте свойства за форматиране, които ще бъдат приложени към клетките на таблицата и редовете от текущата позиция в документа нататък.

В тази ситуация "текущ" означава позицията, абзаца, секцията, клетката или реда, в който се намира курсорът.

{{% /alert %}}

{{% alert color="primary" %}}

Обърнете внимание, че свойствата **Font**, **ParagraphFormat** и **PageSetup** се актуализират всеки път, когато навигирате до друго местоположение в документа, за да отразите свойствата за форматиране на това местоположение.

{{% /alert %}}
