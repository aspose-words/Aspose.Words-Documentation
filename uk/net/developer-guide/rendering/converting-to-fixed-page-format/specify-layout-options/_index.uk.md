---
title: Вказати параметри розміщення в C#
second_title: Aspose.Words для .NET
articleTitle: Вказати параметри макета
linktitle: Вказати параметри макета
description: "Вказати Layout Варіанти різних макетів документів за допомогою C#й"
type: docs
weight: 10
url: /uk/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words дозволяє створювати вихідні документи з різними макетами, в залежності від параметрів, зазначених в властивостях [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) клас. Деякі з цих властивостей нагадують деякі з Microsoft Word Параметри меню інтерфейсу користувача – вони будуть описані в цій статті.

Для повного переліку параметрів, таких як [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) розрахувати номери сторінок в безперервному розділі, що перезапускає номер сторінки, або [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) ігнорувати параметр сумісності "Використовувати метрики принтера, щоб викласти документ" [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Сторінка класу.

## Форматування знаків

Aspose.Words дозволяє керувати позначками форматування за допомогою наступних властивостей:

- до [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – а `Boolean` значення, яке визначає, чи є прихований текст.
- до [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – а `Boolean` значення, яке визначає, чи відображаються символи позначки абзаців.

Сторінка зображена в прикладі нижче містить три абзаци. Друга прихована. Користувач може змінити **ShowHiddenText** можливість відображення цього прихованого тексту на сторінці. Також кожен пункт має позначку абзацу в кінці. Пункт знак зазвичай не видно, якщо абзац **ShowParagraphMarks** майно встановлюється для його надання.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

У Microsoft Word, ці параметри встановлюються за допомогою діалогового вікна "File → Options → Display":

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Коментарі та версії

З Aspose.Words, Ви можете надати коментарі документів, які будуть виглядати так само, як і в Microsoft Wordй Щоб вказати, чи відображаються коментарі, використовуйте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) майно.

У Microsoft Word, Цей параметр встановлюється за допомогою діалогового вікна "Трек змінює параметри", як показано нижче:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Також, Aspose.Words дозволяє відображати версії в документі. Використання [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) майно майна **LayoutOptions** Визначте, чи відображаються документи. Для управління зовнішнім виглядом (видалення висвітлення кольору, колір верстки тощо), використання [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) клас.

Ви також можете переглянути дані як коментарі до змісту. Для цього використовуйте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) майно та [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) значення.

Приклад наступного коду показує, як налаштувати відображення записів:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Зображення нижче показує, як Aspose.Words надає коментарі та дані Видалити:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Текстовий шейпер для розширеної томографії

Про нас [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) об'єкт дозволяє встановити функціональність текстового формування, а також можливість налаштування функціоналу текстового формування `OpenType` підтримка функцій.

Використовуйте текстове формування для обробки документів в наступних основних випадках:

- У документі використовуються Кернінг, нумеральні форми, нумеральні форми або лігатури.
- Документ використовує складні сценарії, такі як Арабська, хмер, Тайська та ін.

{{% alert color="primary" %}}

Текстове формування ввімкнено лише при експорті документа в PDF або XPSй

{{% /alert %}}
