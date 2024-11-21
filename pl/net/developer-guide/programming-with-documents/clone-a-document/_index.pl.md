---
title: Sklonuj dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Sklonuj dokument
linktitle: Sklonuj dokument
type: docs
description: "Sklonuj dokument, aby uzyskać jego identyczną kopię za pomocą C#. Podczas tworzenia kopii klonowane są węzły i właściwości oryginalnego dokumentu."
weight: 70
url: /pl/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonowanie dokumentu to proces tworzenia identycznej kopii oryginalnego dokumentu, który może poprawić wydajność i uchronić Cię przed potencjalnymi wyciekami pamięci.

W tym artykule wyjaśnione zostaną główne przypadki użycia klonowania dokumentu oraz sposoby tworzenia klonu dokumentu przy użyciu Aspose.Words.

## Operacje na dokumentach klonowania

Operacja klonowania pozwala przyspieszyć proces tworzenia dokumentów, ponieważ nie trzeba za każdym razem ładować i analizować dokumentu z pliku.

Po utworzeniu klonu swojego dokumentu będziesz mógł go edytować i wykonywać na nim różne operacje, na przykład porównać go z oryginalnym dokumentem, dołączyć lub wstawić do innego dokumentu. Możesz także modyfikować sklonowane elementy lub ich zawartość przed wstawieniem ich do innego dokumentu.

## Tworzenie klonu dokumentu

Aspose.Words umożliwia klonowanie dokumentu przy użyciu metody [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/), która wykonuje głęboką kopię dokumentu i zwraca go. Innymi słowy, otrzyma pełną kopię pliku DOM. Metoda `Clone` przyspiesza generowanie dokumentów, a do uzyskania kopii dokumentu wystarczy tylko jedna linijka kodu.

Klonowanie tworzy nowy dokument o tej samej zawartości co oryginał, ale z unikalną kopią każdego dokumentu [nodes](https://reference.aspose.com/words/net/aspose.words/node/) oryginalnego dokumentu. Operację klonowania można także zastosować do węzła dokumentu, korzystając z metody [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) węzła, która umożliwia duplikowanie węzłów dokumentu złożonego z węzłami podrzędnymi i bez nich.

{{% alert color="primary" %}}

Należy pamiętać, że podczas stosowania metody klonowania wszystkie właściwości dokumentu zostaną sklonowane.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak sklonować dokument i utworzyć duplikat sekcji w tym dokumencie:

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
