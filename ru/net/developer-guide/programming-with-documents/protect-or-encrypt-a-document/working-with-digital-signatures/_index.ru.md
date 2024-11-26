---
title: Работа с цифровыми подписями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Цифровая подпись документов и обнаружение, подсчет, проверка и удаление существующих цифровых подписей с использованием C#."
type: docs
weight: 40
url: /ru/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровая подпись - это технологическая реализация электронных подписей для подписания документов и аутентификации подписавшего, чтобы гарантировать, что документ не был изменен с момента его подписания. Каждая цифровая подпись уникальна для каждого подписавшего из-за следования протоколу PKI для создания как открытых, так и закрытых ключей. Подписание документа в цифровом виде означает создание подписи с использованием закрытого ключа подписавшего, где математический алгоритм используется для шифрования генерируемого хеша.

Aspose.Words Позволяет обнаруживать, подсчитывать или проверять существующие цифровые подписи, а также добавлять новую подпись в документ, чтобы выяснить любое вмешательство в него. Вы также можете удалить все цифровые подписи из документа. Используйте [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) Класс для работы с цифровыми подписями.

В этой статье объясняется, как сделать все вышеперечисленное, чтобы подтвердить подлинность и целостность цифрового документа.

{{% alert color="primary" %}}

Обратите внимание, что вы можете получить доступ к цифровым подписям вашего документа только при запуске .NET Framework Версия 2.0 и выше.

{{% /alert %}}

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатная онлайн подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Поддерживаемые форматы

Aspose.Words позволяет работать с цифровыми подписями на документах DOC, OOXML и ODT и подписывать сгенерированный документ в формате PDF или XPS Формат.

## Ограничения цифровых подписей

В таблице ниже описаны некоторые ограничения, с которыми вы можете столкнуться при работе с цифровыми подписями. Aspose.Words, А также некоторые альтернативные варианты.

|  ограничение |  Альтернативный вариант |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Потеря цифровых подписей на документе после загрузки и сохранения. Поэтому обработка документа на сервер может привести к потере всех цифровых подписей без уведомления |  Проверьте, есть ли в документе цифровые подписи, и при обнаружении их примите соответствующие меры. Например, отправьте уведомление клиентам, сообщив им, что документ, который они загружают, содержит цифровые подписи, которые будут потеряны, если он будет обработан |
|  Aspose.Words Поддерживает работу с макросами в документе. Но Aspose.Words Пока не поддерживает цифровые подписи на макросах |  Экспортировать документ в любой формат Word и использовать его. Microsoft Word Добавить цифровую подпись в макросы |

## Обнаружение, подсчет и проверка цифровых подписей

Aspose.Words позволяет обнаружить цифровую подпись в документе, используя [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) метод и его [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) собственность. Стоит отметить, что такая проверка позволит лишь выявить факт подписи, но не ее действительность.

Документ может быть подписан не один раз, и это могут сделать разные пользователи. Чтобы проверить действительность цифровых подписей, необходимо загрузить их из документа с помощью [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) Метод и использование [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) собственность. Также Aspose.Words позволяет подсчитать набор всех цифровых подписей в документе, используя [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) собственность.

Все это обеспечивает эффективный и безопасный способ проверки документа на подпись перед его обработкой.

Следующий пример кода показывает, как обнаружить наличие цифровых подписей и проверить их:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Создайте цифровую подпись {#create-a-digital-signature}

Чтобы создать цифровую подпись, вам потребуется загрузить сертификат подписи, который подтверждает личность. Когда вы отправляете документ с цифровой подписью, вы также отправляете сертификат и открытый ключ.

Aspose.Words Это позволяет создать сертификат X.509, цифровой сертификат, который использует международно признанный стандарт X.509 PKI для проверки того, что открытый ключ принадлежит подписывающему лицу, включенному в сертификат. Чтобы сделать это, используйте [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) Метод в пределах [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) класс.

В следующих разделах объясняется, как добавить цифровую подпись, строку подписи и как подписать сгенерированный документ PDF.

### Подписать документ

Aspose.Words позволяет подписать DOC, DOCX, XPS, или документ ODT в цифровом виде с использованием [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) метод и [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) свойств.

Следующий пример кода показывает, как подписывать документы с использованием держателя сертификата и опций подписи:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Добавить строку подписи

Линия подписи - это визуальное представление цифровой подписи в документе. Aspose.Words позволяет вставить строку подписи с помощью [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) метод. Вы также можете установить параметры для этого представления, используя [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) класс.

Например, на рисунке ниже показано, как могут отображаться действительные и недействительные подписи.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="drawing" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="drawing" style="width:300px"/>

Кроме того, если документ содержит строку подписи и нет цифровой подписи, есть функция, чтобы попросить пользователя добавить подпись.

Следующий пример кода показывает, как подписать документ с личным сертификатом и конкретной строкой подписи:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Подпишите генерируемый PDF-документ {#sign-a-generated-pdf-document}

Aspose.Words позволяет вам подписать и получить все детали PDF-документа, используя [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) свойств.

Следующий пример кода показывает, как подписать сгенерированный PDF:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Восстановление ценности цифровой подписи

Aspose.Words также обеспечивает возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива с использованием [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) собственность.

Следующий пример кода показывает, как получить значение цифровой подписи в виде байтового массива из документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Удалить цифровые подписи

Aspose.Words позволяет удалить все цифровые подписи из подписанного документа с помощью [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) метод.

Следующий пример кода показывает, как загрузить и удалить цифровые подписи из документа:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Обратите внимание, что вы не можете удалить только одну цифровую подпись в своем документе.

{{% /alert %}}
