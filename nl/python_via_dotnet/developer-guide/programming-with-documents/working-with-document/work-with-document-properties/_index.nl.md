---
title: Met documenteigenschappen werken
second_title: Aspose.Words voor Python via .NET
articleTitle: Met documenteigenschappen werken
linktitle: Met documenteigenschappen werken
description: "Aspose.Words voor Python het opslaan van nuttige informatie over uw document, zoals API en versienummer of goedgekeurd Date, in ingebouwde of aangepaste document eigenschappen."
type: docs
weight: 10
url: /nl/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Documenteigenschappen kunnen nuttige informatie over uw document opslaan. Deze eigenschappen kunnen in twee groepen worden onderverdeeld:

* Systeem of ingebouwde die waarden bevatten zoals document titel, auteur naam, document statistieken, en anderen.
* Gebruikersgedefinieerde of aangepaste, verstrekt als naam-waarde paren waar de gebruiker zowel de naam als de waarde kan definiëren.

Het is nuttig om te weten dat informatie over API en versienummer wordt direct naar uitvoerdocumenten geschreven. Bijvoorbeeld, bij het omzetten van een document naar PDF, Aspose.Words vult het veld "Toepassing" in met "Aspose.Words" en het "PDF Producer" veld met "Aspose.Words voor .NET YY.M.N," waar *YY.M.N* is de versie van Aspose.Words gebruikt voor conversie. Voor meer details, zie [Generator of producentnaam opgenomen in uitvoerdocumenten](/words/nl/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Merk op dat u **kan niet sturen** Aspose.Words deze informatie uit uitvoerdocumenten te wijzigen of te verwijderen.

{{% /alert %}}

## Toegangs-documenteigenschappen

Toegang tot document eigenschappen in Aspose.Words gebruik:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) om ingebouwde eigenschappen te verkrijgen.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) om aangepaste eigenschappen te verkrijgen.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) en [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) zijn collecties van [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) objecten. Deze objecten kunnen worden verkregen via de indexer eigenschap door naam of index.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) biedt bovendien toegang tot documenteneigenschappen door middel van een reeks ingevoerde eigenschappen die terugkeerwaarden van het juiste type. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) kunt u documenteigenschappen toevoegen of verwijderen uit een document.

De [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) klasse stelt u in staat om de naam, waarde en het type van een documenteigenschap te krijgen. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) geeft een object terug, maar er is een set van methoden waarmee u de waarde van de eigenschap omgezet in een specifiek type. Nadat u krijgt om te weten wat voor type de woning is, kunt u gebruik maken van een van de **DocumentProperty.to_XXX** methoden, zoals **Documenteigenschappen.\_\_str\_\_** en [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), de waarde van het passende type te verkrijgen.

Het volgende voorbeeld van code laat zien hoe je alle ingebouwde en aangepaste eigenschappen in een document opsomt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, u toegang heeft tot documenten met behulp van het menu "Bestand → Eigenschappen."

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Documenteigenschappen toevoegen of verwijderen

U kunt ingebouwde documenteigenschappen niet toevoegen of verwijderen met behulp van Aspose.Words. U kunt alleen hun waarden wijzigen of bijwerken.

Aangepaste documenteigenschappen toevoegen met Aspose.Words, gebruik [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) methode, waarbij de nieuwe eigendomsnaam en de waarde van het passende type worden vermeld. De methode geeft de nieuw aangemaakte [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) object.

Om aangepaste eigenschappen te verwijderen, gebruik de [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) methode, het doorgeven van de eigenschap naam te verwijderen, of de [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) methode om de eigenschap per index te verwijderen. U kunt ook alle eigenschappen verwijderen met behulp van de [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) methode.

De volgende codevoorbeeld controleert of een aangepaste eigenschap met een bepaalde naam bestaat in een document en voegt een paar meer aangepaste document eigenschappen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe een aangepaste documenteigenschap te verwijderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Ingebouwde documenteigenschappen bijwerken

Aspose.Words niet automatisch document eigenschappen bijwerken, als Microsoft Word doet met sommige eigenschappen, maar biedt een methode om een aantal statistische ingebouwde document eigenschappen bij te werken. Bel de [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) methode om de volgende eigenschappen opnieuw te berekenen en bij te werken:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Nieuwe aangepaste eigenschap aanmaken gekoppeld aan inhoud

Aspose.Words levert de [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) methode om een nieuwe aangepaste document eigenschap gekoppeld aan inhoud aan te maken. Deze eigenschap geeft het nieuw aangemaakte object terug of nul als de **link_source** is ongeldig.

Het volgende voorbeeld van code laat zien hoe je een link naar een aangepaste eigenschap kunt configureren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Documentvariabelen ophalen

U kunt een verzameling van documentvariabelen met behulp van de [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) eigendom. Variabele namen en waarden zijn strings.

Het volgende voorbeeld van code laat zien hoe u documentvariabelen toevoegt en toegang geeft:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Persoonlijke gegevens uit document verwijderen

Als u een Word-document wilt delen met andere mensen, kunt u persoonlijke informatie zoals auteur naam en bedrijf verwijderen. Gebruik hiervoor de [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) eigenschap om de vlag aan te geven Microsoft Word verwijdert alle gebruikersinformatie uit opmerkingen, herzieningen en document eigenschappen bij het opslaan van het document.

Het volgende voorbeeld van code laat zien hoe persoonlijke informatie te verwijderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Het instellen van deze optie verwijdert geen persoonlijke informatie tijdens het verwerken van een document in Aspose.Words en heeft alleen invloed op de Microsoft Word Gedrag.

{{% /alert %}}
