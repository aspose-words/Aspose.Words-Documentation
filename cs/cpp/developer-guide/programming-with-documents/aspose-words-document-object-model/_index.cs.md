---
title: Aspose.Words model objektu dokumentu (DOM) v C++
second_title: Aspose.Words pro C++
articleTitle: Aspose.Words Model Objektu Dokumentu (DOM)
linktitle: Aspose.Words Model Objektu Dokumentu (DOM)
type: docs
description: "Objektový model dokumentu (DOM) je reprezentace dokumentu Word v paměti. Číst, manipulovat a upravovat obsah a formátování Word dokumentu pomocí C++."
weight: 10
url: /cs/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The Aspose.Words objektový Model dokumentu (DOM) je reprezentace v paměti a Word dokument. Aspose.Words DOM umožňuje programově číst, manipulovat a upravovat obsah a formátování Word dokumentu.

Tato část popisuje hlavní třídy Aspose.Words DOM a jejich vztahy. Pomocí tříd Aspose.Words DOM můžete získat programový přístup k prvkům dokumentu a formátování.

## Vytvořit Strom Objektů Dokumentu {#create-a-document-objects-tree}

Když je dokument načten do Aspose.Words DOM, pak je vytvořen strom objektů a různé typy prvků zdrojového dokumentu mají své vlastní objekty stromu DOM s různými vlastnostmi.

### Sestavte Strom Uzlů Dokumentu {#build-document-nodes-tree}

Když Aspose.Words přečte dokument Word do paměti, vytvoří objekty různých typů, které představují různé prvky dokumentu. Každý běh textu, odstavce, tabulky nebo oddílu je uzel a dokonce i samotný dokument je uzel. Aspose.Words definuje třídu pro každý typ uzlu dokumentu.

Strom dokumentů v Aspose.Words sleduje složený návrhový vzor:

- Všechny třídy uzlů nakonec pocházejí z třídy [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), což je základní třída v modelu objektu dokumentu Aspose.Words.
- Uzly, které mohou obsahovat další uzly, například **Section** nebo **Paragraph**, pocházejí z třídy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), která zase pochází z třídy **Node**.

Níže uvedený diagram ukazuje dědičnost mezi třídami uzlů modelu objektu dokumentu Aspose.Words (DOM). Názvy abstraktních tříd jsou kurzívou.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM také obsahuje třídy bez uzlů, například [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) nebo [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), které se používají k přizpůsobení vzhledu a stylů v dokumentu. Tyto třídy nejsou v tomto diagramu zobrazeny jako nezděděné z třídy `Node`.

{{% /alert %}}

Podívejme se na příklad. Následující obrázek ukazuje Microsoft Word dokument s různými typy obsahu.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Při čtení výše uvedeného dokumentu do Aspose.Words DOM se vytvoří strom objektů, jak je znázorněno na schématu níže.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), a všechny ostatní elipsy na diagramu jsou objekty Aspose.Words, které představují prvky dokumentu Word.

### Získejte `Node` typ {#get-a-node-type}

Ačkoli třída [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) je dostatečná k tomu, aby od sebe odlišila různé uzly, Aspose.Words poskytuje výčet [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) pro zjednodušení některých úkolů API, jako je výběr uzlů konkrétního typu.

Typ každého uzlu lze získat pomocí vlastnosti [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Tato vlastnost vrací hodnotu výčtu **NodeType**. Například uzel odstavce reprezentovaný třídou **Paragraph** vrací **NodeType**.**Paragraph** a uzel tabulky reprezentovaný třídou **Table** vrací **NodeType**.**Table**.

Následující příklad ukazuje, jak získat typ uzlu pomocí výčtu **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navigace Ve Stromu Dokumentů {#document-tree-navigation}

Aspose.Words představuje dokument jako strom uzlů, který umožňuje navigaci mezi uzly. Tato část popisuje, jak prozkoumat a procházet strom dokumentů v Aspose.Words.

Když otevřete ukázkový dokument prezentovaný dříve v Průzkumníku dokumentů, strom uzlů se zobrazí přesně tak, jak je znázorněn v Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Vztahy Uzlu Dokumentu {#document-nodes-relationships}

Uzly ve stromu mají mezi sebou vztahy:

- Uzel obsahující jiný uzel je *parent.*
- Uzel obsažený v nadřazeném uzlu je *child.* podřízené uzly stejného rodiče jsou *sibling* uzly.
- *root* uzel je vždy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) uzel.

Uzly, které mohou obsahovat další uzly, pocházejí z třídy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) a všechny uzly nakonec pocházejí z třídy [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Tyto dvě základní třídy poskytují běžné metody a vlastnosti pro navigaci a modifikaci stromové struktury.

Následující UML objektový diagram zobrazuje několik uzlů vzorového dokumentu a jejich vzájemné vztahy prostřednictvím vlastností nadřazených, podřízených a sourozenců:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Dokument je vlastníkem uzlu

Uzel vždy patří ke konkrétnímu dokumentu, i když byl právě vytvořen nebo odstraněn ze stromu, protože důležité struktury pro celý dokument, jako jsou styly a seznamy, jsou uloženy v uzlu **Document**. Například není možné mít **Paragraph** bez **Document**, protože každý odstavec má přiřazený styl, který je globálně definován pro dokument. Toto pravidlo se používá při vytváření nových uzlů. Přidání nového **Paragraph** přímo do DOM vyžaduje objekt dokumentu předaný konstruktoru.

{{% alert color="primary" %}}

Vlastnost [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) vrací dokument, ke kterému uzel patří.

{{% /alert %}}

Při vytváření nového odstavce pomocí [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) má builder vždy třídu **Document** propojenou pomocí vlastnosti [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Následující příklad kódu ukazuje, že při vytváření libovolného uzlu je vždy definován dokument, který bude uzel vlastnit:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nadřazený Uzel

Každý uzel má rodiče určeného vlastností [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Uzel nemá žádný nadřazený uzel, to znamená, že **ParentNode** je null, v následujících případech:

- Uzel byl právě vytvořen a dosud nebyl přidán do stromu.
- Uzel byl odstraněn ze stromu.
- Toto je kořenový **Document** uzel, který má vždy nulový nadřazený uzel.

Uzel můžete odebrat z jeho rodiče voláním metody [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Následující příklad kódu ukazuje, jak přistupovat k nadřazenému uzlu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Podřízené Uzly

Nejúčinnější způsob přístupu k podřízeným uzlům [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) je pomocí vlastností [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) a [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), které vracejí první a poslední podřízený uzel. Pokud nejsou žádné podřízené uzly, vrátí tyto vlastnosti *null*.

**CompositeNode**

Pokud uzel nemá žádné dítě, vrátí vlastnost **ChildNodes** prázdnou kolekci. Pomocí vlastnosti [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) můžete zkontrolovat, zda **CompositeNode** obsahuje nějaké podřízené uzly.

Následující příklad kódu ukazuje, jak vyjmenovat bezprostřední podřízené uzly `CompositeNode` pomocí výčtu poskytnutého kolekcí `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Následující příklad kódu ukazuje, jak vyjmenovat okamžité podřízené uzly `CompositeNode` pomocí indexovaného přístupu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Sourozenecké Uzly

Uzel, který bezprostředně předchází nebo následuje po konkrétním uzlu, můžete získat pomocí vlastností [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) a [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Pokud je uzel posledním potomkem svého rodiče, pak je vlastnost **NextSibling** *null*. Naopak, pokud je uzel prvním potomkem svého rodiče, vlastnost **PreviousSibling** je *null*.

Následující příklad kódu ukazuje, jak efektivně navštívit všechny přímé a nepřímé podřízené uzly složeného uzlu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Zadaný přístup k podřízeným a nadřazeným uzlům

Zatím jsme diskutovali o vlastnostech, které vracejí jeden ze základních typů - **Node** nebo **CompositeNode**. Někdy však existují situace, kdy možná budete muset přenést hodnoty do konkrétní třídy uzlů, například **Run** nebo **Paragraph**. To znamená, že při práci s Aspose.Words DOM, který je složený, se nemůžete úplně zbavit odlévání.

Aby se snížila potřeba odlévání, většina tříd Aspose.Words poskytuje vlastnosti a kolekce, které poskytují silně napsaný přístup. Existují tři základní vzory typovaného přístupu:

- Nadřazený uzel vystavuje zadané vlastnosti **FirstXXX** a **LastXXX**. Například **Document** má [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) a [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) Vlastnosti. Podobně má **Table** vlastnosti jako [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) a další.
- Nadřazený uzel vystavuje typovanou kolekci podřízených uzlů, například [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) a další.
- Podřízený uzel poskytuje zadaný přístup svému nadřazenému, například [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) a dalším.

Zadané vlastnosti jsou pouze užitečné zkratky, které někdy poskytují snadnější přístup než obecné vlastnosti zděděné z [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) a [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Následující příklad kódu ukazuje, jak používat zadané vlastnosti pro přístup k uzlům stromu dokumentů:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
