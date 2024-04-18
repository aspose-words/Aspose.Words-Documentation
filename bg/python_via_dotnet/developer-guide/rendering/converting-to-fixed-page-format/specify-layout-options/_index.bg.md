---
title: Задаване на настройките на подредбата Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Задаване на настройките на подредбата
linktitle: Задаване на настройките на подредбата
description: "Посочване на подредбата Опции за различни подредби на документи, използвайки Python."
type: docs
weight: 10
url: /bg/python-net/specify-layout-options/
---

Aspose.Words ви позволява да създавате изходни документи с различни подредби, в зависимост от параметрите, посочени в свойствата на [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Клас. Някои от тези свойства приличат на някои от Microsoft Word опции за потребителски интерфейс менюто ще бъдат описани в тази статия.

За пълен списък на параметри като [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) за изчисляване на номерата на страниците в непрекъснат раздел, който рестартира номерирането на страниците, или [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) да игнорирате опцията за съвместимост "Използвайте метриците на принтера, за да изложите документа," вж. [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Класова страница.

## Форматиране на знаците

Aspose.Words позволява да се управляват форматиращи марки, като се използват следните свойства:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/). `Boolean` стойност, която посочва дали скритият текст е преведен.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/). `Boolean` стойност, която посочва дали буквите на параграфа се предават.

Страницата, показана в примера по-долу, съдържа три абзаца. Вторият е скрит. Потребителят може да промени [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) опция за показване на този скрит текст на страницата. Освен това всеки параграф има точка в края. Буквата обикновено не се вижда освен ако [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) Имотът е готов да го направи.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, тези параметри се задават с помощта на диалоговия прозорец "File → Options → Display," както следва:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Коментари и ревизия

С Aspose.Words, Можете да направите коментари на документи, които ще изглеждат същите като в Microsoft Word. За да се уточни дали са представени коментари, използвайте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) собственост.

В Microsoft Word, този параметър се задава с помощта на диалоговия прозорец "Опции за смяна на багажника," както е показано по-долу:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Също така, Aspose.Words ви позволява да показвате ревизии в документ. Използвайте [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) собственост на [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) клас за определяне дали са показани ревизиите на документите. За контрол на външния им вид (ревизия подчертаване цвят, ревизия бар цвят и т.н.), използвайте [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) Клас.

Можете също така да имате ревизии, показани като коментари към съдържанието. За тази цел използвайте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) собственост и [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) стойност.

Следният пример с код показва как да персонализирате ревизиите:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Изображението по-долу показва как Aspose.Words прави коментари и ревизиите за изтриване:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>