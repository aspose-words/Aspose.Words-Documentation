---
title: Как да създадете баркод Java
second_title: Aspose.Words за Java
articleTitle: Генерирайте персонализирано изображение на баркод
linktitle: Генерирайте персонализирано изображение на баркод
description: "Пример за генериране на форма на баркод с помощта на Java."
type: docs
weight: 350
url: /bg/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Баркодът е визуално представяне на данни под формата на успоредни линии или шарки. Баркодовете се използват широко в различни индустрии като търговия на дребно, логистика, здравеопазване, банкиране и много други.

Microsoft Word позволява на потребителите да вграждат баркодове директно в документи, като използват полета. Потребителите могат да вмъкнат конкретен тип баркод, като QR код или линеен баркод, като използват [БАРКОДА](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) поле.

В тази статия ще разгледаме как полето BARCODE е имплементирано в Aspose.Words и как Aspose.Words позволява на потребителите да работят с документи на Word, към които вече е добавен баркод.

## Типове баркодове, поддържани от Aspose.Words

Aspose.Words поддържа различни видове баркодове. Типът баркод се предава като стойност на низ в свойството [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Тъй като работата с баркодове в рамките на функционалността на Aspose.Words е ограничена, потребителят може да използва всяка библиотека, включително Aspose.Barcode, или да напише свое собствено изобразяване за работа с баркодове. Можете да научите повече за типовете баркодове [поддържани от Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Когато записвате във формати на Word, които поддържат баркодове, можете да използвате всеки тип баркод, който се [поддържа от Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Ако е подаден неправилен тип баркод, Word ще покаже грешка.

Когато записва в други формати, като например PDF, Aspose.Words делегира рендиране на баркод към потребителския код, така че потребителят е ограничен до типовете баркод на тяхната реализация или използваната библиотека.

## Вмъкване на баркод в документ или зареждане на документ с добавен баркод

Aspose.Words предоставя възможност за:

1. Програмно вмъкнете баркод в документ с помощта на [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) и [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) кодове на полета
2. Или заредете документ на Word с вече вмъкнати в него баркодове за по-нататъшна работа

Aspose.Words има интерфейс за генериране на персонализирани баркодове, който улеснява използването на [Aspose.Words](https://products.aspose.com/words/java/) и [Aspose.BarCode](https://products.aspose.com/barcode/java/) заедно за изобразяване на изображения с баркод в изходни документи. Например, можете да създадете DOC, OOXML или RTF документ и да добавите поле DISPLAYBARCODE към него с помощта на Aspose.Words. Или можете да заредите DOC, OOXML или RTF документ с поле DISPLAYBARCODE, което вече съществува в него, и да предоставите вашата реализация на потребителски генератор на баркодове.

Типично поле DISPLAYBARCODE има следния синтаксис:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

По-долу е примерен генератор на код, използващ API на Aspose.Words и Aspose.BarCode. Този пример показва как да вмъкнете изображения с баркод в позицията на полето DISPLAYBARCODE в документ на Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Можете също така да запишете документа със заредения или нововмъкнатия баркод във фиксирани формати на страници като PDF, XPS и т.н. Следният пример на код показва как да запишете документ на Word в PDF формат:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

За повече информация относно преобразуването на документи от един формат в друг вижте раздела за документация [Конвертиране на документ](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Можете също да използвате интерфейса [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), за да конвертирате баркодове, вградени в документи на Word, в изображения. Получените изображения могат да бъдат извлечени от документа – вижте статията Работа с изображения за подробности.

{{% /alert %}}

## Посочете опции за баркод

Когато работите с баркодове, можете да зададете някои допълнителни свойства. Aspose.Words ви предоставя клас [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – клас за параметри на баркод за преминаване към BarcodeGenerator.

Aspose.Words поддържа вградена резолюция от 96 ppi за изображения, генерирани с [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), което ограничава минималния размер на изображение с баркод. За да се справят с това, разработчиците могат ръчно да вмъкнат изображения с баркод с целевата резолюция в документ на Word и да ги запишат в необходимия формат.
