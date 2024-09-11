---
title: Створити штрих-код у Java
second_title: Aspose.Words для Java
articleTitle: Створити власний штрихкодовий образ
linktitle: Створити власний штрихкодовий образ
description: "Приклад генерації штрих-коду за допомогою Java."
type: docs
weight: 350
url: /uk/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Баракод - це візуальне зображення даних у вигляді паралельних ліній або візерунків. Баракоди широко використовуються в різних галузях, таких як роздрібна торгівля, логістика, охорона здоров'я, банківська справа та багато інших.

Microsoft Word дозволяє користувачам вбудовувати штрих-коди безпосередньо в документи за допомогою полів. Користувачі можуть вставити конкретний тип штрих-коду, наприклад код QR або лінійний штрих-код, використовуючи поле [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

У цій статті ми розглянемо реалізацію поля BARCODE в Aspose.Words та те, як Aspose.Words дозволяє користувачам працювати з документами Word, до яких вже додано штрих-код.

## Типи штрих-кодів, підтримувані Aspose.Words

Aspose.Words підтримує різні типи штрих-кодів. Тип штрих-коду передається як рядкове значення у властивості [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Оскільки працювати з штрих-кодами в функціональності Aspose.Words обмежено, користувач може використовувати будь-яку бібліотеку, включаючи Aspose.Barcode, або написати власне відстеження, щоб працювати зі штрих-кодами. Ви можете дізнатися більше про типи штрих-кодів [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

При збереженні у форматах Word, які підтримують штрих-коди, можна використовувати будь який тип штрих-коду, що є [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Якщо неправильний тип штрих-коду був переданий, Word відображатиме помилку.

При збереженні в інших форматах, таких як PDF, Aspose.Words делегує відображення штрих-кодів коду користувача, тому користувач обмежений типами штрих-кодів їх реалізації або бібліотеки, яку вони використовують.

## Вставити штрих-код у документ або завантажити документ з доданим штрих-кодом

Aspose.Words забезпечує можливість

1. Програмно вставити штрих-код у документ за допомогою кодів [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) і [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Або завантажити документ Word з вже вставленими штрихкодами для подальшої роботи

Aspose.Words має інтерфейс для створення власних штрих-кодів, що робить його використання з [Aspose.Words](https://products.aspose.com/words/java/) і [Aspose.BarCode](https://products.aspose.com/barcode/java/) разом легким способом створення зображень штрих-кодів у вихідних документах. Наприклад, ви можете створити документ DOC, OOXML або RTF і додати поле DISPLAYBARCODE до нього за допомогою Aspose.Words. Або ви можете завантажити документ DOC, OOXML або RTF з полем DISPLAYBARCODE, яке вже існує в ньому, і надати власну реалізацію генератора штрих-кодів.

Типовий DISPLAYBARCODE поле має таку синтаксичну структуру:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ось приклад генератора коду, що використовує Aspose.Words та Aspose.BarCode API. Цей приклад демонструє, як вставити зображення штрих-кодів у поле DISPLAYBARCODE документа Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Ви також можете зберегти документ з завантаженим або вставленим баркодом у фіксованому форматі сторінки, наприклад, PDF, XPS, тощо. Наступний приклад коду показує, як зберегти документ Word у форматі PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Для отримання додаткової інформації про перетворення документів з одного формату в інший, дивіться розділ документації [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Ви також можете скористатися інтерфейсом [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), щоб перетворити штрих-коди, вбудовані в документі Word, у зображення. Отримані зображення можна витягти з документа – дивіться статтю "Робота зі зображеннями", щоб дізнатися деталі.

{{% /alert %}}

## Вкажіть опції штрих-коду

При роботі з штрих-кодами можна встановити додаткові властивості. Aspose.Words надає вам клас [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – клас для параметрів штрих-коду, щоб передати в BarcodeGenerator.

Aspose.Words підтримує вбудовану 96 пікселів на дюйм роздільну здатність для зображень, створених за допомогою [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), що обмежує мінімальний розмір зображення штрих-коду. Щоб вирішити цю проблему, розробники можуть вручну вставити зображення штрих-коду з цільовою роздільною здатністю в документ Word і зберегти їх у потрібному форматі. Для отримання додаткової інформації та прикладів роботи зі штрих-кодами, дивіться статтю [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
