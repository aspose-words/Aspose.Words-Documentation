---
title: Arbeiten mit Hyperlinks
second_title: Aspose.Words für Python via .NET
articleTitle: Hyperlinks hinzufügen oder ändern
linktitle: Hyperlinks hinzufügen oder ändern
description: "Mit Python einen Hyperlink in einem Dokument hinzufügen, ersetzen oder ändern."
type: docs
weight: 50
url: /de/python-net/working-with-hyperlinks/
---

Ein Hyperlink in Microsoft Word-Dokumenten ist das `HYPERLINK`-Feld. In Aspose.Words werden Hyperlinks über die [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)-Klasse implementiert.

## Einfügen eines Hyperlinks

Verwenden Sie die [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/)-Methode, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter:

1. Text des Links, der im Dokument angezeigt werden soll
2. Linkziel (URL oder Name eines Lesezeichens im Dokument)
3. Boolescher Parameter, der true sein sollte, wenn `URL` der Name eines Lesezeichens in einem Dokument ist

Die **InsertHyperlink**-Methode fügt am Anfang und Ende der URL immer Apostrophe hinzu.

{{% alert color="primary" %}}

Beachten Sie, dass Sie die Schriftartformatierung für den Hyperlink-Anzeigetext explizit mithilfe der `Font`-Eigenschaft angeben müssen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) einen Hyperlink in ein Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Ersetzen oder ändern Sie Hyperlinks

Hyperlink in Microsoft Word-Dokumenten ist ein Feld. Ein Feld in einem Word-Dokument ist eine komplexe Struktur, die aus mehreren Knoten besteht, die Feldanfang, Feldcode, Feldtrennzeichen, Feldergebnis und Feldende umfassen. Felder können verschachtelt sein, umfangreiche Inhalte enthalten und sich über mehrere Absätze oder Abschnitte in einem Dokument erstrecken

Um Hyperlinks zu ersetzen oder zu ändern, müssen Sie die Hyperlinks im Dokument finden und entweder ihren Text, ihre URLs oder beides ersetzen.

Das folgende Codebeispiel zeigt, wie Sie alle Hyperlinks in einem Word-Dokument finden und deren `URL`- und Anzeigenamen ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
