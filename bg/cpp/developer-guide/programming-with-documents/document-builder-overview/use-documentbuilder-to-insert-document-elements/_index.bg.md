---
title: Използвайте DocumentBuilder, за да вмъкнете елементи на документа
second_title: Aspose.Words за C++
articleTitle: Използвайте DocumentBuilder, за да вмъкнете елементи на документа
linktitle: Използвайте DocumentBuilder, за да вмъкнете елементи на документа
type: docs
description: "Вмъкване на елементи на документа с помощта на конструктора на документи в C++."
weight: 80
url: /bg/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` се използва за промяна на документи. Тази статия обяснява и описва как да изпълнявате редица задачи:

## Вмъкване на низ от текст

Просто подайте текста, който трябва да вмъкнете в документа, към метода `DocumentBuilder.Write`. Форматирането на текста се определя от свойството `Font`. Този обект съдържа различни атрибути на шрифта (име на шрифта, размер на шрифта, цвят и т.н.). Някои важни атрибути на шрифта също са представени от DocumentBuilder свойства, за да ви позволят директен достъп до тях. Това са булеви свойства `Font.Bold`, `Font.Italic` и `Font.Underline`.

Обърнете внимание, че форматирането на знаците, което сте задали, ще се прилага за целия текст, вмъкнат от текущата позиция в документа нататък.

По-долу примерни Вмъквания форматиран текст с DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Вмъкване на параграф

 `DocumentBuilder.Writeln` вмъква и низ от текст в документа, но освен това добавя нов абзац. Текущото форматиране на шрифта също се определя от свойството `DocumentBuilder.Font`, а текущото форматиране на абзаца се определя от свойството `DocumentBuilder.ParagraphFormat`. По-долу пример показва как да вмъкнете абзац в документа.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Вмъкване на таблица

Основният алгоритъм за създаване на таблица с DocumentBuilder е прост:

1. Стартирайте таблицата с `DocumentBuilder.StartTable`.
1. Вмъкнете клетка, като използвате `DocumentBuilder.InsertCell`. Това автоматично стартира нов ред. Ако е необходимо, използвайте свойството `DocumentBuilder.CellFormat`, за да зададете форматиране на клетки.
1. Въведете съдържанието на клетката, като използвате методите `DocumentBuilder`.
1. Повторете стъпки 2 и 3, докато редът е завършен.
1. Извикайте `DocumentBuilder.EndRow`, За да завършите текущия ред. Ако е необходимо, използвайте свойство `DocumentBuilder.RowFormat`, за да зададете форматиране на редове.
1. Повторете стъпки 2-5, докато таблицата е пълна.
1. Обадете се `DocumentBuilder.EndTable`, за да завършите сградата на масата. Подходящите методи за създаване на таблица DocumentBuilder са описани по-долу.

### Стартиране на маса

Извикването `DocumentBuilder.StartTable` е първата стъпка в изграждането на таблица. Тя може да бъде извикана и вътре в клетка, в който случай започва вложена таблица. Следващият метод за извикване е `DocumentBuilder.InsertCell`.

### Вмъкване на клетка

След като извикате `DocumentBuilder->InsertCell`, се създава нова клетка и всяко съдържание, което добавите с помощта на други методи от класа `DocumentBuilder`, ще бъде добавено към текущата клетка. За да стартирате нова клетка в същия ред, обадете се отново `DocumentBuilder->InsertCell`. Използвайте свойството `DocumentBuilder.CellFormat`, за да зададете форматиране на клетки. Връща `CellFormat` обект, който представлява цялото форматиране за клетка от таблица.

### Край на ред

Извикайте `DocumentBuilder.EndRow`, За да завършите текущия ред. Ако извикате `DocumentBuilder->InsertCell` веднага след това, таблицата продължава на нов ред.

Използвайте свойството `DocumentBuilder.RowFormat`, за да зададете форматиране на редове. Връща `RowFormat` обект, който представлява цялото форматиране за ред от таблица.

### Завършване на маса

Обадете се `DocumentBuilder.EndTable`, за да завършите текущата таблица. Този метод трябва да бъде извикан само веднъж, след като `DocumentBuilder->EndRow` е бил извикан. При извикване `DocumentBuilder.EndTable` премества курсора от текущата клетка в позиция непосредствено след таблицата. Следващият пример показва как да създадете форматирана таблица, която съдържа 2 реда и 2 колони.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Вмъкване на пауза

Ако искате изрично да стартирате нов ред, абзац, колона, секция или страница, обадете се `DocumentBuilder.InsertBreak`. Преминете към този метод вида на почивката, която трябва да вмъкнете, която е представена от `BreakType` изброяване. По-долу пример показва как да вмъкнете нови страници в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Вмъкване на изображение

DocumentBuilder осигурява няколко претоварвания на метода `DocumentBuilder->InsertImage`, който ви позволява да вмъкнете вградено или плаващо изображение. Ако изображението е EMF или WMF метафайл, то ще бъде вмъкнато в документа в метафилен формат. Всички останали изображения ще се съхраняват във формат PNG. `DocumentBuilder->InsertImage` методът може да използва изображения от различни източници:

- От файл или `URL` чрез подаване на низ параметър `DocumentBuilder->InsertImage`.
- От поток чрез преминаване на `Stream` параметър `DocumentBuilder->InsertImage`.
- От обект на изображение чрез подаване на параметър на изображението `DocumentBuilder->InsertImage`.
- От масив от байтове чрез преминаване на параметър на масив от байтове `DocumentBuilder.InsertImage`.За всеки от методите `DocumentBuilder->InsertImage` има допълнителни претоварвания, които ви позволяват да вмъкнете изображение със следните опции:
- Вграден или плаващ в определена позиция, например `DocumentBuilder->InsertImage`.
- Процентна скала или потребителски размер, например `DocumentBuilder.InsertImage`. Освен това методът `DocumentBuilder->InsertImage` връща `Shape` обект, който току-що е създаден и вмъкнат, за да можете допълнително да променяте свойствата на фигурата.

### Вмъкване на вградено изображение

Подайте единичен низ, представляващ файл, който съдържа изображението до `DocumentBuilder->InsertImage`, за да вмъкнете изображението в документа като вградена графика. По-долу пример показва как да вмъкнете вградено изображение в позицията на курсора в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Вмъкване на плаващо (абсолютно позиционирано) изображение

Този пример вмъква плаващо изображение от файл или `URL` в определена позиция и размер.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Вмъкване на отметка

За да вмъкнете отметка в документа, трябва да направите следното::

1. Извикайте `DocumentBuilder->StartBookmark` подавайки желаното име на отметката.
1. Въведете текста на отметката, като използвате DocumentBuilder методи.
1. Извикайте `DocumentBuilder.EndBookmark`, като му дадете същото име, което сте използвали с **DocumentBuilder->StartBookmark**.
1. Отметките могат да се припокриват и обхващат всеки диапазон. За да създадете валиден маркер, трябва да извикате `DocumentBuilder->StartBookmark` и `DocumentBuilder->EndBookmark` с едно и също име на отметка.

{{% alert color="primary" %}}

Лошо оформени отметки или отметки с дублирани имена ще бъдат игнорирани, когато документът се записва.

{{% /alert %}}

По-долу пример показва как да вмъкнете отметка в документ с помощта на конструктор на документи.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Вмъкване на поле `Form`

Полетата на формуляр са специален случай на Word полета, които позволяват "взаимодействие" с потребителя. Полетата на формуляра в Microsoft Word включват текстово поле, разгъващ се списък и checkbox.DocumentBuilder осигурява специални методи за вмъкване на всеки тип поле на формуляр в документа: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` и `DocumentBuilder.InsertComboBox`. Обърнете внимание, че ако зададете име за полето на формуляра, автоматично се създава отметка със същото име.

### Вмъкване на текстов вход

 `DocumentBuilder.InsertTextInput` за да вмъкнете текстово поле в документа. По-долу пример показва как да вмъкнете поле на формуляр за въвеждане на текст в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Вмъкване на квадратче за отметка

Извикайте `DocumentBuilder.InsertCheckBox`, за да вмъкнете checkbox в документа. По-долу пример показва как да вмъкнете поле на формуляр checkbox в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Вмъкване на разгъващ се Списък

Извикайте `DocumentBuilder.InsertComboBox`, за да вмъкнете разгъващ се списък в документа. По-долу пример показва как да вмъкнете разгъващ се поле на формуляр в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Вмъкване на локала на ниво поле

Клиентите могат да определят локала на ниво поле сега и могат да постигнат по-добър контрол. Локалните идентификатори могат да бъдат свързани с всяко поле в DocumentBuilder. Примерите по-долу илюстрират как да се възползвате от тази опция.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Вмъкване на хипервръзка

Използвайте `DocumentBuilder.InsertHyperlink`, за да вмъкнете хипервръзка в документа. Този метод приема три параметъра: текст на връзката, която ще се показва в документа, местоназначение на връзката (URL или име на отметка в документа) и булев параметър, който трябва да е верен, ако `URL` е име на отметка в документа.DocumentBuilder.InsertHyperlink вътрешни повиквания `DocumentBuilder.InsertField`.Методът винаги добавя апострофи в началото и края на URL. Обърнете внимание, че трябва да зададете форматиране на шрифта за текста на хипервръзката, като изрично използвате свойството `Font`. По-долу пример вмъква хипервръзка в документ с DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Вмъкване На Ole Обект

Ако искате Ole обект повикване `DocumentBuilder.InsertOleObject`. Към този метод се подава `ProgId` изрично с други параметри. По-долу пример показва как да вмъкнете Ole обект в документ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Задаване на име на файл и разширение при вмъкване на обект Ole

OLE пакетът е наследен и" недокументиран " начин за съхраняване на вграден обект, ако OLE манипулаторът е неизвестен. Ранните Windows версии като Windows 3.1, 95 и 98 имаха Packager.exe приложение, което можеше да се използва за вграждане на всякакъв вид данни в документа. Сега това приложение е изключено от Windows, но MS Word и други приложения все още го използват за вграждане на данни, ако OLE манипулаторът липсва или е неизвестен. OlePackage класът позволява достъп до OLE Package свойства. По-долу пример показва как да зададете име на файл, разширение и показвано име за OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Вмъкване HTML

Можете лесно да вмъкнете HTML низ, който съдържа HTML фрагмент или цял HTML документ в Word документ. Просто подайте този низ към метода `DocumentBuilder->InsertHtml`. Една от полезните реализации на метода е съхраняването на низ HTML в база данни и вмъкването му в документа по време на Mail Merge, за да се добави форматираното съдържание, вместо да се изгражда с помощта на различни методи на конструктора на документи. По-долу пример показва Вмъквания HTML в документ с DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Вмъкване на хоризонтално правило в документ

Бъдиlow code пример показва как да вмъкнете хоризонтална фигура на правило в документ, като използвате метод `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
