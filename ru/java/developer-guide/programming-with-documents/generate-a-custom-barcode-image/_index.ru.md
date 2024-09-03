---
title: Создайте штрих-код в Java
second_title: Aspose.Words для Java
articleTitle: Создать настраиваемый штрих-код изображения
linktitle: Создать настраиваемый штрих-код изображения
description: "Пример формирования штрих-кода с использованием Java."
type: docs
weight: 350
url: /ru/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Баркод представляет собой визуальное представление данных в виде параллельных линий или рисунков. Баркоды широко используются в различных отраслях, таких как розничная торговля, логистика, здравоохранение, банковское дело и многие другие.

Microsoft Word позволяет пользователям встраивать штрих-коды непосредственно в документы с помощью полей. Пользователи могут вставить конкретного типа штрих-кода, например, QR-код или линейный штрих-код, используя поле [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

В этой статье мы рассмотрим, как реализовано поле БАРКОД в Aspose.Words, и как Aspose.Words позволяет пользователям работать с документами Word, к которым уже добавлен штрих-код.

## Баркодные типы, поддерживаемые Aspose.Words

Aspose.Words поддерживает различные типы штрих-кодов. Тип штрих-кода передается как строковое значение в свойстве [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Поскольку работа с штрих-кодами в рамках функциональности Aspose.Words ограничена, пользователь может использовать любую библиотеку, включая Aspose.Barcode, или написать собственный рендер для работы со штрих-кодами. Вы можете узнать больше о типах штрих-кодов [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

При сохранении в форматах Word, которые поддерживают штрих-коды, вы можете использовать любой тип штрик-кода, который является [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Если неверный тип штрик-кода был передан, Word будет отображать ошибку.

При сохранении в другие форматы, такие как PDF, Aspose.Words делегирует рендеринг штрих-кодов коду пользователя, поэтому пользователь ограничен типами штрих-кодов в своей реализации или используемой библиотеке.

## Вставить штрих-код в документ или загрузить документ с добавленным штрих-кодом

Aspose.Words предоставляет возможность":

1. Программатически вставить штрих-код в документ с помощью [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) и [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) кодов поля
2. Или загрузить документ Word с уже вставленными штрих-кодами для дальнейшей работы

У Aspose.Words есть интерфейс для создания пользовательских штрихкодов, который облегчает использование [Aspose.Words](https://products.aspose.com/words/java/) и [Aspose.BarCode](https://products.aspose.com/barcode/java/) вместе для рендеринга изображений штрих-кодов в выходных документах. Например, вы можете создать документ DOC, OOXML или RTF и добавить в него поле DISPLAYBARCODE с помощью Aspose.Words. Или вы можете загрузить документ DOC, OOXML или RTF с уже существующим полем DISPLAYBARCODE и предоставить свою реализацию генератора штрих-кодов.

А типичное поле DISPLAYBARCODE имеет следующий синтаксис:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ниже приведен пример кода генератора, использующего библиотеки Aspose.Words и Aspose.BarCode API. В данном примере показано, как вставить изображения штрих-кодов в поле DISPLAYBARCODE в документе Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Вы также можете сохранить документ с загруженным или новым вставленным штрих-кодом в фиксированные форматы страниц, такие как PDF, XPS, и т.д. Следующий пример кода демонстрирует, как сохранить документ Word в формате PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Для получения дополнительной информации о преобразовании документов из одного формата в другой, см. раздел документации по адресу [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Вы также можете использовать интерфейс [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), чтобы преобразовать штрих-коды, встроенные в документы Word, в изображения. Полученные изображения можно извлечь из документа – см. статью "Работа с изображениями" для получения подробной информации.

{{% /alert %}}

## Укажите параметры штрих-кода

При работе с штрихкодами можно установить некоторые дополнительные свойства. "When working with barcodes, you can set some additional properties Aspose.Words provides you with the [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) class – class for barcode parameters to pass-through to BarcodeGenerator".

Aspose.Words поддерживает встраиваемую разрешение 96 пикселей на дюйм для изображений, созданных с помощью [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), что ограничивает минимальный размер изображения штрих-кода. Чтобы решить эту проблему, разработчики могут вручную вставлять изображения штрих-кодов с целевой разрешением в документ Word и сохранять их в необходимом формате. Для более подробной информации и примеров работы со штрих-кодами, см. статью [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
