---
title: Зашифровать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Зашифровать документ
linktitle: Зашифровать документ
description: "Шифруйте ваш документ, используя соответствующие алгоритмы шифрования для конкретных форматов документов. Python."
type: docs
weight: 20
url: /ru/python-net/encrypt-a-document/
---

Шифрование - это процесс, который переводит читаемый текст в бессмысленные последовательности байтов, поэтому его может прочитать только человек, у которого есть ключ дешифрования или секретный код. Этот процесс играет важную роль в обеспечении безопасности вашего контента. Он помогает кодировать контент, проверять происхождение документа, доказывать, что контент не был изменен после его отправки, и обеспечивать безопасность данных из документа.

Эта статья объясняет, как Aspose.Words Позволяет зашифровать документ и проверить, есть ли у документа шифрование или нет.

## Шифровать с помощью Password

Чтобы зашифровать документ, используйте **пароль** свойство предоставлять пароль, который функционирует как ключ шифрования. Это изменит содержание вашего документа и сделает его нечитаемым. Зашифрованный документ требует, чтобы этот пароль был введен до его открытия.

{{% alert color="primary" %}}

Вы можете найти подходящий **пароль** собственности в требуемом формате. Каждый документ сохраняет формат в [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) Модуль имеет соответствующий класс, содержащий опции сохранения для данного формата. Например, в [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) имуществом в [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) Класс для DOC, или [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) имуществом в [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) класс для DOCX, DOCM, DOTX, DOTM и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что только определенные форматы документов поддерживают шифрование. Например, RTF не поддерживает шифрование.

{{% /alert %}}

В таблице ниже перечислены форматы и алгоритмы шифрования, поддерживаемые Aspose.Words:

| Формат |  Поддержка шифрования при загрузке |  Поддержка шифрования при сохранении |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  ДОК, DOT |  XOR-шифрование 40-битный RC4 EncryptionCryptoAPI RC4 шифрование |  RC4 Encryption (40-битный) |
|  ДОКС, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcMacroEnabled |  ECMA-376 Стандартное шифрование ECMA-376 Agile Шифрование |  Стандартное шифрование ECMA-376 (AES128 + SHA1) |
|  ОТТ, ОТТ |  ODF Encryption (Blowfish/AES) |  Шифрование ODF (AES256 + SHA256) |
|  PDF |                                                          |  RC4 Encryption (40/128 бит) |

Следующий пример кода показывает, как зашифровать документ с помощью пароля:

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

## Проверьте, зашифрован ли документ

В некоторых случаях вы можете иметь нечитаемый документ и хотите быть уверены, что документ зашифрован и не поврежден или сжат.

Чтобы определить, зашифрован ли документ и нужен ли пароль, вы можете использовать [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) имуществом, [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) класс. Это свойство также позволит вам выполнить некоторые действия перед загрузкой документа, например, сообщить пользователю предоставить пароль.

Следующий пример кода показывает, как обнаружить шифрование документа:

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

Когда мы убедились, что документ зашифрован, мы можем попытаться открыть этот документ без пароля, что должно привести к исключению.

Следующий пример кода показывает, как попытаться открыть зашифрованный документ без пароля:

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

После того, как мы увидели, что зашифрованный документ не может быть открыт без пароля, мы можем попытаться открыть его, введя пароль.

Следующий пример кода показывает, как попытаться открыть зашифрованный документ с паролем:

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
