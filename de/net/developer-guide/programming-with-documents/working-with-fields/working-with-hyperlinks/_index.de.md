---
title: Arbeiten mit Hyperlinks in C#
second_title: Aspose.Words für .NET
articleTitle: Hyperlinks hinzufügen oder ändern
linktitle: Hyperlinks hinzufügen oder ändern
description: "So fügen Sie Ihrem Dokument in C# mithilfe von Aspose.Words für .NET einen Hyperlink hinzu."
type: docs
weight: 50
url: /de/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Ein Hyperlink in Microsoft Word-Dokumenten ist das `HYPERLINK`-Feld. In Aspose.Words werden Hyperlinks über die [FieldHyperlink](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldhyperlink/)-Klasse implementiert.

## Fügen Sie einen Hyperlink ein

Verwenden Sie die [InsertHyperlink](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/inserthyperlink/)-Methode, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter:

1. Text des Links, der im Dokument angezeigt werden soll
2. Linkziel (URL oder Name eines Lesezeichens im Dokument)
3. Boolescher Parameter, der true sein sollte, wenn `URL` der Name eines Lesezeichens in einem Dokument ist

Die **InsertHyperlink**-Methode fügt am Anfang und Ende der URL immer Apostrophe hinzu

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schriftartformatierung für den Hyperlink-Anzeigetext explizit mithilfe der `Font`-Eigenschaft angeben müssen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mit [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) einen Hyperlink in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Ersetzen oder ändern Sie Hyperlinks

Hyperlink in Microsoft Word-Dokumenten ist ein Feld. Ein Feld in einem Word-Dokument ist, wie bereits erwähnt, eine komplexe Struktur, die aus mehreren Knoten besteht, die Feldanfang, Feldcode, Feldtrennzeichen, Feldergebnis und Feldende umfassen. Felder können verschachtelt sein, umfangreiche Inhalte enthalten und sich über mehrere Absätze oder Abschnitte in einem Dokument erstrecken.

Um Hyperlinks zu ersetzen oder zu ändern, müssen Sie die Hyperlinks im Dokument finden und entweder ihren Text, ihre URLs oder beides ersetzen.

Das folgende Codebeispiel zeigt, wie Sie alle Hyperlinks in einem Word-Dokument finden und deren `URL`- und Anzeigenamen ändern:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
