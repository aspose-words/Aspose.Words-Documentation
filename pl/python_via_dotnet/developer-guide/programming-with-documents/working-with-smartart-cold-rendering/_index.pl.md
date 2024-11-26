---
title: Praca z renderowaniem na zimno SmartArt
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z renderowaniem na zimno SmartArt
linktitle: Praca z renderowaniem na zimno SmartArt
type: docs
description: "Aspose.Words dla Python via .NET wykonuje renderowanie grafiki SmartArt na zimno, co oznacza, że układa i renderuje obiekty SmartArt, jeśli brakuje wstępnie wyrenderowanego rysunku SmartArt lub jest on nieprawidłowy."
weight: 330
url: /pl/python-net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Grafika SmartArt służy do szybkiego i łatwego tworzenia wizualnej reprezentacji informacji. Po prostu wybierasz spośród dużej liczby układów, który najlepiej pasuje do Twojej sytuacji. Ta łatwość użycia sprawia, że grafika SmartArt jest dość popularna w niektórych celach.

Microsoft Word generuje i zapisuje wstępnie wyrenderowany rysunek wraz z obiektem `SmartArt`. W większości przypadków wstępnie wyrenderowany rysunek jest dobrze renderowany w formacie Aspose.Words i nie są wymagane żadne dodatkowe działania. Jeśli jednak dokument zostanie zapisany w innych aplikacjach, może brakować wstępnie wyrenderowanego rysunku SmartArt lub być on nieprawidłowy. W takim przypadku sam obiekt `SmartArt` powinien zostać rozłożony i wyrenderowany przy użyciu formatu Aspose.Words. Nazywamy ten proces renderowaniem na zimno `SmartArt`.

## Korzystanie z renderowania na zimno grafiki SmartArt

Aspose.Words umożliwia użycie wstępnie wyrenderowanego rysunku lub wykonanie renderowania na zimno:

* Jeśli dostępny jest wstępnie wyrenderowany rysunek, Aspose.Words używa go do renderowania obiektu `SmartArt`.
* Jeśli brakuje wstępnie wyrenderowanego rysunku, Aspose.Words domyślnie wykonuje renderowanie na zimno, aby wyrenderować obiekt `SmartArt`.
* Jeśli wstępnie wyrenderowany rysunek jest obecny, ale jest niepoprawny, wymagane jest jawne wykonanie renderowania na zimno SmartArt poprzez wywołanie metody [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

Poniższy przykład kodu pokazuje, jak zaktualizować rysunki dla wszystkich diagramów w dokumencie:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Obsługa standardowych układów SmartArt

Obecnie obsługiwana jest tylko ograniczona liczba standardowych układów Microsoft Word SmartArt. Ponadto niektóre z tych układów są obsługiwane częściowo, co oznacza, że renderowane są istotne węzły i kształty diagramu, ale mogą występować różnice między układem diagramu Microsoft Word i Aspose.Words.

Poniższa tabela zawiera listę w pełni i częściowo obsługiwanych układów:

|  Układy SmartArt Group |  W pełni obsługiwane układy |  Częściowo obsługiwane układy |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Podstawowa lista zablokowanych</li><li>Naprzemienne sześciokąty</li><li>Pionowa lista punktowana</li><li>Lista pudełek pionowych</li><li>Lista o różnej szerokości</li><li>Pozioma lista punktowana</li><li>Lista Grouped</li><li>Pionowa lista bloków</li><li>Pionowa lista jodełkowa</li><li>Lista strzałek pionowych</li><li>Lista trapezów</li><li>Lista tabel</li><li>Lista piramid</li><li>Lista docelowa</li></ul> |  <ul><li>Lista liniowa</li><li>Lista wsporników pionowych</li><li>Lista zakładek</li><li>Skumulowana lista</li><li>Lista akcentów pionowych</li><li>Lista okręgów pionowych</li></ul> |
|  `Process`  |  <ul><li>Podstawowy proces</li><li>Proces akcentowania</li><li>Ciągły proces blokowy</li><li>Zwiększanie procesu strzałki</li><li>Zbieżny tekst</li><li>Podstawowa oś czasu</li><li>Podstawowy proces Chevron</li><li>Proces akcentowania jodełki</li><li>Zamknięty proces jodełkowy</li><li>Lista szewronów</li><li>Proces pionowy</li><li>Proces rozłożony</li><li>Lista procesów</li><li>Podstawowy proces gięcia</li><li>Powtarzający się proces gięcia</li><li>Szczegółowy proces</li><li>Strzałka w górę</li><li>Proces malejący</li><li>Proces gięcia okrągłego</li></ul> |  <ul><li>Proces przyspieszania</li><li>Proces ustąpienia</li><li>Przepływ przemienny</li><li>Proces zwiększania kręgu</li><li>Proces ciasta</li><li>Połączony proces blokowy</li><li>Strzałki procesu</li><li>Oś czasu akcentu koła</li><li>Proces okręgowy</li><li>Podetap procesu</li><li>Proces etapowy</li><li>Proces losowy do wyniku</li><li>Proces strzałki koła</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Cykl segmentowy</li><li>Sześciokątny promieniowy</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarchia tabeli</li><li>Układ Architektury</li></ul> |
|  `Relationship`  |  <ul><li>Balansować</li><li>Lejek</li><li>Bieg</li><li>Plus i Minus</li><li>Strzałkowata Wstążka</li><li>Strzały przeciwwagi</li><li>Przeciwne strzałki</li><li>Zagnieżdżony cel</li><li>Podstawowy cel</li><li>Podstawowe ciasto</li><li>Podstawowy Venn</li><li>Ułożony Venn</li><li>Połączony pierścień</li></ul> |  <ul><li>Relacja w kręgu</li><li>Idee przeciwstawne</li><li>Równanie</li><li>Równanie pionowe</li><li>Liniowy Venna</li></ul> |
|  `Matrix`  |  <ul><li>Podstawowa matryca</li><li>zatytułowany Matrix</li><li>Matryca siatki</li><li>Matryca cykli</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Segmentowa piramida</li></ul> |

## Porównanie renderowania SmartArt w formatach Aspose.Words i Microsoft

Poniższa tabela pokazuje przykładowe obrazy renderowania na zimno Aspose.Words dla niektórych standardowych układów w porównaniu z wyjściem Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="podstawowe_słowo_procesu"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="round_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="round_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="powtarzanie_zginania_procesu_word"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapez_list_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapez_list_word"/> |
