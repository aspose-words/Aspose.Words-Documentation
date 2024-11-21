---
title: Вказати параметри розміщення в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вказати параметри макета
linktitle: Вказати параметри макета
description: "Вказати Layout Варіанти різних макетів документів за допомогою Pythonй"
type: docs
weight: 10
url: /uk/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє створювати вихідні документи з різними макетами, в залежності від параметрів, зазначених в властивостях [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) клас. Деякі з цих властивостей нагадують деякі з Microsoft Word Параметри меню інтерфейсу користувача – вони будуть описані в цій статті.

Для повного переліку параметрів, таких як [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) розрахувати номери сторінок в безперервному розділі, що перезапускає номер сторінки, або [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) ігнорувати параметр сумісності "Використовувати метрики принтера, щоб викласти документ" [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Сторінка класу.

## Форматування знаків

Aspose.Words дозволяє керувати позначками форматування за допомогою наступних властивостей:

- до [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – а `Boolean` значення, яке визначає, чи є прихований текст.
- до [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – а `Boolean` значення, яке визначає, чи відображаються символи позначки абзаців.

Сторінка зображена в прикладі нижче містить три абзаци. Друга прихована. Користувач може змінити [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) можливість відображення цього прихованого тексту на сторінці. Також кожен пункт має позначку абзацу в кінці. Пункт знак зазвичай не видно, якщо абзац [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) майно встановлюється для його надання.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

У Microsoft Word, ці параметри встановлюються за допомогою діалогового вікна "File → Options → Display":

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Коментарі та версії

З Aspose.Words, Ви можете надати коментарі документів, які будуть виглядати так само, як і в Microsoft Wordй Щоб вказати, чи відображаються коментарі, використовуйте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) майно.

У Microsoft Word, Цей параметр встановлюється за допомогою діалогового вікна "Трек змінює параметри", як показано нижче:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Також, Aspose.Words дозволяє відображати версії в документі. Використання [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) майно майна [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Визначте, чи відображаються документи. Для управління зовнішнім виглядом (видалення висвітлення кольору, колір верстки тощо), використання [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) клас.

Ви також можете переглянути дані як коментарі до змісту. Для цього використовуйте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) майно та [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) значення.

Приклад наступного коду показує, як налаштувати відображення записів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Зображення нижче показує, як Aspose.Words надає коментарі та дані Видалити:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
