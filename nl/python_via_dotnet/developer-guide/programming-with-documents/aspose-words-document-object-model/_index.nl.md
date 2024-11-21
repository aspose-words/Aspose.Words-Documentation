---
title: Aspose.Words DOM
second_title: Aspose.Words voor Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) is een herinneringsrepresentatie van een Word-document. Lees, manipuleer en wijzig de inhoud en opmaak van een Word-document met behulp van Python."
weight: 10
url: /nl/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

De Aspose.Words Document Object Model (DOM) is een herinneringsrepresentatie van een Word-document. De Aspose.Words DOM Hiermee kunt u programmatisch de inhoud en opmaak van een Word-document lezen, manipuleren en wijzigen.

Dit deel beschrijft de belangrijkste klassen van de Aspose.Words DOM en hun relaties. Door het gebruik van de Aspose.Words DOM klassen, kunt u programmatische toegang tot document elementen en opmaak verkrijgen.

## Aanmaken `Document` Objectenboom {#create-a-document-objects-tree}

Wanneer een document wordt gelezen in de Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> dan wordt er een objectboom gebouwd en hebben verschillende soorten elementen van het brondocument hun eigen DOM boomobjecten met verschillende eigenschappen.

### Documentnodesboom bouwen {#build-document-nodes-tree}

Wanneer Aspose.Words leest een Word-document in het geheugen, het creëert objecten van verschillende soorten die verschillende documentelementen vertegenwoordigen. Elke run van een tekst, paragraaf, tabel, of een sectie is een knooppunt, en zelfs het document zelf is een knooppunt. Aspose.Words definieert een klasse voor elk documentnodetype.

De documentboom in Aspose.Words volgt het samengestelde ontwerppatroon:

- Alle knooppuntklassen komen uiteindelijk voort uit de [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) klasse, dat is de basisklasse in de Aspose.Words Document Object Model.
- Knooppunten die andere knooppunten kunnen bevatten, bijvoorbeeld, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) of [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), de [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) klasse, die op zijn beurt voortvloeit uit de [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Klasse.

Het onderstaande diagram toont de erfenis tussen de knooppuntklassen van de Aspose.Words Document Object Model (DOM). De namen van abstracte klassen zijn in cursief.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

De Aspose.Words DOM bevat ook de niet-node klassen, zoals [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) of [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), die worden gebruikt om het uiterlijk en de stijlen in een document aan te passen. Deze klassen worden niet in dit diagram weergegeven omdat zij niet zijn geërfd van de [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Klasse.

{{% /alert %}}

Laten we naar een voorbeeld kijken. De volgende afbeelding toont een Microsoft Word document met verschillende soorten inhoud.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Bij het lezen van het bovenstaande document in de Aspose.Words DOM, de boom van objecten is gemaakt, zoals getoond in het schema hieronder.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), en alle andere ellipsen op het diagram zijn Aspose.Words objecten die elementen van het Word-document weergeven.

### Haal een `Node` Type {#get-a-node-type}

Hoewel de [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) klasse is voldoende om verschillende knooppunten van elkaar te onderscheiden; Aspose.Words levert de [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) Lijst ter vereenvoudiging van sommige API taken, zoals het selecteren van knooppunten van een specifiek type.

Het type van elke knoop kan worden verkregen met behulp van de [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) eigendom. Deze eigenschap geeft een [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) Waarde van de opsomming. Een paragraaf die bijvoorbeeld door de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) klasse geeft terug [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), en een tabel knooppunt vertegenwoordigd door de [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) klasse geeft terug [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Het volgende voorbeeld laat zien hoe je een knooppunt type met behulp van de [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) Lijst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Documentboomnavigatie {#document-tree-navigation}

Aspose.Words vertegenwoordigt een document als een knooppunt boom, waarmee u kunt navigeren tussen knooppunten. Deze sectie beschrijft hoe u de documentboom kunt verkennen en navigeren in Aspose.Words.

Wanneer u het voorbeelddocument opent, dat eerder in de Document Explorer wordt getoond, verschijnt de knooppuntboom precies zoals deze is weergegeven in Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

U kunt het voorbeeld project "Document Explorer" leren op de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Relaties tussen documentnodes {#document-nodes-relationships}

De knooppunten in de boom hebben relaties tussen hen:

- Een knooppunt met een ander knooppunt is een *parent.*
- Het knooppunt in het ouderknooppunt is een *child.* Kindknooppunten van dezelfde ouder zijn *sibling* knooppunten.
- De *root* knooppunt is altijd de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Node.

De knooppunten die andere knooppunten kunnen bevatten zijn afkomstig van de [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) klasse, en alle knooppunten uiteindelijk afkomstig zijn van de [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Klasse. Deze twee basisklassen bieden gemeenschappelijke methoden en eigenschappen voor de navigatie en modificatie van de boomstructuur.

Het volgende UML object diagram toont verschillende knooppunten van het monster document en hun relaties met elkaar via de ouder, kind en broer eigenschappen:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Document is Node-eigenaar

Een knooppunt behoort altijd tot een bepaald document, zelfs als het net is gemaakt of verwijderd uit de boom, omdat vitale document-brede structuren zoals stijlen en lijsten worden opgeslagen in de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Node. Het is bijvoorbeeld niet mogelijk om een [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) zonder een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) omdat elke alinea een toegewezen stijl heeft die wereldwijd voor het document wordt gedefinieerd. Deze regel wordt gebruikt bij het aanmaken van nieuwe nodes. Een nieuw toevoegen [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) rechtstreeks naar de DOM vereist een document object doorgegeven aan de constructeur.

{{% alert color="primary" %}}

De [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) eigenschap geeft het document terug waartoe het knooppunt behoort.

{{% /alert %}}

Bij het aanmaken van een nieuwe paragraaf [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), de bouwer heeft altijd een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klasse verbonden aan het via de [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) eigendom.

Het volgende voorbeeld toont aan dat bij het aanmaken van een node, een document dat eigenaar van de node is altijd wordt gedefinieerd:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Ouderknooppunt

Elke knooppunt heeft een ouder gespecificeerd door de [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) eigendom. Een knooppunt heeft geen oudernode, dat wil zeggen, [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) is *None*, in de volgende gevallen:

- Het knooppunt is zojuist aangemaakt en is nog niet aan de boom toegevoegd.
- Het knooppunt is uit de boom verwijderd.
- Dit is de root [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) knooppunt dat altijd een Geen ouder knooppunt heeft.

U kunt een knooppunt verwijderen van de ouder door de [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) methode. Het volgende voorbeeld van code laat zien hoe toegang te krijgen tot het ouderknooppunt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Kindknooppunten

De meest efficiënte manier om toegang te krijgen tot kinderknooppunten van een [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) via de [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) en [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) eigenschappen die respectievelijk de eerste en laatste kindknooppunten teruggeven. Als er geen kindknopen zijn, keren deze eigenschappen terug *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) de [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) collectie die geïndexeerde of genummerde toegang tot de kinderknooppunten mogelijk maakt. De [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) methode geeft een levende verzameling van knooppunten, wat betekent dat wanneer het document wordt gewijzigd, zoals wanneer knooppunten worden verwijderd of toegevoegd, de **get_child_nodes** collectie wordt automatisch bijgewerkt.

Als een knooppunt geen kind heeft, dan de **get_child_nodes** methode geeft een lege verzameling. U kunt controleren of de [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) bevat alle kindknooppunten met behulp van de [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) eigendom.

Het volgende voorbeeld van code laat zien hoe direct kind knooppunten van een [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) gebruik makend van de door de **get_child_nodes** verzameling:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Verwante nodes

U kunt de knoop verkrijgen die onmiddellijk voorafgaat aan of een bepaald knooppunt volgt met behulp van de [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) en [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) eigenschappen, respectievelijk. Als een knooppunt is het laatste kind van zijn ouder, dan de [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) eigenschap is *None*. Omgekeerd, als de knoop is het eerste kind van zijn ouder, de [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) eigenschap is *None*.

Het volgende voorbeeld van code laat zien hoe je efficiënt alle directe en indirecte kindknooppunten van een samengesteld knooppunt kunt bezoeken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Getypte toegang tot kinder- en ouderknooppunten {#typed-access-to-child-and-parent-nodes}

Tot nu toe hebben we de eigenschappen besproken die een van de basistypen teruggeven. [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) of [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Maar soms zijn er situaties waarin je misschien waarden naar een specifieke knooppunt klasse, zoals [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) of [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Dat wil zeggen, je kunt niet helemaal weg van casting bij het werken met de Aspose.Words DOM, Dat is samengesteld.

Om de behoefte aan gietgieten te verminderen, Aspose.Words klassen bieden eigenschappen en collecties die sterk getypte toegang bieden. Er zijn drie basispatronen van getypte toegang:

- Een oudernode onthult getypt **eerste_XXX** en **last_XXX** eigenschappen. Zo is het [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) heeft [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) en [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) eigenschappen. Evenzo, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) heeft eigenschappen zoals [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), en anderen.
- Een ouder knooppunt onthult een getypte verzameling van kindknopen, zoals [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), en anderen.
- Een kind knooppunt biedt getypte toegang tot de ouder, zoals [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), en anderen.

Getypte eigenschappen zijn slechts nuttige snelkoppelingen die soms gemakkelijker toegang bieden dan generieke eigenschappen die zijn geërfd van [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) en [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Het volgende voorbeeld van code laat zien hoe getypte eigenschappen gebruikt kunnen worden om toegang te krijgen tot knooppunten van de documentboom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
