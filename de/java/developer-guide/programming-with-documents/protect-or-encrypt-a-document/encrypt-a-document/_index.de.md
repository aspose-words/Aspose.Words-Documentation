---
title: Verschlüsseln Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Ein Dokument verschlüsseln
linktitle: Ein Dokument verschlüsseln
description: "Verschlüsseln Sie Ihr Dokument mit geeigneten Verschlüsselungsalgorithmen für bestimmte Dokumentformate in Java."
type: docs
weight: 20
url: /de/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Verschlüsselung ist der Prozess, bei dem lesbarer Text in bedeutungslose Bytefolgen übersetzt wird, sodass er nur von der Person gelesen werden kann, die den Entschlüsselungsschlüssel oder den Geheimcode besitzt. Dieser Prozess spielt eine wichtige Rolle bei der Sicherung Ihrer Inhalte. Es hilft, den Inhalt zu verschlüsseln, die Herkunft eines Dokuments zu überprüfen, nachzuweisen, dass der Inhalt nach dem Senden nicht geändert wurde, und sicherzustellen, dass die Daten aus dem Dokument sicher sind.

In diesem Artikel wird erläutert, wie Sie mit Aspose.Words ein Dokument verschlüsseln und überprüfen können, ob ein Dokument verschlüsselt ist oder nicht.

## Mit Passwort verschlüsseln

Verwenden Sie zum Verschlüsseln eines Dokuments die Eigenschaft **Password**, um ein Kennwort anzugeben, das als Verschlüsselungsschlüssel fungiert. Dadurch wird der Inhalt Ihres Dokuments geändert und unlesbar gemacht. Für das verschlüsselte Dokument muss dieses Kennwort eingegeben werden, bevor es geöffnet werden kann.

{{% alert color="primary" %}}

Sie finden die entsprechende **Password**-Eigenschaft für das erforderliche Format. Jedes Dokumentspeicherformat hat eine entsprechende Klasse, die Speicheroptionen für dieses Format enthält. Zum Beispiel die Eigenschaft [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) in der Klasse [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) für DOC oder die Eigenschaft [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) in der Klasse [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) für DOCX, DOCM, DOTX, DOTM, und FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass nur bestimmte Dokumentformate die Verschlüsselung unterstützen. RTF unterstützt beispielsweise keine Verschlüsselung.

{{% /alert %}}

In der folgenden Tabelle sind die von Aspose.Words unterstützten Formate und Verschlüsselungsalgorithmen aufgeführt:

| Formatierung | Unterstützte Verschlüsselung beim Laden | Unterstützte Verschlüsselung beim Speichern |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR Verschlüsselung40-bit RC4 EncryptionCryptoAPI RC4 Verschlüsselung | RC4 Verschlüsselung (40 Bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standard EncryptionECMA-376 Agile Verschlüsselung | ECMA-376 Standardverschlüsselung (AES128 + SHA1) |
| ODT, OTT | ODF Verschlüsselung (Blowfish/AES) | ODF Verschlüsselung (AES256 + SHA256) |
| PDF |  | RC4 Verschlüsselung (40/128 Bit) |

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit einem Kennwort verschlüsseln:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Überprüfen Sie, ob ein Dokument verschlüsselt ist

In einigen Fällen haben Sie möglicherweise ein unlesbares Dokument und möchten sichergehen, dass das Dokument verschlüsselt und nicht beschädigt oder komprimiert ist.

Um festzustellen, ob ein Dokument verschlüsselt ist und ob ein Kennwort erforderlich ist, können Sie die Eigenschaft [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) der Klasse [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) verwenden. Mit dieser Eigenschaft können Sie auch vor dem Laden eines Dokuments eine Aktion ausführen, z. B. einen Benutzer über die Eingabe eines Kennworts informieren.

Das folgende Codebeispiel zeigt, wie die Dokumentverschlüsselung erkannt wird:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Öffnen Sie ein Dokument mit oder ohne Kennwort

Wenn wir sichergestellt haben, dass ein Dokument verschlüsselt ist, können wir versuchen, dieses Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument ohne Kennwort zu öffnen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Nachdem wir festgestellt haben, dass ein verschlüsseltes Dokument ohne Passwort nicht geöffnet werden kann, können wir versuchen, es durch Eingabe des Passworts zu öffnen.

Das folgende Codebeispiel zeigt, wie Sie versuchen, ein verschlüsseltes Dokument mit einem Kennwort zu öffnen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
