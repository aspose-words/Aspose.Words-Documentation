---
title: Работа с цифровыми подписями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Подписывайте документы цифровой подписью, а также обнаруживайте, подсчитывайте, проверяйте и удаляйте существующие цифровые подписи с помощью C#."
type: docs
weight: 40
url: /ru/net/working-with-digital-signatures/
---

Цифровая подпись — это технологическая реализация электронных подписей для подписания документов и аутентификации подписавшего, чтобы гарантировать, что документ не был изменен с момента его подписания. Каждая цифровая подпись уникальна для каждого подписывающего лица, поскольку используется протокол PKI для генерации как открытых, так и закрытых ключей. Подписание документа в цифровом виде означает создание подписи с использованием закрытого ключа подписывающего лица, где математический алгоритм используется для шифрования сгенерированного хеша.

Aspose.Words позволяет обнаруживать, подсчитывать или проверять существующие цифровые подписи, а также добавлять в документ новую подпись, чтобы обнаружить любые попытки ее подделки. Вы также можете удалить все цифровые подписи из документа. Используйте класс [DigitalSignatureUtil](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignatureutil/) для работы с цифровыми подписями.

В этой статье объясняется, как сделать все вышеперечисленное, чтобы проверить подлинность и целостность цифрового документа.

{{% alert color="primary" %}}

Обратите внимание, что вы можете получить доступ к цифровым подписям вашего документа только при использовании версии .NET Framework 2.0 и выше.

{{% /alert %}}

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатная онлайн-подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддерживаемые форматы

Aspose.Words позволяет работать с цифровыми подписями в документах DOC, OOXML и ODT и подписывать созданный документ в формате PDF или XPS.

## Ограничения цифровых подписей

В таблице ниже описаны некоторые ограничения, с которыми вы можете столкнуться при работе с ЭЦП через Aspose.Words, а также некоторые альтернативные варианты.

|  Ограничение |  Альтернативный вариант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Потеря цифровой подписи документа после его загрузки и сохранения. Таким образом, обработка документа на сервере может привести к потере всех цифровых подписей без предварительного уведомления |  Проверьте, есть ли на документе цифровые подписи, и при их обнаружении примите соответствующие меры. Например, отправьте клиентам предупреждение о том, что загружаемый ими документ содержит цифровые подписи, которые будут потеряны при его обработке |
|  Aspose.Words поддерживает работу с макросами в документе. Но Aspose.Words пока не поддерживает цифровую подпись на макросах |  Экспортируйте документ обратно в любой формат Word и используйте Microsoft Word, чтобы добавить цифровую подпись к макросам |

## Обнаружение, подсчет и проверка цифровых подписей

Aspose.Words позволяет обнаружить цифровую подпись в документе с помощью метода [DetectFileFormat](https://reference.aspose.com/words/ru/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) и свойства [HasDigitalSignature](https://reference.aspose.com/words/ru/net/aspose.words/fileformatinfo/hasdigitalsignature/). Стоит отметить, что такая проверка выявит лишь факт наличия подписи, но не ее достоверность.

Документ может быть подписан несколько раз, причем это могут делать разные пользователи. Чтобы проверить достоверность ЭЦП, необходимо загрузить их из документа методом [LoadSignatures](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) и использовать свойство [IsValid](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Также Aspose.Words позволяет подсчитать набор всех цифровых подписей в документе, используя свойство [Count](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Все это обеспечивает эффективный и безопасный способ проверки документа на наличие подписей перед его обработкой.

В следующем примере кода показано, как обнаружить наличие цифровых подписей и проверить их:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Создать цифровую подпись {#create-a-digital-signature}

Для создания цифровой подписи вам потребуется загрузить сертификат подписи, подтверждающий личность. Когда вы отправляете документ с цифровой подписью, вы также отправляете свой сертификат и открытый ключ.

Aspose.Words позволяет создать сертификат X.509 — цифровой сертификат, который использует международно признанный стандарт X.509 PKI для проверки принадлежности открытого ключа подписавшему лицу, включенному в сертификат. Для этого используйте метод [Create](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/certificateholder/create/) в классе [CertificateHolder](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/certificateholder/).

В следующих разделах объясняется, как добавить цифровую подпись, строку подписи и как подписать созданный документ PDF.

### Подписать документ

Aspose.Words позволяет подписывать документы DOC, DOCX, XPS или ODT в цифровой форме, используя метод [Sign](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) и свойства [SignOptions](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/signoptions/).

В следующем примере кода показано, как подписывать документы с помощью владельца сертификата и параметров подписи:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Добавить строку подписи

Строка подписи — это визуальное представление цифровой подписи в документе. Aspose.Words позволяет вставить строку подписи методом [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertsignatureline/). Вы также можете установить параметры этого представления, используя класс [SignatureLineOptions](https://reference.aspose.com/words/ru/net/aspose.words/signaturelineoptions/).

Например, на рисунке ниже показано, как могут отображаться действительные и недействительные подписи.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="рисунок" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="рисунок" style="width:300px"/>

Кроме того, если документ содержит строку подписи и не имеет цифровой подписи, существует функция, предлагающая пользователю добавить подпись.

В следующем примере кода показано, как подписать документ с помощью личного сертификата и определенной строки подписи:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Подпишите созданный PDF-документ {#sign-a-generated-pdf-document}

Aspose.Words позволяет подписывать и получать всю информацию о PDF-документе, используя свойства [PdfDigitalSignatureDetails](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfdigitalsignaturedetails/).

В следующем примере кода показано, как подписать созданный PDF-файл:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Получить значение цифровой подписи

Aspose.Words также предоставляет возможность получить значение цифровой подписи из документа с цифровой подписью в виде массива байтов с помощью свойства [SignatureValue](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

В следующем примере кода показано, как получить значение цифровой подписи в виде массива байтов из документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Удалить цифровые подписи

Aspose.Words позволяет удалить все цифровые подписи из подписанного документа методом [RemoveAllSignatures](https://reference.aspose.com/words/ru/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

В следующем примере кода показано, как загружать и удалять цифровые подписи из документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Обратите внимание, что вы не можете удалить только одну цифровую подпись в документе.

{{% /alert %}}
