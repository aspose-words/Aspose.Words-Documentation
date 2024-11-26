---
title: Работа с цифрови подписи в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с цифрови подписи
linktitle: Работа с цифрови подписи
description: "Цифрово подписване на документи и откриване, преброяване, проверка и премахване на съществуващите цифрови подписи, като се използват C#."
type: docs
weight: 40
url: /bg/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровият подпис е технологично приложение на електронните подписи за подписване и удостоверяване на подписа, за да се гарантира, че документът не е бил изменян от момента на подписването му. Всеки цифров подпис е уникален за всеки подпис, поради следването на протокола PKI за генериране на публични и частни ключове. Подписване на документ дигитално означава създаване на подпис с помощта на частния ключ на подписвача, където се използва математически алгоритъм за криптиране на генерирания хашиш.

Aspose.Words ви позволява да откривате, броите или проверявате съществуващи цифрови подписи, а също и да добавяте нов подпис към документа си, за да разберете каквото и да е подправяне в него. Можете също така да премахнете всички цифрови подписи от документ. Използвайте [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) клас за работа с цифрови подписи.

Тази статия обяснява как да се направи всичко това, за да се потвърди автентичността и целостта на цифров документ.

{{% alert color="primary" %}}

Имайте предвид, че можете да получите достъп до цифрови подписи на вашия документ само когато работи на .NET Framework 2.0 версия и горе.

{{% /alert %}}

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн подпис](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддържани формати

Aspose.Words ви позволява да работите с цифрови подписи върху документи DOC, OOXML и ODT и да подписвате генерирания документ в PDF или XPS формат.

## Ограничения на цифровите подписи

Таблицата по-долу описва няколко ограничения, с които може да се сблъскате, докато работите с цифрови подписи чрез Aspose.Words, както и някои алтернативни варианти.

|  Ограничения |  Алтернативен вариант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Загуба на цифрови подписи на документ след зареждане и запазване. Следователно обработката на документ на сървър може да причини загуба на всички цифрови подписи без предизвестие |  Проверете дали документът има цифрови подписи и предприемете необходимите действия, ако има такива. Например, изпратете сигнал на клиентите, за да ги информират, че документът, който качват, съдържа цифрови подписи, които ще бъдат изгубени, ако бъде обработен |
|  Aspose.Words подкрепя работата с макроси в документ. Но... Aspose.Words все още не подкрепя цифровите подписи на макроси |  Експортиране на документа обратно във формат Word и използване Microsoft Word да се добави цифров подпис към макросите |

## Откриване, преброяване и проверка на цифрови подписи

Aspose.Words ви позволява да откриете цифров подпис в документ, като използвате [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) метод и [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) собственост. Струва си да се отбележи, че такава проверка ще открие само факта на подписа, но не и валидността му.

Документ може да бъде подписан повече от веднъж и това може да се направи от различни потребители. За да проверите валидността на цифровите подписи, трябва да ги заредите от документа с помощта на [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) метод и използване на [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) собственост. Също така Aspose.Words ви позволява да брои набор от всички цифрови подписи в рамките на документ, използвайки [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) собственост.

Всичко това осигурява ефективен и безопасен начин за проверка на документ за подпис, преди да го обработва.

Следният пример с код показва как да се засече наличието на цифрови подписи и да се проверят:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Създаване на цифров подпис {#create-a-digital-signature}

За да създадете цифров подпис, ще трябва да заредите удостоверение за подписване, което потвърждава самоличността. Когато изпращате цифрово подписан документ, изпращате и вашия сертификат и публичен ключ.

Aspose.Words ви позволява да създадете X.509 сертификат, дигитален сертификат, който използва международно приетия X.509 PKI стандарт, за да се провери дали публичният ключ принадлежи към подписа, включен в сертификата. За целта използвайте [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) метод в рамките на [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) Клас.

Следващите раздели обясняват как да се добави цифров подпис, линия за подпис и как да се подпише генериран PDF документ.

### Подпис на документ

Aspose.Words ви позволява да подпишете DOC, DOCX, XPS, или ОДТ документ дигитално с помощта на [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) метод и [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) имоти.

Следният пример за код показва как да се подпишат документи, като се използва притежател на сертификат и опции за подписване:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Добавяне на подпис

Линията на подпис е визуално представяне на цифров подпис в документ. Aspose.Words ви позволява да поставите линия за подпис с помощта на [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) метод. Можете също така да зададете параметрите за това представяне с помощта на [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) Клас.

Например, снимката по-долу показва колко валидни и невалидни подписи могат да бъдат показани.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="drawing" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="drawing" style="width:300px"/>

Също така, ако документът съдържа линия за подпис и няма цифров подпис, има функция, която да поиска от потребителя да добави подпис.

Следният пример за код показва как да се подпише документ с личен сертификат и определен подпис:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Подпис на генериран PDF документ {#sign-a-generated-pdf-document}

Aspose.Words ви позволява да подпишете и да получите всички подробности за PDF документ с помощта на [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) имоти.

Следният пример с код показва как да се подпише генериран PDF:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Изтегляне на стойността на цифровия подпис

Aspose.Words Също така предоставя възможност за извличане на стойността на цифровия подпис от цифров подписан документ като байт масив с помощта на [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) собственост.

Следният пример за код показва как да се получи стойността на цифровия подпис като байт масив от документ:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Премахване на цифровите подписи

Aspose.Words ви позволява да премахнете всички цифрови подписи от подписан документ с помощта на [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) метод.

Следният пример за код показва как да се зареди и премахне цифровите подписи от документ:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Имайте предвид, че не можете да премахнете само един цифров подпис във вашия документ.

{{% /alert %}}
