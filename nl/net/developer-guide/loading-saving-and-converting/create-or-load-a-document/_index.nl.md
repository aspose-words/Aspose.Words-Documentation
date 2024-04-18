---
title: Een document aanmaken of laden in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document aanmaken of laden
linktitle: Een document aanmaken of laden
type: docs
url: /nl/net/create-or-load-a-document/
description: "Een leeg document aanmaken of laden vanuit een bestand of stream met behulp van C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Bijna elke taak die u wilt uitvoeren met Aspose.Words het laden van een document. De `Document` klasse staat voor een document dat in het geheugen is geladen. Het document heeft verschillende overbelaste constructeurs waarmee u een leeg document kunt maken of het kunt laden vanuit een bestand of stream. Het document kan worden geladen in elk laadformaat ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde laadformaten, zie de [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) Lijst.

## Nieuw document aanmaken {#create-a-new-document}

Wij zullen de [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) constructor zonder parameters om een nieuw leeg document aan te maken. Als u een document programmatisch wilt genereren, is de eenvoudigste manier om de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klasse om documentinhoud toe te voegen.

Het volgende voorbeeld van code laat zien hoe u een document kunt maken met behulp van de documentbouwer:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Let op de standaardwaarden:

- Een leeg document bevat één sectie met standaardparameters, één lege paragraaf, sommige documentstijlen. Eigenlijk is dit document hetzelfde als het resultaat van het maken van het nieuwe document Microsoft Word.
- Het document papier grootte is [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Een document laden {#load-a-document}

Het laden van een bestaand document in een van de [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formaten, geef de bestandsnaam of de stroom in een van de document constructors. Het formaat van het geladen document wordt automatisch bepaald door de uitbreiding ervan.

### Uit een bestand laden {#load-from-a-file}

Geef een bestandsnaam als tekenreeks aan de document constructor om een bestaand document uit een bestand te openen.

Het volgende voorbeeld van code laat zien hoe een document vanuit een bestand te openen:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Laden van een stroom {#load-from-a-stream}

Om een document vanuit een stroom te openen, geef je gewoon een stream object door dat het document bevat in de document constructor.

Het volgende voorbeeld van code laat zien hoe een document vanuit een stroom kan worden geopend:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
