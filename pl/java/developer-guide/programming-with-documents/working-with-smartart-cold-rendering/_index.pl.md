---
title: Praca z Smartem Art Cold Rendering in Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Smartem Art Cold Rendering
linktitle: Praca z Smartem Art Cold Rendering
type: docs
description: "Aspose.Words zamiast Java wykonuje Smart Art Cold Rendering, co oznacza, że kładzie i sprawia, że SmartArt obiektów, jeśli wstępnie renderowane SmartArt rysunek jest brakujące lub nieprawidłowe."
weight: 330
url: /pl/java/working-with-smartart-cold-rendering/
---

Grafika SmartArt jest używana do szybkiego i łatwego tworzenia wizualnej reprezentacji informacji. Po prostu wybrać z dużej liczby układów, które najlepiej odpowiada sytuacji. Ta łatwość użytkowania sprawia, że grafika SmartArt jest dość popularna w niektórych celach.

Microsoft Word generuje i zapisuje wstępnie renderowane rysunek wraz z `SmartArt` obiekt. W większości przypadków, wstępnie renderowane rysunek jest dobrze przez Aspose.Words i nie są wymagane żadne dodatkowe działania. Jednak jeśli dokument jest zapisany przez inne aplikacje, wstępnie renderowany rysunek SmartArt może być brakujący lub nieprawidłowy. W tym przypadku `SmartArt` obiekt sam powinien być laid- out i renderowane za pomocą Aspose.Words. Nazywamy ten proces `SmartArt` Cold Rendering.

## Korzystanie ze Smart Art Cold Rendering

Aspose.Words pozwala na użycie wstępnie renderowanego rysunku lub wykonać renderowanie na zimno:

* Jeżeli dostępny jest wcześniej renderowany rysunek, Aspose.Words wykorzystuje go do renderowania `SmartArt` obiekt.
* Jeśli brakuje wcześniej renderowanego rysunku, Aspose.Words pośrednio wykonuje renderowanie na zimno do renderowania `SmartArt` obiekt.
* Jeśli rysowanie przedrenderowane jest obecne, ale jest nieprawidłowe, wymagane jest wykonanie SmartArt zimnego renderowania wyraźnie przez wywołanie [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) Metoda.

Poniższy przykład kodu pokazuje, jak zaktualizować rysunki dla wszystkich schematów w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Obsługa standardowych układów SmartArt

Obecnie tylko ograniczona liczba standardów Microsoft Word Obsługiwane są układy SmartArt. Ponadto niektóre z tych układów są obsługiwane częściowo, co oznacza, że znaczące węzły i kształty diagramu są renderowane, ale mogą być różnice między Microsoft Word oraz Aspose.Words układ diagramu.

Poniższa tabela zawiera w pełni i częściowo obsługiwane układy:

|  Inteligentne Układy artystyczne Group |  W pełni obsługiwane układy |  Częściowo obsługiwane układy |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Podstawowa lista bloków</li><li>Heksagony zastępcze</li><li>Pionowa lista kul</li><li>Lista pól pionowych</li><li>Lista szerokościName</li><li>Pozioma lista kul</li><li>Groupna</li><li>Pionowa lista bloków</li><li>Pionowa lista Chevron</li><li>Pionowa lista strzałek</li><li>Lista trapezoidów</li><li>Lista tabeli</li><li>Lista piramid</li><li>Lista docelowa</li></ul> |  <ul><li>Lista liniowa</li><li>Pionowa lista zamków</li><li>Lista kart</li><li>Lista układana</li><li>Pionowa lista akcentów</li><li>Pionowa lista okręgów</li></ul> |
|  `Process`  |  <ul><li>Proces podstawowy</li><li>Proces aktywacji</li><li>Proces ciągłego blokowania</li><li>Zwiększanie procesu strzałek</li><li>Konwertowanie tekstu</li><li>Podstawowy harmonogram</li><li>Podstawowy proces chevronu</li><li>Proces chevron accent</li><li>Zamknięty proces Chevron</li><li>Lista Chevron</li><li>Proces pionowy</li><li>Proces staggered</li><li>Lista procesów</li><li>Podstawowy proces gięcia</li><li>Powtarzanie procesu gięcia</li><li>Szczegółowy proces</li><li>Strzałka w górę</li><li>Proces opadania</li><li>Proces gięcia kołowego</li></ul> |  <ul><li>Zintensyfikowanie procesu</li><li>Proces step down</li><li>Alternatywny przepływ</li><li>Zwiększanie procesu koła</li><li>Proces ciasta</li><li>Połączony proces blokowania</li><li>Strzałki procesowe</li><li>Czas aktywacji koła</li><li>Proces okrążenia</li><li>Proces podetapowy</li><li>Proces stopniowy</li><li>Proces losowy do wyniku</li><li>Proces strzałek koła</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Cykl segmentowany</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarchia tabeli</li><li>Układ architektury</li></ul> |
|  `Relationship`  |  <ul><li>Saldo</li><li>Lejek</li><li>Narzędzia</li><li>Plus i Minus</li><li>Arrow Ribbon</li><li>Kontrsaldo Wiersze</li><li>Nakłady przeciwstawne</li><li>Zagnieżdżony cel</li><li>Podstawowy cel</li><li>Podstawowe ciasto</li><li>Basic Venn</li><li>Stacked Venn</li><li>Złączony pierścień</li></ul> |  <ul><li>Związek w kole</li><li>Pomysły przeciwne</li><li>Równanie</li><li>Równanie pionowe</li><li>Venn liniowy</li></ul> |
|  `Matrix`  |  <ul><li>Matryca podstawowa</li><li>Matryca tytułowa</li><li>Matryca siatkowa</li><li>Matryca cyklu</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Piramida segmentowana</li></ul> |

## Porównanie SmartArt Rendering w Aspose.Words oraz Microsoft

Poniższa tabela przedstawia przykładowe zdjęcia Aspose.Words Zimne Renderowanie niektórych standardowych układów w porównaniu do Microsoft Word wyjście:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
