---
title: Робота з цифровими підписами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з цифровими підписами
linktitle: Робота з цифровими підписами
description: "Цифровим підписом на документах та виявляйте, підраховуйте, перевіряйте та видаляйте наявні цифрові підписи."
type: docs
weight: 160
url: /uk/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровий підпис - це технологічна реалізація електронних підписів для підписання документів та автентифікації підписувача, що гарантує, що документ не був змінений з моменту його підписання. Кожен цифровий підпис унікальний для кожного підписувача завдяки використанню протоколу PKI для генерації як відкритих, так і приватних ключів. Цифровий підпис документа означає Створення підпису за допомогою приватного ключа підписувача, де для шифрування Згенерованого хешу використовується математичний алгоритм.

Aspose.Words дозволяє виявляти, підраховувати або перевіряти існуючі цифрові підписи, а також додавати новий підпис до документа, щоб виявити можливі порушення. Ви також можете видалити всі цифрові підписи з документа. Використовуйте клас [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) для роботи з цифровими підписами.

У цій статті пояснюється, як виконати все вищезазначене для перевірки автентичності та цілісності цифрового документа.

{{% alert color="primary" %}}

**Спробуйте онлайн**

Ви можете випробувати цю функцію з нашим [Безкоштовний онлайн-підпис](https://products.aspose.app/words/signature).

{{% /alert %}}

## Підтримувані формати

Aspose.Words дозволяє працювати з цифровими підписами в документах DOC, OOXML і ODT і підписувати згенерований документ у форматі PDF або XPS.

## Обмеження, пов'язані з цифровими підписами

У таблиці нижче описані деякі обмеження, з якими ви можете зіткнутися при роботі з цифровими підписами через Aspose.Words, а також деякі альтернативні варіанти.

| Обмеження | Альтернативний варіант |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Втрата цифрових підписів у документі після його завантаження та збереження. Таким чином, обробка документа на сервері може призвести до втрати всіх цифрових підписів без попереднього повідомлення. | Перевірте, чи є у документа цифрові підписи, і при виявленні таких прийміть відповідні заходи. Наприклад, надішліть клієнтам повідомлення про те, що документ, який вони завантажують, містить цифрові підписи, які будуть втрачені в разі його обробки. |
| Aspose.Words підтримує роботу з макросами в документі. Але Aspose.Words ще не підтримує цифрові підписи в макросах. | Експортуйте документ назад у будь-який формат Word та використовуйте Microsoft Word для додавання цифрового підпису до макросів. |

## Виявлення, підрахунок та перевірка цифрових підписів

Aspose.Words дозволяє виявити цифровий підпис у документі, використовуючи метод [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) та властивість [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Варто відзначити, що така перевірка виявить тільки факт наявності підпису, але не її достовірність.

Документ може бути підписаний більше одного разу, і це можуть робити різні користувачі. Щоб перевірити дійсність цифрових підписів, вам потрібно завантажити їх із документа методом [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) та використовувати властивість [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Також Aspose.Words дозволяє підрахувати набір усіх цифрових підписів у документі, використовуючи властивість [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Все це забезпечує ефективний і безпечний спосіб перевірки документа на наявність підписів перед його обробкою.

Наступний приклад коду показує, як виявити наявність цифрових підписів та перевірити їх:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Створіть цифровий підпис {#create-a-digital-signature}

Щоб створити цифровий підпис, Вам потрібно буде Завантажити сертифікат підпису, що підтверджує особу. Коли ви надсилаєте документ із цифровим підписом, ви також надсилаєте свій сертифікат та відкритий ключ.

Aspose.Words дозволяє створити сертифікат X. 509, цифровий сертифікат, який використовує міжнародно визнаний стандарт X. 509 PKI для перевірки того, що відкритий ключ належить особі, яка підписала сертифікат. Для цього використовуйте метод [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) у класі [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

У наступних розділах пояснюється, як додати цифровий підпис, рядок для підпису та як підписати створений документ PDF.

### Підписати документ

Aspose.Words дозволяє підписати документ DOC, DOCX або ODT цифровим способом, використовуючи метод [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) та властивості [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

Наступний приклад коду показує, як підписувати документи за допомогою власника сертифіката та параметрів підпису:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Додайте рядок підпису

Рядок підпису-це візуальне зображення цифрового підпису в документі. Aspose.Words дозволяє вставити рядок підпису, використовуючи метод [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Ви також можете задати параметри для цього подання, використовуючи клас [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Наприклад, на малюнку нижче показано, як можуть відображатися дійсні та недійсні підписи.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Крім того, якщо документ містить рядок для підпису і не містить цифрового підпису, є функція, яка дозволяє користувачеві додати підпис.

Наступний приклад коду показує, як підписати документ за допомогою персонального сертифіката та певного рядка підпису:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Підпишіть створений PDF документ {#sign-a-generated-pdf-document}

Aspose.Words дозволяє підписати та отримати всю інформацію про документ PDF, використовуючи властивості [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

Наступний приклад коду показує, як підписати згенерований PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Витягніть значення цифрового підпису

Aspose.Words також надає можливість витягувати значення цифрового підпису з документа з цифровим підписом у вигляді масиву байт, використовуючи властивість [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Наступний приклад коду показує, як отримати значення цифрового підпису як байтовий масив із документа:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Видалення цифрових підписів

Aspose.Words дозволяє видалити всі цифрові підписи з підписаного документа, використовуючи метод [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Наступний приклад коду показує, як завантажувати та видаляти цифрові підписи з документа:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Зверніть увагу, що ви не можете видалити лише один цифровий підпис у своєму документі.

{{% /alert %}}
