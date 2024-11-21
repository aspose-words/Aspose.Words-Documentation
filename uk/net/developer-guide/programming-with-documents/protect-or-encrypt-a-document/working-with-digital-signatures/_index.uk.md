---
title: Робота з цифровими підписами C#
second_title: Aspose.Words для .NET
articleTitle: Робота з цифровими підписами
linktitle: Робота з цифровими підписами
description: "Визначте документи та виявляти, підрахувати та видалити існуючі цифрові підписи C#й"
type: docs
weight: 40
url: /uk/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровий підпис - це технологічна реалізація електронних підписів на реєстраційні документи та автентифікувати підписника, щоб гарантувати, що документ не був модифікований, оскільки він підписаний. Кожен цифровий підпис унікальний для кожного підписника через протокол PKI, щоб генерувати як публічні, так і приватні ключі. Підписання документа цифрово означає створення підпису за допомогою приватного ключа реєстратора, де використовується математичний алгоритм для шифрування створеного хешу.

Aspose.Words дозволяє виявляти, підрахувати або перевірити існуючі цифрові підписи, а також додати новий підпис до вашого документа, щоб дізнатися будь-які налаштування в ньому. Ви також можете видалити всі цифрові підписи з документа. Використання [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) Клас роботи з цифровими підписами.

Ця стаття пояснює, як зробити все вище, щоб підтвердити автентичність та цілісність цифрового документа.

{{% alert color="primary" %}}

Зауважте, що ви можете отримати доступ до цифрових підписів вашого документа тільки при запуску .NET Framework 2.0 версія і вище.

{{% /alert %}}

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний підпис онлайн](https://products.aspose.app/words/signature)й

{{% /alert %}}

## Підтримані формати

Aspose.Words дозволяє працювати з цифровими підписами на DOC, OOXML, і ODT документи і зареєструвати генерований документ у PDF або XPS Формат.

## Обмеження цифрових сигналів

У таблиці нижче описано кілька обмежень, які ви можете зіткнутися при роботі з цифровими підписами Aspose.Words, і деякі альтернативні варіанти.

|  Лімітація |  Альтернативна опція |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Втрата цифрових підписів на документ після завантаження та збереження його. Таким чином, обробка документа на сервер може призвести до втрати всіх цифрових підписів без повідомлення |  Перевірити, якщо документ має цифрові підписи і приймати відповідну дію, якщо хтось знайдений. Наприклад, надсилайте оповіщення про клієнтів, які повідомляють їх, що документ, який завантажується, містить цифрові підписи, які будуть втрачені, якщо він оброблений |
|  Aspose.Words підтримує роботу з макросами в документі. Але Aspose.Words не підтримує цифрові підписи на макроси |  Експортуйте документ назад до будь-якого формату Word та використовуйте Microsoft Word додати цифровий підпис на макроси |

## Виявлення, розрахунок та перевірка цифрових підписів

Aspose.Words дозволяє виявляти цифровий підпис у документі за допомогою документа [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) метод і метод [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) майно. Варто відзначити, що така перевірка виявить тільки факт підпису, але не її дійсність.

Документ може бути підписаний більше одного разу, і це може бути зроблено різними користувачами. Щоб перевірити дійсність цифрових підписів, потрібно навантажити їх з документа за допомогою документа [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) метод і використання [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) майно. Про нас Aspose.Words дозволяє підрахувати набір всіх цифрових підписів у документі за допомогою документа [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) майно.

Все це забезпечує ефективний і безпечний спосіб перевірити документ для підписів до його обробки.

Приклад коду показує, як визначити наявність цифрових підписів та перевірити їх:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Створення цифрового підпису {#create-a-digital-signature}

Для створення цифрового підпису Вам потрібно буде завантажити сертифікат, який підтверджує особу. Якщо ви надішлемо документ, ви також надішлемо свій сертифікат та публічний ключ.

Aspose.Words дозволяє створювати сертифікат X.509, цифровий сертифікат, який використовує міжнародний стандарт X.509 PKI, щоб переконатися, що публічний ключ належить до знака, включеного до сертифікату. Для цього використовуйте [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) метод в межах [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) клас.

Наступні розділи пояснюють, як додати цифровий підпис, підписну лінію, і як записати сформований документ PDF.

### Підписатися на розсилку

Aspose.Words дозволяє зареєструвати DOC, DOCX, XPS, або документ ODT цифрово за допомогою [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) метод і [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) властивості.

Приклад коду показує, як зареєструвати документи за допомогою сертифіката та реєстраційних параметрів:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Додавання лінії Signature

У документі є візуальне представлення цифрового підпису. Aspose.Words дозволяє вставляти підписну лінію за допомогою [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) метод. Ви також можете встановити параметри для цього представлення за допомогою [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) клас.

Наприклад, картина нижче показує, як можна відображати дійсні та недійсні підписи.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="drawing" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="drawing" style="width:300px"/>

Також, якщо документ містить підписну лінію та цифровий підпис, існує можливість попросити користувача додати підпис.

Наприклад, наступний код показує, як записати документ з персональним сертифікатом та конкретною лінійкою підписів:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Підпишіться на розсилку PDF {#sign-a-generated-pdf-document}

Aspose.Words дозволяє зареєструватися і отримати всі деталі документа PDF за допомогою [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) властивості.

Приклад коду показує, як зареєструватися створеного PDF:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Доступ до цифрового значення Signature

Aspose.Words також забезпечує можливість отримання цифрового значення підпису з цифрово підписаного документа як байтовий масив за допомогою [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) майно.

Приклад коду показує, як отримати значення цифрового підпису як байтовий масив з документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Видалити цифрові підписи

Aspose.Words дозволяє видалити всі цифрові підписи з підписаного документа [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) метод.

Приклад коду показує, як завантажувати та видаляти цифрові підписи з документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Зверніть увагу, що ви не можете видалити тільки один цифровий підпис у вашому документі.

{{% /alert %}}
