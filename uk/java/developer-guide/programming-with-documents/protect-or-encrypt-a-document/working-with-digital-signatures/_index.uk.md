---
title: Робота з цифровими підписами Java
second_title: Aspose.Words для Java
articleTitle: Робота з цифровими підписами
linktitle: Робота з цифровими підписами
description: "Визначте документи та виявляти, підрахувати та видалити існуючі цифрові підписи Javaй"
type: docs
weight: 30
url: /uk/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровий підпис – це технологічна реалізація електронних підписів на реєстраційні документи та автентифікувати підписника, щоб гарантувати, що документ не був модифікований, оскільки він підписаний. Кожен цифровий підпис унікальний для кожного підписника через протокол PKI, щоб генерувати як публічні, так і приватні ключі. Підписання документа цифрово означає створення підпису за допомогою приватного ключа реєстратора, де використовується математичний алгоритм для шифрування створеного хешу.

Aspose.Words дозволяє виявляти, підрахувати або перевірити існуючі цифрові підписи, а також додати новий підпис до вашого документа, щоб дізнатися будь-які налаштування в ньому. Ви також можете видалити всі цифрові підписи з документа. Використання [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) Клас роботи з цифровими підписами.

У статті описано, як зробити все вище, для перевірки автентичності та цілісності цифрового документа.

{{% alert color="primary" %}}

Зауважте, що ви можете отримати доступ до цифрових підписів вашого документа тільки при запуску Java 6 версія і вище.

{{% /alert %}}

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний підпис онлайн](https://products.aspose.app/words/signature)й

{{% /alert %}}

## Формати

Aspose.Words дозволяє працювати з цифровими підписами на DOC, OOXML, і ODT документи і зареєструвати генерований документ у PDF або XPS Формат.

## Обмеження цифрових сигналів

У таблиці нижче описано кілька обмежень, які ви можете зіткнутися при роботі з цифровими підписами через Aspose.Words, і деякі альтернативні варіанти.

|  Лімітація |  Альтернативний варіант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Втрата цифрових підписів на документ після завантаження та збереження його. Таким чином, обробка документа на сервер може призвести до втрати всіх цифрових підписів без повідомлення |  Перевірте, чи має документ цифрові підписи та вжити відповідну дію, якщо хтось знайдений. Наприклад, надсилайте сповіщення клієнтів, які повідомляють їх, що документ, який завантажується, містить цифрові підписи, які будуть втрачені, якщо він обробляється |
|  Aspose.Words підтримує роботу з макросами в документі. Але Aspose.Words не підтримує цифрові підписи на макроси |  Експортувати документ назад до будь-якого формату Word і використовувати Microsoft Word додати цифровий підпис на макроси |

## Виявлення, розрахунок та перевірка цифрових підписів

Aspose.Words дозволяє виявляти цифровий підпис у документі за допомогою документа [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) метод і метод [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) майно. Варто відзначити, що така перевірка виявить тільки факт підпису, але не її дійсність.

Документ може бути підписаний більше одного разу, і це може бути зроблено різними користувачами. Щоб перевірити дійсність цифрових підписів, потрібно навантажити їх з документа за допомогою документа [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) метод і використання [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) майно. Про нас Aspose.Words дозволяє підрахувати набір всіх цифрових підписів у документі за допомогою документа [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) майно.

Все це забезпечує ефективний і безпечний спосіб перевірити документ для підписів до його обробки.

Приклад коду показує, як визначити наявність цифрових підписів і перевірити їх:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Створення цифрового підпису {#create-a-digital-signature}

Для створення цифрового підпису Вам потрібно буде завантажити сертифікат, який підтверджує особу. Якщо ви надішли електронний документ, ви також надішлемо свій сертифікат та публічний ключ.

Aspose.Words дозволяє створювати сертифікат X.509, цифровий сертифікат, який використовує міжнародний стандарт X.509 PKI, щоб переконатися, що публічний ключ належить до знака, включеного до сертифікату. Для цього використовуйте [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) метод в межах [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) клас.

Наступні розділи пояснюють, як додати цифровий підпис, підписну лінію, і як записати сформований документ PDF.

### Підписатися на розсилку

Aspose.Words дозволяє записувати DOC, DOCX або ODT документ цифрово за допомогою [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) метод і [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) властивості.

Приклад коду показує, як зареєструвати документи за допомогою власника сертифіката та параметри вивіски:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Додавання лінії Signature

У документі є візуальне представлення цифрового підпису. Aspose.Words дозволяє вставляти підписну лінію за допомогою [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) метод. Ви також можете встановити параметри для цього представлення за допомогою [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) клас.

Наприклад, картина нижче показує, наскільки дійсні та недійсні підписи можна відображати.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Також, якщо документ містить підписну лінію і не цифровий підпис, існує можливість попросити користувача додати підпис.

Приклад коду показує, як зареєструватися документ з персональним сертифікатом та конкретною лінійкою підписів:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Підпишіться на розсилку PDF {#sign-a-generated-pdf-document}

Aspose.Words дозволяє зареєструватися і отримати всі деталі документа PDF за допомогою [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) властивості.

Приклад коду показує, як зареєструватися створеного PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

На малюнку нижче показано, що згенерований документ PDF відкривається у Adobe Acrobat і цифровий підпис перевіряється як тепер і діє.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Доступ до цифрового значення сигналу

Aspose.Words також забезпечує можливість отримання цифрового значення підпису з цифрово підписаного документа як байтовий масив за допомогою [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) майно.

Приклад коду показує, як отримати значення цифрового підпису як байтовий масив з документа:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Видалити цифрові підписи

Aspose.Words дозволяє видалити всі цифрові підписи з підписаного документа [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) метод.

Приклад коду показує, як завантажувати та видаляти цифрові підписи з документа:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Зверніть увагу, що ви не можете видалити тільки один цифровий підпис у вашому документі.

{{% /alert %}}
