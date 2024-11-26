---
title: Klonen Sie ein Dokument in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Klonen Sie ein Dokument
linktitle: Klonen Sie ein Dokument
type: docs
description: "Klonen Sie ein Dokument, um mit Python eine identische Kopie zu erhalten. Beim Erstellen einer Kopie werden Knoten und Eigenschaften des Originaldokuments geklont."
weight: 70
url: /de/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Beim Klonen eines Dokuments wird eine identische Kopie eines Originaldokuments erstellt, was die Leistung verbessern und Sie vor möglichen Speicherlecks schützen kann.

In diesem Artikel werden die wichtigsten Anwendungsfälle des Klonens eines Dokuments erläutert und erläutert, wie man mit Aspose.Words einen Dokumentklon erstellt.

## Operationen mit Klondokumenten

Durch den Klonvorgang können Sie den Prozess der Dokumentenerstellung beschleunigen, da Sie nicht jedes Mal ein Dokument aus einer Datei laden und analysieren müssen.

Nachdem Sie einen Klon Ihres Dokuments erstellt haben, können Sie es bearbeiten und verschiedene Vorgänge daran ausführen, z. B. es mit dem Originaldokument vergleichen, es anhängen oder in ein anderes Dokument einfügen. Sie können geklonte Elemente oder deren Inhalt auch ändern, bevor Sie sie in ein anderes Dokument einfügen.

## Erstellen eines Dokumentklons

Mit Aspose.Words können Sie ein Dokument mithilfe der [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/)-Methode klonen, die eine tiefe Kopie des Dokuments erstellt und es zurückgibt. Mit anderen Worten: Es wird eine vollständige Kopie des DOM-Codes erstellt. Die [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/)-Methode beschleunigt die Dokumentenerstellung und Sie benötigen nur eine Codezeile, um eine Kopie Ihres Dokuments zu erhalten.

Durch das Klonen entsteht ein neues Dokument mit demselben Inhalt wie das Original, jedoch mit einer eindeutigen Kopie jedes Knotens des Originaldokuments. Sie können den Klonvorgang auch auf einen Dokumentknoten anwenden, indem Sie die Knoten-[clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/)-Methode verwenden, die es Ihnen ermöglicht, zusammengesetzte Dokumentknoten mit und ohne ihre untergeordneten Knoten zu duplizieren.

{{% alert color="primary" %}}

Beachten Sie, dass bei Anwendung der Klonmethode alle Dokumenteigenschaften geklont werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument klonen und ein Duplikat eines Abschnitts in diesem Dokument erstellen:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
