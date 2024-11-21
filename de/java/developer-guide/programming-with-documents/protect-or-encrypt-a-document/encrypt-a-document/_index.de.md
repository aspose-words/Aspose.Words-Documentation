---
title: Verschlüsseln Sie ein Dokument Java
second_title: Aspose.Words für Java
articleTitle: Verschlüsseln eines Dokuments
linktitle: Verschlüsseln eines Dokuments
description: "Verschlüsseln Sie Ihr Dokument mit entsprechenden Verschlüsselungsalgorithmen für bestimmte Dokumentformate in Java."
type: docs
weight: 20
url: /de/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Verschlüsselung ist der Prozess, der lesbare Text zu sinnlosen Sequenzen von Bytes übersetzt, so dass es nur von der Person gelesen werden kann, die den Entschlüsselungsschlüssel oder den geheimen Code hat. Dieser Prozess spielt eine wichtige Rolle bei der Sicherung Ihrer Inhalte. Es hilft, den Inhalt zu kodieren, den Ursprung eines Dokuments zu überprüfen, zu beweisen, dass der Inhalt nach dem Senden nicht geändert wurde und sicherzustellen, dass die Daten aus dem Dokument sicher sind.

Dieser Artikel erklärt, wie Aspose.Words ermöglicht es Ihnen, ein Dokument zu verschlüsseln und zu überprüfen, ob ein Dokument Verschlüsselung hat oder nicht.

## Verschlüsseln mit Passwort

Um ein Dokument zu verschlüsseln, verwenden Sie die **Password** eine Eigenschaft, um ein Passwort, das als Verschlüsselungsschlüssel fungiert bereitzustellen. Dies ändert den Inhalt Ihres Dokuments und macht es unlesbar. Das verschlüsselte Dokument muss dieses Passwort eingegeben haben, bevor es geöffnet werden kann.

{{% alert color="primary" %}}

Sie finden das passende **Password** Eigentum für das gewünschte Format. Jedes Dokument speichern Format hat eine entsprechende Klasse mit Speicheroptionen für dieses Format. Zum Beispiel die [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) Immobilien in der [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Klasse für DOC oder [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) Immobilien in der [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) Klasse für DOCX, DOCM, DOTX, DOTM und FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass nur bestimmte Dokumentformate die Verschlüsselung unterstützen. Beispielsweise unterstützt RTF keine Verschlüsselung.

{{% /alert %}}

Die folgende Tabelle listet die Formate und Verschlüsselungsalgorithmen auf, die von Aspose.Words:

| Format |  Unterstützte Verschlüsselung beim Laden |  Unterstützte Verschlüsselung während des Sparens |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC. DOT |  XOR Verschlüsselung40-bit RC4 VerschlüsselungCryptoAPI RC4 Verschlüsselung |  RC4 Verschlüsselung (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standard VerschlüsselungECMA-376 Agile Verschlüsselung |  ECMA-376 Standardverschlüsselung (AES128 + SHA1) |
|  ODT, OTT |  ODF-Verschlüsselung (Blowfish/AES) |  ODF-Verschlüsselung (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 Verschlüsselung (40/128 Bit) |

Das folgende Codebeispiel zeigt, wie ein Dokument mit einem Passwort verschlüsselt werden kann:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Überprüfen Sie, ob ein Dokument verschlüsselt ist

In einigen Fällen haben Sie möglicherweise ein unlesbares Dokument und möchten sicher sein, dass das Dokument verschlüsselt und nicht beschädigt oder komprimiert wird.

Um zu erkennen, ob ein Dokument verschlüsselt ist und ob ein Passwort erforderlich ist, können Sie das [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) Eigentum der [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) Klasse. Diese Eigenschaft ermöglicht es Ihnen auch, einige Aktionen durchzuführen, bevor Sie ein Dokument laden, zum Beispiel, indem Sie einen Benutzer informieren, um ein Passwort bereitzustellen.

Das folgende Codebeispiel zeigt, wie man die Dokumentverschlüsselung erkennt:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Öffnen Sie ein Dokument mit oder ohne Passwort

Wenn wir sicherstellen, dass ein Dokument verschlüsselt ist, können wir versuchen, dieses Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie man versucht, ein verschlüsseltes Dokument ohne Passwort zu öffnen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Nachdem wir gesehen haben, dass ein verschlüsseltes Dokument nicht ohne Passwort geöffnet werden kann, können wir versuchen, es durch Eingabe des Passworts zu öffnen.

Das folgende Codebeispiel zeigt, wie man versucht, ein verschlüsseltes Dokument mit einem Passwort zu öffnen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
