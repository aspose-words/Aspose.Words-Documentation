---
title: Werken met Documenteigenschappen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Documenteigenschappen
linktitle: Werken met Documenteigenschappen
description: "Met Aspose.Words voor C++ kunt u nuttige informatie over uw document opslaan, zoals API en versienummer of geautoriseerde datum, in ingebouwde of aangepaste Documenteigenschappen."
type: docs
weight: 10
url: /nl/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Met Documenteigenschappen kunt u nuttige informatie over uw document opslaan. Deze eigenschappen kunnen in twee groepen worden verdeeld:

* Systeem of Ingebouwde die waarden zoals documenttitel, auteursnaam, documentstatistieken en anderen bevatten.
* Door de gebruiker gedefinieerd of aangepast, verstrekt als naam-waarde paren waarbij de gebruiker zowel de naam als de waarde kan definiëren.

Het is handig om te weten dat informatie over API en versienummer rechtstreeks naar uitvoerdocumenten wordt geschreven. Bijvoorbeeld, bij het converteren van een document naar PDF, vult Aspose.Words het veld "Application" in met "Aspose.Words", en het veld "PDF Producer" met "Aspose.Words voor C++ YY.M. n", waarbij *YY.M.N* de versie van Aspose.Words is die voor conversie wordt gebruikt. Voor meer details, zie [Naam van Generator of producent opgenomen in uitvoerdocumenten](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Merk op dat u **cannot direct** Aspose.Words deze informatie uit uitvoerdocumenten wilt wijzigen of verwijderen.

{{% /alert %}}

## Access Document Eigenschappen

Voor toegang tot Documenteigenschappen in Aspose.Words gebruik:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) om ingebouwde eigenschappen te verkrijgen.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) om aangepaste eigenschappen te verkrijgen.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Met de klasse [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) kunt u de naam, waarde en het type van een documenteigenschap ophalen. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) retourneert een object, maar er is een reeks methoden waarmee u de eigenschapswaarde kunt omzetten naar een specifiek type. Nadat u weet welk type de eigenschap is, kunt u een van de **DocumentProperty.ToXXX** - methoden gebruiken, zoals **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) en **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), om de waarde van het juiste type te verkrijgen.

Het volgende codevoorbeeld laat zien hoe u alle ingebouwde en aangepaste eigenschappen in een document kunt opsommen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

In Microsoft Word kunt u Documenteigenschappen openen via het menu "Bestand → Eigenschappen".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Documenteigenschappen toevoegen of verwijderen

U kunt geen ingebouwde Documenteigenschappen toevoegen of verwijderen met Aspose.Words. U kunt alleen hun waarden wijzigen of bijwerken.

Als u aangepaste Documenteigenschappen wilt toevoegen met Aspose.Words, gebruikt u de methode [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), waarbij u de naam van de nieuwe eigenschap en de waarde van het juiste type doorgeeft. De methode retourneert het nieuw aangemaakte **DocumentProperty** object.

Als u aangepaste eigenschappen wilt verwijderen, gebruikt u de methode [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), waarbij u de eigenschappennaam geeft om te verwijderen, of de methode [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) om de eigenschap per index te verwijderen. U kunt ook alle eigenschappen verwijderen met de methode [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Het volgende codevoorbeeld controleert of een aangepaste eigenschap met een gegeven naam in een document bestaat en voegt nog een paar aangepaste Documenteigenschappen toe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een aangepaste documenteigenschap verwijdert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Ingebouwde Documenteigenschappen Bijwerken

Aspose.Words werkt Documenteigenschappen niet automatisch bij, zoals Microsoft Word met sommige eigenschappen doet, maar biedt een methode om bepaalde statistische ingebouwde Documenteigenschappen bij te werken. Roep de methode [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) aan om de volgende eigenschappen te herberekenen en bij te werken:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Een nieuwe aangepaste eigenschap maken die is gekoppeld aan inhoud

Aspose.Words biedt de methode [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) om een nieuwe aangepaste documenteigenschap te maken die is gekoppeld aan inhoud. Deze eigenschap retourneert het nieuw aangemaakte eigenschapobject of null als de [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) ongeldig is.

Het volgende codevoorbeeld laat zien hoe u een koppeling naar een aangepaste eigenschap configureert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Documentvariabelen Ophalen

U kunt een verzameling documentvariabelen verkrijgen met behulp van de eigenschap [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Variabele namen en waarden zijn strings.

Het volgende codevoorbeeld laat zien hoe documentvariabelen kunnen worden opgesomd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Persoonlijke informatie uit Document verwijderen

Als u een Word - document met andere personen wilt delen, wilt u mogelijk persoonlijke gegevens zoals de naam van de auteur en het bedrijf verwijderen. Gebruik hiervoor de eigenschap [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) om de vlag in te stellen die aangeeft dat Microsoft Word alle gebruikersinformatie uit opmerkingen, revisies en Documenteigenschappen verwijdert bij het opslaan van het document.

Het volgende codevoorbeeld laat zien hoe u persoonlijke informatie kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Het instellen van deze optie verwijdert geen persoonlijke gegevens tijdens het verwerken van een document in Aspose.Words en heeft alleen invloed op het gedrag van Microsoft Word.

{{% /alert %}}
