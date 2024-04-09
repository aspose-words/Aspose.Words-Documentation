---
title: Klonovat dokument v C#
second_title: Aspose.Words místo .NET
articleTitle: Klonovat dokument
linktitle: Klonovat dokument
type: docs
description: "Klonovat dokument pro získání jeho identické kopie pomocí C#. Při vytváření kopie jsou klonovány uzly a vlastnosti původního dokumentu."
weight: 70
url: /cs/net/clone-a-document/
---

Klonování dokumentu je proces vytvoření stejné kopie původního dokumentu, který může zlepšit výkon a ušetřit vás před potenciálními úniky paměti.

Tento článek vysvětlí hlavní případy použití klonování dokumentu a jak vytvořit klon dokumentu pomocí Aspose.Words.

## Operace s dokumenty Klonování

Klonová operace vám umožňuje zrychlit proces vytváření dokumentů, protože nebudete muset načíst a pokaždé analyzovat dokument ze souboru.

Po vytvoření klonu vašeho dokumentu jej budete moci editovat a provádět na něm různé operace, například jej porovnat s původním dokumentem, doplnit nebo vložit do jiného dokumentu. Před vložením do jiného dokumentu můžete také upravit klonované prvky nebo jejich obsah.

## Vytvoření klonu dokumentu

Aspose.Words umožňuje naklonovat dokument pomocí [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) metoda, která provádí hlubokou kopii dokumentu a vrací jej. Jinými slovy, dostane plnou kopii DOM. • `Clone` metoda urychluje generování dokumentů a potřebujete pouze jeden řádek kódu, abyste získali kopii dokumentu.

Klonování vytváří nový dokument se stejným obsahem jako originál, ale s jedinečnou kopií každého z původních dokumentů [nodes](https://reference.aspose.com/words/net/aspose.words/node/). Můžete také použít klonovou operaci na uzel dokumentu pomocí uzel [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) metoda, která vám umožní duplikovat složené dokumentové uzly s a bez jejich dětských uzlů.

{{% alert color="primary" %}}

Všimněte si, že při použití metody klonování budou naklonovány všechny vlastnosti dokumentů.

{{% /alert %}}

Následující příklad kódu ukazuje, jak naklonovat dokument a vytvořit duplikát části v tomto dokumentu:

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
