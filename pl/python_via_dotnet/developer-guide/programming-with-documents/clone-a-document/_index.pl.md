---
title: Sklonuj dokument w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Sklonuj dokument
linktitle: Sklonuj dokument
type: docs
description: "Sklonuj dokument, aby uzyskać jego identyczną kopię za pomocą Python. Podczas tworzenia kopii klonowane są węzły i właściwości oryginalnego dokumentu."
weight: 70
url: /pl/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonowanie dokumentu to proces tworzenia identycznej kopii oryginalnego dokumentu, który może poprawić wydajność i uchronić Cię przed potencjalnymi wyciekami pamięci.

W tym artykule wyjaśnione zostaną główne przypadki użycia klonowania dokumentu oraz sposoby tworzenia klonu dokumentu przy użyciu Aspose.Words.

## Operacje na dokumentach klonowania

Operacja klonowania pozwala przyspieszyć proces tworzenia dokumentów, ponieważ nie trzeba za każdym razem ładować i analizować dokumentu z pliku.

Po utworzeniu klonu swojego dokumentu będziesz mógł go edytować i wykonywać na nim różne operacje, na przykład porównać go z oryginalnym dokumentem, dołączyć lub wstawić do innego dokumentu. Możesz także modyfikować sklonowane elementy lub ich zawartość przed wstawieniem ich do innego dokumentu.

## Tworzenie klonu dokumentu

Aspose.Words umożliwia klonowanie dokumentu przy użyciu metody [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), która wykonuje głęboką kopię dokumentu i zwraca go. Innymi słowy, otrzyma pełną kopię pliku DOM. Metoda [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) przyspiesza generowanie dokumentów, a do uzyskania kopii dokumentu wystarczy tylko jedna linijka kodu.

Klonowanie tworzy nowy dokument o tej samej zawartości co oryginał, ale z unikalną kopią każdego węzła oryginalnego dokumentu. Operację klonowania można także zastosować do węzła dokumentu, korzystając z metody [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) węzła, która umożliwia duplikowanie węzłów dokumentu złożonego z węzłami podrzędnymi i bez nich.

{{% alert color="primary" %}}

Należy pamiętać, że podczas stosowania metody klonowania wszystkie właściwości dokumentu zostaną sklonowane.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak sklonować dokument i utworzyć duplikat sekcji w tym dokumencie:

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
