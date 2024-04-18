---
title: Kloon een document in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document klonen
linktitle: Een document klonen
type: docs
description: "Kloon een document om zijn identieke kopie te krijgen met behulp van Python. Bij het maken van een kopie worden knooppunten en eigenschappen van het originele document gekloond."
weight: 70
url: /nl/python-net/clone-a-document/
---

Een document klonen is het proces van het maken van een identieke kopie van een origineel document, dat de prestaties kan verbeteren en u kan redden van potentiële geheugenlekken.

Dit artikel zal de belangrijkste gebruiksgevallen van het klonen van een document uitleggen en hoe u een documentkloon kunt maken met behulp van Aspose.Words.

## Operaties met klonende documenten

Met de kloonoperatie kunt u het proces van het aanmaken van documenten sneller maken omdat u geen document elke keer uit een bestand hoeft te laden en te verwerken.

Na het maken van een kloon van uw document kunt u het bewerken en verschillende bewerkingen uitvoeren, bijvoorbeeld vergelijken met het oorspronkelijke document, toevoegen of in een ander document invoegen. U kunt ook gekloonde elementen of hun inhoud wijzigen voordat u ze in een ander document invoegt.

## Een documentkloon aanmaken

Aspose.Words kunt u een document te klonen met behulp van de [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) methode die een diepe kopie van het document uitvoert en het retourneert. Met andere woorden, het zal een volledige kopie van de DOM. De [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) methode versnelt het genereren van documenten, en je hebt maar één regel code nodig om een kopie van je document te krijgen.

Klonen produceert een nieuw document met dezelfde inhoud als het origineel, maar met een unieke kopie van elk van de knooppunten van het originele document. U kunt de kloonbewerking ook toepassen op een documentnode met behulp van de node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) methode, waarmee u samengestelde documentknooppunten met en zonder hun kindknooppunten kunt dupliceren.

{{% alert color="primary" %}}

Merk op dat bij het toepassen van de kloonmethode alle documenteigenschappen gekloond zullen worden.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document kloont en een kopie van een sectie in dat document maakt:

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
