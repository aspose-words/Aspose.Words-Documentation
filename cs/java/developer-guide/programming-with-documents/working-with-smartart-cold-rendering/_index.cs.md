---
title: Práce s chytrými Art Cold Rendering in Java
second_title: Aspose.Words místo Java
articleTitle: Práce s chytrými Umění Studené renderování
linktitle: Práce s chytrými Umění Studené renderování
type: docs
description: "Aspose.Words místo Java provádí inteligentní Art Cold Rendering, což znamená, že to stanoví a dělá objekty SmartArt, pokud před-rendered SmartArt výkres chybí nebo nesprávné."
weight: 330
url: /cs/java/working-with-smartart-cold-rendering/
---

Grafika SmartArt se používá k rychlému a snadnému vytvoření vizuálního zobrazení informací. Jednoduše si vyberete z velkého počtu rozložení, které nejlépe vyhovuje vaší situaci. Díky tomuto snadnému použití je grafika SmartArt poměrně oblíbená pro některé účely.

Microsoft Word generuje a ukládá pre-rendered výkres spolu s `SmartArt` objekt. Ve většině případů je kresba přednastavena tak, že Aspose.Words a nejsou nutná žádná další opatření. Pokud je však dokument uložen jinými aplikacemi, může být kresba SmartArt předpředem chybějící nebo nesprávná. V tomto případě `SmartArt` samotný objekt by měl být nastaven a přeložen pomocí Aspose.Words. Tento proces nazýváme `SmartArt` Studená renderování.

## Použití chytrých Umění Studené renderování

Aspose.Words umožňuje použít přednastavený výkres nebo provést vykreslování za studena:

* Pokud je k dispozici přednastavená kresba, Aspose.Words používá k výrobě `SmartArt` objekt.
* Pokud chybí přednastavená kresba, Aspose.Words Implicitně provádí vykreslování za studena, aby se `SmartArt` objekt.
* Je-li přítomen předdenderovaný výkres, ale je chybný, je nutné provést SmartArt zobrazování za studena explicitně voláním [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) metoda.

Následující příklad kódu ukazuje, jak aktualizovat výkresy všech schémat v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Podpora standardních layoutů SmartArt

V současné době pouze omezený počet norem Microsoft Word Je podporováno uspořádání SmartArt. Také některé z těchto uspořádání jsou částečně podporovány, což znamená, že významné uzly a tvary diagramu jsou překresleny, ale tam mohou být rozdíly mezi Microsoft Word a Aspose.Words schéma.

Níže uvedená tabulka uvádí plně a částečně podporované rozvržení:

|  Chytré Výtvarné úpravy Group |  Plně podporované rozvržení |  Částečně podporované rozvržení |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Seznam základních bloků</li><li>Alternativní hexagony</li><li>Vertikální seznam nábojů</li><li>Seznam vertikálních kolonek</li><li>Seznam šířky</li><li>Horizontální seznam nábojů</li><li>GroupSeznam</li><li>Seznam vertikálních bloků</li><li>Vertikální seznam symbolů</li><li>Vertikální seznam šipek</li><li>Seznam trapezoidů</li><li>Seznam tabulek</li><li>Seznam pyramid</li><li>Cílový seznam</li></ul> |  <ul><li>Linka Seznam</li><li>Seznam vertikálních raket</li><li>Seznam karet</li><li>Naložený seznam</li><li>Seznam vertikálních přízvuků</li><li>Vertikální seznam kruhů</li></ul> |
|  `Process`  |  <ul><li>Základní proces</li><li>Zrychlení</li><li>Plynulý blokový proces</li><li>Zvyšování šipkového procesu</li><li>Konvergující text</li><li>Základní časová osa</li><li>Základní chevronový proces</li><li>Proces chevron přízvuku</li><li>Uzavřený chevronový proces</li><li>Seznam symbolů</li><li>Vertikální proces</li><li>Překročený proces</li><li>Seznam procesů</li><li>Základní ohýbání</li><li>Opakování ohýbání</li><li>Podrobný postup</li><li>Šipka nahoru</li><li>Sestupný proces</li><li>Ohýbání kruhů</li></ul> |  <ul><li>Krok nahoru</li><li>Postup kroku dolů</li><li>Alternativní tok</li><li>Rostoucí proces kruhu</li><li>Koláčový proces</li><li>Mezipřipojený blokový proces</li><li>Procesní šipky</li><li>Časová osa zrychlení kruhu</li><li>Proces kruhu</li><li>Proces dílčího kroku</li><li>Fáze</li><li>Postup náhodného výsledku</li><li>Proces šipky kruhu</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Segmentovaný cyklus</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Tabulka Hierarchie</li><li>Uspořádání architektury</li></ul> |
|  `Relationship`  |  <ul><li>Zůstatek</li><li>Funnel</li><li>Zařízení</li><li>Plus a Mínus</li><li>Šipka Ribbon</li><li>Protibilanční šípy</li><li>Protilehlé šípy</li><li>Nested Cíl</li><li>Základní cíl</li><li>Základní koláč</li><li>Základní Venn</li><li>Stacked Venn</li><li>Připojený prstenec</li></ul> |  <ul><li>Vztah k kruhu</li><li>Protichůdné myšlenky</li><li>Rovnice</li><li>Vertikální rovnice</li><li>Lineární venn</li></ul> |
|  `Matrix`  |  <ul><li>Základní matice</li><li>Název Matrix</li><li>Grid Matrix</li><li>Cyklus Matrix</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Segmentovaná pyramida</li></ul> |

## Srovnání SmartArt Rendering in Aspose.Words a Microsoft

Níže uvedená tabulka ukazuje příklady Aspose.Words Studená Renderování některých standardních uspořádání ve srovnání s Microsoft Word výstup:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
