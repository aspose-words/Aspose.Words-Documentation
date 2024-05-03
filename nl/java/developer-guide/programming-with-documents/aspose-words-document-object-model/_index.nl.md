---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words voor Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) is een in-geheugen weergave van een Word document. De inhoud en opmaak van een Word-document lezen, manipuleren en wijzigen met behulp van Java."
weight: 10
url: /nl/java/aspose-words-document-object-model/
---

De Aspose.Words Document Object Model (DOM) is een in-geheugen weergave van een Word document. De Aspose.Words DOM kunt u programmatisch lezen, manipuleren en wijzigen van de inhoud en het formatteren van een Word-document.

In dit deel worden de belangrijkste klassen van de Aspose.Words DOM en hun relaties. Door Aspose.Words DOM klassen, kunt u programmatische toegang tot document elementen en opmaak verkrijgen.

## Document aanmaken Objectboom {#create-a-document-objects-tree}

Wanneer een document wordt gelezen in de Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> dan wordt een objectboom gebouwd en verschillende soorten elementen van het brondocument hebben hun eigen DOM boom objecten met verschillende eigenschappen.

### Documentnodesboom bouwen {#build-document-nodes-tree}

Wanneer Aspose.Words leest een Word-document in het geheugen, het creëert objecten van verschillende soorten die verschillende documentelementen vertegenwoordigen. Elke run van een tekst, paragraaf, tabel, of sectie is een knooppunt, en zelfs het document zelf is een knooppunt. Aspose.Words definieert een klasse voor elk documentnodetype.

De documentboom in Aspose.Words volgt het samengestelde ontwerppatroon:

- Alle knooppunt klassen uiteindelijk afkomstig van de [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) klasse, dat is de basisklasse in de Aspose.Words Document Object Model.
- Knooppunten die andere knopen kunnen bevatten, bijvoorbeeld, **Section** of **Paragraph**, de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) klasse, die op zijn beurt voortvloeit uit de **Node** Klasse.

Het onderstaande diagram toont de erfenis tussen de knooppuntklassen van de Aspose.Words Document Object Model (DOM). De namen van abstracte klassen zijn in cursief.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

De Aspose.Words DOM bevat ook de niet-node klassen, zoals [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) of [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), die worden gebruikt om het uiterlijk en de stijlen binnen een document aan te passen. Deze klassen worden niet in dit diagram weergegeven omdat zij niet zijn geërfd van de `Node` Klasse.

{{% /alert %}}

Laten we naar een voorbeeld kijken. De volgende afbeelding toont een Microsoft Word document met verschillende soorten inhoud.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Bij het lezen van het bovenstaande document in het Aspose.Words DOM, de boom van objecten is gemaakt, zoals getoond in het schema hieronder.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), en alle andere ellipsen op het diagram zijn Aspose.Words objecten die elementen van het Word-document weergeven.

### Haal een `Node` Type {#get-a-node-type}

Hoewel de [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) klasse is voldoende om verschillende knooppunten van elkaar te onderscheiden; Aspose.Words levert de [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) Lijst ter vereenvoudiging van sommige API taken, zoals het selecteren van knooppunten van een specifiek type.

Het type van elke knoop kan worden verkregen met behulp van de [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) eigendom. Deze eigenschap geeft een **NodeType** Waarde van de opsomming. Een paragraaf die bijvoorbeeld door de **Paragraph** klasse geeft terug **NodeType**.**Paragraph**, en een tabel knooppunt vertegenwoordigd door de **Table** klasse geeft terug **NodeType**.**Table**.

Het volgende voorbeeld laat zien hoe u een knooppunttype met behulp van de **NodeType** Lijst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Documentboomnavigatie {#document-tree-navigation}

Aspose.Words vertegenwoordigt een document als een knooppunt boom, waarmee u kunt navigeren tussen knooppunten. Deze sectie beschrijft hoe u de documentboom kunt verkennen en navigeren in Aspose.Words.

Wanneer u het sample document, eerder gepresenteerd, in de Document Explorer, de knooppunt boom verschijnt precies zoals het is weergegeven in Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

U kunt het voorbeeld project "Document Explorer" leren op de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Documentknooppuntrelaties {#document-nodes-relationships}

De knooppunten in de boom hebben relaties tussen hen:

- Een knoop met een andere knoop is een *parent.*
- Het knooppunt in het ouderknooppunt is een *child.* Kindknooppunten van dezelfde ouder zijn *sibling* knooppunten.
- De *root* knooppunt is altijd de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Node.

De knooppunten die andere knooppunten kunnen bevatten zijn afkomstig van de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) klasse, en alle knooppunten uiteindelijk afkomstig zijn van de [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Klasse. Deze twee basisklassen bieden gemeenschappelijke methoden en eigenschappen voor de navigatie en modificatie van de boomstructuur.

Het volgende UML object diagram toont verschillende knooppunten van het monsterdocument en hun relaties met elkaar via de ouder, kind en broer eigenschappen:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Document is Node-eigenaar

Een knooppunt behoort altijd tot een bepaald document, zelfs als het net is gemaakt of verwijderd van de boom, omdat vitale document-brede structuren zoals stijlen en lijsten worden opgeslagen in de **Document** Node. Het is bijvoorbeeld niet mogelijk om een **Paragraph** zonder een **Document** omdat elke alinea een toegewezen stijl heeft die wereldwijd voor het document wordt gedefinieerd. Deze regel wordt gebruikt bij het aanmaken van nieuwe nodes. Een nieuw toevoegen **Paragraph** rechtstreeks naar de DOM vereist een document object doorgegeven aan de constructeur.

{{% alert color="primary" %}}

De [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) eigenschap geeft het document terug waartoe het knooppunt behoort.

{{% /alert %}}

Bij het aanmaken van een nieuwe paragraaf [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), de bouwer heeft altijd een **Document** klasse verbonden aan het via de [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) eigendom.

Het volgende voorbeeld toont aan dat bij het aanmaken van een node, een document dat eigenaar van de node is altijd wordt gedefinieerd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Ouderknooppunt

Elke knooppunt heeft een ouder gespecificeerd door de [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) eigendom. Een knooppunt heeft geen oudernode, dat wil zeggen, **ParentNode** nul is, in de volgende gevallen:

- Het knooppunt is net aangemaakt en is nog niet aan de boom toegevoegd.
- Het knooppunt is uit de boom verwijderd.
- Dit is de root **Document** knooppunt dat altijd een nul ouder knooppunt heeft.

U kunt een knooppunt verwijderen van de ouder door de [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) methode. Het volgende voorbeeld van code laat zien hoe toegang te krijgen tot het ouderknooppunt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Kindknooppunten

De meest efficiënte manier om toegang te krijgen tot kinderknooppunten van een [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) via de [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) en [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) eigenschappen die respectievelijk de eerste en laatste kindknooppunten teruggeven. Als er geen kindknooppunten zijn, keren deze eigenschappen terug *null*.

**CompositeNode** de [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) collectie die geïndexeerde of genummerde toegang tot de kindknooppunten mogelijk maakt. De **ChildNodes** eigenschap is een levende verzameling van knooppunten, wat betekent dat wanneer het document wordt gewijzigd, zoals wanneer knooppunten worden verwijderd of toegevoegd, de **ChildNodes** collectie wordt automatisch bijgewerkt.

Als een knooppunt geen kind heeft, dan de **ChildNodes** eigendom geeft een lege verzameling terug. U kunt controleren of de **CompositeNode** bevat elke kind knooppunten met behulp van de [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) eigendom.

Het volgende voorbeeld van code laat zien hoe direct kind knooppunten van een `CompositeNode` gebruik makend van de door de `ChildNodes` verzameling:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Het volgende voorbeeld van code laat zien hoe direct kind knooppunten van een `CompositeNode` gebruik van geïndexeerde toegang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Verwante nodes

U kunt de knoop die onmiddellijk voor of volgt een bepaald knooppunt met behulp van de [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) en [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) eigenschappen, respectievelijk. Als een knooppunt is het laatste kind van zijn ouder, dan de **NextSibling** eigenschap is *null*. Omgekeerd, als de knoop is het eerste kind van zijn ouder, de **PreviousSibling** eigenschap is *null*.

Het volgende voorbeeld van code laat zien hoe je alle directe en indirecte kindknooppunten van een samengesteld knooppunt efficiënt kunt bezoeken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Getypte toegang tot kinder- en ouderknooppunten

Tot nu toe hebben we de eigenschappen besproken die een van de basistypen teruggeven. **Node** of **CompositeNode**. Maar soms zijn er situaties waarin je misschien waarden naar een specifieke knooppuntklasse moet casten, zoals **Run** of **Paragraph**. Dat wil zeggen, je kunt niet helemaal weg van casting bij het werken met de Aspose.Words DOM, dat is samengesteld.

Om de behoefte aan gietgieten te verminderen, Aspose.Words klassen bieden eigenschappen en collecties die sterk getypte toegang bieden. Er zijn drie basispatronen van getypte toegang:

- Een ouder knooppunt blootgelegd getypt **FirstXXX** en **LastXXX** eigenschappen. Zo is er bijvoorbeeld de **Document** heeft [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) en [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) eigenschappen. Evenzo, **Table** heeft eigenschappen zoals [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), en anderen.
- Een ouder knooppunt onthult een getypte verzameling van kindknopen, zoals [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), en anderen.
- Een kind knooppunt biedt getypte toegang tot de ouder, zoals [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), en anderen.

Getypte eigenschappen zijn slechts nuttige snelkoppelingen die soms gemakkelijker toegang bieden dan generieke eigenschappen die zijn geërfd van [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) en [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Het volgende voorbeeld van code laat zien hoe getypte eigenschappen gebruikt kunnen worden om toegang te krijgen tot knooppunten van de documentboom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
