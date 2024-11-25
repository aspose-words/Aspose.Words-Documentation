---
title: Создать BarCode в Java
second_title: Aspose.Words для Java
articleTitle: Создайте пользовательское изображение BarCode
linktitle: Создайте пользовательское изображение BarCode
description: "Пример создания формы штрих-кода с использованием Java."
type: docs
weight: 350
url: /ru/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Штрих-код - это визуальное представление данных в виде параллельных линий или узоров. Штрих-коды широко используются в различных отраслях, таких как розничная торговля, логистика, здравоохранение, банковское дело и многих других.

Microsoft Word позволяет пользователям вставлять штрих-коды непосредственно в документы с помощью полей. Пользователи могут вставлять штрих-коды определенного типа, такие как QR код или линейный штрих-код, используя [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) поле.

В этой статье мы рассмотрим, как поле BARCODE реализовано в Aspose.Words и как Aspose.Words позволяет пользователям работать с документами Word, в которые уже добавлен штрих-код.

## Типы штрих-кодов, поддерживаемые Aspose.Words

Aspose.Words поддерживает различные типы штрих-кодов. Тип штрих-кода передается в виде строкового значения в свойстве [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Поскольку работа со штрих-кодами в рамках функционала Aspose.Words ограничена, пользователь может использовать любую библиотеку, включая Aspose.Штрих-код, или написать свой собственный рендеринг для работы со штрих-кодами. Вы можете узнать больше о типах штрих-кодов [, Поддерживаемый как таковой.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

При сохранении в форматах Word, поддерживающих штрих-коды, вы можете использовать любой тип штрих-кода, который [поддерживается Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Если был введен неправильный тип штрих-кода, Word выдаст сообщение об ошибке.

При сохранении в другие форматы, такие как PDF, Aspose.Words, отображение штрих-кода делегируется пользовательскому коду, поэтому пользователь ограничен типами штрих-кодов в их реализации или используемой библиотеке.

## Вставьте штрих-код в документ или загрузите документ с добавленным штрих-кодом

Aspose.Words предоставляет возможность:

1. Программно вставьте штрих-код в документ, используя [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) и [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) коды полей
2. Или загрузите документ Word с уже вставленными в него штрих-кодами для дальнейшей работы

Aspose.Words имеет интерфейс для создания пользовательских штрих-кодов, который упрощает его использование [Aspose.Words](https://products.aspose.com/words/java/) и [Как обычно.BarCode](https://products.aspose.com/barcode/java/) вместе для визуализации изображений штрих-кодов в выходных документах. Например, вы можете создать документ DOC, OOXML или RTF и добавить в него поле DISPLAYBARCODE с помощью Aspose.Words. Или вы можете загрузить документ DOC, OOXML или RTF с уже существующим в нем полем DISPLAYBARCODE и предоставить свою реализацию пользовательского генератора штрих-кодов.

Типичное поле DISPLAYBARCODE имеет следующий синтаксис:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ниже приведен пример генератора кода, использующего Aspose.Words и Aspose.BarCode APIs. В этом примере показано, как вставить изображения штрих-кода в поле DISPLAYBARCODE в документе Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Вы также можете сохранить документ с загруженным или недавно вставленным штрих-кодом в фиксированных форматах страниц, таких как PDF, XPS и т.д. В следующем примере кода показано, как сохранить документ Word в формате PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Дополнительные сведения о преобразовании документов из одного формата в другой см. в разделе [Преобразование документа](/words/java/convert-a-document/) документация.

{{% /alert %}}

{{% alert color="primary" %}}

Вы также можете использовать интерфейс [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) для преобразования штрих-кодов, встроенных в документы Word, в изображения. Полученные изображения можно извлечь из документа – подробности смотрите в статье "Работа с изображениями".

{{% /alert %}}

## Укажите параметры штрих-кода

При работе со штрих-кодами вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – класс для передачи параметров штрих-кода в BarcodeGenerator.

Aspose.Words поддерживает встроенное разрешение 96 точек на дюйм для изображений, созданных с помощью [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), что ограничивает минимальный размер изображения штрих-кода. Чтобы решить эту проблему, разработчики могут вручную вставлять изображения штрих-кода с требуемым разрешением в документ Word и сохранять их в требуемом формате. Более подробную информацию и примеры работы со штрих-кодами смотрите в статье [Считывание три-кода из одного слова](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
