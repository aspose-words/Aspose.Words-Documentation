---
title: Práce s SmartArt Vykreslování za studena v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s SmartArt Vykreslování za studena
linktitle: Práce s SmartArt Vykreslování za studena
type: docs
description: "Aspose.Words pro C++ provádí SmartArt studené Vykreslování, což znamená, že stanoví a vykreslí objekty SmartArt, pokud předem vykreslený SmartArt výkres chybí nebo je nesprávný."
weight: 330
url: /cs/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt grafika se používá k rychlému a snadnému vytvoření vizuální reprezentace informací. Jednoduše si vyberete z velkého množství rozvržení, které nejlépe vyhovuje vaší situaci. Díky tomuto snadnému použití je grafika SmartArt pro některé účely docela populární.

Microsoft Word generuje a ukládá předem vykreslený výkres spolu s objektem `SmartArt`. Ve většině případů je předem vykreslený výkres vykreslen dobře pomocí Aspose.Words a nejsou vyžadovány žádné další akce. Pokud je však dokument uložen jinými aplikacemi, může být předem vykreslený výkres SmartArt chybějící nebo nesprávný. V tomto případě by měl být samotný objekt `SmartArt` rozložen a vykreslen pomocí Aspose.Words. Tento proces nazýváme `SmartArt` Vykreslování za studena.

## Použití SmartArt Vykreslování Za Studena

Aspose.Words umožňuje použít předem vykreslený výkres nebo provést Vykreslování za studena:

* Pokud je k dispozici předem vykreslený výkres, Aspose.Words jej použije k vykreslení objektu `SmartArt`.
* Pokud předrenderovaný výkres chybí, Aspose.Words implicitně provede Vykreslování za studena, aby vykreslil objekt `SmartArt`.
* Pokud je předrenderovaný výkres přítomen, ale je nesprávný, je nutné explicitně provést SmartArt Vykreslování za studena voláním metody [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

Následující příklad kódu ukazuje, jak aktualizovat výkresy pro všechny diagramy v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Podpora standardních rozvržení SmartArt

V současné době je podporován pouze omezený počet standardních Microsoft Word SmartArt rozvržení. Některá z těchto rozvržení jsou také částečně podporována, což znamená, že jsou vykresleny významné uzly a tvary diagramu, ale mohou existovat rozdíly mezi Microsoft Word a Aspose.Words rozložením diagramu.

Níže uvedená tabulka uvádí plně a částečně podporovaná rozvržení:

| SmartArt Skupina Rozvržení | Plně podporované rozvržení | Částečně podporované rozvržení |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Základní Seznam Bloků</li><li>Střídavé Šestiúhelníky</li><li>Vertikální Seznam Odrážek</li><li>Vertikální Seznam Boxů</li><li>Seznam Různé Šířky</li><li>Horizontální Seznam Odrážek</li><li>Seskupený Seznam</li><li>Vertikální Seznam Bloků</li><li>Vertikální Seznam Krokví</li><li>Seznam Svislých Šipek</li><li>Lichoběžníkový Seznam</li><li>tabulka</li><li>Seznam Pyramid</li><li>Seznam Cílů</li></ul> | <ul><li>Linkovaný Seznam</li><li>Seznam Svislých Závorek</li><li>Seznam Karet</li><li>Skládaný Seznam</li><li>Seznam Svislých Přízvuků</li><li>Seznam Svislých Kruhů</li></ul> |
| `Process` | <ul><li>Základní Proces</li><li>Proces Přízvuku</li><li>Kontinuální Blokový Proces</li><li>Zvýšení Arrow Proces</li><li>Konvergující Text</li><li>Základní Časová Osa</li><li>Základní Proces Chevron</li><li>Proces Zvýraznění Chevronu</li><li>Uzavřený Proces Chevronu</li><li>Seznam Krokví</li><li>Vertikální Proces</li><li>Rozložený Proces</li><li>Seznam Procesů</li><li>Základní Proces Ohýbání</li><li>Opakování Procesu Ohýbání</li><li>Podrobný Proces</li><li>Šipka Nahoru</li><li>Sestupný Proces</li><li>Kruhový Proces Ohýbání</li></ul> | <ul><li>Zintenzivnit Proces</li><li>Krok Dolů Proces</li><li>Střídavý Průtok</li><li>Rostoucí Kruhový Proces</li><li>Pie proces</li><li>Propojený Blokový Proces</li><li>Procesní Šipky</li><li>Kruh Přízvuk Časová Osa</li><li>Kruhový Proces</li><li>Postup Dílčího Kroku</li><li>Postupný Proces</li><li>Proces náhodného výsledku</li><li>Proces Kruhové Šipky</li></ul> |
| `Cycle` |  | <ul><li>Segmentovaný Cyklus</li><li>Šestihran Radiální</li></ul> |
| `Hierarchy` |  | <ul><li>Hierarchie Tabulek</li><li>Rozložení Architektury</li></ul> |
| `Relationship` | <ul><li>Rovnováha</li><li>Nálevka</li><li>Zařízení</li><li>Plus A Mínus</li><li>Arrow Stuha</li><li>Protiváhové Šipky</li><li>Protilehlé Šípy</li><li>Vnořený Cíl</li><li>Základní Cíl</li><li>Základní Pie</li><li>Basic Venn</li><li>Stacked Venn</li><li>Propojený Kroužek</li></ul> | <ul><li>Kruhový Vztah</li><li>Protichůdné Myšlenky</li><li>Rovnice</li><li>Vertikální Rovnice</li><li>Lineární Venn</li></ul> |
| `Matrix` | <ul><li>Základní Matice</li><li>Název Matrix</li><li>Mřížková Matice</li><li>Matice Cyklu</li></ul> |  |
| `Pyramid` |  | <ul><li>Segmentovaná Pyramida</li></ul> |

## Porovnání SmartArt Vykreslování v Aspose.Words a Microsoft

Níže uvedená tabulka ukazuje ukázkové obrázky Aspose.Words studeného Vykreslování některých standardních rozvržení ve srovnání s Microsoft Word výstupem:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
