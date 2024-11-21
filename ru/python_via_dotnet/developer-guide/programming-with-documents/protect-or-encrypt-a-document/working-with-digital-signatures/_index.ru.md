---
title: Работа с цифровыми подписями
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Цифровая подпись документов и обнаружение, подсчет, проверка и удаление существующих цифровых подписей с использованием Python."
type: docs
weight: 40
url: /ru/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровая подпись используется для аутентификации документа, чтобы установить, что отправитель документа является тем, кем он является, и содержание документа не было подделано.

Aspose.Words Поддерживает документы с цифровыми подписями и предоставляет доступ к ним, позволяя обнаруживать и проверять цифровые подписи на документе и подписывать сгенерированный документ PDF с предоставленным сертификатом. В настоящее время цифровые подписи поддерживаются на документах DOC, OOXML и ODT. Подписание сгенерированных документов поддерживается в формате PDF.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатная онлайн подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Цифровые подписи не хранятся в открытом и сохраненном виде

Важно отметить, что документ загружается, а затем сохраняется с помощью Aspose.Words Вы потеряете все цифровые подписи, подписанные на документе. Это по дизайну, поскольку цифровая подпись гарантирует, что контент не был изменен, и, кроме того, удостоверяет личность подписавшего документ. Эти принципы были бы признаны недействительными, если бы первоначальные подписи были перенесены на итоговый документ.

В связи с этим, если вы обрабатываете документы, загруженные на сервер, это может потенциально означать, что вы можете повредить документ, загруженный на ваш сервер таким образом, не зная об этом. Поэтому лучше всего проверить наличие цифровых подписей на документе и предпринять соответствующие действия, если они найдены, например, клиенту может быть отправлено предупреждение о том, что документ, который они передают, содержит цифровые подписи, которые будут потеряны, если он будет обработан. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Приведенный выше код использует [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Способ определения того, содержит ли документ цифровые подписи без предварительной загрузки документа. Это обеспечивает эффективный и безопасный способ проверки документа на наличие подписей перед их обработкой. При выполнении способ возвращает a [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) Объект, который предоставляет собственность [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Это свойство возвращает true документ содержит одну или несколько цифровых подписей. Важно отметить, что этот метод не проверяет подлинность подписей, он только определяет, присутствуют ли подписи. Проверка цифровых подписей рассматривается в следующем разделе.

{{% alert color="primary" %}}

Вы также можете проверить, есть ли у документа цифровые подписи после загрузки, проверив его. `Count` имуществом, [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) Коллекция.

{{% /alert %}}

## Цифровые подписи на Macros (VBA Projects)

Цифровые подписи на макросах не могут быть доступны или подписаны. Это потому, что Aspose.Words Не имеет прямого отношения к макросам в документе. Однако цифровые подписи на макросах сохраняются при экспорте документа обратно в любой формат слов. Эти подписи могут сохраняться на коде VBA, поскольку двоичное содержимое макросов не изменяется, даже если изменяется сам документ.

### Доступ и проверка цифровых подписей

Документ может иметь несколько цифровых подписей. Все эти подписи можно получить через [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) Коллекция. Каждый возвращенный объект является [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) представляет собой единую цифровую подпись, принадлежащую документу. Это дает участникам возможность проверить действительность подписи.

Наиболее важным свойством для проверки с помощью цифровых подписей является действительность каждой подписи в документе. Все подписи в документе могут быть подтверждены сразу, позвонив по адресу: [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) собственность. Это вернется true если все подписи в документе действительны или если документ не имеет подписей и false Если хотя бы одна цифровая подпись недействительна.

Каждая подпись также может быть индивидуально подтверждена путем вызова. [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Подпись может быть возвращена недействительной по нескольким причинам, например, документ был изменен с момента подписания или срок действия сертификата истек. Также можно получить дополнительную информацию о подписи. Образец кода ниже показывает, как проверить каждую подпись в документе и отображать основную информацию о подписи. Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Подписание документов Word

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) Класс предоставляет способы подписания документа. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) метод вывески исходного документа с использованием данного [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) с цифровой подписью и записывает подписанный документ в поток назначения

Ниже приведен пример, как подписать простой документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Ниже приведен пример, как подписать зашифрованный документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Подписание документа Word с помощью строки подписи

Вы можете подписать исходный документ, используя [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) и [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) с цифровой подписью и записывает подписанный документ в файл назначения. использовать [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) В классе можно указать варианты подписания документов. Ниже пример показывает, как создать новую линию подписи и подписать документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Ниже приведен пример, как изменить существующую линию подписи и подписать документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Подписание документа Word с помощью идентификатора поставщика подписи

Ниже пример показывает, как подписать документ Word с помощью идентификатора поставщика подписи. Поставщик криптографических услуг (CSP) является независимым программным модулем, который фактически выполняет криптографические алгоритмы для аутентификации, кодирования и шифрования. MS Office сохраняет значение {00000000-0000-0000-0000-000000000} для своего поставщика подписей по умолчанию.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Создайте новую подпись Line Sign Word Document с помощью идентификатора провайдера

Ниже приведен пример, как создать линию подписи и знак Документ Word с использованием идентификатора поставщика подписи.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Восстановление ценности цифровой подписи

Aspose.Words также обеспечивает возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива с использованием [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) собственность.

Следующий пример кода показывает, как получить значение цифровой подписи в виде байтового массива из документа:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
