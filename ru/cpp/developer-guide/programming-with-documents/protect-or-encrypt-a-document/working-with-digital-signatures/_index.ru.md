---
title: Работа с цифровыми подписями на C++
second_title: Aspose.Words для C++
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Ставьте цифровую подпись на документах и обнаруживайте, подсчитывайте, проверяйте и удаляйте существующие цифровые подписи."
type: docs
weight: 160
url: /ru/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровая подпись - это технологическая реализация электронных подписей для подписи документов и аутентификации подписавшего лица, гарантирующая, что документ не был изменен с момента его подписания. Каждая цифровая подпись уникальна для каждого подписавшего лица благодаря использованию протокола PKI для генерации как открытых, так и закрытых ключей. Цифровая подпись документа означает создание подписи с использованием закрытого ключа подписывающего лица, где для шифрования сгенерированного хэша используется математический алгоритм.

Aspose.Words позволяет обнаруживать, подсчитывать или проверять существующие цифровые подписи, а также добавлять новую подпись к документу, чтобы выявить возможные нарушения. Вы также можете удалить все цифровые подписи из документа. Используйте класс [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) для работы с цифровыми подписями.

В этой статье объясняется, как выполнить все вышеперечисленное для проверки подлинности и целостности цифрового документа.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете опробовать эту функцию с нашим [Бесплатный онлайн-подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддерживаемые форматы

Aspose.Words позволяет работать с цифровыми подписями в документах DOC, OOXML и ODT и подписывать сгенерированный документ в формате PDF или XPS.

## Ограничения, связанные с цифровыми подписями

В таблице ниже описаны некоторые ограничения, с которыми вы можете столкнуться при работе с цифровыми подписями через Aspose.Words, а также некоторые альтернативные варианты.

| Ограничение | Альтернативный вариант |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Потеря цифровых подписей в документе после его загрузки и сохранения. Таким образом, обработка документа на сервере может привести к потере всех цифровых подписей без предварительного уведомления. | Проверьте, есть ли у документа цифровые подписи, и при обнаружении таковых примите соответствующие меры. Например, отправьте клиентам уведомление о том, что загружаемый ими документ содержит цифровые подписи, которые будут потеряны в случае его обработки. |
| Aspose.Words поддерживает работу с макросами в документе. Но Aspose.Words пока не поддерживает цифровые подписи в макросах. | Экспортируйте документ обратно в любой формат Word и используйте Microsoft Word для добавления цифровой подписи к макросам. |

## Обнаружение, подсчет и проверка цифровых подписей

Aspose.Words позволяет обнаружить цифровую подпись в документе, используя метод [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) и свойство [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Стоит отметить, что такая проверка выявит только факт наличия подписи, но не ее достоверность.

Документ может быть подписан более одного раза, и это могут делать разные пользователи. Чтобы проверить действительность цифровых подписей, вам необходимо загрузить их из документа с помощью метода [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) и использовать свойство [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Также Aspose.Words позволяет подсчитать набор всех цифровых подписей в документе, используя свойство [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Все это обеспечивает эффективный и безопасный способ проверки документа на наличие подписей перед его обработкой.

В следующем примере кода показано, как обнаружить наличие цифровых подписей и проверить их:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Создайте цифровую подпись {#create-a-digital-signature}

Чтобы создать цифровую подпись, вам потребуется загрузить сертификат подписи, подтверждающий личность. Когда вы отправляете документ с цифровой подписью, вы также отправляете свой сертификат и открытый ключ.

Aspose.Words позволяет вам создать сертификат X.509, цифровой сертификат, который использует международно признанный стандарт X.509 PKI для проверки того, что открытый ключ принадлежит лицу, подписавшему сертификат. Чтобы сделать это, используйте метод [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) в классе [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

В следующих разделах объясняется, как добавить цифровую подпись, строку для подписи и как подписать созданный документ PDF.

### Подписать документ

Aspose.Words позволяет вам подписать документ DOC, DOCX или ODT цифровым способом, используя метод [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) и свойства [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

В следующем примере кода показано, как подписывать документы с использованием владельца сертификата и параметров подписи:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Добавьте строку подписи

Строка подписи - это визуальное представление цифровой подписи в документе. Aspose.Words позволяет вставить строку подписи, используя метод [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Вы также можете задать параметры для этого представления, используя класс [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Например, на рисунке ниже показано, как могут отображаться действительные и недействительные подписи.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Кроме того, если документ содержит строку для подписи и не содержит цифровой подписи, есть функция, позволяющая попросить пользователя добавить подпись.

В следующем примере кода показано, как подписать документ с помощью персонального сертификата и определенной строки подписи:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Подпишите созданный PDF документ {#sign-a-generated-pdf-document}

Aspose.Words позволяет вам подписать и получить все сведения о документе PDF, используя свойства [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

В следующем примере кода показано, как подписать сгенерированный PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Извлеките значение цифровой подписи

Aspose.Words также предоставляет возможность извлекать значение цифровой подписи из документа с цифровой подписью в виде массива байт, используя свойство [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

В следующем примере кода показано, как получить значение цифровой подписи в виде массива байтов из документа:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Удаление цифровых подписей

Aspose.Words позволяет удалить все цифровые подписи из подписанного документа, используя метод [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

В следующем примере кода показано, как загружать и удалять цифровые подписи из документа:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Обратите внимание, что вы не можете удалить только одну цифровую подпись в вашем документе.

{{% /alert %}}
