---
title: Aspose.Words obiektowy Model dokumentu (DOM) w C++
second_title: Aspose.Words dla C++
articleTitle: Aspose.Words Obiektowy Model Dokumentu (DOM)
linktitle: Aspose.Words Obiektowy Model Dokumentu (DOM)
type: docs
description: "Model obiektowy dokumentu (DOM) jest reprezentacją dokumentu Word w pamięci. Odczytywanie, manipulowanie i modyfikowanie zawartości i formatowania dokumentu Word przy użyciu C++."
weight: 10
url: /pl/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Model obiektowy dokumentu Aspose.Words (DOM) jest reprezentacją dokumentu Word w pamięci. Plik Aspose.Words DOM umożliwia programowe odczytywanie, manipulowanie i modyfikowanie zawartości i formatowania dokumentu Word.

W tej sekcji opisano główne klasy Aspose.Words DOM i ich relacje. Korzystając z klas Aspose.Words DOM, można uzyskać programowy dostęp do elementów dokumentu i formatowania.

## Utwórz Drzewo Obiektów Dokumentu {#create-a-document-objects-tree}

Gdy dokument jest odczytywany do Aspose.Words DOM, budowane jest drzewo obiektów, a różne typy elementów dokumentu źródłowego mają własne DOM obiekty drzewa o różnych właściwościach.

### Zbuduj Drzewo Węzłów Dokumentu {#build-document-nodes-tree}

Kiedy Aspose.Words odczytuje dokument Word do pamięci, tworzy obiekty różnych typów, które reprezentują różne elementy dokumentu. Każdy przebieg tekstu, akapitu, tabeli lub sekcji jest węzłem, a nawet sam dokument jest węzłem. Aspose.Words definiuje klasę dla każdego typu węzła dokumentu.

Drzewo dokumentów w Aspose.Words jest zgodne z kompozytowym wzorcem projektowym:

- Wszystkie klasy węzłów ostatecznie wywodzą się z klasy [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), która jest klasą bazową w modelu obiektowym dokumentu Aspose.Words.
- Węzły, które mogą zawierać inne węzły, na przykład **Section** lub **Paragraph**, wywodzą się z klasy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), która z kolei wywodzi się z klasy **Node**.

Poniższy diagram przedstawia dziedziczenie między klasami węzłów modelu obiektowego dokumentu Aspose.Words (DOM). Nazwy klas abstrakcyjnych są pisane kursywą.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM zawiera również klasy inne niż węzły, takie jak [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) LUB [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), które służą do dostosowywania wyglądu i stylów w dokumencie. Te klasy nie są pokazane na tym diagramie jako nie odziedziczone po klasie `Node`.

{{% /alert %}}

Spójrzmy na przykład. Poniższy obraz przedstawia dokument Microsoft Word z różnymi typami treści.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Podczas odczytywania powyższego dokumentu do Aspose.Words DOM tworzone jest drzewo obiektów, jak pokazano na poniższym schemacie.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), a wszystkie inne elipsy na diagramie to Aspose.Words obiekty reprezentujące elementy dokumentu Word.

### Get a `Node` Type {#get-a-node-type}

Chociaż klasa [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) jest wystarczająca do odróżnienia różnych węzłów od siebie, Aspose.Words zapewnia wyliczenie [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) w celu uproszczenia niektórych zadań API, takich jak wybieranie węzłów określonego typu.

Typ każdego węzła można uzyskać za pomocą właściwości [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Ta właściwość zwraca wartość wyliczenia **NodeType**. Na przykład węzeł akapitu reprezentowany przez klasę **Paragraph** zwraca **NodeType**.**Paragraph**, a węzeł tabeli reprezentowany przez klasę **Table** zwraca **NodeType**.**Table**.

Poniższy przykład pokazuje, jak uzyskać typ węzła za pomocą wyliczenia **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Nawigacja W Drzewie Dokumentów {#document-tree-navigation}

Aspose.Words reprezentuje dokument jako drzewo węzłów, które umożliwia nawigację między węzłami. W tej sekcji opisano, jak przeglądać i poruszać się po drzewie dokumentów w Aspose.Words.

Po otwarciu przykładowego dokumentu, przedstawionego wcześniej, w Eksploratorze dokumentów, drzewo węzłów pojawia się dokładnie tak, jak jest reprezentowane w Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Relacje Węzła Dokumentu {#document-nodes-relationships}

Węzły w drzewie mają między sobą relacje:

- Węzeł zawierający inny węzeł to *parent.*
- Węzeł zawarty w węźle nadrzędnym to *child.* węzły podrzędne tego samego rodzica to *sibling* węzły.
- Węzeł *root* jest zawsze węzłem [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Węzły, które mogą zawierać inne węzły, pochodzą z klasy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), a wszystkie węzły ostatecznie pochodzą z klasy [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Te dwie klasy bazowe zapewniają wspólne metody i właściwości nawigacji i modyfikacji struktury drzewa.

Poniższy diagram obiektów UML pokazuje kilka węzłów przykładowego dokumentu i ich wzajemne relacje za pośrednictwem właściwości nadrzędnych, podrzędnych i rodzeństwa:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Dokument jest właścicielem węzła

Węzeł zawsze należy do określonego dokumentu, nawet jeśli został właśnie utworzony lub usunięty z drzewa, ponieważ ważne struktury całego dokumentu, takie jak style i listy, są przechowywane w węźle **Document**. Na przykład nie można mieć **Paragraph** Bez **Document**, ponieważ każdy akapit ma przypisany styl zdefiniowany globalnie dla dokumentu. Ta reguła jest używana podczas tworzenia nowych węzłów. Dodanie nowego **Paragraph** bezpośrednio do DOM wymaga obiektu dokumentu przekazanego do konstruktora.

{{% alert color="primary" %}}

Właściwość [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) zwraca dokument, do którego należy węzeł.

{{% /alert %}}

Podczas tworzenia nowego akapitu przy użyciu [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) Konstruktor zawsze ma klasę **Document** połączoną z nim za pośrednictwem właściwości [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Poniższy przykład kodu pokazuje, że podczas tworzenia dowolnego węzła dokument, który będzie właścicielem węzła, jest zawsze definiowany:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Węzeł Nadrzędny

Każdy węzeł ma rodzica określonego przez właściwość [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Węzeł nie ma węzła nadrzędnego, to znaczy **ParentNode** ma wartość null w następujących przypadkach:

- Węzeł został właśnie utworzony i nie został jeszcze dodany do drzewa.
- Węzeł został usunięty z drzewa.
- Jest to główny węzeł **Document**, który zawsze ma zerowy węzeł nadrzędny.

Możesz usunąć węzeł z jego rodzica, wywołując metodę [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Poniższy przykład kodu pokazuje, jak uzyskać dostęp do węzła nadrzędnego:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Węzły Podrzędne

Najbardziej efektywnym sposobem dostępu do węzłów potomnych [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) jest użycie właściwości [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) i [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), które zwracają odpowiednio pierwszy i ostatni węzeł potomny. Jeśli nie ma węzłów potomnych, te właściwości zwracają *null*.

**CompositeNode**

Jeśli węzeł nie ma potomka, właściwość **ChildNodes** zwraca pustą kolekcję. Możesz sprawdzić, czy **CompositeNode** zawiera węzły podrzędne za pomocą właściwości [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

Poniższy przykład kodu pokazuje, jak wyliczyć natychmiastowe węzły potomne `CompositeNode` za pomocą wylicznika dostarczonego przez zbiór `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Poniższy przykład kodu pokazuje, jak wyliczyć natychmiastowe węzły potomne `CompositeNode` przy użyciu dostępu indeksowanego:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Węzły Rodzeństwa

Możesz uzyskać węzeł, który bezpośrednio poprzedza lub podąża za określonym węzłem, używając odpowiednio właściwości [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) i [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Jeśli węzeł jest ostatnim dzieckiem swojego rodzica, to właściwość **NextSibling** to *null*. I odwrotnie, jeśli węzeł jest pierwszym dzieckiem swojego rodzica, właściwość **PreviousSibling** to *null*.

Poniższy przykład kodu pokazuje, jak skutecznie odwiedzać wszystkie bezpośrednie i pośrednie węzły potomne węzła złożonego:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Wpisany dostęp do węzłów podrzędnych i nadrzędnych

Do tej pory omówiliśmy właściwości, które zwracają jeden z typów podstawowych – **Node** lub **CompositeNode**. Ale czasami zdarzają się sytuacje, w których może być konieczne rzutowanie wartości do określonej klasy węzła, takiej jak **Run** lub **Paragraph**. Oznacza to, że nie można całkowicie uciec od rzutowania podczas pracy z Aspose.Words DOM, który jest złożony.

Aby zmniejszyć potrzebę odlewania, większość klas Aspose.Words udostępnia właściwości i kolekcje, które zapewniają dostęp do silnie wpisanego tekstu. Istnieją trzy podstawowe wzorce wpisanego dostępu:

- Węzeł nadrzędny ujawnia wpisane właściwości **FirstXXX** i **LastXXX**. Na przykład **Document** ma właściwości [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) i [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Podobnie **Table** ma właściwości takie jak [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) i inne.
- Węzeł nadrzędny udostępnia wpisaną kolekcję węzłów podrzędnych, takich jak [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) i inne.
- Węzeł podrzędny zapewnia wpisany dostęp do swojego rodzica, na przykład [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) i inne.

Właściwości wpisywane są jedynie przydatnymi skrótami, które czasami zapewniają łatwiejszy dostęp niż Właściwości ogólne odziedziczone po [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) i [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Poniższy przykład kodu pokazuje, jak używać wpisanych właściwości, aby uzyskać dostęp do węzłów drzewa dokumentów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
