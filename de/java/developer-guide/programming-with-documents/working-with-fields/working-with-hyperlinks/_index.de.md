---
title: Arbeiten mit Hyperlinks in Java
second_title: Aspose.Words für Java
articleTitle: Hyperlinks hinzufügen oder ändern
linktitle: Hyperlinks hinzufügen oder ändern
description: "So fügen Sie mit Java einen Hyperlink in Ihr Dokument ein."
type: docs
weight: 50
url: /de/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Ein Hyperlink in Microsoft Word -Dokumenten ist das Feld `HYPERLINK`. In Aspose.Words werden Hyperlinks über die Klasse [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) implementiert.

## Fügen Sie einen Hyperlink ein

Verwenden Sie die [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean)-Methode, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter:

1. Text des Links, der im Dokument angezeigt werden soll
2. Linkziel (URL oder ein Name eines Lesezeichens im Dokument)
3. Boolescher Parameter, der wahr sein sollte, wenn `URL` ein Name eines Lesezeichens in einem Dokument ist

Die **InsertHyperlink** -Methode fügt immer Apostrophe am Anfang und am Ende der URL hinzu.

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit mit der Eigenschaft `Font` angeben müssen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) einen Hyperlink in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Hyperlinks ersetzen oder ändern

Hyperlink in Microsoft Word -Dokumenten ist ein Feld. Ein Feld in einem Word-Dokument ist, wie bereits erwähnt, eine komplexe Struktur, die aus mehreren Knoten besteht, die Feldanfang, Feldcode, Feldtrennzeichen, Feldergebnis und Feldende enthalten. Felder können verschachtelt sein, umfangreiche Inhalte enthalten und sich über mehrere Absätze oder Abschnitte in einem Dokument erstrecken.

Um Hyperlinks zu ersetzen oder zu ändern, müssen Sie die Hyperlinks im Dokument suchen und entweder ihren Text, URLs oder beides ersetzen.

Das folgende Codebeispiel zeigt, wie Sie alle Hyperlinks im Word-Dokument finden und deren `URL` und Anzeigenamen ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
