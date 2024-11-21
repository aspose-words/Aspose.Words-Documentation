---
title: Определите варианты планировки в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите варианты планировки
linktitle: Укажите варианты планировки
description: "Укажите планировку Варианты для различных макетов документов с использованием C#."
type: docs
weight: 10
url: /ru/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words позволяет создавать выходные документы с различными макетами, в зависимости от параметров, указанных в свойствах [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) класс. Некоторые из этих свойств напоминают некоторые из Microsoft Word Параметры меню пользовательского интерфейса – они будут описаны в данной статье.

Полный список параметров, таких как [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) чтобы игнорировать опцию совместимости "Использовать метрики принтера, чтобы выложить документ", см. [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Страница класса.

## Форматирование знаков

Aspose.Words позволяет управлять отметками форматирования с использованием следующих свойств:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) - `Boolean` значение, которое определяет, отображается ли скрытый текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) - `Boolean` значение, которое определяет, отображаются ли символы знака абзаца.

Страница, изображенная в приведенном ниже примере, содержит три абзаца. Вторая часть скрыта. Пользователь может изменить **ShowHiddenText** Возможность отображения этого скрытого текста на странице. Кроме того, каждый абзац имеет отметку в конце. Знак абзаца обычно не виден, если **ShowParagraphMarks** Имущество настроено на его передачу.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, Эти параметры устанавливаются с помощью диалогового окна "Файл → Опции → Дисплей" следующим образом:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Комментарии и изменения

С Aspose.Words, Вы можете сделать комментарии, которые будут выглядеть так же, как в Microsoft Word. Чтобы определить, были ли предоставлены комментарии, используйте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) собственность.

В Microsoft Word, Этот параметр устанавливается с помощью диалогового окна "Изменить настройки", как показано ниже:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) имуществом, **LayoutOptions** класс, чтобы определить, отображаются ли изменения документа. Чтобы контролировать их внешний вид (пересмотр подсветки цвета, пересмотр цвета полосы и т.д.), используйте [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) класс.

Вы также можете отображать изменения в качестве комментариев к контенту. Для этой цели используйте [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) собственности и [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) ценность.

Следующий пример кода показывает, как настроить отображение изменений:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Изображение ниже показывает, как Aspose.Words делает замечания и удаляет изменения:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper для расширенного рендеринга типографии

The [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) свойство позволяет установить функциональность формирования текста, а также `OpenType` Особенности поддержки.

Используйте форму текста для обработки документов в следующих основных случаях:

- Документ использует кернирование, числовое формирование, числовые формы или лигатуры.
- В документе используются сложные сценарии, такие как арабский, кхмерский, тайский и т.д.

{{% alert color="primary" %}}

Формирование текста будет включено только при экспорте документа в PDF. XPS.

{{% /alert %}}
