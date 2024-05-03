---
title: Работа с текстов документ в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с текстов документ
linktitle: Работа с текстов документ
description: "Разширена обработка на TXT документ, списъци, BiDi, заглавни части/футър, използване Java."
type: docs
weight: 430
url: /bg/java/working-with-text-document/
---

В тази статия ще научим какви опции могат да бъдат полезни за работа с текстов документ чрез Aspose.Words. Моля, имайте предвид, че това не е пълен списък на наличните опции, а само пример за работа с някои от тях.

## Добавяне на бидиректория Маркировки

Можеш да използваш [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) собственост, за да се уточни дали да се добавят двупосочни маркировки преди всяко Bidi да се стартира при износ в обикновен текстов формат. Aspose.Words вмъква Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) преди всяко двупосочно движение в текст. Тази опция съответства на опцията "Добави двупосочни марки" в диалоговия прозорец за преобразуване на файловете на MS Word, когато експортираш в обикновен текстов формат. Обърнете внимание, че то се появява в диалоговия прозорец само ако някой от арабските или еврейските редактиращи езици е добавен в MS Word.

Следният пример с код показва как да използвате `TxtSaveOptions.AddBidiMarks` собственост. По подразбиране стойността на този имот е *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Разпознаване на елементи от списъка при зареждане TXT

Aspose.Words може да внася елемент от списъка на текстов файл като номера на списък или обикновен текст в своя документ обект модел. На [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) Имотът позволява да се уточни как се разпознават номерираните елементи от списъка, когато документът се внася от обикновен текстов формат:

* Ако е зададена тази опция *true*, whitespaces се използват и като разделители на номера: алгоритъм за разпознаване на списък за номериране на арабски стил (1., 1.1.2.) използва както бели пространства, така и точки (".") символи.
* Ако е зададена тази опция *false*, алгоритъмът за признаване на списъци открива списък параграфи, когато номерата на списъка завършват или с точка, дясна скоба или символи на куршум (като например "•," "*," "-" или "o").

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Дръжки Водещи и trailing пространства по време на зареждане TXT

Можете да контролирате начина на работа с водещи и следящи пространства по време на зареждане на TXT файлове. Водещите пространства могат да бъдат подрязани, консервирани или преобразувани в прорези и пътеки, които могат да бъдат подрязани или запазени.

Примерът с кода, даден по-долу, показва как да се отреже водещите и тракийските пространства, докато се внася файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Откриване на документ Посока на текста

Aspose.Words осигурява [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) Име [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) клас за откриване на посоката на текста (RTL/LTR) в документа. Това свойство определя или получава документ текстови указания, предоставени в [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) Изброяване. По подразбиране стойността е отляво надясно.

Следният пример за код показва как да се открие посоката на текста на документа при вноса на файла TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Експортиране на заглавната част на TXT файл

Ако искате да експортирате заглавната част и стъпалото в изходния TXT документ, можете да използвате [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) собственост. Този имот определя начина, по който заглавните части и стъпалата се изнасят в обикновения текстов формат.

Следният пример за код показва как да се експортират заглавни части и подножици в обикновен текстов формат:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Идентифициране на списъка за експортиране в изход TXT

Aspose.Words въведени [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) клас, който позволява да се посочи как се открояват нивата на списъка, докато се изнася в обикновен текстов формат. Докато работите с [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), на [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) собственост се предоставя, за да се определи символът, който трябва да се използва за нива на списъка с вдлъбнатини и да се брои, като се уточни колко знака да се използват като вдлъбнатина на ниво списък.

Стойността по подразбиране за свойство на символ е '\ 0', което показва, че няма вдлъбнатина. За свойството на преброяването стойността по подразбиране е 0, което означава, че няма вдлъбнатина.

### Използване на знака на подпрозореца

Следният пример за код показва как да се експортират нива на списъка чрез таб символи:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Използване на космически символ

Следният пример за код показва как да се експортират нива на списъка с използване на космически знаци:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Използване на идентификация по подразбиране

Следният пример за код показва как да се експортират нива на списъка, като се използва вдлъбнатина по подразбиране:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
