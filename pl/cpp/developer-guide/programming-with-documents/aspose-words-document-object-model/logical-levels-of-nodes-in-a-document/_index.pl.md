---
title: Logiczne poziomy węzłów w dokumencie w C++
second_title: Aspose.Words dla C++
articleTitle: Logiczne poziomy węzłów w dokumencie
linktitle: Logiczne poziomy węzłów w dokumencie
type: docs
description: "W dokumentacji Aspose.Words dla C++ wymienione poziomy logiczne węzłów – poziom bloku, poziom inline lub poziom wiersza. Poziom węzła służy do opisania lokalizacji w drzewie dokumentów, w której zwykle występuje węzeł."
weight: 10
url: /pl/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Ta dokumentacja czasami odnosi się do grupy klas węzłów jako należących do "poziomu" w dokumencie, takich jak węzły "na poziomie bloku", "na poziomie wbudowanym" (znane również jako "wbudowane") lub "na poziomie wiersza". Te poziomy w dokumencie są zróżnicowane czysto logicznie i nie są wyraźnie wyrażone przez dziedziczenie lub inne Aspose.Words DOM środki. Poziom węzła służy do opisania miejsca w drzewie dokumentów, w którym zwykle występuje węzeł.

W poprzednim artykule mówiliśmy już o związku między węzłami oraz o tym, że nie wszystkie węzły mogą być potomkami dowolnych węzłów. Na przykład komórka może być tylko dzieckiem wiersza, a wiersz może być tylko dzieckiem tabeli i tak dalej. Relacje te mają również zastosowanie do logicznego podziału węzłów na poziomy w dokumencie.

Poniższe sekcje opisują logiczne poziomy węzłów w Aspose.Words I klasy należące do każdego poziomu.

## Poziom logiczny dokumentu i sekcji

Dokument Word składa się z jednej lub więcej sekcji reprezentowanych przez klasę [Section](https://reference.aspose.com/words/cpp/aspose.words/section) i oddzielonych podziałami sekcji. Sekcja może definiować własny rozmiar strony, marginesy, orientację, liczbę kolumn tekstowych oraz nagłówki i stopki.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) oraz [Sekcja](https://www.aspose.com/api/words/cpp/aspose.words/section/) węzły poziomu mają strukturę, jak pokazano na poniższym schemacie.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Sekcja zawiera tekst główny, a także nagłówki i stopki dla pierwszej, parzystej i nieparzystej strony. Te różne "przepływy" tekstu nazywane są *stories*.

W Aspose.Words węzeł **Section** zawiera [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) i [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) węzły historii. Obiekt **Body** przechowuje tekst główny. Obiekty **HeaderFooter** przechowują tekst dla każdego nagłówka i stopki. Tekst każdej historii składa się z akapitów i tabel, odpowiednio reprezentowanych przez obiekty **Paragraph** i **Table** na poziomie bloku.

Dodatkowo każdy dokument Word może zawierać słowniczek, który jest reprezentowany przez węzeł [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) w Aspose.Words. Dokument słowniczek zawiera wpisy [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) i [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Blokuj Poziom Logiczny

Węzły na poziomie bloku reprezentują kontenery zawartości i kontrolki zawartości i mogą występować w węzłach podrzędnych drzewa dokumentów w następujących węzłach:

- Ciało
- Nagłówek
- Stopka
- Przypisy
- Komentarz
- Kształt
- GroupShape
- Komórka
- StructuredDocumentTag

Węzły na poziomie bloków są reprezentowane przez następujące klasy:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) i [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), które są najważniejszymi węzłami na poziomie bloków
- Zakładki, które występują zarówno na poziomie bloku, jak i na poziomie inline
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), które reprezentują niestandardowe znaczniki i mogą zawierać zarówno treść, jak i kontrolki treści

Poniższy diagram pokazuje elementy na poziomie bloku.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Wbudowany Poziom Logiczny

Węzły na poziomie wbudowanym reprezentują rzeczywistą zawartość dokumentu i mogą być zawarte w następujących kontenerach:

- Akapit-najczęstszy Pojemnik
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Elementy na poziomie wbudowanym są reprezentowane przez następujące klasy:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - przebieg tekstu sformatowanego inaczej
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) i [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) reprezentują zakładki
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) i [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) reprezentują adnotacje
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) i [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/), które reprezentują znaki pól, a [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) reprezentują Word pól
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) reprezentuje znaki specjalne w dokumencie
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) i [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) reprezentują kształty, rysunki, obrazy itp.
- SmartTag i StructuredDocumentTag reprezentują niestandardowe znaczniki

Poniższy diagram przedstawia strukturę węzłów na poziomie wbudowanym.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Kształty w Microsoft Word obejmują grafikę pakietu Office AutoShapes, pola tekstowe, obrazy, OLE obiekty i formanty ActiveX, z których wszystkie są reprezentowane przy użyciu klasy `Shape`. Niektóre kształty mogą również zawierać tekst, więc węzły kształtu w Aspose.Words mogą zawierać węzły na poziomie bloku.

Kształty można grupować wewnątrz siebie za pomocą węzłów GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Przypisy i komentarze mogą zawierać tekst, dlatego węzły przypisów i komentarzy w Aspose.Words mogą zawierać węzły na poziomie bloku.

{{% /alert %}}

## Poziom węzła tabeli, wiersza i komórki

Tabela składa się z węzłów wierszy i komórek. Elementy tabeli są reprezentowane przez następujące klasy:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) reprezentuje wiersz tabeli
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) reprezentuje komórkę tabeli
- StructuredDocumentTag reprezentują niestandardowe znaczniki

Poniższy diagram przedstawia struktury węzłów tabeli, wierszy i poziomów komórek.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
