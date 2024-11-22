---
title: Aspose.Words DOM
second_title: Aspose.Words místo Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) představuje dokument Word. Číst, manipulovat a upravovat obsah a formátování dokumentu Word pomocí Python."
weight: 10
url: /cs/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

• Aspose.Words Document Object Model (DOM) představuje dokument Word. • Aspose.Words DOM umožňuje programově číst, manipulovat a upravovat obsah a formátování dokumentu Word.

Tento oddíl popisuje hlavní třídy Aspose.Words DOM a jejich vztahy. Použitím Aspose.Words DOM třídy, můžete získat programový přístup k prvkům dokumentů a formátování.

## Vytvořit a `Document` Strom objektů {#create-a-document-objects-tree}

Při čtení dokumentu do Aspose.Words DOM,? pak je postaven strom objektů a různé typy prvků zdrojového dokumentu mají vlastní DOM objekty stromu s různými vlastnostmi.

### Vytvořit uzel dokumentu strom {#build-document-nodes-tree}

Kdy? Aspose.Words čte dokument Word do paměti, vytváří objekty různých typů, které představují různé prvky dokumentu. Každý běh textu, odstavec, tabulka nebo sekce je uzel, a dokonce i samotný dokument je uzel. Aspose.Words definuje třídu pro každý typ uzel dokumentu.

Strom dokumentu Aspose.Words následuje vzor složeného návrhu:

- Všechny třídy uzel nakonec vyplývá z [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) třída, která je základní třída v Aspose.Words Document Object Model.
- Uzly, které mohou obsahovat jiné uzly, například, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) nebo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), odvozen od [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) třída, která pochází z [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) třída.

Níže uvedený diagram ukazuje dědictví mezi třídami nódu Aspose.Words Document Object Model (DOM). Jména abstraktních tříd jsou v kurzívě.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

• Aspose.Words DOM obsahuje také třídy non-node, jako jsou [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) nebo [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), které se používají k přizpůsobení vzhledu a stylů v dokumentu. Tyto třídy nejsou uvedeny v tomto diagramu jako nezděděné po [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) třída.

{{% /alert %}}

Podívejme se na příklad. Následující obrázek ukazuje Microsoft Word dokument s různými typy obsahu.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Při čtení výše uvedeného dokumentu do Aspose.Words DOM, je vytvořen strom objektů, jak je znázorněn v schématu níže.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), a všechny ostatní elipsy na diagramu jsou Aspose.Words objekty, které představují prvky dokumentu Word.

### Získejte `Node` Typ {#get-a-node-type}

I když [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) třída stačí k rozlišení různých uzlů od sebe, Aspose.Words poskytuje [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) počet pro zjednodušení některých API úkoly, jako je výběr uzlů konkrétního typu.

Typ každého uzlu lze získat pomocí [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) majetek. Tato vlastnost vrací [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) hodnota výčtu. Například odstavec uzel zastoupený [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) třída vrací [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), a stolní uzel zastoupený [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) třída vrací [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Následující příklad ukazuje, jak získat typ nódu pomocí [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) číslice:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Navigace stromu dokumentu {#document-tree-navigation}

Aspose.Words představuje dokument jako uzel stromu, který vám umožní navigaci mezi uzly. Tato sekce popisuje, jak prozkoumat a procházet strom dokumentů v Aspose.Words.

Když otevřete vzorový dokument, který byl předložen dříve, v dokumentu Explorer, uzel se objeví přesně tak, jak je zastoupen v Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Můžete se naučit ukázkový projekt "Document Explorer" na [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Vztahy k dokumentu {#document-nodes-relationships}

Uzely na stromě mezi nimi mají vztah:

- Uzel obsahující další uzel je *parent.*
- Uzel obsažený v rodičovském uzlu je *child.* Dětské uzly stejného rodiče jsou *sibling* uzly.
- The *root* Uzel je vždy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Uzel.

Uzely, které mohou obsahovat jiné uzly odvozeny z [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) třída, a všechny uzly nakonec vyplývá z [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) třída. Tyto dvě základní třídy poskytují společné metody a vlastnosti pro navigaci a modifikaci struktury stromu.

Následující schéma UML objektu zobrazuje několik uzlů výběrového dokumentu a jejich vzájemné vztahy prostřednictvím vlastností rodičů, dítěte a sourozenců:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Dokument je vlastníkem uzlu

Uzel vždy patří k určitému dokumentu, i když byl jen vytvořen nebo odstraněn ze stromu, protože životně důležité struktury, jako jsou styly a seznamy jsou uloženy v [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Uzel. Například, není možné mít [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) bez [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) protože každý odstavec má přiřazený styl, který je pro dokument definován globálně. Toto pravidlo se používá při vytváření nových uzlů. Přidání nového [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) přímo do DOM vyžaduje dokument objekt předán konstruktéru.

{{% alert color="primary" %}}

• [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) vlastnost vrací dokument, do kterého uzel patří.

{{% /alert %}}

Při vytváření nového odstavce [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), Stavitel má vždy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída spojená s ní prostřednictvím [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) majetek.

Následující příklad kódu ukazuje, že při vytváření jakéhokoliv uzlu je vždy definován dokument, který bude vlastnit uzel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Rodičovský uzel

Každý uzel má rodiče určené [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) majetek. Uzel nemá rodičovský uzel. [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) je *None*, v těchto případech:

- Uzel byl právě vytvořen a ještě nebyl přidán do stromu.
- Uzel byl odstraněn ze stromu.
- Tohle je kořen. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Uzel, který má vždy uzel bez rodičů.

Můžete odstranit uzel z jeho rodiče voláním [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) metoda. Následující příklad kódu ukazuje, jak přistupovat k rodičovskému uzelu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Dětské uzely

Nejúčinnější způsob, jak se dostat do dětských uzlů [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) je přes [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) a [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) vlastnosti, které vrátí první a poslední dětské uzly, resp. Pokud nejsou žádné dětské uzly, tyto vlastnosti se vrátí *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) také poskytuje [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) sběr umožňující indexovaný nebo číselný přístup do dětských uzlů. • [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metoda vrací živý soubor uzlů, což znamená, že kdykoli je dokument změněn, jako když jsou uzly odstraněny nebo přidány, **get_child_nodes** sběr je automaticky aktualizován.

Pokud uzel nemá dítě, pak **get_child_nodes** metoda vrací prázdnou kolekci. Můžete zkontrolovat, zda [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) obsahuje jakékoli dětské uzliny pomocí [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) majetek.

Následující příklad kódu ukazuje, jak vyjmenovat okamžité dětské uzly [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) pomocí čitatele poskytnutého **get_child_nodes** sběr:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Sourozenecké uzly

Můžete získat uzel, který okamžitě předchází nebo následuje konkrétní uzel pomocí [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) a [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) vlastnosti, resp. Pokud uzel je poslední dítě svého rodiče, pak [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) majetek je *None*. Naopak, pokud je uzel prvním dítětem svého rodiče, [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) majetek je *None*.

Následující příklad kódu ukazuje, jak efektivně navštívit všechny přímé a nepřímé dětské uzly kompozitního uzlu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Typizovaný přístup k dětskému a rodičovskému uzlu {#typed-access-to-child-and-parent-nodes}

Doposud jsme diskutovali o vlastnostech, které vrací jeden ze základních typů [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) nebo [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Ale někdy jsou situace, kdy byste mohli hodit hodnoty do určité třídy uzlů, jako například [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nebo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). To znamená, že nemůžete zcela uniknout od castingu při práci s Aspose.Words DOM, což je složené.

Aby se snížila potřeba odlitků, většina Aspose.Words třídy poskytují vlastnosti a sbírky, které poskytují silně typed přístup. Existují tři základní vzorce zadaného přístupu:

- Rodičovský uzel odhalí napsaný **první_XXX** a **poslední_XXX** vlastnosti. Například: [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) má [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) a [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) vlastnosti. Podobně, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) má vlastnosti jako: [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), a další.
- Rodičovský uzel odhalí typovanou sbírku dětských uzlů, jako je [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), a další.
- Dětský uzel poskytuje typový přístup ke svému rodiči, jako je [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), a další.

Typované vlastnosti jsou pouze užitečné zkratky, které někdy poskytují jednodušší přístup než obecné vlastnosti zděděné [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) a [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Následující příklad kódu ukazuje, jak použít zadané vlastnosti pro přístup do uzlů stromu dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
