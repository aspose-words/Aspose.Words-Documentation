---
title: Як створити штрих-код?
second_title: Aspose.Words для .NET
articleTitle: Створити власне бар-код зображення
linktitle: Створити власне бар-код зображення
description: "Приклад генерації барикад з використанням C#."
type: docs
weight: 350
url: /uk/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Баркод - це візуальне зображення даних у вигляді паралельних ліній або малюнків. Баркоди широко використовуються в різних галузях, таких як роздрібна торгівля, логістика, охорона здоров'я, банківська справа та багато інших.

Microsoft Word дозволяє користувачам вбудовувати штрих-коди безпосередньо в документи через поля. Користувачі можуть вставити конкретний тип штрих-коду, наприклад, QR-код або лінійний код, використовуючи поле [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

У цій статті ми розглянемо, як поле БАРКОДЕ реалізовано в Aspose.Words та яким чином Aspose.Words дозволяє користувачам працювати з документами Word, до яких вже додано штрих-код.

## Типи штрих-кодів, які підтримує Aspose.Words

Aspose.Words підтримує різні типи штрих-кодів. Тип штрих-коду передається як значення рядка у властивості [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Оскільки працювати з штрих-кодами в межах функціональності Aspose.Words обмежено, користувач може використовувати будь-яку бібліотеку, включаючи Aspose.Barcode, або написати власне відображення для роботи зі штрих-кодами. Ви можете дізнатися більше про типи штрих-кодів [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

При збереженні у форматі Word, який підтримує штрих-коди, можна використовувати будь-який тип штрих-коду, що є [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Якщо неправильний тип штрих-коду був переданий, Word відобразить повідомлення про помилку.

Під час збереження в інші формати, такі як PDF, Aspose.Words делегує рендеринг штрих-кодів коду користувача, тому користувач обмежується типами штрих-кодів їх реалізації або бібліотеки, яка використовується.

## Вставте штрих-код до документу або завантажте документ із штрих-кодом, доданим до нього

Aspose.Words забезпечує можливість:

1. Програмно вставте штрих-код у документ за допомогою кодів полів [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) та [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Або завантажити документ Word із вже вставленими штрих-кодами для подальшої роботи

Aspose.Words має інтерфейс для генерації власних штрих-кодів, що полегшує використання [Aspose.Words](https://products.aspose.com/words/net/) та [Aspose.BarCode](https://products.aspose.com/barcode/net/) разом для відображення зображень штрих-кодів у вихідних документах. Наприклад, ви можете створити документ DOC, OOXML або RTF та додати поле DISPLAYBARCODE до нього за допомогою Aspose.Words. Або ви можете завантажити документ DOC, OOXML або RTF з полем DISPLAYBARCODE вже існуючим і надати власну реалізацію генератора штрих-кодів.

Типовий πεδίο DISPLAYBARCODE має таку синтаксичну структуру:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Нижче наведено приклад коду генератора, який використовує Aspose.Words та Aspose.BarCode API. Цей приклад демонструє, як вставити зображення штрих-кодів у поле DISPLAYBARCODE в документі Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Ви також можете зберегти документ з завантаженими або нове вставлені штрих-коди в фіксовані форматі сторінок, таких як PDF, XPS тощо. Наступний приклад коду показує, як зберегти документ Word у форматі PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Щоб отримати додаткову інформацію про перетворення документів з одного формату в інший, зверніться до [Convert a Document](/words/net/convert-a-document/) документації розділу.

{{% /alert %}}

{{% alert color="primary" %}}

Ви також можете використовувати інтерфейс [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), щоб перетворити штрих-коди, вбудовані в документи Word, в зображення. Отримані зображення можна витягнути з документа – деталі дивіться в статті "Робота зі зображеннями".

{{% /alert %}}

## Вкажіть варіанти штрих-коду

Коли працюєш з штрих-кодами, ти можеш встановити деякі додаткові властивості. Aspose.Words забезпечує вам клас [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – клас для параметрів штрих-коду, які потрібно передати до BarcodeGenerator.

Aspose.Words підтримує вбудовану 96 пппі роздільну здатність для зображень, згенерованих [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), що обмежує мінімальний розмір зображення штрих-коду. Щоб вирішити цю проблему, розробники можуть вручну вставити зображення штрих-коду з цільовою роздільною здатністю в документ Word та зберегти їх у потрібному форматі. Для більш детальної інформації та прикладів щодо роботи зі штрих-кодами, дивіться статтю [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
