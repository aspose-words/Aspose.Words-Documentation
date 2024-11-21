---
title: Работа с водяными знаками в C++
second_title: Aspose.Words для C++
articleTitle: Работа с водяными знаками
linktitle: Работа с водяными знаками
type: docs
description: "Манипулирование водяными знаками в документах с использованием C++."
weight: 340
url: /ru/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

В этом разделе обсуждается, как программно работать с водяными знаками с помощью Aspose.Words. Водяной знак - это фоновое изображение, которое отображается за текстом в документе. Водяной знак может содержать текст или изображение, представленные классом [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Добавление водяного знака к документу

В Microsoft Word водяной знак можно легко вставить в документ с помощью команды Вставить водяной знак. Aspose.Words предоставляет класс [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) для добавления или удаления водяных знаков в документах. Aspose.Words содержит перечисление [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/), определяющее три возможных типа водяных знаков (текст, изображение и без водяных знаков) для работы.

### Добавить текстовый водяной знак

В следующем примере кода показано, как вставить текстовый водяной знак в документ, определив [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) с помощью метода [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Добавление водяного знака на изображение

В следующем примере кода показано, как вставить водяной знак изображения в документ, определив [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) с помощью метода [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Водяной знак также можно вставить с помощью класса shape. Очень просто вставить любую фигуру или изображение в верхний или нижний колонтитул и, таким образом, создать водяной знак любого мыслимого типа. В следующем примере кода водяной знак вставляется в документ Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Удаление водяного знака из документа

Класс [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) предоставляет метод remove для удаления водяного знака с документа.

В следующем примере кода показано, как удалить водяной знак с документов:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Если водяные знаки добавляются с использованием объекта класса [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), то для удаления водяного знака из документа вам необходимо задать только название формы водяного знака во время вставки, а затем удалить форму водяного знака с помощью назначенного имени.

В следующем примере кода показано, как задать название формы водяного знака и удалить его из документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Добавьте водяной знак в ячейку таблицы

Иногда вам нужно вставить водяной знак/изображение в ячейку таблицы и отобразить его за пределами таблицы, вы можете использовать свойство [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Это свойство возвращает или устанавливает флаг, указывающий, отображается ли фигура внутри таблицы или за ее пределами. Обратите внимание, что это свойство работает только при оптимизации документа для Microsoft Word 2010 с использованием метода [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
