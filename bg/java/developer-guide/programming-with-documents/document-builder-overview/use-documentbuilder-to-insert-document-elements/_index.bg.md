---
title: Използване `DocumentBuilder` Вмъкване на елементи на документа
second_title: Aspose.Words вместо Java
articleTitle: Използване `DocumentBuilder` Вмъкване на елементи на документа
linktitle: Използване `DocumentBuilder` Вмъкване на елементи на документа
type: docs
description: "Вмъкване на елементи на документа с помощта на създателя на документа в Java."
weight: 10
url: /bg/java/use-documentbuilder-to-insert-document-elements/
---

На [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) се използва за промяна на документите. Тази статия обяснява и описва как да се изпълняват редица задачи.

## Вмъкване на низ от текст

Просто подайте низа на текста, който трябва да въведете в документа [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) метод. Форматирането на текст се определя от `Font` собственост. Този обект съдържа различни атрибути на шрифта (фонт име, размер на шрифта, цвят и така нататък). Някои важни атрибути на шрифта също са представени от [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) имоти, които ви позволяват да получите достъп до тях директно. Това са булеви свойства. [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), както и [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Имайте предвид, че символът, който сте задали, ще се прилага за целия текст, поставен от текущата позиция в документа нататък.

{{% /alert %}}

Следният пример с код Вмъква форматирания текст с помощта на DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Вмъкване на параграф

DocumentBuilder.writeln вмъква и низ от текст в документа, но в допълнение добавя и параграф за прекъсване. Текущото форматиране на шрифта също е посочено от DocumentBuilder. Вземи. Имотът на шрифта и форматирането на текущия параграф се определят от DocumentBuilder.getParagraphFormat

Следният пример за код показва как да се въведе параграф в документа.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Вмъкване на таблица

Основният алгоритъм за създаване на таблица, използвайки `DocumentBuilder` е просто:

1. Започнете таблицата с [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Вмъкване на клетка с помощта на [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Това автоматично започва нов ред. Ако е необходимо, използвайте [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) собственост за определяне на форматирането на клетки.
1. Вмъкване на съдържанието на клетките с помощта на `DocumentBuilder` методи.
1. Повторете стъпки 2 и 3, докато редът е завършен.
1. Обаждане [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) да прекратим текущия ред. Ако е необходимо, използвайте [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) собственост за определяне на форматирането на реда.
1. Повторете стъпки 2 - 5 докато масата е завършена.
1. Обаждане [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) да довърши сградата на масата. Подходящите методи за създаване на таблица DocumentBuilder са описани по-долу.

### Създаване на таблица

Наречете DocumentBuilder.start Масата е първата стъпка в изграждането на маса. Тя може да се нарича и в клетка, в този случай, тя започва гнездо маса. Следващият метод, по който можете да се обадите е DocumentBuilder.enterCell.

### Вмъкване на клетка

След като се обадите на DocumentBuilder. вмъкване Клетка, се създава нова клетка и всяко съдържание, което добавите, използвайки други методи на `DocumentBuilder` класа ще бъде добавен към текущата клетка. За да стартирате нова клетка в същия ред, се обадете DocumentBuilder. вмъкване Отново килия. Използвайте документ Builder.getCell Форматиране на свойство за определяне на форматирането на клетки. Връща се [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) обект, който представлява всички форматиране за таблица клетка.

### Край на ред

Call DocumentBuilder.end Ред за завършване на текущия ред. Ако се обадите на DocumentBuilder. вмъкване Веднага след това масата продължава на нов ред. Използвайте `DocumentBuilder.RowFormat` собственост за определяне на форматирането на реда. Връща се [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) обект, който представлява всички форматиране за таблица ред.

### Край на таблица

Call DocumentBuilder.end Маса за завършване на текущата маса. Този метод трябва да се нарича само веднъж след DocumentBuilder. Обадиха се на Енд Роу. Когато се обади, DocumentBuilder.end Масата премества курсора от текущата клетка на позиция точно след масата. Следният пример показва как да се изгради форматирана таблица, която съдържа 2 реда и 2 колони.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Вмъкване на пауза

Ако искате изрично да започнете нов ред, параграф, колона, раздел, или страница, обадете се DocumentBuilder. instockBreak. Преминете към този метод вида на пробива, който трябва да вмъкнете, представляван от `BreakType` Изброяване
Следният пример за код показва как да вмъкнете страница пробива в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Вмъкване на изображение

DocumentBuilder осигурява няколко претоварване на [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) метод, който ви позволява да поставите в линия или плаващо изображение. Ако изображението е мета файл на EMF или WMF, то ще бъде вписано в документа във формат мета файл. Всички останали изображения ще се съхраняват във формат PNG. Документът Builder.Въведете Методът на изображението може да използва изображения от различни източници:

- От файл или `URL` чрез преминаване на параметър на низ
- От поток преминава `Stream` параметър
- От обект на изображение чрез преминаване на параметър на изображение
- От байт масив чрез преминаване на байт масив параметър
- И други

За всеки от документния строител. вмъкване Методи на изображение, има допълнителни претоварване, което ви позволява да въведете изображение със следните опции:

- Inline или плаващи в определена позиция
- Процент мащаб или потребителски размер

Освен това документът Builder.Въведете Метод на изображението връща a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) обект, който току-що е създаден и поставен, така че можете да промените допълнително свойствата на формата.

### Вмъкване на вградено изображение

Подай един низ, представляващ файл, който съдържа изображението на DocumentBuilder. вмъкване Изображение, за да вмъкнете изображението в документа като вградена графика. Следният пример за код показва как да вмъкнете изображение в полето на курсора в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Вмъкване на плаващ (абсолютно позициониран) образ

Този пример вмъква плаващо изображение от файл или `URL` на определено място и размер.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Вмъкване на отметка

За да поставите отметка в документа, трябва да направите следното:

1. Обаждане [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) да му предадем желаното име на отметките.
1. Вмъкване на текст с отметки `DocumentBuilder` методи.
1. Обаждане [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) предаване на същото име, което сте използвали с DocumentBuilder.startBookmark.

Отметките могат да се припокриват и обхващат всеки обхват. За да създадете валидна отметки, трябва да се обадите и на двамата DocumentBuilder.startBookmark и DocumentBuilder.endBookmark със същото име.

Лошо оформени отметки или отметки с дублиращи се имена ще бъдат игнорирани, когато документът е записан.

Следният пример за код показва как да се въведе отметки в документ с помощта на документостроител.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Вмъкване на поле

Полета в Microsoft Word документите се състоят от код на полето и резултат на полето. Кодът на полето е като формула и резултатът от полето е стойността, която формулата произвежда. Кодът на полето може да съдържа и превключватели на полета, които са допълнителни инструкции за извършване на конкретно действие. Можете да превключвате между показване на кода на полето и резултатите от вашия документ в Microsoft Word използване на клавишния пряк път Alt+F9. Полеви кодове се появяват между къдрави скоби ( { } ).Използвайте [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) създаване на полета в документа. Трябва да посочите тип поле, код на полето и стойност на полето. Ако не сте сигурни за конкретния код синтаксис, създайте полето в Microsoft Word Първо превключи, за да видиш кода на полето
Следният пример с код вмъква сливащо се поле в документ, използвайки DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Вмъкване на `Form` Поле

Полета за форма са конкретен случай на Word полета, които позволяват "вмешателство" с потребителя. Формиране на полета в Microsoft Word включва текстова кутия, Combobox и чекова кутия. DocumentBuilder предоставя специални методи за вмъкване на всеки вид форма поле в документа: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), както и [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Имайте предвид, че ако посочите име за полето на формата, тогава отметките автоматично се създават със същото име.

### Вмъкване на текстов вход

ДокументBuilder.Въведете TextInput за въвеждане на текстова кутия в документа. Следният пример с код показва как да се вмъкне полето с текстов формуляр в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вмъкване на `CheckBox`

Обадете се на DocumentBuilder.Въведете Чекова кутия за поставяне на отметка в документа. Следният пример за код показва как да се въведе поле за форма на отметка в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вмъкване на Combo Box

Обадете се на DocumentBuilder.ВъведетеComboBox да поставите комбо кутия в документа. Следният пример за код показва как да вмъкнете полето на комбо полето в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Вмъкване на локализация на ниво поле

Клиентите могат да определят Локализиране на полево ниво сега и може да постигне по-добър контрол. Локалиране Ids могат да бъдат свързани с всяко поле вътре в DocumentBuilder. Примерите по-долу илюстрират как да се възползваме от тази опция.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Вмъкване на HTML

Можете лесно да въведете HTML низ, който съдържа HTML фрагмент или цял HTML документ в документа на Word. Просто предайте този низ на документния строител. вмъкване Html метод. Едно от полезните приложения на метода е съхраняване на HTML низ в база данни и въвеждане му в документа по време на mail merge да се добави форматираното съдържание, вместо да се строи с помощта на различни методи на създателя на документи. Следният пример с код показва HTML в документ, използвайки DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Вмъкване на хипервръзка

Използвайте DocumentBuilder.Въведете Hyperlink, за да въведете хипервръзка в документа. Този метод приема три параметъра: текст на връзката, която трябва да бъде показана в документа, да се свърже дестинацията (URL или име на отметките в документа), и булев параметър, който трябва да бъде true ако `URL` е име на отметки в документа. Документ Builder.Въведете Hyperlink вътрешно призовава DocumentBuilder.ВъведетеField. Методът винаги добавя апострофи в началото и края на URL. Имайте предвид, че трябва да зададете форматиране на шрифта за текста на хиперлинк дисплея изрично с помощта на `Font` собственост. Следният пример за код вмъква хипервръзка в документ, използвайки DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Вмъкване на Съдържание

Можете да поставите `TOC` (таблица със съдържание) полето в документа на текущата позиция, като се нарича [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) метод. Методът DocumentBuilder.Въведете TableOfContents само ще вмъкнете `TOC` полето в документа. За да се изгради съдържанието и да ги покаже според номерата на страниците, и двете **Document.UpdateFields**метод трябва да се нарече след поставянето на полето. Следният пример за код показва как да се вмъкне полето за съдържание в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Вмъкване на обект

Ако искате Оле обект повикване [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Задаване на името и разширението на файла при вмъкване на обект

Пакетът OLE е наследство и "недокументиран" начин за съхранение на вградени обекти, ако е неизвестен. Рано Windows версии като Windows 3.1, 95 и 98 имат Packer. exe приложение, което може да се използва за включване на всеки вид данни в документа. Сега, това заявление е изключено от Windows Но MS Word и други приложения все още го използват, за да вграждат данни, ако ръководителят на OLE липсва или не е известен. Класът OlePackage позволява достъп до OLE Package свойства. Следният пример с код показва как да зададете името на файла, разширението и името на дисплея за OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Get Access to OLE Object Raw Data

Следният пример за код показва как да получите OLE Обект на необработени данни `OleFormat.GetRawData`() метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Вмъкване на хоризонтално Член в документ

Следният пример за код показва как да се въведе хоризонтална форма на правилото в документ, като се използва `DocumentBuilder.InsertHorizontalRule` метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Работа с форми

### Вмъкване на ред и свободно плаваща форма

Можете да поставите в линия форма с определен тип и размер и свободно плаваща форма с определено положение, размер и текстова обвивка в документ, като използвате `DocumentBuilder.InsertShape` метод. На `DocumentBuilder.InsertShape` метод позволява да се въведе DML форма в модела на документа. Документът трябва да бъде записан във формат, който поддържа DML форми, в противен случай такива възли ще бъдат преобразувани във VML форма, докато документ спестяване. Следният пример за код показва как да вмъкнете тези видове форми в документа.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Създаване на наклонен ъгъл

Можете да създадете ъглов правоъгълник с клъцване Aspose.Words. Типовете форма са SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded Една прерязана, SingleCornerRounded, TopCornersRounded, и DiagonalCornersRounded. DML формата е създадена с помощта на `DocumentBuilder.InsertShape` метод с тези видове форма. Тези типове не могат да бъдат използвани за създаване на VML форми. Опит за създаване на форма чрез използване на обществения конструктор на класа "Shape" повдига изключението "NotSupportedException." Следният пример за код показва как да вмъкнете тези видове форми в документа.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Импортиране на форми с Math XML като форма в DOM

Можеш да използваш `LoadOptions.ConvertShapeToOfficeMath` Имотът да конвертирате форми с уравнениеXML да Office Математически обекти. По подразбиране стойността на този имот съответства на MS Word поведение, т.е. форми с уравнение XML не се конвертират в Office математически обекти.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
