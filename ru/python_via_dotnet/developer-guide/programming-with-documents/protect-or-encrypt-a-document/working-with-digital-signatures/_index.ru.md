---
title: Работа с цифровыми подписями
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с цифровыми подписями
linktitle: Работа с цифровыми подписями
description: "Ставьте цифровую подпись на документах и обнаруживайте, подсчитывайте, проверяйте и удаляйте существующие цифровые подписи, используя Python."
type: docs
weight: 40
url: /ru/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Цифровая подпись используется для проверки подлинности документа, чтобы установить, что отправитель документа является тем, за кого себя выдает, и содержание документа не было изменено.

Aspose.Words поддерживает документы с цифровыми подписями и предоставляет к ним доступ, позволяющий обнаруживать и проверять цифровые подписи в документе и подписывать сгенерированный документ PDF с помощью предоставленного сертификата. В настоящее время цифровые подписи поддерживаются в документах DOC, OOXML и ODT. Поддерживается подписание сгенерированных документов в формате PDF.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете опробовать эту функцию с нашим [Бесплатный онлайн-подпись](https://products.aspose.app/words/signature).

{{% /alert %}}

## Цифровые подписи не сохраняются при открытии и сохранении

Важно отметить, что при загрузке и последующем сохранении документа с использованием Aspose.Words все цифровые подписи, подписанные на документе, будут утеряны. Это сделано специально, поскольку цифровая подпись гарантирует, что содержимое не было изменено, и, кроме того, подтверждает подлинность подписи того, кто подписал документ. Эти принципы были бы признаны недействительными, если бы первоначальные подписи были перенесены в итоговый документ.

В связи с этим, если вы обрабатываете документы, загруженные на сервер, это может означать, что вы можете повредить документ, загруженный на ваш сервер таким образом, не зная об этом. Поэтому лучше всего проверить наличие цифровых подписей в документе и предпринять соответствующие действия, если таковые будут обнаружены, например, клиенту может быть отправлено оповещение, информирующее его о том, что передаваемый им документ содержит цифровые подписи, которые будут потеряны при его обработке. Вы можете загрузить файл шаблона этого примера с[ здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

В приведенном выше коде используется метод [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) для определения наличия цифровых подписей в документе без предварительной загрузки документа. Это обеспечивает эффективный и безопасный способ проверки документа на наличие подписей перед их обработкой. При выполнении метод возвращает объект [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/), который предоставляет свойство [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Это свойство возвращает значение true, если документ содержит одну или несколько цифровых подписей. Важно отметить, что этот метод не проверяет подписи, он только определяет, присутствуют ли подписи. Проверка цифровых подписей рассматривается в следующем разделе.

{{% alert color="primary" %}}

Вы также можете проверить, есть ли у документа цифровые подписи после загрузки, проверив свойство `Count` коллекции [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Цифровые подписи в макросах (VBA Проектов)

К цифровым подписям в макросах невозможно получить доступ или подписать их. Это связано с тем, что Aspose.Words не имеет прямого отношения к макросам в документе. Однако цифровые подписи в макросах сохраняются при обратном экспорте документа в любой формат word. Эти подписи могут быть сохранены в коде VBA, поскольку двоичное содержимое макросов не изменяется, даже если изменяется сам документ.

### Доступ к цифровым подписям и их проверка

Документ может иметь несколько цифровых подписей. Доступ ко всем этим подписям можно получить через коллекцию [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Каждый возвращаемый объект представляет собой [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/), который представляет одну цифровую подпись, принадлежащую документу. Это предоставляет элементы, которые позволяют вам проверить действительность подписи.

Наиболее важным свойством для проверки с помощью цифровых подписей является достоверность каждой подписи в документе. Все подписи в документе можно проверить сразу, вызвав свойство [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Это вернет значение true, если все подписи в документе действительны или если в документе нет подписей, и значение false, если хотя бы одна цифровая подпись недействительна.

Каждую подпись также можно проверить по отдельности, вызвав команду [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Подпись может оказаться недействительной по нескольким причинам, например, в документе произошли изменения с момента подписания или истек срок действия сертификата. Кроме того, можно получить доступ к дополнительным сведениям о подписи. В приведенном ниже примере кода показано, как проверить каждую подпись в документе и отобразить основную информацию о подписи. Вы можете скачать файл шаблона для этого примера с [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Подписание документов Word

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) класс предоставляет методы для подписания документа. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) метод подписывает исходный документ, используя заданную [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) цифровую подпись, и записывает подписанный документ в целевой поток.

В приведенном ниже примере показано, как подписать простой документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

В приведенном ниже примере показано, как подписать зашифрованный документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Подписание документа Word строкой подписи

Вы можете подписать исходный документ, используя заданные [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) и [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) цифровой подписью, и записать подписанный документ в целевой файл. Используя класс [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/), вы можете указать параметры подписи документа. В приведенном ниже примере показано, как создать новую строку подписи и подписать документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

В приведенном ниже примере показано, как изменить существующую строку подписи и подписать документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Подписание документа Word с использованием идентификатора поставщика подписи

В приведенном ниже примере показано, как подписать документ Word, используя идентификатор поставщика подписи. Поставщик криптографических услуг (CSP) - это независимый программный модуль, который фактически выполняет криптографические алгоритмы для аутентификации, кодирования и зашифровывания. MS Office резервирует значение {00000000-0000-0000-0000-0000-000000000000} для своего поставщика подписи по умолчанию.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Создайте новую строку подписи, подпишите документ Word, используя идентификатор поставщика

В приведенном ниже примере показано, как создать строку подписи и подписать документ Word, используя идентификатор поставщика подписи.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Извлеките значение цифровой подписи

Aspose.Words также предоставляет возможность извлекать значение цифровой подписи из документа с цифровой подписью в виде массива байт, используя свойство [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

В следующем примере кода показано, как получить значение цифровой подписи в виде массива байтов из документа:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
