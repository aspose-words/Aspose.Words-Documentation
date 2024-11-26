---
title: Klonovat dokument v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Klonovat dokument
linktitle: Klonovat dokument
type: docs
description: "Klonovat dokument pro získání jeho identické kopie pomocí Python. Při vytváření kopie jsou klonovány uzly a vlastnosti původního dokumentu."
weight: 70
url: /cs/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonování dokumentu je proces vytvoření stejné kopie původního dokumentu, který může zlepšit výkon a ušetřit vás před potenciálními úniky paměti.

Tento článek vysvětlí hlavní případy použití klonování dokumentu a jak vytvořit klon dokumentu pomocí Aspose.Words.

## Operace s dokumenty Klonování

Klonová operace vám umožňuje zrychlit proces vytváření dokumentů, protože nebudete muset načíst a pokaždé analyzovat dokument ze souboru.

Po vytvoření klonu vašeho dokumentu jej budete moci editovat a provádět na něm různé operace, například jej porovnat s původním dokumentem, doplnit nebo vložit do jiného dokumentu. Před vložením do jiného dokumentu můžete také upravit klonované prvky nebo jejich obsah.

## Vytvoření klonu dokumentu

Aspose.Words umožňuje naklonovat dokument pomocí [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) metoda, která provádí hlubokou kopii dokumentu a vrací jej. Jinými slovy, dostane plnou kopii DOM. • [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) metoda urychluje generování dokumentů a potřebujete pouze jeden řádek kódu, abyste získali kopii dokumentu.

Klonování vytváří nový dokument se stejným obsahem jako originál, ale s unikátní kopií každého z původních uzlů dokumentu. Můžete také použít klonovou operaci na uzel dokumentu pomocí uzel [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) metoda, která vám umožní duplikovat složené dokumentové uzly s a bez jejich dětských uzlů.

{{% alert color="primary" %}}

Všimněte si, že při použití metody klonování budou naklonovány všechny vlastnosti dokumentů.

{{% /alert %}}

Následující příklad kódu ukazuje, jak naklonovat dokument a vytvořit duplikát části v tomto dokumentu:

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
