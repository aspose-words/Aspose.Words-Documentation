---
title: Робота з водяним знаком в C++
second_title: Aspose.Words для C++
articleTitle: Робота з водяними знаками
linktitle: Робота з водяними знаками
type: docs
description: "Маніпулювання водяними знаками документа за допомогою C++."
weight: 340
url: /uk/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

У цьому розділі обговорюється, як програмно працювати з водяними знаками за допомогою Aspose.Words. Водяний знак-це фонове зображення, яке відображається за текстом у документі. Водяний знак може містити текст або зображення, представлені класом [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Додавання водяного знака до документа

Microsoft Word водяний знак можна легко вставити в документ за допомогою команди Вставити водяний знак. Aspose.Words надає клас [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) для додавання або видалення водяних знаків у документах. Aspose.Words містить перелік [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/), що визначає три можливі типи водяних знаків (текст, зображення та без водяних знаків) для роботи.

### Додати текстовий водяний знак

Наступний приклад коду показує, як вставити текстовий водяний знак у документ, визначивши [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) методом [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Додати водяний знак на зображення

Наступний приклад коду показує, як вставити водяний знак зображення в документ, визначивши [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) методом [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Водяний знак також можна вставити за допомогою класу shape. Дуже просто вставити будь-яку фігуру чи зображення у верхній або нижній колонтитул і таким чином створити водяний знак будь-якого мислимого типу. Наступний приклад коду вставляє водяний знак у документ Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Видалення водяного знака з документа

Клас [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) надає метод видалення для видалення водяного знака з документа.

Наступний приклад коду показує, як видалити водяний знак з документів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Якщо водяні знаки додаються з використанням об'єкта класу [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), то для видалення водяного знака з документа вам необхідно задати тільки назву форми водяного знака під час вставки, а потім видалити форму водяного знака за допомогою призначеного імені.

У наступному прикладі коду показано, як задати назву форми водяного знака і видалити його з документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Додайте водяний знак до комірки таблиці

Іноді вам потрібно вставити водяний знак / зображення в комірку таблиці та відобразити його поза таблицею, ви можете використовувати властивість [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Ця властивість повертає або встановлює прапор, який вказує, чи відображається фігура всередині таблиці або поза нею. Зверніть увагу, що ця властивість працює лише при оптимізації документа для Microsoft Word 2010 року за допомогою методу [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Наступний приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
