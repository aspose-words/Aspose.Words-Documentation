---
title: Задаване на настройките на подредбата Java
second_title: Aspose.Words вместо Java
articleTitle: Посочване на настройките на подредбата
linktitle: Посочване на настройките на подредбата
description: "Създаване на изходни документи с различни подредби, в зависимост от параметрите, посочени в документа, като се използват Java."
type: docs
weight: 10
url: /bg/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволява създаването на изходни документи с различни подредби, в зависимост от параметрите, посочени в [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) собственост на **Document**. Този имот прилича на някои от Microsoft Word опции на потребителски интерфейс меню, описани в тази статия.

За пълен списък на параметри като [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) за изчисляване на номерата на страниците в непрекъснат раздел, който рестартира номерацията на страниците, или [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) за игнориране на опцията "Използвайте метриците на принтера, за да изложите документа" за съвместимост, вж. [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Класова страница.

## Форматиране на знаците

Aspose.Words позволява да се управляват форматиращи знаци, като се използват следните свойства:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText). `Boolean` стойност, която посочва дали скритият текст е преведен.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks). `Boolean` стойност, в която се посочва дали буквите на параграфа се предават.

Страницата, показана в примера по-долу, съдържа три абзаца. Вторият е скрит. Потребителят може да промени **ShowHiddenText** опция за показване на този скрит текст на страницата. Освен това всеки параграф има точка в края. Буквата обикновено не се вижда освен ако **ShowParagraphMarks** Имотът е готов да го направи.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, Тези параметри се задават с помощта на диалоговия прозорец "File → Options → Display," както следва:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Коментари и ревизия

С Aspose.Words, Можете да направите коментари на документи, които ще изглеждат същите като в Microsoft Word. За да се уточни дали са представени коментари, използвайте [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) собственост.

В Microsoft Word, този параметър е зададен с помощта на диалоговия прозорец "Опции за смяна на багажника," както е показано по-долу:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Също така, Aspose.Words ви позволява да показвате ревизии в документ. Използвайте [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) собственост на **LayoutOptions** клас за определяне дали са показани ревизиите на документите. За да контролирате външния си вид (ревизия подчертаване цвят, ревизия бар цвят и т.н.), използвайте [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) Клас.

Можете също така да имате ревизии, показани като коментари към съдържанието. За тази цел използвайте [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) собственост и [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) стойност.

Следният пример за код показва как да персонализирате ревизии дисплей:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Изображението по-долу показва как Aspose.Words прави коментари и ревизиите за изтриване:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Текстов Shaper за Advanced Typography Rendering

На [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) имот ви позволява да настроите функционалността на текстовото оформяне, както и `OpenType` функции поддръжка.

Използване на текст за обработка на документи в следните основни случаи:

- Документът използва Кернинг, Нумерален Шапки, Нумерални Форми или Лигатури.
- Документ използва Complex Scripts, като например Arabic, Khmer, Thai и др.

{{% alert color="primary" %}}

Образуването на текст ще бъде активирано само при експортиране на документ в PDF или XPS.

{{% /alert %}}
