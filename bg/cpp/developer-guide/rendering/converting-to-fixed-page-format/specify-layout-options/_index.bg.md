---
title: Посочете опциите за оформление в C++
second_title: Aspose.Words за C++
articleTitle: Посочете Опциите За Оформление
linktitle: Посочете Опциите За Оформление
description: "Задайте Опции за оформление за различни оформления на документи."
type: docs
weight: 20
url: /bg/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ви позволява да създавате изходни документи с различни оформления, в зависимост от параметрите, посочени в свойството [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) на **Document**. Това свойство прилича на някои от опциите на менюто Microsoft Word потребителски интерфейс, описани в тази статия.

За пълен списък с параметри, като [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/), за да изчислите номерата на страниците в непрекъсната секция, която рестартира номерирането на страниците, или [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/), За да игнорирате опцията за съвместимост "използване на метриките на принтера за оформяне на документа", вижте страницата на класа [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Маркировки За Форматиране

Aspose.Words позволява да управлявате маркировките за форматиране, като използвате следните свойства:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - а `Boolean` стойност, която указва дали скритият текст се рендира.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - а `Boolean` стойност, която указва дали знаците за маркиране на абзац са рендирани.

Страницата, изобразена в примера по-долу, съдържа три параграфа. Вторият е скрит. Потребителят може да промени опцията **ShowHiddenText**, За да покаже този скрит текст на страницата. Също така, всеки абзац има знак за абзац в края. Маркировката за абзац обикновено не се вижда, освен ако свойството **ShowParagraphMarks** не е настроено да го прави.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

В Microsoft Word тези параметри се задават с помощта на диалоговия прозорец "Опции за файл → → дисплей", както следва:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Коментари и ревизии

С Aspose.Words можете да направите коментари в документа, които ще изглеждат по същия начин като в Microsoft Word. За да укажете дали коментарите се рендират, използвайте свойството [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

В Microsoft Word този параметър се задава с помощта на диалоговия прозорец "Опции за проследяване на промените", както е показано по-долу:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Също така Aspose.Words ви позволява да показвате ревизии в документ. Използвайте свойството [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) на класа **LayoutOptions**, за да определите дали да се показват ревизиите на документа. За да контролирате външния им вид (цвят на подчертаване на ревизията, цвят на ревизионната лента и т.н.), използвайте [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) клас.

Можете също така да имате ревизии, показвани като коментари към съдържанието. За целта използвайте свойствата [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) и [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/) стойност.

Следващият пример за код показва как да персонализирате ревизиите показване:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Изображението по-долу показва как Aspose.Words прави коментари и изтрива ревизии:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Текст оформител за разширено Типография рендиране

Свойството [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) ви позволява да зададете функционалността за оформяне на текст, както и поддръжката на функциите `OpenType`.

Използване на оформяне на текст за обработка на документи в следните основни случаи:

- Документ използва кърнинг, числено оформяне, числени формуляри или лигатури.
- Документът използва сложни скриптове, като арабски, кхмерски, тайландски и др.

{{% alert color="primary" %}}

Оформянето на текст ще бъде разрешено само при експортиране на документ до PDF или XPS.

{{% /alert %}}
