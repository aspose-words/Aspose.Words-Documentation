---
title: Arbeiten mit Hyperlinks in C++
second_title: Aspose.Words für C++
articleTitle: Hyperlinks hinzufügen oder ändern
linktitle: Hyperlinks hinzufügen oder ändern
description: "So fügen Sie einen Hyperlink in Ihr Dokument ein mit Aspose.Words für C++."
type: docs
weight: 180
url: /de/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Ein Hyperlink in Microsoft Word -Dokumenten ist das Feld `HYPERLINK`. In Aspose.Words werden Hyperlinks über die Klasse [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) implementiert.

## Einfügen eines Hyperlinks

Verwenden Sie die [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/)-Methode, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter:

1. Text des Links, der im Dokument angezeigt werden soll
2. Linkziel (URL oder ein Name eines Lesezeichens im Dokument)
3. Boolescher Parameter, der wahr sein sollte, wenn `URL` ein Name eines Lesezeichens im Dokument ist

Die **InsertHyperlink** -Methode fügt immer Apostrophe am Anfang und am Ende der URL hinzu.

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit mit der Eigenschaft `Font` angeben müssen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) einen Hyperlink in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Hyperlinks ersetzen oder ändern

Hyperlink in Microsoft Word -Dokumenten ist ein Feld. Ein Feld in einem Word-Dokument ist eine komplexe Struktur, die aus mehreren Knoten besteht, die Feldanfang, Feldcode, Feldtrennzeichen, Feldergebnis und Feldende enthalten. Felder können verschachtelt sein, umfangreiche Inhalte enthalten und sich über mehrere Absätze oder Abschnitte in einem Dokument erstrecken.

Die Klasse `FieldHyperlink` implementiert das Feld `HYPERLINK`.

Das folgende Codebeispiel zeigt, wie Sie alle Hyperlinks im Word-Dokument finden und deren `URL` und Anzeigenamen ändern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
