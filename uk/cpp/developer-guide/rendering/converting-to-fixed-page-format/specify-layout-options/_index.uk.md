---
title: Вкажіть параметри компонування в C++
second_title: Aspose.Words для C++
articleTitle: Вкажіть параметри компонування
linktitle: Вкажіть параметри компонування
description: "Вкажіть параметри компонування для різних макетів документів."
type: docs
weight: 20
url: /uk/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє створювати вихідні документи з різними макетами залежно від параметрів, зазначених у властивості [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) параметра **Document**. Ця властивість нагадує деякі параметри меню інтерфейсу користувача Microsoft Word, описані в цій статті.

Повний перелік параметрів, таких як [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) для обчислення номерів сторінок у безперервному розділі, який перезапускає нумерацію сторінок, або [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) для ігнорування параметра сумісності "використовувати показники принтера для компонування документа", наведено на сторінці [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) класу.

## Мітки форматування

Aspose.Words дозволяє керувати мітками форматування, використовуючи такі властивості:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – значення `Boolean`, яке визначає, чи відображатиметься прихований текст.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – значення `Boolean`, яке визначає, чи відображатимуться символи, що позначають абзац.

Сторінка, показана в прикладі нижче, містить три абзаци. Другий абзац прихований. Користувач може змінити параметр **ShowHiddenText**, щоб цей прихований текст відображався на сторінці. Крім того, в кінці кожного абзацу є позначка абзацу. Знак абзацу зазвичай не видно, якщо для його відображення не задано властивість **ShowParagraphMarks**.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

У Microsoft Word ці параметри задаються за допомогою діалогового вікна "Файл → Параметри → відображення" наступним чином:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Коментарі та правки

За допомогою Aspose.Words ви можете відображати коментарі до документа, які будуть виглядати так само, як у Microsoft Word. Щоб вказати, чи відображатимуться коментарі, використовуйте властивість [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

У Microsoft Word цей параметр встановлюється за допомогою діалогового вікна "Параметри відстеження змін", як показано нижче:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Крім того, Aspose.Words дозволяє відображати зміни в документі. Використовуйте властивість [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) класу **LayoutOptions**, щоб визначити, чи відображатимуться зміни в документі. Щоб управляти їх зовнішнім виглядом (кольором виділення ревізій, кольором панелі ревізій і т.д.), використовуйте клас [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Ви також можете відобразити зміни у вигляді коментарів до вмісту. Для цього використовуйте властивість [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) та значення [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

У наступному прикладі коду показано, як налаштувати відображення ревізій:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

На малюнку нижче показано, як Aspose.Words відображає коментарі та зміни до видалення:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Формувач тексту для розширеного відображення типографіки

Властивість [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) дозволяє налаштувати функціональність формування тексту, а також підтримку функцій `OpenType`.

Використовуйте форматування тексту для обробки документів у наступних основних випадках:

- У документі використовуються кернінг, формування цифр, цифрові форми або лігатури.
- У документі використовуються складні письмена, такі як Арабська, Кхмерська, Тайська і т. д.

{{% alert color="primary" %}}

Формування тексту буде включено тільки при експорті документа в формат PDF або XPS.

{{% /alert %}}
