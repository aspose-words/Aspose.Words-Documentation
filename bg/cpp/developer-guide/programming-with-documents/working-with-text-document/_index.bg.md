﻿---
title: Работа с текстов документ в C++
second_title: Aspose.Words за C++
articleTitle: Работа с текстов документ
linktitle: Работа с текстов документ
description: "Разширено TXT Обработка на документи, списъци, BiDi, горни / долни колонтитули, използвайки C++."
type: docs
weight: 430
url: /bg/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

В тази статия ще научим какви опции могат да бъдат полезни за работа с текстов документ чрез Aspose.Words. Моля, имайте предвид, че това не е пълен списък на наличните опции, а само пример за работа с някои от тях.

## Добавяне На Двупосочни Маркировки

Можете да използвате свойството [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/), За да укажете дали да добавите двупосочни знаци преди всяко изпълнение BiDi при експортиране в обикновен текстов формат. Aspose.Words вмъква Уникод 'RIGHT-TO-LEFT MARK' (ф + 200 Ф) преди всяко двупосочно изпълнение в текста. Тази опция съответства на опцията" Добавяне на двупосочни знаци " в диалог MS Word Конвертиране на файлове, Когато експортирате във формат на обикновен текст. Имайте предвид, че тя се появява в диалог само ако някой от арабски или иврит редактиране езици са добавени в MS Word.

Следният пример за код показва как да използвате **AddBidiMarks** свойство. Стойността по подразбиране на това свойство е *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Разпознаване На Елементи От Списъка По Време На Зареждане TXT

Aspose.Words може да импортира елемент от списък на текстов файл като номера на списък или обикновен текст в неговия обектен модел на документ. Свойство [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) позволява да се определи как номерирани елементи от списък се разпознават, когато документ се импортира от обикновен текстов формат:

* Ако тази опция е зададена на *true*, белите пространства също се използват като разделители на номера на списък: алгоритъм за разпознаване на списък за номериране на арабски стил (1., 1.1.2.) използва както бели интервали, така и точкови (".") символи.
* Ако тази опция е зададена на *false*, алгоритъмът за разпознаване на списъци открива параграфи от списъка, когато номерата на списъка завършват със символи точка, дясна скоба или водещи символи (като например "•", "*", "-" ше "o").

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Как да се справяме с водещите и задните пространства по време на товарене TXT

Можете да контролирате начина на обработка на водещи и задни пространства по време на зареждане TXT файл. Водещите пространства могат да бъдат подрязани, запазени или преобразувани в отстъп, а задните пространства могат да бъдат подрязани или запазени.

Следващият пример за код показва как да отрежете водещите и крайните интервали при импортиране на файл TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Експортиране на Горен и Долен колонтитул в Изход TXT

Ако искате да експортирате горен и долен колонтитул в изходния документ TXT, можете да използвате свойството [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Това свойство задава начина, по който горни и долни колонтитули се експортират в обикновен текстов формат.

Следващият пример за код показва как да експортирате горни и долни колонтитули във формат на обикновен текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Отстъп на експортния списък в Изход TXT

Aspose.Words въведен е клас [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/), който позволява да се определи как нивата на списъка са с отстъп при експортиране в обикновен текстов формат. Докато работите с [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), свойството [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) се предоставя, за да укажете знака, който да се използва за отстъп на списъчни нива, и броя, като посочите колко знака да се използват като отстъп на едно списъчно ниво.

Стойността по подразбиране за свойството знак е '\0', което показва, че няма отстъп. За свойство брой стойността по подразбиране е 0, което означава, че няма отстъп.

### Използване На Знак За Подпрозорец

Следващият пример за код показва как да експортирате нива на списък с помощта на знаци за раздели:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Използване На Знака За Интервал

Следващият пример за код показва как да експортирате нива на списък с помощта на знаци за интервал:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Използване На Отстъп По Подразбиране

Следващият пример за код показва как да експортирате нива на списък с помощта на отстъп по подразбиране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
