---
title: Logiczne poziomy węzłów w dokumencie w Java
second_title: Aspose.Words zamiast Java
articleTitle: Logiczne poziomy węzłów w dokumencie
linktitle: Logiczne poziomy węzłów w dokumencie
type: docs
description: "W Aspose.Words zamiast Java dokumentacja wspomniała poziomy logiczne węzłów - poziom bloku, poziom inline- lub poziom wiersza. Poziom węzła służy do opisu lokalizacji w drzewie dokumentów, w którym zazwyczaj występuje węzeł."
weight: 10
url: /pl/java/logical-levels-of-nodes-in-a-document/
---

Dokumentacja ta czasami odnosi się do grupy klas węzłów jako należących do "poziomu" w dokumencie, takich jak "poziom blokady", "poziom inline-" (znany również jako "inline") lub "poziom row-" węzłów. Poziomy te w dokumencie są zróżnicowane czysto logicznie i nie są wyraźnie wyrażone przez dziedziczenie lub inne Aspose.Words DOM oznacza. Poziom węzła służy do opisu miejsca w drzewie dokumentów, w którym zazwyczaj występuje węzeł.

W poprzednim artykule mówiliśmy już o związku między węzłami i o tym, że nie wszystkie węzły mogą być dziećmi dowolnego węzła. Na przykład, Komórka może być tylko dzieckiem Row, a Row może być tylko dzieckiem Table i tak dalej. Stosunki te mają również zastosowanie do logicznego podziału węzłów na poziomy w dokumencie.

Poniższe sekcje opisują poziomy logiczne węzłów w Aspose.Words i klasy, które należą do każdego poziomu.

## Dokument i poziom logiczny sekcji

A Dokument Word składa się z jednej lub kilku sekcji, reprezentowanych przez [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) klasy i oddzielone przerwami sekcji. Sekcja może określić własny rozmiar strony, marginesy, orientacja, liczba kolumn tekstowych, nagłówki i stopki.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oraz [Sekcja](https://www.aspose.com/api/words/java/com.aspose.words/section) węzły poziomu mają strukturę jak pokazano na poniższym diagramie.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Sekcja zawiera tekst główny, a także nagłówki i stopki dla pierwszych, parzystych i nieparzystych stron. Te różne "przepływy" tekstu są nazywane *stories*.

W Aspose.Words, do **Section** węzeł zawiera [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) oraz [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) węzły opowieści. W **Body** obiekt przechowuje główny tekst. W **HeaderFooter** obiekty przechowują tekst dla każdego nagłówka i stopki. Tekst dowolnej historii składa się z akapitów i tabel, odpowiednio reprezentowanych przez **Paragraph** oraz **Table** obiekty poziomu Block-.

Dodatkowo, każdy Dokument Word może zawierać glosariusz, który jest reprezentowany przez [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) węzeł Aspose.Words. Dokument glosariusza zawiera [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), oraz [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) wpisy.

**GlossaryDocument** obejmuje [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) węzły reprezentujące różne rodzaje wpisów do glosariusza. Każdy **BuildingBlock** zawiera sekcje, które można umieścić, usunąć i skopiować do dokumentów.

## Zablokuj poziom logiczny

Węzły poziomu block- reprezentują kontenery do kontroli zawartości i mogą wystąpić w węzłach drzewa dokumentów w następujących węzłach:

- Ciało
- Nagłówek
- Footer
- Przypis
- Komentarz
- Kształt
- GroupKształt
- Komórka
- StructuredDocumentTag

Węzły poziomu blokady reprezentowane są przez następujące klasy:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) oraz [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), które są najważniejszymi węzłami poziomu blokady
- Zakładki, które występują zarówno na poziomie blokady, jak i na poziomie inline-
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), które reprezentują niestandardową marżę i mogą zawierać zarówno kontrolę zawartości jak i treści

Poniższy schemat przedstawia elementy blokujące.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Wprowadź poziom logiczny

Węzły poziomu inline- reprezentują rzeczywistą zawartość dokumentu i mogą być zawarte w następujących pojemnikach:

- Paragraf - najczęstszy pojemnik
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Elementy poziomu inline- reprezentowane są przez następujące klasy:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - kursy tekstu sformatowane inaczej
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) oraz [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) reprezentuj zakładki
- [CommentRangeStart] https: / / reference.aspose.com / words / java / com.aspose.words / comment / RangeStart), [CommentRangeEnd]](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) oraz [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) reprezentuj adnotacje
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) oraz [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) które reprezentują znaki pola, oraz [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) reprezentuj Pola słowne
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) reprezentuje znaki specjalne w dokumencie
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) oraz [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) reprezentują kształty, rysunki, obrazy itp.
- SmartTag and StructuredDocument Znacznik reprezentuje niestandardowy znacznik

Poniższy schemat pokazuje strukturę węzłów inline- level.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Kształty Microsoft Word include Office Art AutoShapes, text box, images, OLE obiektów i ActiveX kontroli, z których wszystkie są reprezentowane za pomocą `Shape` Klasa. Niektóre kształty mogą również zawierać tekst, więc Kształt węzłów w Aspose.Words może zawierać węzły poziomu blokady.

Kształty mogą być zgrupowane wewnątrz siebie za pomocą GroupKształt węzłów.

{{% /alert %}}

{{% alert color="primary" %}}

Przypisy i komentarze mogą zawierać tekst, dlatego Przypis i Komentarz węzłów w Aspose.Words może zawierać węzły poziomu blokady.

{{% /alert %}}

## Tabela, wiersz i poziom węzła komórkowego

Tabela składa się z węzłów wierszy i komórek. Elementy tabeli są reprezentowane przez następujące klasy:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) reprezentuje wiersz tabeli
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) reprezentuje komórkę tabeli
- StructuredDocument Znacznik reprezentuje niestandardowy znacznik

Poniższy schemat przedstawia struktury węzłów poziomu tabeli, wiersza i komórki.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
