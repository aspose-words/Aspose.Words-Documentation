---
title: Задаване на настройките на подредбата C#
second_title: Aspose.Words вместо .NET
articleTitle: Задаване на настройките на подредбата
linktitle: Задаване на настройките на подредбата
description: "Посочване на подредбата Опции за различни подредби на документи, използвайки C#."
type: docs
weight: 10
url: /bg/net/specify-layout-options/
---

Aspose.Words ви позволява да създавате изходни документи с различни подредби, в зависимост от параметрите, посочени в свойствата на [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Клас. Някои от тези свойства приличат на някои от Microsoft Word опции за потребителски интерфейс менюто ще бъдат описани в тази статия.

За пълен списък на параметри като [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) за изчисляване на номерата на страниците в непрекъснат раздел, който рестартира номерирането на страниците, или [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) да игнорирате опцията за съвместимост "Използвайте метриците на принтера, за да изложите документа," вж. [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Класова страница.

## Форматиране на знаците

Aspose.Words позволява да се управляват форматиращи марки, като се използват следните свойства:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/). `Boolean` стойност, която посочва дали скритият текст е преведен.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/). `Boolean` стойност, която посочва дали буквите на параграфа се предават.

Страницата, показана в примера по-долу, съдържа три абзаца. Вторият е скрит. Потребителят може да промени **ShowHiddenText** опция за показване на този скрит текст на страницата. Освен това всеки параграф има точка в края. Буквата обикновено не се вижда освен ако **ShowParagraphMarks** Имотът е готов да го направи.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, тези параметри се задават с помощта на диалоговия прозорец "File → Options → Display," както следва:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Коментари и ревизия

С Aspose.Words, Можете да направите коментари на документи, които ще изглеждат същите като в Microsoft Word. За да се уточни дали са представени коментари, използвайте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) собственост.

В Microsoft Word, този параметър се задава с помощта на диалоговия прозорец "Опции за смяна на багажника," както е показано по-долу:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Също така, Aspose.Words ви позволява да показвате ревизии в документ. Използвайте [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) собственост на **LayoutOptions** клас за определяне дали са показани ревизиите на документите. За контрол на външния им вид (ревизия подчертаване цвят, ревизия бар цвят и т.н.), използвайте [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) Клас.

Можете също така да имате ревизии, показани като коментари към съдържанието. За тази цел използвайте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) собственост и [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) стойност.

Следният пример с код показва как да персонализирате ревизиите:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Изображението по-долу показва как Aspose.Words прави коментари и ревизиите за изтриване:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Текстов Shaper за Advanced Typography Rendering

На [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) имотът ви позволява да настроите функционалността на текстовото оформяне, както и `OpenType` функции подкрепа.

Използване на текст за обработка на документи в следните основни случаи:

- Документът използва Кърнинг, Нумерален Шепинг, Нумерални Форми или Лигатури.
- Документ използва сложни скриптове, като арабски, кхмерски, тайландски и др.

{{% alert color="primary" %}}

Образуването на текст ще бъде активирано само при експортиране на документ в PDF или XPS.

{{% /alert %}}
