---
title: Aspose.Words Document Object Model (DOM) w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) to reprezentacja dokumentu programu Word w pamięci. Czytaj, manipuluj i modyfikuj zawartość oraz formatowanie dokumentu programu Word przy użyciu formatu C#."
weight: 10
url: /pl/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) to reprezentacja dokumentu Word w pamięci. Aspose.Words DOM umożliwia programowe odczytywanie, manipulowanie i modyfikowanie zawartości i formatowania dokumentu programu Word.

W tej sekcji opisano główne klasy Aspose.Words DOM i ich relacje. Korzystając z klas Aspose.Words DOM, można uzyskać programowy dostęp do elementów dokumentu i formatowania.

## Utwórz drzewo obiektów `Document` {#create-a-document-objects-tree}

Kiedy dokument jest wczytywany do Aspose.Words DOM, budowane jest drzewo obiektów, a różne typy elementów dokumentu źródłowego mają własne obiekty drzewa DOM o różnych właściwościach.

### Zbuduj drzewo węzłów dokumentów {#build-document-nodes-tree}

Kiedy Aspose.Words wczytuje dokument Word do pamięci, tworzy obiekty różnych typów, które reprezentują różne elementy dokumentu. Każdy ciąg tekstu, akapitu, tabeli lub sekcji jest węzłem i nawet sam dokument jest węzłem. Aspose.Words definiuje klasę dla każdego typu węzła dokumentu.

Drzewo dokumentów w Aspose.Words jest zgodne ze złożonym wzorcem projektowym:

- Wszystkie klasy węzłów ostatecznie wywodzą się z klasy [Node](https://reference.aspose.com/words/net/aspose.words/node/), która jest klasą bazową w formacie Aspose.Words Document Object Model.
- Węzły, które mogą zawierać inne węzły, na przykład **Section** lub **Paragraph**, wywodzą się z klasy [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), która z kolei wywodzi się z klasy **Node**.

Poniższy diagram przedstawia dziedziczenie pomiędzy klasami węzłów Aspose.Words Document Object Model (DOM). Nazwy klas abstrakcyjnych podano kursywą.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-słowa-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM zawiera również klasy inne niż węzłowe, takie jak [Style](https://reference.aspose.com/words/net/aspose.words/style/) lub [Font](https://reference.aspose.com/words/net/aspose.words/font/), które służą do dostosowywania wyglądu i stylów w dokumencie. Klasy te nie są pokazane na tym schemacie, ponieważ nie są odziedziczone z klasy `Node`.

{{% /alert %}}

Spójrzmy na przykład. Poniższy obraz przedstawia dokument Microsoft Word z różnymi typami treści.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="przykład-dokumentu-aspose-words" style="width:700px"/>

Podczas wczytywania powyższego dokumentu do Aspose.Words DOM tworzone jest drzewo obiektów, jak pokazano na schemacie poniżej.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) i wszystkie inne elipsy na diagramie to obiekty Aspose.Words reprezentujące elementy dokumentu Word.

### Zdobądź plik {#get-a-node-type} typu `Node`

Chociaż klasa [Node](https://reference.aspose.com/words/net/aspose.words/node/) jest wystarczająca do rozróżnienia różnych węzłów, Aspose.Words udostępnia wyliczenie [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) w celu uproszczenia niektórych zadań API, takich jak wybieranie węzłów określonego typu.

Typ każdego węzła można uzyskać za pomocą właściwości [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/). Ta właściwość zwraca wartość wyliczenia **NodeType**. Na przykład węzeł akapitu reprezentowany przez klasę **Paragraph** zwraca **NodeType**.**Paragraph**, a węzeł tabeli reprezentowany przez klasę **Table** zwraca **NodeType**.**Table**.

Poniższy przykład pokazuje, jak uzyskać typ węzła za pomocą wyliczenia **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Nawigacja po drzewie dokumentów {#document-tree-navigation}

Aspose.Words reprezentuje dokument jako drzewo węzłów, które umożliwia nawigację pomiędzy węzłami. W tej sekcji opisano, jak eksplorować i poruszać się po drzewie dokumentów w Aspose.Words.

Po otwarciu zaprezentowanego wcześniej przykładowego dokumentu w Eksploratorze dokumentów drzewo węzłów wygląda dokładnie tak, jak jest reprezentowane w Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="eksplorator dokumentu w wersji elastycznej" style="width:680px"/>

{{% alert color="primary" %}}

Możesz zapoznać się z przykładowym projektem "Document Explorer" w [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Relacje węzła dokumentu {#document-nodes-relationships}

Węzły w drzewie mają między sobą relacje:

- Węzeł zawierający inny węzeł to *parent.*
- Węzeł zawarty w węźle nadrzędnym to *child.* Węzły podrzędne tego samego rodzica to węzły *sibling*.
- Węzeł *root* jest zawsze węzłem [Document](https://reference.aspose.com/words/net/aspose.words/document/).

Węzły, które mogą zawierać inne węzły, wywodzą się z klasy [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), a wszystkie węzły ostatecznie wywodzą się z klasy [Node](https://reference.aspose.com/words/net/aspose.words/node/). Te dwie klasy podstawowe zapewniają wspólne metody i właściwości do nawigacji i modyfikacji struktury drzewa.

Poniższy diagram obiektów UML przedstawia kilka węzłów przykładowego dokumentu i ich wzajemne relacje poprzez właściwości nadrzędne, podrzędne i równorzędne:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="dokumenty-węzły-relacje-aspose-words" style="width:370px"/>

#### Dokument jest właścicielem węzła

Węzeł zawsze należy do konkretnego dokumentu, nawet jeśli został właśnie utworzony lub usunięty z drzewa, ponieważ istotne struktury całego dokumentu, takie jak style i listy, są przechowywane w węźle **Document**. Na przykład nie jest możliwe utworzenie **Paragraph** bez **Document**, ponieważ każdy akapit ma przypisany styl, który jest zdefiniowany globalnie dla dokumentu. Reguła ta jest używana podczas tworzenia nowych węzłów. Dodanie nowego **Paragraph** bezpośrednio do DOM wymaga przekazania obiektu dokumentu do konstruktora.

{{% alert color="primary" %}}

Właściwość [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) zwraca dokument, do którego należy węzeł.

{{% /alert %}}

Tworząc nowy akapit przy użyciu [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), konstruktor zawsze ma powiązaną z nim klasę **Document** poprzez właściwość [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/).

Poniższy przykład kodu pokazuje, że podczas tworzenia dowolnego węzła zawsze zdefiniowany jest dokument, który będzie właścicielem węzła:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Węzeł nadrzędny

Każdy węzeł ma rodzica określonego przez właściwość [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/). Węzeł nie ma węzła nadrzędnego, co oznacza, że **ParentNode** ma wartość null w następujących przypadkach:

- Węzeł został właśnie utworzony i nie został jeszcze dodany do drzewa.
- Węzeł został usunięty z drzewa.
- To jest główny węzeł **Document**, który zawsze ma zerowy węzeł nadrzędny.

Możesz usunąć węzeł z jego rodzica, wywołując metodę [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/). Poniższy przykładowy kod pokazuje, jak uzyskać dostęp do węzła nadrzędnego:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Węzły podrzędne

Najbardziej efektywnym sposobem uzyskania dostępu do węzłów podrzędnych [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) jest użycie właściwości [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) i [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/), które zwracają odpowiednio pierwszy i ostatni węzeł podrzędny. Jeśli nie ma żadnych węzłów podrzędnych, te właściwości zwracają *null*.

**CompositeNode** zapewnia również metodę [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) umożliwiającą indeksowany lub wyliczeniowy dostęp do węzłów podrzędnych. Właściwość **ChildNodes** to zbiór węzłów na żywo, co oznacza, że przy każdej zmianie dokumentu, na przykład podczas usuwania lub dodawania węzłów, kolekcja **ChildNodes** jest automatycznie aktualizowana.

Jeśli węzeł nie ma dziecka, właściwość **ChildNodes** zwraca pustą kolekcję. Możesz sprawdzić, czy **CompositeNode** zawiera jakiekolwiek węzły podrzędne, korzystając z właściwości [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/).

Poniższy przykład kodu pokazuje, jak wyliczyć bezpośrednie węzły podrzędne `CompositeNode` przy użyciu modułu wyliczającego dostarczonego przez kolekcję `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Poniższy przykład kodu pokazuje, jak wyliczyć bezpośrednie węzły podrzędne `CompositeNode` przy użyciu dostępu indeksowanego:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Węzły rodzeństwa

Można uzyskać węzeł bezpośrednio poprzedzający lub następujący po określonym węźle, korzystając odpowiednio z właściwości [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) i [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/). Jeśli węzeł jest ostatnim dzieckiem swojego rodzica, wówczas właściwością **NextSibling** jest *null*. I odwrotnie, jeśli węzeł jest pierwszym dzieckiem swojego rodzica, właściwością **PreviousSibling** jest *null*.

Poniższy przykład kodu pokazuje, jak efektywnie odwiedzać wszystkie bezpośrednie i pośrednie węzły podrzędne węzła złożonego:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Wpisany dostęp do węzłów podrzędnych i nadrzędnych {#typed-access-to-child-and-parent-nodes}

Do tej pory omówiliśmy właściwości zwracające jeden z typów bazowych – **Node** lub **CompositeNode**. Czasami jednak zdarzają się sytuacje, w których może być konieczne rzutowanie wartości na konkretną klasę węzła, taką jak **Run** lub **Paragraph**. Oznacza to, że nie można całkowicie odejść od odlewania podczas pracy z plikiem Aspose.Words DOM, który jest złożony.

Aby zmniejszyć potrzebę rzutowania, większość klas Aspose.Words udostępnia właściwości i kolekcje zapewniające dostęp o jednoznacznie określonym typie. Istnieją trzy podstawowe wzorce dostępu wpisywanego:

- Węzeł nadrzędny udostępnia wpisane właściwości **FirstXXX** i **LastXXX**. Na przykład **Document** ma właściwości [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) i [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/). Podobnie **Table** ma właściwości takie jak [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) i inne.
- Węzeł nadrzędny udostępnia wpisaną kolekcję węzłów podrzędnych, takich jak [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) i inne.
- Węzeł podrzędny zapewnia dostęp do swojego rodzica za pomocą wpisania, taki jak [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) i inne.

Wpisane właściwości to jedynie przydatne skróty, które czasami zapewniają łatwiejszy dostęp niż właściwości ogólne odziedziczone z [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) i [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Poniższy przykład kodu pokazuje, jak używać wpisanych właściwości w celu uzyskania dostępu do węzłów drzewa dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
