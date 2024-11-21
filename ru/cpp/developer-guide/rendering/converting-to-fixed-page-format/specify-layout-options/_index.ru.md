---
title: Укажите параметры компоновки на C++
second_title: Aspose.Words для C++
articleTitle: Укажите параметры компоновки
linktitle: Укажите параметры компоновки
description: "Укажите параметры компоновки для различных макетов документов."
type: docs
weight: 20
url: /ru/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в свойстве [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) параметра **Document**. Это свойство напоминает некоторые параметры меню пользовательского интерфейса Microsoft Word, описанные в этой статье.

Полный список параметров, таких как [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) для игнорирования параметра совместимости "Использовать показатели принтера для компоновки документа", приведен на странице класса [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Метки форматирования

Aspose.Words позволяет управлять метками форматирования, используя следующие свойства:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – значение `Boolean`, которое определяет, будет ли отображаться скрытый текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – значение `Boolean`, которое определяет, будут ли отображаться символы, обозначающие абзац.

Страница, показанная в примере ниже, содержит три абзаца. Второй абзац скрыт. Пользователь может изменить параметр **ShowHiddenText**, чтобы этот скрытый текст отображался на странице. Кроме того, в конце каждого абзаца есть пометка абзаца. Знак абзаца обычно не виден, если только для его отображения не задано свойство **ShowParagraphMarks**.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

В Microsoft Word эти параметры задаются с помощью диалогового окна "Файл → Параметры → Отображение" следующим образом:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Комментарии и правки

С помощью Aspose.Words вы можете отображать комментарии к документу, которые будут выглядеть так же, как в Microsoft Word. Чтобы указать, будут ли отображаться комментарии, используйте свойство [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

В Microsoft Word этот параметр задается с помощью диалогового окна "Параметры отслеживания изменений", как показано ниже:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте свойство [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) класса **LayoutOptions**, чтобы определить, будут ли отображаться изменения в документе. Чтобы управлять их внешним видом (цветом выделения ревизий, цветом панели ревизий и т.д.), используйте класс [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Вы также можете отобразить изменения в виде комментариев к содержимому. Для этой цели используйте свойство [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) и значение [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

В следующем примере кода показано, как настроить отображение ревизий:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

На рисунке ниже показано, как Aspose.Words отображает комментарии и изменения к удалению:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Формирователь текста для расширенного отображения типографики

Свойство [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) позволяет настроить функциональность формирования текста, а также поддержку функций `OpenType`.

Используйте форматирование текста для обработки документов в следующих основных случаях:

- В документе используются кернинг, форматирование цифр, цифровые формы или лигатуры.
- В документе используются сложные письмена, такие как арабский, кхмерский, тайский и т.д.

{{% alert color="primary" %}}

Формирование текста будет включено только при экспорте документа в формат PDF или XPS.

{{% /alert %}}
