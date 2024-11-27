---
title: Работа с цифрови подписи в C++
second_title: Aspose.Words за C++
articleTitle: Работа с цифрови подписи
linktitle: Работа с цифрови подписи
description: "Цифрово подписване на документи и откриване, преброяване, проверка и премахване на съществуващи цифрови подписи."
type: docs
weight: 160
url: /bg/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровият подпис е технологично изпълнение на електронни подписи за подписване на документи и удостоверяване на подписващия, за да се гарантира, че документът не е бил променян след подписването му. Всеки цифров подпис е уникален за всеки подписващ, защото следва протокола PKI за генериране на публични и частни ключове. Цифровото подписване на документ означава създаване на подпис, използвайки частния ключ на подписващия, където се използва математически алгоритъм за криптиране на генерирания хеш.

Aspose.Words Позволява ви да откривате, броите или проверявате съществуващи цифрови подписи, както и да добавяте нов подпис към документа си, за да разберете всяко подправяне в него. Можете също да премахнете всички цифрови подписи от документ. Използвайте клас [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) за работа с цифрови подписи.

Тази статия обяснява как да направите всичко това, за да потвърдите автентичността и целостта на цифров документ.

{{% alert color="primary" %}}

**Опитайте онлайн**

Можете да опитате тази функционалност с нашата [Безплатен онлайн подпис](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддържани Формати

Aspose.Words ви позволява да работите с цифрови подписи на документи DOC, OOXML и ODT и да подписвате генерирания документ във формат PDF или XPS.

## Ограничения на цифровите подписи

Таблицата по-долу описва няколко ограничения, с които може да се сблъскате, докато работите с цифрови подписи чрез Aspose.Words, както и някои алтернативни опции.

| Ограничение | Алтернативен вариант |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Загуба на цифрови подписи върху документ след зареждането и записването му. Следователно обработката на документ на сървър може да доведе до загуба на всички цифрови подписи без предизвестие. | Проверете дали даден документ има цифрови подписи и предприемете съответните действия, ако бъдат открити такива. Например, изпратете предупреждение до клиентите, като ги информирате, че документът, който качват, съдържа цифрови подписи, които ще бъдат загубени, ако се обработват. |
| Aspose.Words поддържа работа с макроси в документ. Но Aspose.Words все още не поддържа цифрови подписи на макроси. | Експортирайте документа обратно във всеки формат Word и използвайте Microsoft Word, за да добавите цифров подпис към макроси. |

## Откриване, преброяване и проверка на цифрови подписи

Aspose.Words ви позволява да откривате цифров подпис в документ, като използвате метода [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) и свойствата [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Струва си да се отбележи, че такава проверка ще открие само факта на подписа, но не и неговата валидност.

Един документ може да бъде подписан повече от веднъж и това може да бъде направено от различни потребители. За да проверите валидността на цифровите подписи, трябва да ги заредите от документа, като използвате метода [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) и да използвате свойството [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Също Aspose.Words ви позволява да преброите набор от всички цифрови подписи в документ, като използвате свойството [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Всичко това осигурява ефективен и безопасен начин за проверка на документ за подписи, преди да го обработите.

Следващият пример за код показва как да откриете наличието на цифрови подписи и да ги проверите:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Създаване на цифров подпис {#create-a-digital-signature}

За да създадете цифров подпис, ще трябва да заредите сертификат за подписване, който потвърждава самоличността. Когато изпращате цифрово подписан документ, вие също изпращате сертификата си и публичния си ключ.

Aspose.Words ви позволява да създадете сертификат х. 509, цифров сертификат, който използва международно признатия стандарт х.509 PKI, за да проверите дали публичният ключ принадлежи на подписващия, включен в сертификата. За да направите това, използвайте метода [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) в рамките на класа [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Следващите раздели обясняват как да добавите цифров подпис, ред за подпис и как да подпишете генериран PDF документ.

### Подписване на документ

Aspose.Words ви позволява да подпишете документ DOC, DOCX или ODT цифрово, като използвате метода [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) и [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) свойства.

Следващият пример за код показва как да подписвате документи с помощта на притежател на сертификат и опции за подписване:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Добавяне на ред за подпис

Ред за подпис е визуално представяне на цифров подпис в документ. Aspose.Words ви позволява да вмъкнете ред за подпис, като използвате метода [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Можете също да зададете параметрите за това представяне, като използвате класа [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Например картината по-долу показва как могат да се показват валидни и невалидни подписи.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Също така, ако даден документ съдържа ред за подпис и няма цифров подпис, има функция, която да поиска от потребителя да добави подпис.

Следният пример за код показва как да подпишете документ с личен сертификат и конкретен ред за подпис:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Подпишете генериран PDF документ {#sign-a-generated-pdf-document}

Aspose.Words ви позволява да подпишете и да получите всички подробности за PDF документ, като използвате [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) свойства.

Следващият пример за код показва как да подпишете генериран PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Възстановяване на стойността на цифровия подпис

Aspose.Words също така предоставя възможност за извличане на стойността на цифровия подпис от цифрово подписан документ като байтов масив, като се използва свойството [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Следващият пример за код показва как да получите стойността на цифровия подпис като байтов масив от документ:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Премахване На Цифрови Подписи

Aspose.Words ви позволява да премахнете всички цифрови подписи от подписан документ, като използвате метода [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Следващият пример за код показва как да зареждате и премахвате цифрови подписи от документ:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Имайте предвид, че не можете да премахнете само един цифров подпис във вашия документ.

{{% /alert %}}
