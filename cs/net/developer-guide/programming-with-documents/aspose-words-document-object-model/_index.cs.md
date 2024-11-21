---
title: Aspose.Words Document Object Model (DOM) C#
second_title: Aspose.Words místo .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) představuje dokument Word. Číst, manipulovat a upravovat obsah a formátování dokumentu Word pomocí C#."
weight: 10
url: /cs/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

• Aspose.Words Document Object Model (DOM) představuje dokument Word. • Aspose.Words DOM umožňuje programově číst, manipulovat a upravovat obsah a formátování dokumentu Word.

Tento oddíl popisuje hlavní třídy Aspose.Words DOM a jejich vztahy. Použitím Aspose.Words DOM třídy, můžete získat programový přístup k prvkům dokumentů a formátování.

## Vytvořit a `Document` Strom objektu {#create-a-document-objects-tree}

Při čtení dokumentu do Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,? pak je postaven strom objektů a různé typy prvků zdrojového dokumentu mají vlastní DOM objekty stromu s různými vlastnostmi.

### Vytvořit uzel dokumentu strom {#build-document-nodes-tree}

Kdy? Aspose.Words čte dokument Word do paměti, vytváří objekty různých typů, které představují různé prvky dokumentu. Každý běh textu, odstavec, tabulka nebo sekce je uzel, a dokonce i samotný dokument je uzel. Aspose.Words definuje třídu pro každý typ uzel dokumentu.

Strom dokumentu Aspose.Words následuje vzor složeného návrhu:

- Všechny třídy uzel nakonec vyplývá z [Node](https://reference.aspose.com/words/net/aspose.words/node/) třída, která je základní třída v Aspose.Words Document Object Model.
- Uzly, které mohou obsahovat jiné uzly, například, **Section** nebo **Paragraph**, odvozen od [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) třída, která pochází z **Node** třída.

Níže uvedený diagram ukazuje dědictví mezi třídami nódu Aspose.Words Document Object Model (DOM). Jména abstraktních tříd jsou v kurzívě.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

• Aspose.Words DOM obsahuje také třídy non-node, jako jsou [Style](https://reference.aspose.com/words/net/aspose.words/style/) nebo [Font](https://reference.aspose.com/words/net/aspose.words/font/), které se používají k přizpůsobení vzhledu a stylů v dokumentu. Tyto třídy nejsou uvedeny v tomto diagramu jako nezděděné po `Node` třída.

{{% /alert %}}

Podívejme se na příklad. Následující obrázek ukazuje Microsoft Word dokument s různými typy obsahu.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Při čtení výše uvedeného dokumentu do Aspose.Words DOM, je vytvořen strom objektů, jak je znázorněn v schématu níže.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), a všechny ostatní elipsy na diagramu jsou Aspose.Words objekty, které představují prvky dokumentu Word.

### Získejte `Node` Typ {#get-a-node-type}

I když [Node](https://reference.aspose.com/words/net/aspose.words/node/) třída stačí k rozlišení různých uzlů od sebe, Aspose.Words poskytuje [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) počet pro zjednodušení některých API úkoly, jako je výběr uzlů konkrétního typu.

Typ každého uzlu lze získat pomocí [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) majetek. Tato vlastnost vrací **NodeType** hodnota výčtu. Například odstavec uzel zastoupený **Paragraph** třída vrací **NodeType**.**Paragraph**, a stolní uzel zastoupený **Table** třída vrací **NodeType**.**Table**.

Následující příklad ukazuje, jak získat typ nódu pomocí **NodeType** číslice:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navigace stromu dokumentu {#document-tree-navigation}

Aspose.Words představuje dokument jako uzel stromu, který vám umožní navigaci mezi uzly. Tato sekce popisuje, jak prozkoumat a procházet strom dokumentů v Aspose.Words.

Když otevřete vzorový dokument, který byl předložen dříve, v dokumentu Explorer, uzel se objeví přesně tak, jak je zastoupen v Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Můžete se naučit ukázkový projekt "Document Explorer" na [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Vztahy uzel dokumentu {#document-nodes-relationships}

Uzely na stromě mezi nimi mají vztah:

- Uzel obsahující další uzel je *parent.*
- Uzel obsažený v rodičovském uzlu je *child.* Dětské uzly stejného rodiče jsou *sibling* uzly.
- The *root* Uzel je vždy [Document](https://reference.aspose.com/words/net/aspose.words/document/) Uzel.

Uzely, které mohou obsahovat jiné uzly odvozeny z [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) třída, a všechny uzly nakonec vyplývá z [Node](https://reference.aspose.com/words/net/aspose.words/node/) třída. Tyto dvě základní třídy poskytují společné metody a vlastnosti pro navigaci a modifikaci struktury stromu.

Následující schéma UML objektu zobrazuje několik uzlů výběrového dokumentu a jejich vzájemné vztahy prostřednictvím vlastností rodičů, dítěte a sourozenců:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Dokument je vlastníkem uzlu

Uzel vždy patří k určitému dokumentu, i když byl jen vytvořen nebo odstraněn ze stromu, protože životně důležité struktury, jako jsou styly a seznamy jsou uloženy v **Document** Uzel. Například, není možné mít **Paragraph** bez **Document** protože každý odstavec má přiřazený styl, který je pro dokument definován globálně. Toto pravidlo se používá při vytváření nových uzlů. Přidání nového **Paragraph** přímo do DOM vyžaduje dokument objekt předán konstruktéru.

{{% alert color="primary" %}}

• [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) vlastnost vrací dokument, do kterého uzel patří.

{{% /alert %}}

Při vytváření nového odstavce [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Stavitel má vždy **Document** třída spojená s ní prostřednictvím [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) majetek.

Následující příklad kódu ukazuje, že při vytváření jakéhokoliv uzlu je vždy definován dokument, který bude vlastnit uzel:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Rodičovský uzel

Každý uzel má rodiče určené [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) majetek. Uzel nemá rodičovský uzel. **ParentNode** je nulová, v těchto případech:

- Uzel byl právě vytvořen a ještě nebyl přidán do stromu.
- Uzel byl odstraněn ze stromu.
- Tohle je kořen. **Document** Uzel, který má vždy nulový mateřský uzel.

Můžete odstranit uzel z jeho rodiče voláním [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) metoda. Následující příklad kódu ukazuje, jak přistupovat k rodičovskému uzelu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Dětské uzely

Nejúčinnější způsob, jak se dostat do dětských uzlů [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) je přes [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) a [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) vlastnosti, které vrátí první a poslední dětské uzly, resp. Pokud nejsou žádné dětské uzly, tyto vlastnosti se vrátí *null*.

**CompositeNode** také poskytuje [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) metoda umožňující indexovaný nebo číselný přístup do dětských uzlů. • **ChildNodes** vlastnost je živá sbírka uzlů, což znamená, že pokaždé, když je dokument změněn, jako když jsou uzly odstraněny nebo přidány, **ChildNodes** sběr je automaticky aktualizován.

Pokud uzel nemá dítě, pak **ChildNodes** nemovitost vrací prázdnou sbírku. Můžete zkontrolovat, zda **CompositeNode** obsahuje jakékoli dětské uzliny pomocí [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) majetek.

Následující příklad kódu ukazuje, jak vyjmenovat okamžité dětské uzly `CompositeNode` pomocí čitatele poskytnutého `ChildNodes` sběr:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Následující příklad kódu ukazuje, jak vyjmenovat okamžité dětské uzly `CompositeNode` pomocí indexovaného přístupu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Sourozenecké uzly

Můžete získat uzel, který okamžitě předchází nebo následuje konkrétní uzel pomocí [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) a [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) vlastnosti, resp. Pokud uzel je poslední dítě svého rodiče, pak **NextSibling** majetek je *null*. Naopak, pokud je uzel prvním dítětem svého rodiče, **PreviousSibling** majetek je *null*.

Následující příklad kódu ukazuje, jak efektivně navštívit všechny přímé a nepřímé dětské uzly kompozitního uzlu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Typizovaný přístup k dětskému a rodičovskému uzlu {#typed-access-to-child-and-parent-nodes}

Doposud jsme diskutovali o vlastnostech, které vrací jeden ze základních typů **Node** nebo **CompositeNode**. Ale někdy jsou situace, kdy byste mohli hodit hodnoty do určité třídy uzlů, jako například **Run** nebo **Paragraph**. To znamená, že nemůžete zcela uniknout od castingu při práci s Aspose.Words DOM, což je složené.

Aby se snížila potřeba odlitků, většina Aspose.Words třídy poskytují vlastnosti a sbírky, které poskytují silně typed přístup. Existují tři základní vzorce zadaného přístupu:

- Rodičovský uzel odhalí napsaný **FirstXXX** a **LastXXX** vlastnosti. Například: **Document** má [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) a [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) vlastnosti. Podobně, **Table** má vlastnosti jako: [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), a další.
- Rodičovský uzel odhalí typovanou sbírku dětských uzlů, jako je [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), a další.
- Dětský uzel poskytuje typový přístup ke svému rodiči, jako je [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), a další.

Typované vlastnosti jsou pouze užitečné zkratky, které někdy poskytují jednodušší přístup než obecné vlastnosti zděděné [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) a [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Následující příklad kódu ukazuje, jak použít zadané vlastnosti pro přístup do uzlů stromu dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
