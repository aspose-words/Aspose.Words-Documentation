---
title: Aspose.Words Document Object Model (DOM) in C++
second_title: Aspose.Words voor C++
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) is een in-memory weergave van een Word document. Lees, manipuleer en wijzig de inhoud en opmaak van een Word document met behulp van C++."
weight: 10
url: /nl/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Het Aspose.Words Document Object Model (DOM) is een in-memory weergave van een Word document. Met Aspose.Words DOM kunt u de inhoud en opmaak van een Word document programmatisch lezen, manipuleren en wijzigen.

Dit gedeelte beschrijft de hoofdklassen van de Aspose.Words DOM en hun relaties. Door de klassen Aspose.Words DOM te gebruiken, kunt u programmatische toegang verkrijgen tot documentelementen en opmaak.

## Documentobjectstructuur {#create-a-document-objects-tree}Maken

Wanneer een document in de Aspose.Words DOM wordt gelezen, wordt een objectboom gebouwd en hebben verschillende soorten elementen van het brondocument hun eigen DOM - boomobjecten met verschillende eigenschappen.

### Bouw Document Nodes Tree {#build-document-nodes-tree}

Wanneer Aspose.Words een Word document in het geheugen leest, worden objecten van verschillende typen gemaakt die verschillende documentelementen vertegenwoordigen. Elke run van een tekst, alinea, tabel of sectie is een knooppunt, en zelfs het document zelf is een knooppunt. Aspose.Words definieert een klasse voor elk type documentknooppunt.

De documentstructuur in Aspose.Words volgt het samengestelde ontwerppatroon:

- Alle knoopklassen zijn uiteindelijk afgeleid van de [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) - klasse, die de basisklasse is in het Aspose.Words Documentobjectmodel.
- Knooppunten die andere knooppunten kunnen bevatten, bijvoorbeeld **Section** of **Paragraph**, zijn afgeleid van de [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) klasse, die op zijn beurt afgeleid is van de **Node** klasse.

Het onderstaande diagram toont overerving tussen knoopklassen van het Aspose.Words Document Object Model (DOM). De namen van abstracte klassen staan in cursief.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

De Aspose.Words DOM bevat ook de niet-knooppuntklassen, zoals [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) of [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), die worden gebruikt om het uiterlijk en de stijlen in een document aan te passen. Deze klassen worden in dit diagram niet weergegeven als niet geërfd van de `Node` klasse.

{{% /alert %}}

Laten we eens naar een voorbeeld kijken. De volgende afbeelding toont een Microsoft Word document met verschillende soorten inhoud.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Bij het lezen van het bovenstaande document in de Aspose.Words DOM, wordt de boom van objecten gemaakt, zoals getoond in het schema hieronder.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), en alle andere ellipsen op het diagram zijn Aspose.Words objecten die elementen van het Word document vertegenwoordigen.

### Get a `Node` Type {#get-a-node-type}

Hoewel de [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) - klasse voldoende is om verschillende knooppunten van elkaar te onderscheiden, biedt Aspose.Words de [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) - opsomming om sommige API - taken te vereenvoudigen, zoals het selecteren van knooppunten van een specifiek type.

Het type van elke knoop kan worden verkregen met behulp van de eigenschap [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Deze eigenschap geeft een **NodeType** opsommingswaarde terug. Een alineaknoop die wordt weergegeven door de klasse **Paragraph** geeft bijvoorbeeld **NodeType**.**Paragraph** terug en een tabelknoop die wordt weergegeven door de klasse **Table** geeft **NodeType**.**Table** terug.

Het volgende voorbeeld laat zien hoe u een knooptype krijgt met behulp van de **NodeType** - opsomming:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Document Boom Navigatie {#document-tree-navigation}

Aspose.Words vertegenwoordigt een document als een knoopstructuur, waarmee u tussen knooppunten kunt navigeren. In dit gedeelte wordt beschreven hoe u de documentstructuur in Aspose.Words kunt verkennen en navigeren.

Wanneer u het eerder gepresenteerde voorbeelddocument opent in de Documentverkenner, wordt de knoopstructuur precies weergegeven zoals deze wordt weergegeven in Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Documentknooprelaties {#document-nodes-relationships}

De knopen in de boom hebben relaties tussen hen.:

- Een knoop die een andere knoop bevat is een *parent.*
- De knoop in de ouderknoop is een *child.* Kindknooppunten van dezelfde ouder zijn *sibling* knooppunten.
- De *root* knoop is altijd de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) knoop.

De knooppunten die andere knooppunten kunnen bevatten, zijn afgeleid van de klasse [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), en alle knooppunten zijn uiteindelijk afgeleid van de klasse [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Deze twee basisklassen bieden gemeenschappelijke methoden en eigenschappen voor de navigatie en wijziging van de boomstructuur.

Het volgende UML objectdiagram toont verschillende knooppunten van het voorbeelddocument en hun relaties met elkaar via de eigenschappen ouder, kind en broer of zus:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Document is Node Owner

Een knooppunt behoort altijd tot een bepaald document, zelfs als het net is gemaakt of verwijderd uit de boomstructuur, omdat vitale documentbrede structuren zoals stijlen en lijsten worden opgeslagen in de **Document**-knooppunt. Het is bijvoorbeeld niet mogelijk om een **Paragraph** zonder een **Document** te hebben, omdat elke alinea een toegewezen stijl heeft die Globaal is gedefinieerd voor het document. Deze regel wordt gebruikt bij het maken van nieuwe knooppunten. Om een nieuwe **Paragraph** rechtstreeks aan de DOM toe te voegen, is een documentobject nodig dat aan de constructor is doorgegeven.

{{% alert color="primary" %}}

De eigenschap [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) retourneert het document waartoe het knooppunt behoort.

{{% /alert %}}

Bij het maken van een nieuwe alinea met behulp van [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), heeft de builder altijd een **Document** klasse gekoppeld via de eigenschap [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Het volgende codevoorbeeld laat zien dat bij het maken van een knooppunt een document dat eigenaar is van het knooppunt altijd wordt gedefinieerd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Ouderknooppunt

Elke knoop heeft een ouder die wordt gespecificeerd door de eigenschap [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Een knooppunt heeft geen ouderknooppunt, dat wil zeggen, **ParentNode** is nul, in de volgende gevallen:

- De node is net gemaakt en is nog niet toegevoegd aan de boom.
- De knoop is van de boom verwijderd.
- Dit is de root **Document** node die altijd een nul ouder node heeft.

U kunt een knooppunt uit zijn ouder verwijderen door de methode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) aan te roepen.Het volgende codevoorbeeld toont hoe toegang te krijgen tot het ouderknooppunt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Child Nodes

De meest efficiënte manier om toegang te krijgen tot onderliggende knooppunten van een [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) is via de eigenschappen [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) en [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) die respectievelijk de eerste en laatste onderliggende knooppunten retourneren. Als er geen onderliggende knooppunten zijn, geven deze eigenschappen *null* terug.

**CompositeNode**

Als een knooppunt geen kind heeft, geeft de eigenschap **ChildNodes** een lege verzameling terug. U kunt controleren of de **CompositeNode** onderliggende knooppunten bevat met behulp van de eigenschap [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

Het volgende codevoorbeeld laat zien hoe directe kindknooppunten van een `CompositeNode` kunnen worden opgesomd met behulp van de enumerator die door de `ChildNodes` - collectie wordt verstrekt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Het volgende codevoorbeeld laat zien hoe directe kindknooppunten van een `CompositeNode` worden opgesomd met behulp van geïndexeerde toegang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Sibling Nodes

U kunt het knooppunt verkrijgen dat onmiddellijk voorafgaat aan of volgt op een bepaald knooppunt met behulp van respectievelijk de eigenschappen [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) en [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Als een knoop het laatste kind van zijn ouder is, dan is de eigenschap **NextSibling** *null*. Omgekeerd, als de knoop het eerste kind van zijn ouder is, is de eigenschap **PreviousSibling** *null*.

Het volgende codevoorbeeld laat zien hoe u efficiënt alle directe en indirecte kindknooppunten van een samengestelde knoop kunt bezoeken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Getypte toegang tot kind-en Ouderknooppunten

Tot nu toe hebben we de eigenschappen besproken die een van de basistypen – **Node** of **CompositeNode** retourneren. Maar soms zijn er situaties waarin u mogelijk waarden naar een specifieke knoopklasse moet casten, zoals **Run** of **Paragraph**. Dat wil zeggen, Je kunt niet volledig wegkomen van gieten wanneer je werkt met de Aspose.Words DOM, die samengesteld is.

Om de noodzaak van casting te verminderen, bieden de meeste Aspose.Words-klassen eigenschappen en collecties die sterk getypte toegang bieden. Er zijn drie basispatronen van getypte toegang:

- Een ouderknooppunt toont getypte **FirstXXX** en **LastXXX** eigenschappen. De **Document** heeft bijvoorbeeld [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) en [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) eigenschappen. Evenzo heeft **Table** eigenschappen zoals [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) en andere.
- Een bovenliggende node toont een getypte verzameling onderliggende nodes, zoals [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) en anderen.
- Een kindknooppunt biedt getypte toegang tot zijn ouder, zoals [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) en anderen.

Getypte eigenschappen zijn slechts nuttige snelkoppelingen die soms gemakkelijker toegang bieden dan generieke eigenschappen die zijn overgenomen van [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) en [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Het volgende codevoorbeeld laat zien hoe getypte eigenschappen worden gebruikt om toegang te krijgen tot knooppunten van de documentstructuur:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
