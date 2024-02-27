---
title: Poziomy logiczne węzłów w dokumencie w C#
second_title: Aspose.Words dla .NET
articleTitle: Poziomy logiczne węzłów w dokumencie
linktitle: Poziomy logiczne węzłów w dokumencie
type: docs
description: "W dokumentacji Aspose.Words dla .NET wspomniano o poziomach logicznych węzłów – poziomie bloku, poziomie wbudowanym lub poziomie wiersza przy użyciu formatu C#. Poziom węzła służy do opisu lokalizacji w drzewie dokumentu, w której zazwyczaj występuje węzeł."
weight: 10
url: /pl/net/logical-levels-of-nodes-in-a-document/
---

W tej dokumentacji czasami odnosi się do grupy klas węzłów jako należących do "poziomu" w dokumencie, na przykład węzły "na poziomie bloku", "na poziomie wbudowanym" (znane również jako "wbudowane") lub węzły "na poziomie wiersza". Poziomy w dokumencie są zróżnicowane czysto logicznie i nie są wyraźnie wyrażone poprzez dziedziczenie lub inne środki Aspose.Words DOM. Poziom węzła służy do opisania miejsca w drzewie dokumentu, w którym zazwyczaj występuje węzeł.

W poprzednim artykule mówiliśmy już o relacji między węzłami i fakcie, że nie wszystkie węzły mogą być dziećmi dowolnego węzła. Na przykład Cell może być tylko dzieckiem Row, a Row może być tylko dzieckiem Table i tak dalej. Zależności te mają również zastosowanie do logicznego podziału węzłów na poziomy w dokumencie.

W poniższych sekcjach opisano poziomy logiczne węzłów w Aspose.Words i klasy należące do każdego poziomu.

## Poziom logiczny dokumentu i sekcji

Dokument programu Word składa się z jednej lub większej liczby sekcji reprezentowanych przez klasę [Section](https://reference.aspose.com/words/net/aspose.words/section/) i oddzielonych podziałami sekcji. Sekcja może definiować własny rozmiar strony, marginesy, orientację, liczbę kolumn tekstu oraz nagłówki i stopki.

Węzły poziomu [Document](https://reference.aspose.com/words/net/aspose.words/document/) i [Section](https://reference.aspose.com/words/net/aspose.words/section/) mają strukturę przedstawioną na poniższym schemacie.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="słowa-aspose-na poziomie dokumentu i sekcji" style="width:700px"/>

Sekcja zawiera tekst główny oraz nagłówki i stopki pierwszej, parzystej i nieparzystej strony. Te różne "przepływy" tekstu nazywane są *stories*.

W Aspose.Words węzeł **Section** zawiera węzły historii [Body](https://reference.aspose.com/words/net/aspose.words/body/) i [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/). Obiekt **Body** przechowuje tekst główny. Obiekty **HeaderFooter** przechowują tekst każdego nagłówka i stopki. Tekst dowolnej historii składa się z akapitów i tabel, odpowiednio reprezentowanych przez obiekty **Paragraph** i **Table** na poziomie bloku.

Dodatkowo każdy dokument programu Word może zawierać glosariusz reprezentowany przez węzeł [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) w formacie Aspose.Words. Dokument glosariusza zawiera wpisy w formatach [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) i [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument** zawiera węzły [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) reprezentujące różne typy wpisów w dokumentach glosariusza. Każdy plik **BuildingBlock** zawiera sekcje, które można wstawiać, usuwać i kopiować do dokumentów.

## Blokowy poziom logiczny

Węzły na poziomie bloków reprezentują kontenery dla treści i kontroli treści i mogą występować w węzłach podrzędnych drzewa dokumentu w następujących węzłach:

- Ciało
- Nagłówek
- Stopka
- Przypis
- Komentarz
- Kształt
- GroupShape
- Komórka
- Tag dokumentu strukturalnego

Węzły na poziomie bloków są reprezentowane przez następujące klasy:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) i [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), które są najważniejszymi węzłami na poziomie bloków
- Zakładki, które występują zarówno na poziomie bloku, jak i na poziomie wbudowanym
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), który reprezentuje znaczniki niestandardowe i może zawierać zarówno treść, jak i elementy sterujące zawartością

Poniższy diagram przedstawia elementy na poziomie bloków.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="słowa na poziomie prywatnym" style="width:550px"/>

## Wbudowany poziom logiczny

Węzły wbudowane reprezentują rzeczywistą treść dokumentu i mogą być zawarte w następujących kontenerach:

- Akapit – najpopularniejszy pojemnik
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- Tag dokumentu strukturalnego

Elementy inline są reprezentowane przez następujące klasy:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – ciągi tekstu sformatowane inaczej
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) i [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) reprezentują zakładki
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) i [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) reprezentują adnotacje
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) i [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) reprezentujące znaki pól, a [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) reprezentują pola Worda
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) reprezentuje znaki specjalne w dokumencie
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) i [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) reprezentują kształty, rysunki, obrazy itp.
- SmartTag i StructuredDocumentTag reprezentują znaczniki niestandardowe

Poniższy diagram przedstawia strukturę węzłów na poziomie wbudowanym.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="słowa-aspose na poziomie inline" style="width:785px"/>

{{% alert color="primary" %}}

Kształty w formacie Microsoft Word obejmują Autokształty grafiki pakietu Office, pola tekstowe, obrazy, obiekty OLE i kontrolki ActiveX, z których wszystkie są reprezentowane przy użyciu klasy `Shape`. Niektóre kształty mogą również zawierać tekst, więc węzły kształtu w formacie Aspose.Words mogą zawierać węzły na poziomie bloków.

Kształty można grupować wewnątrz siebie za pomocą węzłów GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Przypisy i komentarze mogą zawierać tekst, dlatego węzły przypisów i komentarzy w Aspose.Words mogą zawierać węzły na poziomie bloków.

{{% /alert %}}

## Poziom węzła tabeli, wiersza i komórki

Tabela składa się z węzłów wierszy i komórek. Elementy tabeli są reprezentowane przez następujące klasy:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) reprezentuje wiersz tabeli
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) reprezentuje komórkę tabeli
- StructuredDocumentTag reprezentuje znaczniki niestandardowe

Poniższy diagram przedstawia struktury węzłów na poziomach tabeli, wiersza i komórki.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tabela-wiersz-komórka-układa-słowa" style="width:910px"/>
