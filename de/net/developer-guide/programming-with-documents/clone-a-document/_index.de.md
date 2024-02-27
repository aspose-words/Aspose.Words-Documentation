---
title: Klonen Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Klonen Sie ein Dokument
linktitle: Klonen Sie ein Dokument
type: docs
description: "Klonen Sie ein Dokument, um mit C# eine identische Kopie zu erhalten. Beim Erstellen einer Kopie werden Knoten und Eigenschaften des Originaldokuments geklont."
weight: 70
url: /de/net/clone-a-document/
---

Beim Klonen eines Dokuments wird eine identische Kopie eines Originaldokuments erstellt, was die Leistung verbessern und Sie vor möglichen Speicherlecks schützen kann.

In diesem Artikel werden die wichtigsten Anwendungsfälle des Klonens eines Dokuments erläutert und erläutert, wie man mit Aspose.Words einen Dokumentklon erstellt.

## Operationen mit Klonen von Dokumenten

Durch den Klonvorgang können Sie den Prozess der Dokumentenerstellung beschleunigen, da Sie nicht jedes Mal ein Dokument aus einer Datei laden und analysieren müssen.

Nachdem Sie einen Klon Ihres Dokuments erstellt haben, können Sie es bearbeiten und verschiedene Vorgänge daran ausführen, z. B. es mit dem Originaldokument vergleichen, es anhängen oder in ein anderes Dokument einfügen. Sie können geklonte Elemente oder deren Inhalt auch ändern, bevor Sie sie in ein anderes Dokument einfügen.

## Erstellen eines Dokumentklons

Mit Aspose.Words können Sie ein Dokument mithilfe der [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/)-Methode klonen, die eine tiefe Kopie des Dokuments erstellt und es zurückgibt. Mit anderen Worten: Es wird eine vollständige Kopie des DOM-Codes erstellt. Die `Clone`-Methode beschleunigt die Dokumentenerstellung und Sie benötigen nur eine Codezeile, um eine Kopie Ihres Dokuments zu erhalten.

Durch das Klonen entsteht ein neues Dokument mit demselben Inhalt wie das Original, jedoch mit einer eindeutigen Kopie aller [nodes](https://reference.aspose.com/words/net/aspose.words/node/)-Dateien des Originaldokuments. Sie können den Klonvorgang auch auf einen Dokumentknoten anwenden, indem Sie die Knoten-[Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/)-Methode verwenden, die es Ihnen ermöglicht, zusammengesetzte Dokumentknoten mit und ohne ihre untergeordneten Knoten zu duplizieren.

{{% alert color="primary" %}}

Beachten Sie, dass bei Anwendung der Klonmethode alle Dokumenteigenschaften geklont werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument klonen und ein Duplikat eines Abschnitts in diesem Dokument erstellen:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
