---
title: Укажите параметры макета в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры макета
linktitle: Укажите параметры макета
description: "Укажите параметры макета для различных макетов документов, используя Python."
type: docs
weight: 10
url: /ru/python-net/specify-layout-options/
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в свойствах класса [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Некоторые из этих свойств напоминают некоторые пункты меню пользовательского интерфейса Microsoft Word — они будут описаны в этой статье.

Полный список параметров, таких как [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) для игнорирования параметра совместимости "Использовать метрики принтера для компоновки документа", см. на странице класса [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Форматирование знаков

Aspose.Words позволяет управлять знаками форматирования, используя следующие свойства:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – значение `Boolean`, которое определяет, отображается ли скрытый текст.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – значение `Boolean`, которое указывает, отображаются ли символы знака абзаца.

Страница, изображенная в примере ниже, содержит три абзаца. Второй скрыт. Пользователь может изменить параметр [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/), чтобы отобразить этот скрытый текст на странице. Кроме того, каждый абзац имеет знак абзаца в конце. Знак абзаца обычно не виден, если для его отображения не установлено свойство [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/).

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word эти параметры задаются с помощью диалогового окна "Файл → Параметры → Отображение" следующим образом:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Комментарии и изменения

С помощью Aspose.Words вы можете отображать комментарии к документу, которые будут выглядеть так же, как в Microsoft Word. Чтобы указать, отображаются ли комментарии, используйте свойство [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

В Microsoft Word этот параметр задается с помощью диалогового окна "Параметры отслеживания изменений", как показано ниже:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте свойство [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) класса [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/), чтобы определить, будут ли отображаться версии документа. Чтобы управлять их внешним видом (цветом выделения ревизий, цветом панели ревизий и т.д.), используйте класс [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Вы также можете отображать изменения в виде комментариев к содержимому. Для этого используйте свойство [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) и значение [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

В следующем примере кода показано, как настроить отображение редакций:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

На изображении ниже показано, как Aspose.Words отображает комментарии и удаления редакций:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comment_and_revisions_example_aspose_words_net" style="width:800px"/>