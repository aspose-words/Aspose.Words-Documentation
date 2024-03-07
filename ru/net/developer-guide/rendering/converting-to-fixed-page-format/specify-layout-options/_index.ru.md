---
title: Укажите параметры макета в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите параметры макета
linktitle: Укажите параметры макета
description: "Укажите параметры макета для различных макетов документов, используя C#."
type: docs
weight: 10
url: /ru/net/specify-layout-options/
---

Aspose.Words позволяет создавать выходные документы с различными макетами в зависимости от параметров, указанных в свойствах класса [LayoutOptions](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/). Некоторые из этих свойств напоминают некоторые пункты меню пользовательского интерфейса Microsoft Word — они будут описаны в этой статье.

Полный список параметров, таких как [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) для расчета номеров страниц в непрерывном разделе, который перезапускает нумерацию страниц, или [IgnorePrinterMetrics](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) для игнорирования параметра совместимости "Использовать метрики принтера для компоновки документа", см. на странице класса [LayoutOptions](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/).

## Форматирование знаков

Aspose.Words позволяет управлять знаками форматирования, используя следующие свойства:

- [ShowHiddenText](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/showhiddentext/) – значение `Boolean`, которое определяет, отображается ли скрытый текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – значение `Boolean`, которое определяет, отображаются ли символы знака абзаца.

Страница, изображенная в примере ниже, содержит три абзаца. Второй скрыт. Пользователь может изменить параметр **ShowHiddenText**, чтобы отобразить этот скрытый текст на странице. Кроме того, каждый абзац имеет знак абзаца в конце. Знак абзаца обычно не виден, если для его отображения не установлено свойство **ShowParagraphMarks**.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

В Microsoft Word эти параметры задаются с помощью диалогового окна "Файл → Параметры → Отображение" следующим образом:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Комментарии и изменения

С помощью Aspose.Words вы можете отображать комментарии к документу, которые будут выглядеть так же, как в Microsoft Word. Чтобы указать, отображаются ли комментарии, используйте свойство [CommentDisplayMode](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

В версии Microsoft Word этот параметр задается с помощью диалогового окна "Параметры отслеживания изменений", как показано ниже:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Кроме того, Aspose.Words позволяет отображать изменения в документе. Используйте свойство [RevisionOptions](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/revisionoptions/) класса **LayoutOptions**, чтобы определить, будут ли отображаться версии документа. Для управления их внешним видом (цветом выделения ревизий, цветом панели ревизий и т.д.) используйте класс [RevisonOptions](https://reference.aspose.com/words/ru/net/aspose.words.layout/revisionoptions/).

Вы также можете отображать изменения в виде комментариев к содержимому. Для этого используйте свойство [CommentDisplayMode](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/commentdisplaymode/) и значение [ShowInBalloons](https://reference.aspose.com/words/ru/net/aspose.words.layout/commentdisplaymode/).

В следующем примере кода показано, как настроить отображение редакций:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

На изображении ниже показано, как Aspose.Words отображает комментарии и удаления редакций:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comment_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper для расширенного рендеринга типографики

Свойство [TextShaperFactory](https://reference.aspose.com/words/ru/net/aspose.words.layout/layoutoptions/textshaperfactory/) позволяет настроить функцию формирования текста, а также поддержку функций `OpenType`.

Формирование текста используют для обработки документов в следующих основных случаях:

- В документе используются кернинг, формирование цифр, числовые формы или лигатуры.
- В документе используются сложные алфавиты, такие как арабский, кхмерский, тайский и т.д.

{{% alert color="primary" %}}

Формирование текста будет включено только при экспорте документа в PDF или XPS.

{{% /alert %}}
