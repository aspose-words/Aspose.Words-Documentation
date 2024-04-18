---
title: Робота з цифровими підписами
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з цифровими підписами
linktitle: Робота з цифровими підписами
description: "Визначте документи та виявляти, підрахувати та видалити існуючі цифрові підписи Pythonй"
type: docs
weight: 40
url: /uk/python-net/working-with-digital-signatures/
---

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації.

Aspose.Words підтримує документи з цифровими підписами та надає доступ до них, що дозволяє виявляти та утверджувати цифрові підписи на документі та підписати сформований документ PDF із заданою довідкою. В даний час цифрові підписи підтримуються на DOC, OOXML та ODT документи. Підписання створених документів здійснюється у форматі PDF.

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний підпис онлайн](https://products.aspose.app/words/signature)й

{{% /alert %}}

## Цифрові підписи не зберігаються на відкритій та Зберегти

Важливим моментом для замітки є те, що документ, завантажений, а потім збережений за допомогою Aspose.Words втратить підписи, які підписуються на документ. Цей дизайн як цифровий підпис гарантує, що зміст не був модифікований і додатково автентифікує визначення, який підписаний документом. Ці принципи будуть недійсними, якщо оригінальні підписи були передані до отриманого документа.

У зв'язку з цим, якщо ви обробляєте документи, завантажені на сервер, це може бути потенційно означати, що ви можете псувати документ, завантажений на сервер таким чином, не знаючи. Таким чином, для перевірки цифрових підписів на документі та отримання відповідної дії, якщо будь-який знайдений, наприклад, оповіщення може бути відправлено клієнту, повідомляє про те, що документ, який передається, містить цифрові підписи, які будуть втрачені, якщо він обробляється. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)й

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Код вище використовується [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) метод виявлення, якщо документ містить цифрові підписи без завантаження документа першим. Це забезпечує ефективний і безпечний спосіб перевірки документа для підписів перед їх обробкою. При виконанні метод повертає [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) об'єкт, який забезпечує майно [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/)й Це майно повертається true якщо документ містить один або кілька цифрових підписів. Важливо відзначити, що цей метод не перевіряє підписи, він визначає, чи присутні підписи. Дійсні цифрові підписи покриваються в наступному розділі.

{{% alert color="primary" %}}

Ви також можете перевірити, якщо документ має цифрові підписи після завантаження, перевіривши його `Count` майно майна [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) збірка.

{{% /alert %}}

## Цифрові підписи на Macros (VBA Projects)

Ви можете отримати доступ до цифрових підписів на макроси. Це тому Aspose.Words не має прямої угоди з макросами в документі. Проте цифрові підписи на макроси зберігаються при експорті документа в будь-який формат слово. Ці підписи можуть бути збережені на Коді ВБА, оскільки бінарний вміст макросів не змінено навіть якщо сам документ модифікований.

### Доступ та перевірка цифрових підписів

Документ може мати декілька цифрових підписів. Ці підписи можуть отримати доступ до всіх [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) збірка. Кожен об'єкт повертається [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) що представляє собою єдиний цифровий підпис, що належить до документа. Це забезпечує членів, які дозволяють перевірити дійсність підпису.

Найголовніше майно для перевірки з цифровими підписами – це дійсність кожного підпису в документі. Всі підписи в документі можуть бути дійсні один раз, викликаючи [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) майно. Це повернеться true якщо всі підписи в документі діють або якщо документ не має підписів і false якщо принаймні один цифровий підпис не діє.

Кожен підпис також може бути індивідуально ввірений [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/)й Підпис не може бути дійсним з декількох причин, наприклад, документ було змінено з моменту підписання або отримання сертифікату. Додаткову інформацію про підпис також можна отримати. Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)й

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Підписання документів Word

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) Клас надає методи підписання документа. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) метод вивіски джерело документа з використанням [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) з цифровим підписом та записами підписаного документа на потік призначення

Нижче наведено, як записати простий документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Нижче показано, як зареєструватися зашифрований документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Підписання документа Word з лініями Signature

Ви можете зареєструвати початковий документ за допомогою [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) і [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) з цифровим підписом та записами підписаного документа на файл призначення. Використання [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) Ви можете вказати параметри оформлення документів. Нижче наведено, як створити новий рядок підпису та реєстраційний документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Нижче показано, як змінити існуючий рядок підпису та реєстраційний документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Запис документа Word за допомогою ідентифікатора сигналу

Нижче показано, як зареєструватися документ Word за допомогою ідентифікатора постачальника підписів. Криптографічний сервіс провайдер (CSP) є незалежним програмним модулем, який фактично виконує алгоритми криптографічного дослідження для автентифікації, кодування та шифрування. MS Office залишає за собою значення {00000000-0000-0000-0000-0000-000000000000000000000000} для його постачальника підписів за замовчуванням.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Створити новий підпис Лінія Sign Word Документація за допомогою ідентифікатора постачальника

Нижче наведено, як створити рядок підпису та підписку Документ Word за допомогою ідентифікатора постачальника підписів.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Доступ до цифрового значення Signature

Aspose.Words також забезпечує можливість отримання цифрового значення підпису з цифрово підписаного документа як байтовий масив за допомогою [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) майно.

Приклад коду показує, як отримати значення цифрового підпису як байтовий масив з документа:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}