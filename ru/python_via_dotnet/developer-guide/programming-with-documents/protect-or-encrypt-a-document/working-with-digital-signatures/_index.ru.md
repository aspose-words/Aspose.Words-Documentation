---
title: Работа с цифровыми подписями
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Подписывайте документы цифровой подписью, а также обнаруживайте, подсчитывайте, проверяйте и удаляйте существующие цифровые подписи с помощью Python."
type: docs
weight: 40
url: /ru/python-net/working-with-digital-signatures/
---

Цифровая подпись используется для аутентификации документа, чтобы установить, что отправитель документа является тем, кем он себя называет, и что содержание документа не было подделано.

Aspose.Words поддерживает документы с цифровыми подписями и обеспечивает доступ к ним, позволяя обнаруживать и проверять цифровые подписи на документе и подписывать созданный документ PDF с помощью предоставленного сертификата. В настоящее время цифровые подписи поддерживаются в документах DOC, OOXML и ODT. Подписание сформированных документов поддерживается в формате PDF.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатная онлайн-подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Цифровые подписи не сохраняются при открытии и сохранении

Важно отметить, что документ, загруженный, а затем сохраненный с использованием Aspose.Words, потеряет все цифровые подписи, подписанные на документе. Это сделано специально, поскольку цифровая подпись гарантирует, что содержимое не было изменено, и, кроме того, удостоверяет личность того, кто подписал документ. Эти принципы будут признаны недействительными, если оригинальные подписи будут перенесены в итоговый документ.

В связи с этим, если вы обрабатываете документы, загруженные на сервер, это потенциально может означать, что вы можете повредить документ, загруженный на ваш сервер, таким образом, не зная об этом. Поэтому лучше всего проверить наличие цифровых подписей в документе и принять соответствующие меры, если таковые будут обнаружены. Например, клиенту можно отправить предупреждение, информирующее его о том, что документ, который он передает, содержит цифровые подписи, которые будут потеряны, если они будут потеряны. обработанный. Вы можете скачать файл шаблона этого примера по адресу [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

В приведенном выше коде используется метод [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), чтобы определить, содержит ли документ цифровые подписи, без предварительной загрузки документа. Это обеспечивает эффективный и безопасный способ проверки документа на наличие подписей перед его обработкой. При выполнении метод возвращает объект [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/), который предоставляет свойство [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Это свойство возвращает true, если документ содержит одну или несколько цифровых подписей. Важно отметить, что этот метод не проверяет подписи, а только определяет их наличие. Проверка цифровых подписей рассматривается в следующем разделе.

{{% alert color="primary" %}}

Вы также можете проверить, имеет ли документ цифровые подписи после загрузки, проверив свойство `Count` коллекции [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Цифровые подписи в макросах (проекты VBA)

Цифровые подписи макросов недоступны или подписаны. Это связано с тем, что Aspose.Words не имеет прямого отношения к макросам в документе. Однако цифровые подписи макросов сохраняются при экспорте документа обратно в любой текстовый формат. Эти подписи можно сохранить в коде VBA, поскольку двоичное содержимое макросов не изменяется, даже если изменяется сам документ.

### Доступ и проверка цифровых подписей

Документ может иметь несколько цифровых подписей. Доступ к этим подписям можно получить через коллекцию [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Каждый возвращаемый объект имеет номер [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/), который представляет собой одну цифровую подпись, принадлежащую документу. Это предоставляет члены, которые позволяют вам проверить действительность подписи.

Самым важным свойством, которое необходимо проверить с помощью ЭЦП, является достоверность каждой подписи в документе. Все подписи в документе можно проверить сразу, вызвав свойство [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Это вернет true, если все подписи в документе действительны или если в документе нет подписей, и false, если хотя бы одна цифровая подпись недействительна.

Каждую подпись также можно проверить индивидуально, позвонив по номеру [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Подпись может оказаться недействительной по нескольким причинам, например, документ был изменен с момента подписания или срок действия сертификата истек. Кроме того, можно получить доступ к дополнительной информации о подписи. В приведенном ниже примере кода показано, как проверить каждую подпись в документе и отобразить базовую информацию о подписи. Вы можете скачать файл шаблона этого примера по адресу [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Подписание документов Word

Класс [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) предоставляет методы для подписи документа. Метод [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) подписывает исходный документ, используя заданный [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/), с цифровой подписью и записывает подписанный документ в поток назначения

В примере ниже показано, как подписать простой документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

В примере ниже показано, как подписать зашифрованный документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Подписание документа Word с помощью строки подписи

Вы можете подписать исходный документ, используя данные [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) и [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/), с цифровой подписью и записать подписанный документ в файл назначения. Используя класс [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/), вы можете указать параметры подписи документов. В примере ниже показано, как создать новую строку подписи и подписать документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

В примере ниже показано, как изменить существующую строку подписи и подписать документ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Подписание документа Word с использованием идентификатора поставщика подписи

В приведенном ниже примере показано, как подписать документ Word, используя идентификатор поставщика подписи. Поставщик криптографических услуг (CSP) — это независимый программный модуль, который фактически выполняет криптографические алгоритмы для аутентификации, кодирования и шифрования. MS Office резервирует значение {00000000-0000-0000-0000-000000000000} для своего поставщика подписей по умолчанию.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Создайте новый документ Word с подписью строки подписи, используя идентификатор поставщика

В приведенном ниже примере показано, как создать строку подписи и подписать документ Word, используя идентификатор поставщика подписи.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Получить значение цифровой подписи

Aspose.Words также предоставляет возможность получить значение цифровой подписи из документа с цифровой подписью в виде массива байтов с помощью свойства [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

В следующем примере кода показано, как получить значение цифровой подписи в виде массива байтов из документа:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}