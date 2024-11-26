---
title: Укажите параметры компоновки в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры компоновки
linktitle: Укажите параметры компоновки
description: "Укажите параметры компоновки для различных макетов документов, используя Python."
type: docs
weight: 10
url: /ru/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в свойствах класса [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Некоторые из этих свойств напоминают некоторые параметры меню пользовательского интерфейса Microsoft Word – они будут описаны в этой статье.

Полный список параметров, таких как [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) для игнорирования параметра совместимости "Использовать показатели принтера для компоновки документа", приведен на странице [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) класса.

## Метки форматирования

Aspose.Words позволяет управлять метками форматирования, используя следующие свойства:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – значение `Boolean`, которое указывает, будет ли отображаться скрытый текст.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – значение `Boolean`, которое определяет, будут ли отображаться символы, обозначающие абзац.

Страница, показанная в примере ниже, содержит три абзаца. Второй абзац скрыт. Пользователь может изменить параметр [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/), чтобы этот скрытый текст отображался на странице. Кроме того, в конце каждого абзаца есть пометка абзаца. Знак абзаца обычно не виден, если для его отображения не задано свойство [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/).

![specify-layout-options_1](specify-layout-options-1.png)

В Microsoft Word эти параметры задаются с помощью диалогового окна "Файл → Параметры → Отображение" следующим образом:

![specify-layout-options_2](specify-layout-options-2.jpg)

## Комментарии и правки

С помощью Aspose.Words вы можете отображать комментарии к документу, которые будут выглядеть так же, как в Microsoft Word. Чтобы указать, будут ли отображаться комментарии, используйте свойство [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

В Microsoft Word этот параметр задается с помощью диалогового окна "Параметры отслеживания изменений", как показано ниже:

![specify-layout-options_3](specify-layout-options-3.jpg)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте свойство [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) класса [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/), чтобы определить, будут ли отображаться изменения в документе. Чтобы управлять их внешним видом (цветом выделения ревизий, цветом панели ревизий и т.д.), используйте класс [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Вы также можете отобразить изменения в виде комментариев к содержимому. Для этого используйте свойство [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) и значение [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

В следующем примере кода показано, как настроить отображение ревизий:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

На рисунке ниже показано, как Aspose.Words отображает комментарии и изменения к удалению:

<img src="specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
