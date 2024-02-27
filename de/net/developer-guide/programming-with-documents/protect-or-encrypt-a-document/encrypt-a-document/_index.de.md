---
title: Verschlüsseln Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Verschlüsseln Sie ein Dokument
linktitle: Verschlüsseln Sie ein Dokument
description: "Verschlüsseln Sie Ihr Dokument mit geeigneten Verschlüsselungsalgorithmen für bestimmte Dokumentformate in C#."
type: docs
weight: 20
url: /de/net/encrypt-a-document/
---

Bei der Verschlüsselung handelt es sich um den Prozess, der lesbaren Text in bedeutungslose Bytesequenzen übersetzt, sodass er nur von der Person gelesen werden kann, die über den Entschlüsselungsschlüssel oder den Geheimcode verfügt. Dieser Prozess spielt eine wichtige Rolle bei der Sicherung Ihrer Inhalte. Es hilft, den Inhalt zu verschlüsseln, die Herkunft eines Dokuments zu überprüfen, nachzuweisen, dass der Inhalt nach dem Senden nicht geändert wurde, und sicherzustellen, dass die Daten aus dem Dokument sicher sind.

In diesem Artikel wird erläutert, wie Sie mit Aspose.Words ein Dokument verschlüsseln können und wie Sie überprüfen können, ob ein Dokument verschlüsselt ist oder nicht.

## Mit Passwort verschlüsseln

Um ein Dokument zu verschlüsseln, verwenden Sie die **Password**-Eigenschaft, um ein Kennwort bereitzustellen, das als Verschlüsselungsschlüssel fungiert. Dadurch wird der Inhalt Ihres Dokuments verändert und unlesbar gemacht. Für das verschlüsselte Dokument muss dieses Passwort eingegeben werden, bevor es geöffnet werden kann.

{{% alert color="primary" %}}

Sie können die entsprechende **Password**-Eigenschaft für das erforderliche Format finden. Jedes Dokumentspeicherformat im [Namespace speichern](https://reference.aspose.com/words/net/aspose.words.saving/) verfügt über eine entsprechende Klasse, die Speicheroptionen für dieses Format enthält. Beispielsweise die [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/)-Eigenschaft in der [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/)-Klasse für DOC oder die [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/)-Eigenschaft in der [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/)-Klasse für DOCX, DOCM, DOTX, DOTM und FlatOpc.

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
|  PDF |  -                                                            |  RC4-Verschlüsselung (40/128 Bit) |

Das folgende Codebeispiel zeigt, wie man ein Dokument mit einem Passwort verschlüsselt:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Überprüfen Sie, ob ein Dokument verschlüsselt ist

In einigen Fällen liegt möglicherweise ein unlesbares Dokument vor und Sie möchten sicherstellen, dass das Dokument verschlüsselt und nicht beschädigt oder komprimiert ist.

Um festzustellen, ob ein Dokument verschlüsselt ist und ob ein Kennwort erforderlich ist, können Sie die [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/)-Eigenschaft der [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/)-Klasse verwenden. Mit dieser Eigenschaft können Sie auch vor dem Laden eines Dokuments eine Aktion ausführen, beispielsweise einen Benutzer auffordern, ein Kennwort anzugeben.

Das folgende Codebeispiel zeigt, wie die Dokumentenverschlüsselung erkannt wird:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Öffnen Sie ein Dokument mit oder ohne Passwort

Wenn wir sichergestellt haben, dass ein Dokument verschlüsselt ist, können wir versuchen, dieses Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument ohne Passwort zu öffnen:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Nachdem wir gesehen haben, dass ein verschlüsseltes Dokument nicht ohne Passwort geöffnet werden kann, können wir versuchen, es durch Eingabe des Passworts zu öffnen.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument mit einem Passwort zu öffnen:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
