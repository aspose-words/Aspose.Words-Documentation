---
title: Een document aanmaken of laden in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document aanmaken of laden
linktitle: Een document aanmaken of laden
type: docs
url: /nl/python-net/create-or-load-a-document/
description: "Een leeg document aanmaken of laden vanuit een bestand of stream met behulp van Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Bijna elke taak die u wilt uitvoeren met Aspose.Words het laden van een document. De [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klasse staat voor een document dat in het geheugen is geladen. Het document heeft verschillende overbelaste constructeurs waarmee u een leeg document kunt maken of het kunt laden vanuit een bestand of stream. Het document kan worden geladen in elk laadformaat ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde laadformaten, zie de [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Lijst.

## Nieuw document aanmaken

Wij zullen de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) constructor zonder parameters om een nieuw leeg document aan te maken. Als u een document programmatisch wilt genereren, is de eenvoudigste manier om de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klasse om documentinhoud toe te voegen.

Het volgende voorbeeld van code laat zien hoe u een document kunt maken met behulp van de documentbouwer:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Let op de standaardwaarden:

- Een leeg document bevat één sectie met standaardparameters, één lege paragraaf, sommige documentstijlen. Eigenlijk is dit document hetzelfde als het resultaat van het maken van het nieuwe document Microsoft Word.
- Het document papier grootte is [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Een document laden

Het laden van een bestaand document in een van de [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) formaten, geef de bestandsnaam of de stroom in een van de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) constructeurs. Het formaat van het geladen document wordt automatisch bepaald door de uitbreiding ervan.

### Uit een bestand laden

Geef een bestandsnaam als tekenreeks aan de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) constructeur om een bestaand document uit een bestand te openen.

Het volgende voorbeeld van code laat zien hoe een document vanuit een bestand te openen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Laden van een stroom

Om een document vanuit een stroom te openen, geef je gewoon een stream object door dat het document bevat in de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Constructeur.

Het volgende voorbeeld van code laat zien hoe een document vanuit een stroom kan worden geopend:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
