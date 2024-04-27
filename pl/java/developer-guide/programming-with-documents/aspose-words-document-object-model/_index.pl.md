---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words zamiast Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) jest reprezentacją dokumentu Word w pamięci. Czytać, manipulować i modyfikować zawartość i formatowanie dokumentu Word przy użyciu Java."
weight: 10
url: /pl/java/aspose-words-document-object-model/
---

W Aspose.Words Document Object Model (DOM) jest in- memoriałową reprezentacją dokumentu Word. W Aspose.Words DOM pozwala programowo czytać, manipulować i modyfikować zawartość i formatowanie dokumentu Word.

Niniejsza sekcja opisuje główne klasy Aspose.Words DOM i ich związki. Używając Aspose.Words DOM zajęcia, można uzyskać dostęp programowy do elementów dokumentów i formatowanie.

## Utwórz dokument Drzewo obiektów {#create-a-document-objects-tree}

Kiedy dokument jest odczytywany do Aspose.Words <span notrans="<span notrans=" DOM"=""></span>", > Następnie powstaje drzewo obiektowe i różne rodzaje elementów dokumentu źródłowego mają swoje własne DOM obiekty drzewne o różnych właściwościach.

### Zbuduj drzewo węzłów dokumentów {#build-document-nodes-tree}

Kiedy Aspose.Words odczyt dokumentu Word do pamięci, tworzy obiekty różnych typów, które reprezentują różne elementy dokumentu. Każdy ciąg tekstu, paragrafu, tabeli lub sekcji jest węzłem, a nawet sam dokument jest węzłem. Aspose.Words definiuje klasę dla każdego typu węzła dokumentu.

Drzewo dokumentów w Aspose.Words następujące wzory konstrukcyjne kompozytowe:

- Wszystkie klasy węzłów ostatecznie pochodzą z [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) klasa, która jest klasa podstawowa w Aspose.Words Document Object Model.
- Węzły, które mogą zawierać inne węzły, na przykład, **Section** lub **Paragraph**, pochodzą z [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) klasy, która z kolei pochodzi z **Node** Klasa.

Schemat przedstawiony poniżej pokazuje dziedziczenie między klasami węzłów Aspose.Words Document Object Model (DOM). Nazwy klas abstrakcyjnych są po włosku.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

W Aspose.Words DOM zawiera również klasy non-node, takie jak [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) lub [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), które są używane do dostosowania wyglądu i stylów w dokumencie. Klasy te nie są pokazane w tym schemacie, jak nie dziedziczone od `Node` Klasa.

{{% /alert %}}

Spójrzmy na przykład. Poniższy obrazek pokazuje Microsoft Word dokument z różnymi rodzajami treści.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Podczas czytania powyższego dokumentu do Aspose.Words DOM, drzewo obiektów jest tworzone, jak pokazano w schemacie poniżej.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), i wszystkie inne elipsy na diagramie są Aspose.Words obiekty, które reprezentują elementy dokumentu Word.

### Pobierz `Node` Rodzaj {#get-a-node-type}

Chociaż [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) klasa jest wystarczająca do odróżnienia różnych węzłów od siebie, Aspose.Words zapewnia [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) wyliczenie w celu uproszczenia niektórych API zadania takie jak wybór węzłów określonego typu.

Typ każdego węzła można uzyskać za pomocą [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) nieruchomości. Ta właściwość zwraca a **NodeType** wartość wyliczenia. Na przykład, węzeł paragrafu reprezentowany przez **Paragraph** zwroty klasy **NodeType**.**Paragraph**oraz węzeł stołowy reprezentowany przez **Table** zwroty klasy **NodeType**.**Table**.

Poniższy przykład pokazuje jak uzyskać typ węzła za pomocą **NodeType** wyliczenie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Nawigacja drzewa dokumentów {#document-tree-navigation}

Aspose.Words reprezentuje dokument jako drzewo węzłów, które pozwala poruszać się między węzłami. Ta sekcja opisuje, jak badać i nawigować drzewo dokumentów w Aspose.Words.

Po otwarciu przykładowego dokumentu, przedstawionego wcześniej, w dokumencie Document Explorer drzewo węzła pojawia się dokładnie tak, jak jest reprezentowane w Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Można nauczyć się przykładowego projektu "Document Explorer" na [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Powiązania węzła dokumentu {#document-nodes-relationships}

Węzły w drzewie mają relacje między nimi:

- Węzeł zawierający inny węzeł jest *parent.*
- Węzeł zawarty w węźle macierzystym jest *child.* Węzły dziecięce tego samego rodzica są *sibling* węzły.
- *root* węzeł jest zawsze [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) węzeł.

Węzły, które mogą zawierać inne węzły pochodzą z [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) klasy, i wszystkie węzły ostatecznie pochodzą z [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Klasa. Te dwie klasy bazowe zapewniają wspólne metody i właściwości nawigacji i modyfikacji struktury drzew.

Poniższy diagram obiektu UML pokazuje kilka węzłów dokumentu próbki i ich relacje ze sobą poprzez właściwości rodzica, dziecka i rodzeństwa:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokument jest właścicielem węzła

Węzeł zawsze należy do konkretnego dokumentu, nawet jeśli został on po prostu stworzony lub usunięty z drzewa, ponieważ istotne struktury dokumentów, takie jak style i listy są przechowywane w **Document** węzeł. Na przykład, nie jest możliwe posiadanie **Paragraph** bez **Document** ponieważ każdy akapit ma przypisany styl zdefiniowany globalnie dla dokumentu. Zasada ta jest używana przy tworzeniu nowych węzłów. Dodawanie nowego **Paragraph** bezpośrednio do DOM wymaga obiektu dokumentu przekazanego konstruktorowi.

{{% alert color="primary" %}}

W [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) właściwość zwraca dokument, do którego należy węzeł.

{{% /alert %}}

Przy tworzeniu nowego akapitu [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), budowniczy zawsze ma **Document** klasy związane z nim poprzez [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) nieruchomości.

Poniższy przykład kodu pokazuje, że przy tworzeniu dowolnego węzła zawsze jest zdefiniowany dokument, który będzie właścicielem węzła:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Węzeł rodzica

Każdy węzeł ma określony przez [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) nieruchomości. Węzeł nie ma węzła macierzystego. **ParentNode** jest zerowa, w następujących przypadkach:

- Węzeł został właśnie stworzony i nie został jeszcze dodany do drzewa.
- Węzeł został usunięty z drzewa.
- To jest pierwiastek **Document** węzeł, który zawsze ma zerowy węzeł macierzysty.

Możesz usunąć węzeł z jego rodzica przez wywołanie [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) Metoda. Poniższy przykład kodu pokazuje jak uzyskać dostęp do węzła macierzystego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Węzły dziecięce

Najbardziej skuteczny sposób dostępu do węzłów dziecięcych [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) jest za pośrednictwem [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) oraz [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) właściwości, które zwracają odpowiednio pierwsze i ostatnie węzły dziecięce. Jeśli nie ma węzłów dziecięcych, te właściwości wracają *null*.

**CompositeNode** zapewnia również [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) kolekcja umożliwiająca dostęp do węzłów dziecięcych z indeksem lub numeracją. W **ChildNodes** właściwość jest zbiór na żywo węzłów, co oznacza, że w każdym przypadku zmiany dokumentu, takich jak gdy węzły są usuwane lub dodawane, **ChildNodes** zbieranie jest automatycznie aktualizowane.

Jeśli węzeł nie ma dziecka, to **ChildNodes** właściwość zwraca pusty zbiór. Można sprawdzić, czy **CompositeNode** zawiera wszystkie węzły dziecięce za pomocą [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) nieruchomości.

Poniższy przykład kodu pokazuje, jak wyliczyć natychmiastowe węzły dziecięce `CompositeNode` przy użyciu enumeratora dostarczonego przez `ChildNodes` Kolekcja:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Poniższy przykład kodu pokazuje, jak wyliczyć natychmiastowe węzły dziecięce `CompositeNode` korzystanie ze zindeksowanego dostępu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Węzły rodzeństwa

Można uzyskać węzeł, który natychmiast poprzedza lub podąża za danym węzłem za pomocą [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) oraz [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) właściwości, odpowiednio. Jeśli węzeł jest ostatnim dzieckiem jego rodzica, to **NextSibling** nieruchomość jest *null*. Natomiast, jeśli węzeł jest pierwszym dzieckiem jego rodzica, **PreviousSibling** nieruchomość jest *null*.

Poniższy przykład kodu pokazuje, jak skutecznie odwiedzić wszystkie bezpośrednie i pośrednie węzły dziecięce węzła kompozytowego:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Wpisany dostęp do węzłów dziecięcych i rodzicielskich

Dotychczas omawialiśmy właściwości, które zwracają jeden z typów podstawowych - **Node** lub **CompositeNode**. Ale czasami są sytuacje, w których może być konieczne rzucenie wartości do określonej klasy węzłów, takich jak **Run** lub **Paragraph**. To znaczy, nie można całkowicie uciec od castingu podczas pracy z Aspose.Words DOM, który jest złożony.

Aby zmniejszyć potrzebę odlewania, większość Aspose.Words klasy zapewniają właściwości i kolekcje, które zapewniają dostęp do warstw. Istnieją trzy podstawowe wzory dostępu na maszynie:

- Kącik macierzysty ujawnia wpisane **FirstXXX** oraz **LastXXX** nieruchomości. Na przykład: **Document** ma [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) oraz [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) nieruchomości. Podobnie, **Table** posiada właściwości, takie jak [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), I innych.
- węzeł macierzysty eksponuje zbiór węzłów dziecięcych, takich jak [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), I innych.
- węzeł dziecięcy zapewnia dostęp do jego rodzica, jak np. [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), I innych.

Właściwości wpisywane są jedynie przydatnymi skrótami, które czasami zapewniają łatwiejszy dostęp niż właściwości ogólne odziedziczone po [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) oraz [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Poniższy przykład kodu pokazuje, jak używać właściwości wpisanych do dostępu do węzłów drzewa dokumentów:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
