---
title: Werk met documenteigenschappen in C#
second_title: Aspose.Words voor .NET
articleTitle: Met documenteigenschappen werken
linktitle: Met documenteigenschappen werken
description: "Aspose.Words voor .NET het opslaan van nuttige informatie over uw document, zoals API en versienummer of goedgekeurd Date, in ingebouwde of aangepaste document eigenschappen met behulp van C#."
type: docs
weight: 10
url: /nl/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Documenteigenschappen kunnen nuttige informatie over uw document opslaan. Deze eigenschappen kunnen in twee groepen worden onderverdeeld:

* Systeem of ingebouwde die waarden bevatten zoals document titel, auteur naam, document statistieken, en anderen.
* Gebruikersgedefinieerde of aangepaste, verstrekt als naam-waarde paren waar de gebruiker zowel de naam als de waarde kan definiëren.

Het is nuttig om te weten dat informatie over API en versienummer wordt direct naar uitvoerdocumenten geschreven. Bijvoorbeeld, bij het omzetten van een document naar PDF, Aspose.Words vult het veld "Toepassing" in met "Aspose.Words" en het "PDF Producer" veld met "Aspose.Words voor .NET YY.M.N," waar *YY.M.N* is de versie van Aspose.Words gebruikt voor conversie. Voor meer details, zie [Generator of producentnaam opgenomen in uitvoerdocumenten](/words/nl/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Merk op dat u **kan niet sturen** Aspose.Words deze informatie uit uitvoerdocumenten te wijzigen of te verwijderen.

{{% /alert %}}

## Toegangs-documenteigenschappen

Toegang tot document eigenschappen in Aspose.Words gebruik:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) om ingebouwde eigenschappen te verkrijgen.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) om aangepaste eigenschappen te verkrijgen.

**BuiltInDocumentProperties** en **CustomDocumentProperties** zijn collecties van [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) objecten. Deze objecten kunnen worden verkregen via de indexer eigenschap door naam of index.

**BuiltInDocumentProperties** biedt bovendien toegang tot documenteneigenschappen door middel van een reeks ingevoerde eigenschappen die terugkeerwaarden van het juiste type. **CustomDocumentProperties** kunt u documenteigenschappen toevoegen of verwijderen uit een document.

De [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) klasse stelt u in staat om de naam, waarde en het type van een documenteigenschap te krijgen. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) geeft een object terug, maar er is een set van methoden waarmee u de waarde van de eigenschap omgezet in een specifiek type. Nadat u krijgt om te weten wat voor type de woning is, kunt u gebruik maken van een van de **DocumentProperty.ToXXX** methoden, zoals **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) en **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), de waarde van het passende type te verkrijgen.

Het volgende voorbeeld van code laat zien hoe je alle ingebouwde en aangepaste eigenschappen in een document opsomt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, u kunt toegang krijgen tot documenten met behulp van het menu "Bestand" → Eigenschappen.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Documenteigenschappen toevoegen of verwijderen

U kunt ingebouwde documenteigenschappen niet toevoegen of verwijderen met behulp van Aspose.Words. U kunt alleen hun waarden wijzigen of bijwerken.

Aangepaste documenteigenschappen toevoegen met Aspose.Words, gebruik [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) methode, waarbij de nieuwe eigendomsnaam en de waarde van het passende type worden vermeld. De methode geeft de nieuw aangemaakte **DocumentProperty** object.

Om aangepaste eigenschappen te verwijderen, gebruik de [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) methode, het doorgeven van de eigenschap naam te verwijderen, of de [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) methode om de eigenschap per index te verwijderen. U kunt ook alle eigenschappen verwijderen met behulp van de [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) methode.

De volgende codevoorbeeld controleert of een aangepaste eigenschap met een bepaalde naam bestaat in een document en voegt een paar meer aangepaste document eigenschappen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe een aangepaste documenteigenschap te verwijderen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Ingebouwde documenteigenschappen bijwerken

Aspose.Words niet automatisch document eigenschappen bijwerken, als Microsoft Word doet met sommige eigenschappen, maar biedt een methode om een aantal statistische ingebouwde document eigenschappen bij te werken. Bel de [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) methode om de volgende eigenschappen opnieuw te berekenen en bij te werken:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Nieuwe aangepaste eigenschap aanmaken gekoppeld aan inhoud

Aspose.Words levert de [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) methode om een nieuwe aangepaste document eigenschap gekoppeld aan inhoud aan te maken. Deze eigenschap geeft het nieuw aangemaakte object terug of nul als de [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) is ongeldig.

Het volgende voorbeeld van code laat zien hoe je een link naar een aangepaste eigenschap kunt configureren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Documentvariabelen ophalen

U kunt een verzameling van documentvariabelen met behulp van de [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) eigendom. Variabele namen en waarden zijn strings.

Het volgende voorbeeld van code laat zien hoe je documentvariabelen opsomt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Persoonlijke gegevens uit document verwijderen

Als u een Word-document wilt delen met andere mensen, kunt u persoonlijke informatie zoals auteur naam en bedrijf verwijderen. Gebruik hiervoor de [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) eigenschap om de vlag aan te geven Microsoft Word verwijdert alle gebruikersinformatie uit opmerkingen, herzieningen en document eigenschappen bij het opslaan van het document.

Het volgende voorbeeld van code laat zien hoe persoonlijke informatie te verwijderen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Het instellen van deze optie verwijdert geen persoonlijke informatie tijdens het verwerken van een document in Aspose.Words en heeft alleen invloed op de Microsoft Word Gedrag.

{{% /alert %}}
