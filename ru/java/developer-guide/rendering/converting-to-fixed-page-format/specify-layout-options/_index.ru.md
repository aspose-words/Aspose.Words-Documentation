---
title: Укажите параметры компоновки в Java
second_title: Aspose.Words для Java
articleTitle: Укажите параметры компоновки
linktitle: Укажите параметры компоновки
description: "Создавайте выходные документы с различными макетами в зависимости от параметров, указанных в документе, используя Java."
type: docs
weight: 10
url: /ru/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в свойстве [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) параметра **Document**. Это свойство напоминает некоторые из опций меню пользовательского интерфейса Microsoft Word, описанных в этой статье.

Полный список параметров, таких как [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) для игнорирования параметра совместимости "Использовать показатели принтера для компоновки документа", приведен на странице [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) класса.

## Метки форматирования

Aspose.Words позволяет управлять метками форматирования, используя следующие свойства:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – значение `Boolean`, которое определяет, будет ли отображаться скрытый текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – значение `Boolean`, которое определяет, будут ли отображаться символы, обозначающие абзац.

Страница, показанная в примере ниже, содержит три абзаца. Второй абзац скрыт. Пользователь может изменить параметр **ShowHiddenText**, чтобы этот скрытый текст отображался на странице. Кроме того, в конце каждого абзаца есть пометка абзаца. Знак абзаца обычно не виден, если для его отображения не задано свойство **ShowParagraphMarks**.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word эти параметры задаются с помощью диалогового окна "Файл → Параметры → Отображение" следующим образом:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Комментарии и правки

С помощью Aspose.Words вы можете отображать комментарии к документу, которые будут выглядеть так же, как в Microsoft Word. Чтобы указать, будут ли отображаться комментарии, используйте свойство [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

В Microsoft Word этот параметр задается с помощью диалогового окна "Параметры отслеживания изменений", как показано ниже:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте свойство [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) класса **LayoutOptions**, чтобы определить, будут ли отображаться изменения в документе. Чтобы управлять их внешним видом (цветом выделения ревизий, цветом панели ревизий и т.д.), используйте класс [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Вы также можете отобразить изменения в виде комментариев к содержимому. Для этого используйте свойство [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) и значение [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

В следующем примере кода показано, как настроить отображение ревизий:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

На рисунке ниже показано, как Aspose.Words отображает комментарии и изменения к удалению:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Формирователь текста для расширенного отображения типографики

Свойство [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) позволяет настроить функциональность формирования текста, а также поддержку функций `OpenType`.

Используйте форматирование текста для обработки документов в следующих основных случаях:

- В документе используются кернинг, форматирование цифр, цифровые формы или лигатуры.
- В документе используются сложные письмена, такие как арабский, кхмерский, тайский и т.д.

{{% alert color="primary" %}}

Формирование текста будет включено только при экспорте документа в формат PDF или XPS.

{{% /alert %}}
