---
title: Praca z SmartArt renderowanie na zimno w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z renderowaniem na zimno SmartArt
linktitle: Praca z renderowaniem na zimno SmartArt
type: docs
description: "Aspose.Words dla C++ wykonuje SmartArt renderowanie na zimno, co oznacza, że układa i renderuje SmartArt obiekty, jeśli brakuje wstępnie renderowanego rysunku SmartArt lub jest niepoprawny."
weight: 330
url: /pl/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt grafika służy do szybkiego i łatwego tworzenia wizualnej reprezentacji informacji. Po prostu wybierasz spośród dużej liczby układów, które najlepiej pasują do twojej sytuacji. Ta łatwość użycia sprawia, że grafika SmartArt jest dość popularna w niektórych celach.

Microsoft Word generuje i zapisuje wstępnie renderowany rysunek wraz z obiektem `SmartArt`. W większości przypadków wstępnie renderowany rysunek jest dobrze renderowany przez Aspose.Words i nie są wymagane żadne dodatkowe działania. Jeśli jednak dokument zostanie zapisany przez inne APLIKACJE, Wstępnie renderowany Rysunek SmartArt może być brakujący lub niepoprawny. W takim przypadku sam obiekt `SmartArt` powinien być ułożony i renderowany przy użyciu Aspose.Words. Nazywamy ten proces renderowaniem na zimno `SmartArt`.

## Używanie SmartArt Renderowania Na Zimno

Aspose.Words umożliwia użycie wstępnie renderowanego rysunku lub wykonanie renderowania na zimno:

* Jeśli dostępny jest wstępnie renderowany rysunek, Aspose.Words używa go do renderowania obiektu `SmartArt`.
* Jeśli brakuje wstępnie renderowanego rysunku, Aspose.Words niejawnie wykonuje renderowanie na zimno, aby renderować obiekt `SmartArt`.
* Jeśli wstępnie renderowany rysunek jest obecny, ale jest niepoprawny, wymagane jest jawne wykonanie SmartArt renderowania na zimno przez wywołanie metody [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

Poniższy przykład kodu pokazuje, jak zaktualizować rysunki dla wszystkich diagramów w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Obsługa standardowych układów SmartArt

Obecnie obsługiwana jest tylko ograniczona liczba standardowych układów Microsoft Word SmartArt. Ponadto niektóre z tych układów są obsługiwane częściowo, co oznacza, że renderowane są znaczące węzły i kształty diagramu, ale mogą występować różnice między układem diagramu Microsoft Word i Aspose.Words.

Poniższa tabela zawiera w pełni i częściowo obsługiwane układy:

| SmartArt Grupa Układów | W pełni obsługiwane układy | Częściowo obsługiwane układy |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Podstawowa Lista Bloków</li><li>Naprzemienne Sześciokąty</li><li>Pionowa Lista Punktorów</li><li>Lista Skrzynek Pionowych</li><li>Lista Różnych Szerokości</li><li>Pozioma Lista Punktorów</li><li>Lista Zgrupowana</li><li>Pionowa Lista Bloków</li><li>Lista Szewronów Pionowych</li><li>Lista Strzałek Pionowych</li><li>Lista Trapezowa</li><li>Lista Tabel</li><li>Lista Piramid</li><li>Lista Celów</li></ul> | <ul><li>Lista W Linii</li><li>Lista Wsporników Pionowych</li><li>Lista Zakładek</li><li>Lista Skumulowana</li><li>Lista Akcentów Pionowych</li><li>Lista Kół Pionowych</li></ul> |
| `Process` | <ul><li>Podstawowy Proces</li><li>Proces Akcentowania</li><li>Ciągły Proces Blokowy</li><li>Zwiększenie Procesu Strzałki</li><li>Tekst Zbieżny</li><li>Podstawowa Oś Czasu</li><li>Podstawowy Proces Chevron</li><li>Proces Akcentu Chevron</li><li>Zamknięty Proces Chevron</li><li>Lista Szewronów</li><li>Proces Pionowy</li><li>Rozłożony Proces</li><li>Lista Procesów</li><li>Podstawowy Proces Gięcia</li><li>Powtarzający Się Proces Gięcia</li><li>Szczegółowy Proces</li><li>Strzałka W Górę</li><li>Proces Malejący</li><li>Okrągły Proces Gięcia</li></ul> | <ul><li>Step Up Process</li><li>Step Down Process</li><li>Przepływ Naprzemienny</li><li>Proces Zwiększania Koła</li><li>Pie Proces</li><li>Połączony Proces Blokowy</li><li>Strzałki Procesowe</li><li>Oś Czasu Akcentu Koła</li><li>Proces Koła</li><li>Proces Podetapowy</li><li>Proces Etapowy</li><li>Proces losowy do wyniku</li><li>Circle Arrow Process</li></ul> |
| `Cycle` |  | <ul><li>Cykl Segmentowy</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Hierarchia Tabel</li><li>Układ Architektury</li></ul> |
| `Relationship` | <ul><li>Równowaga</li><li>Lejek</li><li>Sprzęt</li><li>Plus I Minus</li><li>Strzałka Wstążka</li><li>Strzałki Przeciwwagi</li><li>Przeciwne Strzały</li><li>Zagnieżdżony Cel</li><li>Podstawowy Cel</li><li>Podstawowe Pie</li><li>Basic Venn</li><li>Stacked Venn</li><li>Pierścień Połączony</li></ul> | <ul><li>Związek Koła</li><li>Przeciwstawne Pomysły</li><li>Równanie</li><li>Równanie Pionowe</li><li>/ Align = "Left" / Linear</li></ul> |
| `Matrix` | <ul><li>Macierz Podstawowa</li><li>Tytuł Matrix</li><li>Macierz Siatki</li><li>Macierz Cyklu</li></ul> |  |
| `Pyramid` |  | <ul><li>Piramida Segmentowa</li></ul> |

## Porównanie SmartArt renderowania w Aspose.Words i Microsoft

Poniższa tabela przedstawia przykładowe zdjęcia Aspose.Words renderowania na zimno niektórych standardowych układów w porównaniu z wyjściem Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
