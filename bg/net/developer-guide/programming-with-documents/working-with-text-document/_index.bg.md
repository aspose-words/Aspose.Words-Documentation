---
title: Работа с текстов документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с текстов документ
linktitle: Работа с текстов документ
description: "Разширена обработка на TXT документ, списъци, BiDi, заглавни части/футър, използване C#."
type: docs
weight: 430
url: /bg/net/working-with-text-document/
---

В тази статия ще научим какви опции могат да бъдат полезни за работа с текстов документ чрез Aspose.Words. Моля, имайте предвид, че това не е пълен списък с налични опции, а само пример за работа с някои от тях.

## Добавяне на двуредов Маркировки

Можеш да използваш [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) собственост, за да се уточни дали да се добавят двупосочни знаци преди всяко Bidi да се стартира при износ в обикновен текстов формат. Aspose.Words вмъква Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) преди всяко двупосочно движение в текста. Тази опция съответства на опцията "Добави двупосочни марки" в диалог за преобразуване на файлове в MS Word, когато експортираш в обикновен текстов формат. Обърнете внимание, че тя се появява в диалога само ако някой от арабските или еврейските езици за редактиране е добавен в MS Word.

Следният пример с код показва как да използвате **AddBidiMarks** собственост. По подразбиране стойността на този имот е *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Разпознаване на елементи от списъка при зареждане TXT

Aspose.Words може да импортира елемент от списъка на текстов файл като номера на списък или обикновен текст в неговия документ обект модел. На [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) Имотът позволява да се посочи как се разпознават номерирани елементи от списъка при внос на документ от обикновен текстов формат:

* Ако е зададена тази опция *true*, whitespaces се използват и като разделители на номера: алгоритъм за разпознаване на списък за номериране на арабски стил (1., 1.1.2.) използва както бели пространства, така и точки (".") символи.

* Ако е зададена тази опция *false*, списък на алгоритмите за признаване открива списък параграфи, когато номерата завършват с точка, дясна скоба или символи на куршум (като например "•," "*," "-" или "o").

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Дръжки Водещи и накланящи помещения по време на товарене TXT

Можете да контролирате начина на работа с водещи и следящи пространства по време на зареждане на TXT файл. Водещите пространства могат да бъдат подстригани, консервирани или преобразувани в вдлъбнатини и трасиращи пространства могат да бъдат подрязани или запазени.

Следният пример за код показва как да отрежете водещите и проследяващи пространства, докато внасяте TXT файл:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Откриване на документ Посока на текста

Aspose.Words осигурява [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) собственост в [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) клас за откриване на посоката на текста (RTL/LTR) в документа. Това свойство определя или получава документ текстови указания, предвидени в [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) Изброяване. По подразбиране стойността е оставена на *right*.

Следният пример за код показва как да се открие текстовата посока на документа при вноса на TXT файл:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Export Header and Footer in Output TXT

Ако искате да експортирате заглавната част и подножието в изходния TXT документ, можете да използвате [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) собственост. Този имот определя начина, по който заглавните части и стъпалата се изнасят в обикновения текстов формат.

Следният пример за код показва как да се експортират заглавни части и подножици в обикновен текстов формат:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Идентифициране на списъка за експортиране в изход TXT

Aspose.Words въвеждане на [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) клас, който позволява да се посочи как се открояват нивата на списъка при износ в обикновен текстов формат. Докато работите с [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), на [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) Имотът се предоставя, за да се определи символът, който трябва да се използва за нивата на списъка с вдлъбнатини и да се брои, като се посочи колко знака да се използват като вдлъбнатина на ниво списък.

Стойността по подразбиране за символното свойство е '\ 0', което показва, че няма вдлъбнатина. За свойството на преброяването стойността по подразбиране е 0, което означава, че няма вдлъбнатина.

### Използване на знака на подпрозореца

Следният пример за код показва как да се експортират нива на списъка с помощта на таб символи:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Използване на космически символ

Следният пример за код показва как да се експортират нива на списъка с използване на космически знаци:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Използване на идентификация по подразбиране

Следният пример за код показва как да се експортират нива на списъка, като се използва вдлъбнатина по подразбиране:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
