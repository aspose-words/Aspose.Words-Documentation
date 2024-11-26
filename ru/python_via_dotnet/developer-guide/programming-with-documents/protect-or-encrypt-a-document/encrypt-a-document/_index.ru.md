---
title: Зашифровать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Зашифровать документ
linktitle: Зашифровать документ
description: "Зашифруйте свой документ, используя соответствующие алгоритмы шифрования для определенных форматов документов в Python."
type: docs
weight: 20
url: /ru/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Шифрование - это процесс, который преобразует читаемый текст в бессмысленные последовательности байтов, чтобы его мог прочитать только тот, у кого есть ключ дешифрования или секретный код. Этот процесс играет важную роль в обеспечении безопасности вашего контента. Это помогает закодировать содержимое, проверить происхождение документа, доказать, что содержимое не было изменено после его отправки, и обеспечить безопасность данных из документа.

В этой статье объясняется, как Aspose.Words позволяет зашифровать документ и как проверить, зашифрован документ или нет.

## Шифрование с помощью пароля

Чтобы зашифровать документ, используйте свойство **password** для ввода пароля, который выполняет функцию ключа шифрования. Это изменит содержимое вашего документа и сделает его нечитаемым. Для открытия зашифрованного документа потребуется ввести этот пароль.

{{% alert color="primary" %}}

Вы можете найти соответствующее свойство **password** для требуемого формата. Каждому формату сохранения документа в модуле [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) соответствует класс, содержащий параметры сохранения для этого формата. Например, свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) в классе [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) для DOC или свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) в классе [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) для DOCX, DOCM, DOTX, DOTM, и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что только определенные форматы документов поддерживают шифрование. Например, RTF не поддерживает шифрование.

{{% /alert %}}

В таблице ниже перечислены форматы и алгоритмы шифрования, поддерживаемые Aspose.Words:

| Формат | Поддерживаемое шифрование при загрузке | Поддерживаемое шифрование при сохранении |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR шифрование 40-битное RC4 EncryptionCryptoAPI RC4 Шифрование | RC4 Шифрование (40-разрядное) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Стандартное EncryptionECMA-376 Гибкое шифрование | ECMA-376 Стандартное шифрование (AES128 + SHA1) |
| ODT, OTT | ODF Шифрование (Blowfish/AES) | ODF Шифрование (AES256 + SHA256) |
| PDF |  | RC4 Шифрование (40/128 бит) |

В следующем примере кода показано, как зашифровать документ с помощью пароля:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Проверьте, Зашифрован Ли Документ

В некоторых случаях у вас может оказаться нечитаемый документ, и вы хотите быть уверены, что он зашифрован, не поврежден и не сжат.

Чтобы определить, зашифрован ли документ и требуется ли пароль, вы можете использовать свойство [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) класса [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Это свойство также позволит вам выполнить некоторые действия перед загрузкой документа, например, попросить пользователя ввести пароль.

В следующем примере кода показано, как обнаружить шифрование документа:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Откройте документ с паролем или без него

Когда мы убедимся, что документ зашифрован, мы можем попытаться открыть этот документ без пароля, что должно привести к исключению.

В следующем примере кода показано, как попытаться открыть зашифрованный документ без пароля:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

После того, как мы убедились, что зашифрованный документ не может быть открыт без пароля, мы можем попытаться открыть его, введя пароль.

В следующем примере кода показано, как попытаться открыть зашифрованный документ с помощью пароля:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
