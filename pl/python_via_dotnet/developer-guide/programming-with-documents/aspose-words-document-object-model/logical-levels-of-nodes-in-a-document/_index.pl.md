---
title: Poziomy logiczne węzłów w dokumencie
second_title: Aspose.Words dla Python via .NET
articleTitle: Poziomy logiczne węzłów w dokumencie
linktitle: Poziomy logiczne węzłów w dokumencie
type: docs
description: "W dokumentacji Aspose.Words dla Python via .NET wspomniano o poziomach logicznych węzłów – poziomie bloku, poziomie wbudowanym lub poziomie wiersza. Poziom węzła służy do opisu lokalizacji w drzewie dokumentu, w której zazwyczaj występuje węzeł."
weight: 10
url: /pl/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

W tej dokumentacji czasami odnosi się do grupy klas węzłów jako należących do "poziomu" w dokumencie, na przykład węzły "na poziomie bloku", "na poziomie wbudowanym" (znane również jako "wbudowane") lub węzły "na poziomie wiersza". Te poziomy w dokumencie są zróżnicowane czysto logicznie i nie są wyraźnie wyrażone poprzez dziedziczenie lub inne środki Aspose.Words DOM. Poziom węzła służy do opisania miejsca w drzewie dokumentu, w którym zazwyczaj występuje węzeł.

W poprzednim artykule mówiliśmy już o relacji między węzłami i fakcie, że nie wszystkie węzły mogą być dziećmi dowolnego węzła. Na przykład [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) może być tylko elementem podrzędnym [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) może być tylko elementem podrzędnym [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) i tak dalej. Zależności te mają również zastosowanie do logicznego podziału węzłów na poziomy w dokumencie.

W poniższych sekcjach opisano poziomy logiczne węzłów w Aspose.Words i klasy należące do każdego poziomu.

## Poziom logiczny dokumentu i sekcji

Dokument programu Word składa się z jednej lub większej liczby sekcji reprezentowanych przez klasę [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) i oddzielonych podziałami sekcji. Sekcja może definiować własny rozmiar strony, marginesy, orientację, liczbę kolumn tekstu oraz nagłówki i stopki.

Węzły poziomu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) mają strukturę przedstawioną na poniższym schemacie.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="słowa-aspose-na poziomie dokumentu i sekcji" style="width:700px"/>

Sekcja zawiera tekst główny oraz nagłówki i stopki pierwszej, parzystej i nieparzystej strony. Te różne "przepływy" tekstu nazywane są *stories*.

W Aspose.Words węzeł [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) zawiera węzły historii [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) i [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). Obiekt [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) przechowuje tekst główny. Obiekty [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) przechowują tekst każdego nagłówka i stopki. Tekst dowolnej historii składa się z akapitów i tabel, odpowiednio reprezentowanych przez obiekty [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) i [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) na poziomie bloku.

Dodatkowo każdy dokument programu Word może zawierać glosariusz reprezentowany przez węzeł [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) w formacie Aspose.Words. Dokument glosariusza zawiera wpisy w formatach [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) i [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) zawiera węzły [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) reprezentujące różne typy wpisów w dokumentach glosariusza. Każdy [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) zawiera sekcje, które można wstawiać, usuwać i kopiować do dokumentów.

## Blokowy poziom logiczny

Węzły na poziomie bloków reprezentują kontenery dla treści i kontroli treści i mogą występować w węzłach podrzędnych drzewa dokumentu w następujących węzłach:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Węzły na poziomie bloków są reprezentowane przez następujące klasy:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) i [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), które są najważniejszymi węzłami na poziomie bloków
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), który występuje zarówno na poziomie bloku, jak i na poziomie wbudowanym
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), który reprezentuje znaczniki niestandardowe i może zawierać zarówno treść, jak i elementy sterujące zawartością

Poniższy diagram przedstawia elementy na poziomie bloków.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="słowa na poziomie prywatnym" style="width:550px"/>

## Wbudowany poziom logiczny

Węzły wbudowane reprezentują rzeczywistą treść dokumentu i mogą być zawarte w następujących kontenerach:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – najpopularniejszy kontener
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Elementy inline są reprezentowane przez następujące klasy:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – ciągi tekstu sformatowane inaczej
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) i [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) reprezentują zakładki
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) i [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) reprezentują adnotacje
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) i [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) reprezentujące znaki pól, a [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) reprezentują pola Worda
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) reprezentuje znaki specjalne w dokumencie
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) i [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) reprezentują kształty, rysunki, obrazy itp.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) i [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezentują znaczniki niestandardowe

Poniższy diagram przedstawia strukturę węzłów na poziomie wbudowanym.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="słowa-aspose na poziomie inline" style="width:785px"/>

{{% alert color="primary" %}}

Kształty w formacie Microsoft Word obejmują Autokształty grafiki pakietu Office, pola tekstowe, obrazy, obiekty OLE i kontrolki ActiveX, z których wszystkie są reprezentowane przy użyciu klasy `Shape`. Niektóre kształty mogą również zawierać tekst, więc węzły kształtu w formacie Aspose.Words mogą zawierać węzły na poziomie bloków.

Kształty można grupować wewnątrz siebie za pomocą węzłów [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Przypisy i komentarze mogą zawierać tekst, dlatego węzły [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) i [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) w formacie Aspose.Words mogą zawierać węzły na poziomie bloków.

{{% /alert %}}

## Poziom węzła tabeli, wiersza i komórki

Tabela składa się z węzłów wierszy i komórek. Elementy [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) są reprezentowane przez następujące klasy:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) reprezentuje wiersz tabeli
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) reprezentuje komórkę tabeli
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezentuje znaczniki niestandardowe

Poniższy diagram przedstawia struktury węzłów poziomów [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tabela-wiersz-komórka-układa-słowa" style="width:910px"/>
