---
title: Определите варианты планировки в Java
second_title: Aspose.Words для Java
articleTitle: Укажите варианты планировки
linktitle: Укажите варианты планировки
description: "Создание выходных документов с различными макетами в зависимости от параметров, указанных в Документе с использованием Java."
type: docs
weight: 10
url: /ru/java/specify-layout-options/
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) имуществом, **Document**. Это свойство напоминает некоторые из Microsoft Word Параметры меню пользовательского интерфейса, описанные в этой статье.

Полный список параметров, таких как [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) игнорировать опцию совместимости "Использовать метрики принтера, чтобы выложить документ", см. [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Страница класса.

## Форматирование знаков

Aspose.Words позволяет управлять отметками форматирования с использованием следующих свойств:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - `Boolean` значение, которое определяет, отображается ли скрытый текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - `Boolean` значение, которое определяет, отображаются ли символы знака абзаца.

Страница, изображенная в приведенном ниже примере, содержит три абзаца. Вторая часть скрыта. Пользователь может изменить **ShowHiddenText** Возможность отображения этого скрытого текста на странице. Кроме того, каждый абзац имеет отметку в конце. Знак абзаца обычно не виден, если **ShowParagraphMarks** Имущество настроено на его передачу.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word, Эти параметры устанавливаются с помощью диалогового окна "Файл → Опции → Дисплей" следующим образом:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Комментарии и изменения

С Aspose.Words, Вы можете сделать комментарии к документам, которые будут выглядеть так же, как в Microsoft Word. Чтобы определить, были ли предоставлены комментарии, используйте [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) собственность.

В Microsoft Word, Этот параметр устанавливается с помощью диалогового окна "Изменить настройки", как показано ниже:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) имуществом, **LayoutOptions** класс, чтобы определить, отображаются ли изменения документа. Для контроля их внешнего вида (ревизия подсветки цвета, ревизия штрихового цвета и т.д.), используйте [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) класс.

Вы также можете отображать изменения в качестве комментариев к контенту. Для этой цели используйте [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) собственности и [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) ценность.

Следующий пример кода показывает, как настроить отображение изменений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Изображение ниже показывает, как Aspose.Words делает замечания и удаляет изменения:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper для расширенного рендеринга типографии

The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) свойство позволяет установить функциональность формирования текста, а также `OpenType` Особенности поддержки.

Используйте форму текста для обработки документов в следующих основных случаях:

- Документ использует кернирование, числовое формирование, числовые формы или лигатуры.
- В документе используются сложные сценарии, такие как арабский, кхмерский, тайский и т.д.

{{% alert color="primary" %}}

Формирование текста будет включено только при экспорте документа в PDF. XPS.

{{% /alert %}}
