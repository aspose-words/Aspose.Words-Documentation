---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words místo Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) je in-paměti zastoupení dokumentu Word. Číst, manipulovat a upravovat obsah a formátování dokumentu Word pomocí Java."
weight: 10
url: /cs/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The Aspose.Words Document Object Model (DOM) je in-paměti zastoupení dokumentu Word. The Aspose.Words DOM umožňuje programově číst, manipulovat a upravovat obsah a formátování dokumentu Word.

Tento oddíl popisuje hlavní třídy Aspose.Words DOM a jejich vztahy. Použitím Aspose.Words DOM třídy, můžete získat programový přístup k prvkům dokumentu a formátování.

## Vytvořit dokument Strom objektu {#create-a-document-objects-tree}

Při čtení dokumentu do Aspose.Words <span notrans="<span notrans=" DOM"=""></span>, pak je postaven strom objektů a různé typy prvků zdrojového dokumentu mají vlastní DOM objekty stromu s různými vlastnostmi.

### Vytvořit uzel dokumentu strom {#build-document-nodes-tree}

Kdy? Aspose.Words čte dokument Word do paměti, vytváří objekty různých typů, které představují různé prvky dokumentu. Každý běh textu, odstavec, tabulka nebo sekce je uzel, a dokonce i samotný dokument je uzel. Aspose.Words definuje třídu pro každý typ uzel dokumentu.

Strom dokumentu Aspose.Words následuje vzor Kompozitního návrhu:

- Všechny uzel třídy nakonec vyplývá z [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) třída, která je základní třída v Aspose.Words Document Object Model.
- Uzly, které mohou obsahovat jiné uzly, například, **Section** nebo **Paragraph**, odvozen od [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) třída, která následně vyplývá z **Node** třída.

Níže uvedený diagram ukazuje dědictví mezi třídami uzlů Aspose.Words Document Object Model (DOM). Jména abstraktních tříd jsou v kurzívě.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM obsahuje také třídy non-node, jako jsou [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) nebo [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), které se používají k přizpůsobení vzhledu a stylu v dokumentu. Tyto třídy nejsou uvedeny v tomto diagramu jako nezděděné od `Node` třída.

{{% /alert %}}

Podívejme se na příklad. Následující obrázek ukazuje Microsoft Word dokument s různými druhy obsahu.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Při čtení výše uvedeného dokumentu do Aspose.Words DOM, je vytvořen strom objektů, jak ukazuje schéma níže.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), a všechny ostatní elipsy na diagramu jsou Aspose.Words předměty, které představují prvky dokumentu Word.

### Získat `Node` Typ {#get-a-node-type}

I když [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) třída stačí k rozlišení různých uzlů od sebe, Aspose.Words poskytuje [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) počet pro zjednodušení některých API úkoly, například výběr uzlů konkrétního typu.

Typ každého uzlu lze získat pomocí [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) majetek. Tato vlastnost vrací **NodeType** hodnota výčtu. Například odstavec uzel zastoupený **Paragraph** třída vrací **NodeType**.**Paragraph**, a stolní uzel zastoupený **Table** třída vrací **NodeType**.**Table**.

Následující příklad ukazuje, jak získat typ uzel pomocí **NodeType** číslice:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigace pro dokument Strom {#document-tree-navigation}

Aspose.Words představuje dokument jako uzel stromu, který vám umožní navigaci mezi uzly. Tato sekce popisuje, jak prozkoumat a procházet strom dokumentů v Aspose.Words.

Když otevřete vzorový dokument, který byl předložen dříve, v dokumentu Explorer, uzel se objeví přesně tak, jak je zastoupen v Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Můžete se naučit ukázkový projekt "Document Explorer" na [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Vztahy uzel dokumentu {#document-nodes-relationships}

Uzely na stromě mezi nimi mají vztah:

- Uzel obsahující další uzel je *parent.*
- Uzel obsažený v rodičovském uzlu je *child.* Dětské uzly stejného rodiče jsou *sibling* uzly.
- The *root* Uzel je vždy [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Uzel.

Uzely, které mohou obsahovat jiné uzly odvozeny z [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) třída, a všechny uzly nakonec vyplývá z [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) třída. Tyto dvě základní třídy poskytují společné metody a vlastnosti pro navigaci a modifikaci struktury stromu.

Následující schéma UML objektu zobrazuje několik uzlů výběrového dokumentu a jejich vzájemné vztahy prostřednictvím vlastností rodičů, dětí a sourozenců:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokument je vlastníkem uzlu

Uzel vždy patří k určitému dokumentu, i když byl jen vytvořen nebo odstraněn ze stromu, protože životně důležité struktury pro dokument, jako jsou styly a seznamy jsou uloženy v **Document** Uzel. Například, není možné mít **Paragraph** bez a **Document** protože každý odstavec má přiřazený styl, který je pro dokument definován globálně. Toto pravidlo se používá při vytváření nových uzlů. Přidání nového **Paragraph** přímo do DOM vyžaduje objekt dokumentu předávané konstruktorovi.

{{% alert color="primary" %}}

The [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) vlastnost vrací dokument, do kterého uzel patří.

{{% /alert %}}

Při vytváření nového odstavce [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Stavitel má vždy **Document** třída spojená s ní prostřednictvím [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) majetek.

Následující příklad kódu ukazuje, že při vytváření jakéhokoliv uzlu je vždy definován dokument, který bude vlastnit uzel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Rodičovský uzel

Každý uzel má rodiče určené [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) majetek. Uzel nemá rodičovský uzel. **ParentNode** je nulová, v těchto případech:

- Uzel byl právě vytvořen a ještě nebyl přidán do stromu.
- Uzel byl odstraněn ze stromu.
- To je kořen. **Document** Uzel, který má vždy nulový mateřský uzel.

Můžete odstranit uzel z jeho rodiče voláním [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metoda. Následující příklad kódu ukazuje, jak přistupovat k mateřskému uzlu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Dětské uzely

Nejúčinnější způsob, jak se dostat do dětských uzlů [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) je přes [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) a [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) vlastnosti, které vrátí první a poslední dětské uzly, resp. Pokud neexistují dětské uzly, tyto vlastnosti se vrátí *null*.

**CompositeNode** také poskytuje [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) sběr umožňující indexovaný nebo číselný přístup do dětských uzlů. The **ChildNodes** vlastnost je živou sbírkou uzlů, což znamená, že kdykoli se dokument změní, jako je například když jsou uzly odstraněny nebo přidány, **ChildNodes** sběr je automaticky aktualizován.

Pokud uzel nemá dítě, pak **ChildNodes** nemovitost vrací prázdnou sbírku. Můžete zkontrolovat, zda **CompositeNode** obsahuje jakékoli dětské uzliny pomocí [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) majetek.

Následující příklad kódu ukazuje, jak vyjmenovat okamžité dětské uzly `CompositeNode` pomocí čitatele poskytnutého `ChildNodes` sběr:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Následující příklad kódu ukazuje, jak vyjmenovat okamžité dětské uzly `CompositeNode` pomocí indexovaného přístupu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sourozenecké uzly

Můžete získat uzel, který okamžitě předchází nebo následuje konkrétní uzel pomocí [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) a [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) vlastnosti, resp. Pokud uzel je poslední dítě svého rodiče, pak **NextSibling** majetek je *null*. Naopak, pokud je uzel prvním dítětem jeho rodiče, **PreviousSibling** majetek je *null*.

Následující příklad kódu ukazuje, jak efektivně navštívit všechny přímé a nepřímé dětské uzly kompozitního uzlu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Typizovaný přístup k dětskému a rodičovskému uzlu

Doposud jsme diskutovali o vlastnostech, které vrací jeden ze základních typů **Node** nebo **CompositeNode**. Ale někdy jsou situace, kdy byste mohli hodit hodnoty do určité třídy uzlů, jako například **Run** nebo **Paragraph**. To znamená, že nemůžete zcela uniknout od castingu při práci s Aspose.Words DOM, což je složené.

Aby se snížila potřeba odlitků, většina Aspose.Words třídy poskytují vlastnosti a sbírky, které poskytují silně-typed přístup. Existují tři základní vzorce napsaného přístupu:

- Rodičovský uzel odhalí napsaný **FirstXXX** a **LastXXX** vlastnosti. Například: **Document** má [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) a [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) vlastnosti. Podobně, **Table** má vlastnosti jako: [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), a další.
- Rodičovský uzel vystavuje typovanou sbírku dětských uzlů, jako je [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), a další.
- Dětský uzel poskytuje typový přístup ke svému rodiči, jako je [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), a další.

Typované vlastnosti jsou pouze užitečné zkratky, které někdy poskytují jednodušší přístup než obecné vlastnosti zděděné [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) a [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Následující příklad kódu ukazuje, jak používat zadané vlastnosti pro přístup do uzlů stromu dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
