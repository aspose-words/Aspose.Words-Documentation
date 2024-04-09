---
title: Определите варианты планировки в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите варианты планировки
linktitle: Укажите варианты планировки
description: "Укажите планировку Варианты для различных макетов документов с использованием Python."
type: docs
weight: 10
url: /ru/python-net/specify-layout-options/
---

Aspose.Words позволяет создавать выходные документы с различными макетами, в зависимости от параметров, указанных в свойствах [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) класс. Некоторые из этих свойств напоминают некоторые из Microsoft Word Параметры меню пользовательского интерфейса – они будут описаны в данной статье.

Полный список параметров, таких как [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) чтобы игнорировать опцию совместимости "Использовать метрики принтера, чтобы выложить документ", см. [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Страница класса.

## Форматирование знаков

Aspose.Words позволяет управлять отметками форматирования с использованием следующих свойств:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) - `Boolean` значение, которое определяет, отображается ли скрытый текст.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - `Boolean` значение, которое определяет, отображаются ли символы знака абзаца.

Страница, изображенная в приведенном ниже примере, содержит три абзаца. Вторая часть скрыта. Пользователь может изменить [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) Возможность отображения этого скрытого текста на странице. Кроме того, каждый абзац имеет отметку в конце. Знак абзаца обычно не виден, если [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) Имущество настроено на его передачу.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, Эти параметры устанавливаются с помощью диалогового окна "Файл → Опции → Дисплей" следующим образом:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Комментарии и изменения

С Aspose.Words, Вы можете сделать комментарии, которые будут выглядеть так же, как в Microsoft Word. Чтобы определить, были ли предоставлены комментарии, используйте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) собственность.

В Microsoft Word, Этот параметр устанавливается с помощью диалогового окна "Изменить настройки", как показано ниже:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) имуществом, [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) класс, чтобы определить, отображаются ли изменения документа. Чтобы контролировать их внешний вид (пересмотр подсветки цвета, пересмотр цвета полосы и т.д.), используйте [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) класс.

Вы также можете отображать изменения в качестве комментариев к контенту. Для этой цели используйте [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) собственности и [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) ценность.

Следующий пример кода показывает, как настроить отображение изменений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Изображение ниже показывает, как Aspose.Words делает замечания и удаляет изменения:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>