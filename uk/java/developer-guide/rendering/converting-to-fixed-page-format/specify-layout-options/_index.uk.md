---
title: Вказати параметри розміщення в Java
second_title: Aspose.Words для Java
articleTitle: Вказати параметри макета
linktitle: Вказати параметри макета
description: "Створіть вихідні документи з різними макетами, залежно від параметрів, зазначених у документі, використовуючи Javaй"
type: docs
weight: 10
url: /uk/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє створювати вихідні документи з різними макетами, в залежності від параметрів, зазначених в [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) майно майна **Document**й Ця властивість нагадує деякі з Microsoft Word Параметри інтерфейсу користувача описані в цій статті.

Для повного переліку параметрів, таких як [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) розрахувати номери сторінок в безперервному розділі, що перезапускає номер сторінки, або [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ігнорувати параметр сумісності "Використовувати параметри принтера для виведення документа" [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Сторінка класу.

## Форматування знаків

Aspose.Words дозволяє керувати позначками форматування за допомогою наступних властивостей:

- до [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – а `Boolean` значення, яке визначає, чи є прихований текст.
- до [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – а `Boolean` значення, яке визначає, чи відображаються символи позначки абзаців.

Сторінка зображена в прикладі нижче містить три абзаци. Друга прихована. Користувач може змінити **ShowHiddenText** можливість відображення цього прихованого тексту на сторінці. Також кожен пункт має позначку абзацу в кінці. Пункт знак зазвичай не видно, якщо абзац **ShowParagraphMarks** майно встановлюється для його надання.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

У Microsoft Word, ці параметри встановлюються за допомогою діалогового вікна "File → Options → Display":

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Коментарі та версії

З Aspose.Words, Ви можете надати коментарі документів, які будуть виглядати так само, як і в Microsoft Wordй Щоб вказати, чи відображаються коментарі, використовуйте [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) майно.

У Microsoft Word, Цей параметр встановлюється за допомогою діалогового вікна "Трек змінює параметри", як показано нижче:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Також, Aspose.Words дозволяє відображати версії в документі. Використання [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) майно майна **LayoutOptions** Визначте, чи відображаються документи. Для контролю зовнішнього вигляду (ревізійне висвітлення кольору, колір верстки тощо), використання [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) клас.

Ви також можете переглянути дані як коментарі до змісту. Для цього використовуйте [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) майно та [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) значення.

Приклад коду показує, як налаштувати відображення записів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Зображення нижче показує, як Aspose.Words надає коментарі та дані Видалити:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Текстовий шейпер для розширеної томографії

Про нас [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) об'єкт дозволяє встановити функціональність текстового формування, а також можливість встановлення функцій текстового формування `OpenType` підтримка функцій.

Використовуйте текстове формування для обробки документів в наступних основних випадках:

- У документі використовуються Кернінг, нумеральні форми, цифри, або лігатури.
- Документ використовує складні сценарії, такі як арабська, хмер, Тайська та ін.

{{% alert color="primary" %}}

Текстове формування ввімкнено лише при експорті документа в PDF або XPSй

{{% /alert %}}
