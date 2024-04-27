---
title: Arbeiten mit Hyperlinks in Java
second_title: Aspose.Words für Java
articleTitle: Hyperlinks hinzufügen oder ändern
linktitle: Hyperlinks hinzufügen oder ändern
description: "Wie Sie einen Hyperlink in Ihr Dokument hinzufügen Java."
type: docs
weight: 50
url: /de/java/working-with-hyperlinks/
---

Ein Hyperlink in Microsoft Word Dokumente ist die `HYPERLINK` Feld. In Aspose.Words, Hyperlinks werden durch die [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse.

## Einfügen eines Hyperlinks

Verwenden Sie die [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) Verfahren zum Einfügen eines Hyperlinks in das Dokument. Diese Methode akzeptiert drei Parameter:

ANHANG Text des im Dokument angezeigten Links
2. Link Ziel (URL oder ein Name eines Lesezeichens innerhalb des Dokuments)
3. Boolean-Parameter, der sein sollte true wenn `URL` ist ein Name eines Lesezeichens in einem Dokument

Die **InsertHyperlink** Die Methode fügt immer apostrophes am Anfang und Ende der URL hinzu

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit unter Verwendung des `Font` Eigentum.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man einen Hyperlink in ein Dokument einfügen kann. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Hyperlinks ersetzen oder ändern

Hyperlink in Microsoft Word Dokumente sind ein Feld. Ein Feld in einem Word-Dokument, wie wir bereits gesagt haben, ist eine komplexe Struktur, bestehend aus mehreren Knoten, die Feldstart, Feldcode, Feldtrennzeichen, Feldergebnis und Feldende umfassen. Felder können geschachtelt werden, reiche Inhalte enthalten und mehrere Absätze oder Abschnitte in einem Dokument überspannen.

Um Hyperlinks zu ersetzen oder zu modifizieren, müssen Sie die Hyperlinks im Dokument finden und entweder ihren Text, URLs oder beides ersetzen.

Das folgende Codebeispiel zeigt, wie Sie alle Hyperlinks im Word-Dokument finden und ihre `URL` und Anzeigename:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
