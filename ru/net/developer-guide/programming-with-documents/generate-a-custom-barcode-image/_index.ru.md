---
title: Как создать штрих-код
second_title: Aspose.Words для .NET
articleTitle: Создать пользовательский штрих-код
linktitle: Создать пользовательский штрих-код
description: "Пример генерации штрих-кода с использованием C#."
type: docs
weight: 350
url: /ru/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Баркод представляет собой визуальное представление данных в виде параллельных линий или узоров. Баркоды широко используются в различных отраслях, таких как розничная торговля, логистика, здравоохранение, банковское дело и многие другие.

Microsoft Word позволяет пользователям встраивать штрих-коды непосредственно в документы с помощью полей. Пользователи могут вставить конкретный тип штрих-кода, например, QR-код или линейный штрих-код, используя поле [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

В этой статье мы рассмотрим, как реализовано поле "BARCODE" в Aspose.Words и как Aspose.Words позволяет пользователям работать с документами Word, к которым уже добавлена штрих-код.

## Баркодные типы, поддерживаемые Aspose.Words

Aspose.Words поддерживает различные типы штрих-кодов. Тип штрих-кода передаётся в виде строкового значения в свойстве [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Поскольку функциональность работы с штрихкодами в Aspose.Words ограничена, пользователь может использовать любую библиотеку, включая Aspose.Barcode, или написать собственный рендеринг для работы со штрихкодами. Вы можете узнать больше о типах штрихкодов [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

При сохранении в формате Word, который поддерживает штрих-коды, вы можете использовать любой тип штрих-кода, который [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Если был передан неправильный тип штрих-кода, Word будет отображать ошибку.

При сохранении в другие форматы, такие как PDF, Aspose.Words делегирует отображение штрих-кодов коду пользователя, поэтому пользователь ограничен типами штрих-кодов их реализации или используемой библиотеки.

## Вставить штрих-код в документ или загрузить документ с добавленным штрих-кодом

Aspose.Words предоставляет возможность:

1. Программатически вставить штрих-код в документ с помощью кодов [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) и [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Или загрузить документ Word, в который уже были вставлены штрих-коды, для дальнейшей работы

Aspose.Words имеет интерфейс для создания индивидуальных штрих-кодов, что упрощает использование [Aspose.Words](https://products.aspose.com/words/net/) и [Aspose.BarCode](https://products.aspose.com/barcode/net/) вместе для создания штрих-кодных изображений в выходных документах. Например, вы можете создать документ DOC, OOXML или RTF и добавить к нему поле DISPLAYBARCODE с помощью Aspose.Words. Или вы можете загрузить документ DOC, OOXML или RTF с полем DISPLAYBARCODE, уже существующим в нем, и предоставить своё собственное реализацию генератора штрих-кодов.

Типичное поле DISPLAYBARCODE имеет следующий синтаксис:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ниже приведен пример кода генератора, использующего Aspose.Words и Aspose.BarCode API. Этот пример демонстрирует, как вставить изображение штрих-кода в поле DISPLAYBARCODE документа Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Вы также можете сохранить документ с загруженным или недавно вставленным штрих-кодом в фиксированные форматы страниц, такие как PDF, XPS, и т.д. Следующий пример кода показывает, как сохранить документ Word в формате PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Больше информации о преобразовании документов с одного формата на другой см. в [Convert a Document](/words/net/convert-a-document/)-й документации раздела.

{{% /alert %}}

{{% alert color="primary" %}}

Вы также можете использовать интерфейс [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), чтобы преобразовать штрих-коды, встроенные в документы Word, в изображения. Полученные изображения можно извлечь из документа – см. статью "Работа с изображениями", для получения подробной информации.

{{% /alert %}}

## Укажите параметры штрих-кода

При работе с штрих-кодами можно задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - класс для параметров штрих-кода, передаваемых в BarcodeGenerator.

Aspose.Words поддерживает встроенную 96 пикселей на дюйм разрешение для изображений, полученных с помощью [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), что ограничивает минимальный размер изображения штрих-кода. Чтобы решить этот вопрос, разработчики могут вручную вставлять изображения штрих-кодов с целевым разрешением в документ Word и сохранять их в необходимом формате. Более подробно о работе со штрих-кодами см. статью [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).