---
title: Aspose.Words Dokument Voorwerp Model (DOM) in C#
second_title: Aspose.Words vir .NET
articleTitle: Aspose.Words Dokument Voorwerp Model (DOM)
linktitle: Aspose.Words Dokument Voorwerp Model (DOM)
type: docs
description: "Dokument Object Model (DOM) is'n in-geheue voorstelling van'n Word dokument. Lees, manipuleer en verander die inhoud en formatering van'n Word-dokument met behulp van C#."
weight: 10
url: /af/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Die Aspose.Words Document Object Model (DOM) is'n in-geheue voorstelling van'n Word dokument. Met die Aspose.Words DOM kan u die inhoud en formatering van'n Word-dokument programmaties lees, manipuleer en verander.

Hierdie afdeling beskryf die hoofklasse van die Aspose.Words DOM en hul verhoudings. Deur die Aspose.Words DOM klasse te gebruik, kan jy programmatiese toegang tot dokumentelemente en formatering verkry.

## Skep'n `Document` Voorwerp Boom {#create-a-document-objects-tree}

Wanneer'n dokument in die Aspose.Words DOM gelees word, dan word'n voorwerp boom gebou en verskillende tipes elemente van die bron dokument het hul eie DOM boom voorwerpe met verskillende eienskappe.

### Bou Dokument Nodes Boom {#build-document-nodes-tree}

Wanneer Aspose.Words 'n Word-dokument in die geheue lees, skep dit voorwerpe van verskillende tipes wat verskillende dokumentelemente verteenwoordig. Elke reeks van'n teks, paragraaf, tabel, of'n afdeling is'n knoop, en selfs die dokument self is'n knoop. Aspose.Words definieer'n klas vir elke dokument node tipe.

Die dokument boom in Aspose.Words volg die Saamgestelde Ontwerp Patroon:

- Alle knoop klasse uiteindelik afgelei van die [Node](https://reference.aspose.com/words/net/aspose.words/node/) klas, wat is die basis klas in die Aspose.Words Dokument Voorwerp Model.
- Knope wat ander knope kan bevat, byvoorbeeld **Section** of **Paragraph**, is afgelei van die [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) klas, wat op sy beurt afgelei is van die **Node** klas.

Die diagram hieronder toon oorerwing tussen knoop klasse van die Aspose.Words Dokument Voorwerp Model (DOM). Die name van abstrakte klasse is in Kursief.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Die Aspose.Words DOM bevat ook die nie-node klasse, soos [Style](https://reference.aspose.com/words/net/aspose.words/style/) of [Font](https://reference.aspose.com/words/net/aspose.words/font/), wat gebruik word om die voorkoms en style binne'n dokument aan te pas. Hierdie klasse word nie in hierdie diagram getoon as nie geërf van die `Node` klas.

{{% /alert %}}

Kom ons kyk na'n voorbeeld. Die volgende prent toon'n Microsoft Word dokument met verskillende soorte inhoud.

<img src="document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Wanneer die bogenoemde dokument in die Aspose.Words DOM gelees word, word die boom van voorwerpe geskep, soos in die skema hieronder getoon.

<img src="document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), en al die ander ellipses op die diagram is Aspose.Words voorwerpe wat elemente van die Word-dokument verteenwoordig.

### Kry'n `Node` Tipe {#get-a-node-type}

Alhoewel die [Node](https://reference.aspose.com/words/net/aspose.words/node/) klas voldoende is om verskillende nodusse van mekaar te onderskei, bied Aspose.Words die [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) opsomming om sommige API take te vereenvoudig, soos die keuse van nodusse van'n spesifieke tipe.

Die tipe van elke knoop kan verkry word deur die [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) eienskap te gebruik. Hierdie eienskap gee'n **NodeType** opsomming waarde. Byvoorbeeld, 'n paragraaf knoop verteenwoordig deur die **Paragraph** klas gee terug **NodeType**.**Paragraph**, en'n tabel knoop verteenwoordig deur die **Table** klas gee terug **NodeType**.**Table**.

Die volgende voorbeeld toon hoe om'n knoop tipe te kry met behulp van die **NodeType** opsomming:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Dokument Boom Navigasie {#document-tree-navigation}

Aspose.Words verteenwoordig'n dokument as'n node boom, wat jou in staat stel om te navigeer tussen nodes. Hierdie afdeling beskryf hoe om die dokument boom in Aspose.Words te verken en te navigeer.

As u die voorbeelddokument oopmaak, wat vroeër in Die Document Explorer aangebied is, verskyn die knoopboom presies soos dit in Aspose.Words voorgestel word.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

U kan die voorbeeldprojek "Document Explorer" op die [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Dokument Node Verhoudings {#document-nodes-relationships}

Die nodusse in die boom het verhoudings tussen hulle:

- 'n node wat'n ander node bevat is'n *parent.*
- Die knoop wat in die ouer knoop is'n *child.* Kind nodes van dieselfde ouer is *sibling* nodes.
- Die *root* knoop is altyd die [Document](https://reference.aspose.com/words/net/aspose.words/document/) knoop.

Die nodusse wat ander nodusse kan bevat, is afgelei van die [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) klas, en alle nodusse is uiteindelik afgelei van die [Node](https://reference.aspose.com/words/net/aspose.words/node/) klas. Hierdie twee basis klasse bied gemeenskaplike metodes en eienskappe vir die boom struktuur navigasie en verandering.

Die volgende UML voorwerp diagram toon verskeie nodusse van die voorbeeld dokument en hul verhoudings met mekaar via die ouer, kind, en broer eienskappe:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Dokument Is Node Eienaar

'n knoppie behoort altyd aan'n spesifieke dokument, selfs al is dit net geskep of verwyder uit die boom, omdat belangrike dokument-wye strukture soos style en lyste in die **Document** knoppie gestoor word. Dit is byvoorbeeld nie moontlik om'n **Paragraph** sonder'n **Document** te hê nie, want elke paragraaf het'n toegewyde styl wat wêreldwyd vir die dokument gedefinieer is. Hierdie reël word gebruik wanneer enige nuwe nodusse geskep word. Die toevoeging van'n nuwe **Paragraph** direk aan die DOM vereis'n dokument voorwerp wat aan die konstruktor.

{{% alert color="primary" %}}

Die [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) eienskap gee terug die dokument waaraan die node behoort.

{{% /alert %}}

Wanneer die skep van'n nuwe paragraaf met behulp van [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), die bouer het altyd'n **Document** klas gekoppel aan dit deur die [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) eiendom.

Die volgende kode voorbeeld toon dat wanneer die skep van enige node, 'n dokument wat die node sal besit altyd gedefinieer:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Ouerknooppunt

Elke knoop het'n ouer wat deur die [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) eienskap gespesifiseer word. 'n knoppie het geen ouer knoppie nie, dit wil sê, **ParentNode** is nul, in die volgende gevalle:

- Die knoop is pas geskep en is nog nie by die boom gevoeg nie.
- Die knoop is van die boom verwyder.
- Dit is die wortel **Document** knoop wat altyd'n nul ouer knoop het.

Jy kan'n knoop van sy ouer verwyder deur die [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) metode te bel.Die volgende kode voorbeeld toon hoe om toegang tot die ouer node:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Kind Knope

Die mees doeltreffende manier om toegang tot kind nodes van a [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) is via die [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) en [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) eienskappe wat die eerste en laaste kind nodes, onderskeidelik terugkeer. As daar geen kind nodes, hierdie eienskappe terugkeer *null*.

**CompositeNode**

As'n knoop geen kind het nie, dan gee die **ChildNodes** eienskap'n leë versameling terug. Jy kan kyk of die **CompositeNode** bevat enige kind nodes met behulp van die [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) eiendom.

Die volgende kode voorbeeld toon hoe om onmiddellike kind nodes van a `CompositeNode` te tel met behulp van die enumerator wat deur die `ChildNodes` versameling:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Die volgende kode voorbeeld toon hoe om onmiddellike kind nodes van'n `CompositeNode` te tel met behulp van geïndekseerde toegang:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Broersknope

Jy kan die knoop wat onmiddellik voorafgaan of volg'n bepaalde knoop met behulp van die [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) en [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) eienskappe, onderskeidelik. As'n knoop die laaste kind van sy ouer is, dan is die **NextSibling** eienskap *null*. Omgekeerd, as die knoop die eerste kind van sy ouer is, is die **PreviousSibling** eienskap *null*.

Die volgende kode voorbeeld toon hoe om doeltreffend te besoek al direkte en indirekte kind nodes van'n saamgestelde node:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Getikte Toegang Tot Kind En Ouer Nodes {#typed-access-to-child-and-parent-nodes}

Tot dusver het ons die eienskappe bespreek wat een van die basis tipes – **Node** of **CompositeNode** teruggee. Maar soms is daar situasies waar jy dalk waardes moet gooi na'n spesifieke knoop klas, soos **Run** of **Paragraph**. Dit wil sê, jy kan nie heeltemal wegkom van giet wanneer jy met die Aspose.Words DOM werk nie, wat saamgestel is.

Om die behoefte aan giet te verminder, die meeste Aspose.Words klasse bied eienskappe en versamelings wat sterk getik toegang bied. Daar is drie basiese patrone van getikte toegang:

- 'n ouer-knooppunt stel getypte **FirstXXX** en **LastXXX** eienskappe bloot. Byvoorbeeld, die **Document** het [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) en [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) eienskappe. Net so het **Table** eienskappe soos [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), en ander.
- 'n ouer-knooppunt stel'n getypte versameling van kind-knooppunte bloot, soos [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), en ander.
- 'n kind-knooppunt bied getikte toegang tot sy ouer, soos [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), en ander.

Getypeerde eienskappe is bloot nuttige kortpaaie wat soms makliker toegang bied as generiese eienskappe wat van [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) en [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) geërf word.

Die volgende kode voorbeeld toon hoe om getik eienskappe gebruik om toegang tot nodes van die dokument boom:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
