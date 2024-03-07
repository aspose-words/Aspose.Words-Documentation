---
title: Зашифровать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Зашифровать документ
linktitle: Зашифровать документ
description: "Зашифруйте свой документ, используя соответствующие алгоритмы шифрования для определенных форматов документов в Python."
type: docs
weight: 20
url: /ru/python-net/encrypt-a-document/
---

Шифрование — это процесс, который преобразует читаемый текст в бессмысленные последовательности байтов, поэтому его может прочитать только тот человек, у которого есть ключ дешифрования или секретный код. Этот процесс играет важную роль в защите вашего контента. Это помогает закодировать содержимое, проверить происхождение документа, доказать, что содержимое не было изменено после отправки, и гарантировать безопасность данных из документа.

В этой статье объясняется, как Aspose.Words позволяет зашифровать документ и как проверить, зашифрован документ или нет.

## Зашифровать с помощью пароля

Чтобы зашифровать документ, используйте свойство **пароль**, чтобы указать пароль, который действует как ключ шифрования. Это изменит содержимое вашего документа и сделает его нечитаемым. Зашифрованный документ потребует ввода этого пароля, прежде чем его можно будет открыть.

{{% alert color="primary" %}}

Вы можете найти подходящее свойство **пароль** для необходимого формата. Каждому формату сохранения документа в модуле [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) соответствует класс, содержащий параметры сохранения для этого формата. Например, свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) в классе [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) для DOC или свойство [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) в классе [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) для DOCX, DOCM, DOTX, DOTM и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Обратите внимание, что только определенные форматы документов поддерживают шифрование. Например, RTF не поддерживает шифрование.

{{% /alert %}}

В таблице ниже перечислены форматы и алгоритмы шифрования, поддерживаемые Aspose.Words:

| Формат |  Поддерживаемое шифрование при загрузке |  Поддерживаемое шифрование при сохранении |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  ДОК, ДОТ |  Шифрование XOR40-битное шифрование RC4Шифрование CryptoAPI RC4 |  Шифрование RC4 (40-бит) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Стандартное шифрование ECMA-376 Гибкое шифрование ECMA-376 |  Стандартное шифрование ECMA-376 (AES128 + SHA1) |
|  ОДТ, ОТТ |  Шифрование ODF (Blowfish/AES) |  Шифрование ODF (AES256 + SHA256) |
|  PDF |                                                          |  Шифрование RC4 (40/128 бит) |

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

## Проверьте, зашифрован ли документ

В некоторых случаях у вас может быть нечитаемый документ, и вы хотите быть уверены, что документ зашифрован, а не поврежден или сжат.

Чтобы определить, зашифрован ли документ и требуется ли пароль, вы можете использовать свойство [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) класса [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Это свойство также позволит вам выполнить некоторые действия перед загрузкой документа, например, сообщить пользователю о необходимости ввести пароль.

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

Убедившись, что документ зашифрован, мы можем попытаться открыть этот документ без пароля, что должно привести к исключению.

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

После того, как мы увидели, что зашифрованный документ невозможно открыть без пароля, мы можем попробовать открыть его, введя пароль.

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
