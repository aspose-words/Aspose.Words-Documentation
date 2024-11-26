---
title: Verschlüsseln Sie ein Dokument in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Verschlüsseln Sie ein Dokument
linktitle: Verschlüsseln Sie ein Dokument
description: "Verschlüsseln Sie Ihr Dokument mit geeigneten Verschlüsselungsalgorithmen für bestimmte Dokumentformate in Python."
type: docs
weight: 20
url: /de/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Bei der Verschlüsselung handelt es sich um den Prozess, der lesbaren Text in bedeutungslose Bytesequenzen übersetzt, sodass er nur von der Person gelesen werden kann, die über den Entschlüsselungsschlüssel oder den Geheimcode verfügt. Dieser Prozess spielt eine wichtige Rolle bei der Sicherung Ihrer Inhalte. Es hilft, den Inhalt zu verschlüsseln, die Herkunft eines Dokuments zu überprüfen, nachzuweisen, dass der Inhalt nach dem Senden nicht geändert wurde, und sicherzustellen, dass die Daten aus dem Dokument sicher sind.

In diesem Artikel wird erläutert, wie Sie mit Aspose.Words ein Dokument verschlüsseln können und wie Sie überprüfen können, ob ein Dokument verschlüsselt ist oder nicht.

## Mit Passwort verschlüsseln

Um ein Dokument zu verschlüsseln, verwenden Sie die **Passwort**-Eigenschaft, um ein Kennwort bereitzustellen, das als Verschlüsselungsschlüssel fungiert. Dadurch wird der Inhalt Ihres Dokuments verändert und unlesbar gemacht. Für das verschlüsselte Dokument muss dieses Passwort eingegeben werden, bevor es geöffnet werden kann.

{{% alert color="primary" %}}

Sie können die entsprechende **Passwort**-Eigenschaft für das erforderliche Format finden. Jedes Dokumentspeicherformat im [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/)-Modul verfügt über eine entsprechende Klasse, die Speicheroptionen für dieses Format enthält. Beispielsweise die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/)-Eigenschaft in der [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/)-Klasse für DOC oder die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/)-Eigenschaft in der [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/)-Klasse für DOCX, DOCM, DOTX, DOTM und FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass nur bestimmte Dokumentformate die Verschlüsselung unterstützen. RTF unterstützt beispielsweise keine Verschlüsselung.

{{% /alert %}}

In der folgenden Tabelle sind die von Aspose.Words unterstützten Formate und Verschlüsselungsalgorithmen aufgeführt:

| Format |  Unterstützte Verschlüsselung beim Laden |  Unterstützte Verschlüsselung beim Speichern |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR-Verschlüsselung40-Bit-RC4-VerschlüsselungCryptoAPI RC4-Verschlüsselung |  RC4-Verschlüsselung (40-Bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376-StandardverschlüsselungECMA-376 Agile-Verschlüsselung |  ECMA-376-Standardverschlüsselung (AES128 + SHA1) |
|  ODT, OTT |  ODF-Verschlüsselung (Blowfish/AES) |  ODF-Verschlüsselung (AES256 + SHA256) |
|  PDF |                                                          |  RC4-Verschlüsselung (40/128 Bit) |

Das folgende Codebeispiel zeigt, wie man ein Dokument mit einem Passwort verschlüsselt:

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

## Überprüfen Sie, ob ein Dokument verschlüsselt ist

In einigen Fällen liegt möglicherweise ein unlesbares Dokument vor und Sie möchten sicherstellen, dass das Dokument verschlüsselt und nicht beschädigt oder komprimiert ist.

Um festzustellen, ob ein Dokument verschlüsselt ist und ob ein Kennwort erforderlich ist, können Sie die [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/)-Eigenschaft der [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/)-Klasse verwenden. Mit dieser Eigenschaft können Sie auch vor dem Laden eines Dokuments eine Aktion ausführen, beispielsweise einen Benutzer auffordern, ein Kennwort anzugeben.

Das folgende Codebeispiel zeigt, wie die Dokumentenverschlüsselung erkannt wird:

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

## Öffnen Sie ein Dokument mit oder ohne Passwort

Wenn wir sichergestellt haben, dass ein Dokument verschlüsselt ist, können wir versuchen, dieses Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument ohne Passwort zu öffnen:

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

Nachdem wir gesehen haben, dass ein verschlüsseltes Dokument nicht ohne Passwort geöffnet werden kann, können wir versuchen, es durch Eingabe des Passworts zu öffnen.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument mit einem Passwort zu öffnen:

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
