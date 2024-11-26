---
title: Работа с цифрови подписи в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с цифрови подписи
linktitle: Работа с цифрови подписи
description: "Цифрово подписване на документи и откриване, преброяване, проверка и премахване на съществуващите цифрови подписи, като се използват Java."
type: docs
weight: 30
url: /bg/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровият подпис е технологично приложение на електронните подписи за подписване и удостоверяване на подписа, за да се гарантира, че документът не е бил изменян от момента на подписването му. Всеки цифров подпис е уникален за всеки подпис, поради следването на протокола PKI за генериране на публични и частни ключове. Подписване на документ дигитално означава създаване на подпис с помощта на частния ключ на подписа, където се използва математически алгоритъм за криптиране на генерирания хашиш.

Aspose.Words ви позволява да откривате, броите или проверявате съществуващи цифрови подписи, а също и да добавяте нов подпис към документа си, за да разберете каквото и да е подправяне в него. Можете също така да премахнете всички цифрови подписи от документ. Използвайте [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) клас за работа с цифрови подписи.

Тази статия обяснява как да се направи всичко това, за да се потвърди автентичността и целостта на цифров документ.

{{% alert color="primary" %}}

Имайте предвид, че можете да получите достъп до цифрови подписи на вашия документ само при изпълнение на Java 6 версия и по-горе.

{{% /alert %}}

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн подпис](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддържани формати

Aspose.Words ви позволява да работите с цифрови подписи върху документи DOC, OOXML и ODT и да подпишете генерирания документ в PDF или XPS форматиране.

## Ограничения на цифровите подписи

Таблицата по-долу описва няколко ограничения, с които можете да се сблъскате при работа с цифрови подписи чрез Aspose.Words, както и някои алтернативни възможности.

|  Ограничения |  Алтернативен вариант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Загуба на цифрови подписи върху документ след зареждане и запазване. Следователно обработката на документ на сървър може да причини загуба на всички цифрови подписи без предизвестие |  Проверете дали документът има цифрови подписи и предприемете необходимите действия, ако има такива. Например, изпратете сигнал до клиентите, за да ги информират, че документът, който качват, съдържа цифрови подписи, които ще бъдат изгубени, ако бъде обработен |
|  Aspose.Words подкрепя работата с макроси в документ. Но... Aspose.Words все още не поддържа цифрови подписи върху макроси |  Експортиране на документа обратно във формат Word и използване Microsoft Word да се добави цифров подпис към макросите |

## Открийте, пребройте и проверете цифровите подписи

Aspose.Words ви позволява да откриете цифров подпис в документ с помощта на [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) метод и [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) собственост. Струва си да се отбележи, че такава проверка ще открие само факта на подписа, но не и валидността му.

Документ може да бъде подписан повече от веднъж и това може да бъде направено от различни потребители. За да проверите валидността на цифровите подписи, трябва да ги заредите от документа с помощта на [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) метод и използване на [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) собственост. Също така Aspose.Words ви позволява да броите набор от всички цифрови подписи в рамките на документ с помощта на [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) собственост.

Всичко това осигурява ефективен и безопасен начин за проверка на документ за подписи преди обработката му.

Следният пример за код показва как да се открие наличието на цифрови подписи и да се проверят:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Създаване на цифров подпис {#create-a-digital-signature}

За да създадете цифров подпис, ще трябва да заредите сертификат за подписване, който потвърждава самоличността. Когато изпращате дигитално подписан документ, изпращате и вашия сертификат и публичен ключ.

Aspose.Words ви позволява да създадете X.509 сертификат, дигитален сертификат, който използва международно приетия X.509 PKI стандарт, за да потвърди, че публичният ключ принадлежи към подписа, включен в сертификата. За целта използвайте [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) метод в рамките на [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) Клас.

Следващите раздели обясняват как да се добави цифров подпис, линия за подпис и как да се подпише генериран PDF документ.

### Подпис на документ

Aspose.Words ви позволява да подпишете DOC, DOCX или OTT документ дигитално с помощта на [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) метод и [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) имоти.

Следният пример за код показва как да се подписват документи с използване на притежател на сертификат и опции за подписване:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Добавяне на подпис

Линията на подпис е визуално представяне на цифров подпис в документ. Aspose.Words ви позволява да въведете сигнатура, като използвате [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) метод. Можете също така да зададете параметрите за това представяне с помощта на [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) Клас.

Например, снимката по-долу показва колко валидни и невалидни подписи могат да бъдат показани.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Също така, ако документът съдържа линия за подпис и няма цифров подпис, има функция, която да поиска от потребителя да добави подпис.

Следният пример за код показва как да се подпише документ с личен сертификат и определен подпис:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Подпис на генериран PDF документ {#sign-a-generated-pdf-document}

Aspose.Words ви позволява да подпишете и да получите всички подробности за PDF документ с помощта на [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) имоти.

Следният пример с код показва как да се подпише генериран PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Снимката по-долу показва, че генерираният PDF документ е отворен в Adobe Acrobat дигиталният подпис се проверява като настоящ и валиден.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Изтегляне на стойността на цифровия подпис

Aspose.Words Също така предоставя възможност за извличане на стойността на цифровия подпис от цифров подписан документ като байт масив с помощта на [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) собственост.

Следният пример за код показва как да се получи стойността на цифровия подпис като байт масив от документ:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Премахване на цифрови подписи

Aspose.Words ви позволява да премахнете всички цифрови подписи от подписан документ с помощта на [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) метод.

Следният пример за код показва как да заредите и премахнете цифровите подписи от документ:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Имайте предвид, че не можете да премахнете само един цифров подпис във вашия документ.

{{% /alert %}}
