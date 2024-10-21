---
title: Lucrul cu SmartArt Cold Rendering în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu SmartArt Cold Rendering
linktitle: Lucrul cu SmartArt Cold Rendering
description: "Introducere în formele SmartArt folosind C#."
type: docs
description: "Aspose.Words pentru .NET efectuează redarea rece a SmartArt, ceea ce înseamnă că plasează și redă obiecte SmartArt dacă desenul SmartArt pre-renderizat este lipsă sau incorect folosind C#."
weight: 330
url: /ro/net/working-with-smartart-cold-rendering/
---

Graficele SmartArt se folosesc pentru a crea rapid și ușor o reprezentare vizuală a informației. "Puteți alege dintr-un număr mare de șabloane care se potrivesc cel mai bine situației dumneavoastră." Această ușurință în utilizare face ca grafica SmartArt să fie destul de populară pentru anumite scopuri.

Microsoft Word generează și salvează desenul pre-renduit împreună cu obiectul `SmartArt`. În majoritatea cazurilor, desenul pre-renderizat este redat bine de Aspose.Words și nu sunt necesare acțiuni suplimentare. "Cu toate acestea, dacă documentul este salvat de alte aplicații, desenul SmartArt pre-redat poate fi absent sau incorect." În acest caz obiectul `SmartArt` în sine ar trebui să fie aranjat și redat utilizând Aspose.Words. Noi numim acest proces "The `SmartArt` Cold Rendering.

## Folosind SmartArt Cold Rendering

Aspose.Words vă permite să utilizați o desenare pre-renderizată sau să efectuați randarea rece":

* Dacă este disponibil un desen pre-randat, Aspose.Words îl folosește pentru a randă `SmartArt` obiectul.
* Dacă desenarea pre-randată este lipsă, Aspose.Words implicit efectuează randarea rece pentru a randa obiectul `SmartArt`.
* Dacă este prezent un desen pre-renderizat dar este incorect, este necesar să se efectueze un randare de tip SmartArt " rece " explicit prin apelarea metodei [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/).

Exemplul de cod următor prezintă modul în care se actualizează desenele pentru toate diagramele din document:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Sprijin pentru layout-uri SmartArt standard

În prezent sunt suportate doar un număr limitat de Microsoft Word aranjamente SmartArt standard. De asemenea, unele dintre aceste dispuneri sunt suportate parțial, ceea ce înseamnă că nodurile și formele semnificative din diagramă sunt redarea, dar ar putea exista diferențe între Microsoft Word și Aspose.Words diagrama dispunere.

Tabelul de mai jos enumeră aspectele complet și parțial acceptate:

| SmartArt Layouts Group | Layouturi complet suportate | Layouturi parțial suportate |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Lista de blocuri de bază</li><li>Hexagoane alternative</li><li>Lista cu săgeți verticale</li><li>Lista cu cutii verticale</li><li>Lista cu lățime variabilă</li><li>Lista cu săgeți orizontale</li><li>Lista grupată</li><li>Lista verticală de blocuri</li><li>Lista verticală în formă de cheie</li><li>Lista verticală în formă de săgeată</li><li>Lista trapezoidală</li><li>Lista tabulare</li><li>Lista piramidală</li><li>Lista ţintă</li></ul> | <ul><li>Lista liniară</li> <li>Lista în virgulă verticală</li> <li>Lista cu taburi</li> <li>Lista apilată</li> <li>Lista cu accent vertical</li> <li>Lista cu cercuri verticale</li></ul> |
| `Process` | <ul><li>Procesul de bază</li><li>Procesul Accent</li><li>Procesul Bloc continuu</li><li>Procesul săgeată în creștere</li><li>Textul convergent</li><li>Timeline de bază</li><li>Procesul de bază al chevronei</li><li>Procesul Accentului Chevronei</li><li>Procesul Chevronei Închise</li><li>Lista chevronei</li><li>Proces vertical</li><li>Procesul în trepte</li><li>Lista proceselor</li><li>Procesul de îndoire de bază</li><li>Procesul de îndoire repetitiv</li><li>Proces detaliat</li><li>Săgeată în sus</li><li>Procesul descendent</li><li>Procesul de îndoire circulară</li></ul> | <ul><li>Procesul Pas în Pas</li> <li>Procesul Reducerii</li> <li>Flux Alternativ</li> <li>Procesul Cercului Crească</li> <li>Procesul Tartei</li> <li>Procesul Blocului Interconectat</li> <li>Suri de Proces</li> <li>Timpul Liniei Cercului</li> <li>Procesul Cercului</li> <li>Subpasul Pas în Pas</li> <li>Procesul Fază</li> <li>Procesul Aleatoriu Rezultă</li> <li>Procesul Cercului cu săgeți</li></ul> |
| `Cycle` |–| <ul><li>Ciclul segmentat</li><li>Radial hexagonal</li></ul> |
| `Hierarchy` |–| <ul><li>Hierarhia tabelelor</li> <li>Aranjament arhitectural</li></ul> |
| `Relationship` | <ul><li>Sold</li><li>Funnel</li><li>Gear</li><li>Plus and Minus</li><li>Arrow Ribbon</li><li>Counterbalance Arrows</li><li>Opposing Arrows</li><li>Nested Target</li><li>Basic Target</li><li>Basic Pie</li><li>Basic Venn</li><li>Stacked Venn</li><li>Interconnected Ring</li></ul> | <ul><li>Relația circulară</li><li>Idei opuse</li><li>Ecuație</li><li>Ecuație verticală</li><li>Venn liniar</li></ul> |
| `Matrix` | <ul><li>Matrice de bază</li> <li>Matrice titluri</li> <li>Matrice grilă</li> <li>Matrice ciclică</li></ul> |–|
| `Pyramid` |–| <ul><li>Piramidă segmentată</li></ul> |

## Comparație a randării SmartArt în Aspose.Words și Microsoft

Tabelul de mai jos prezintă exemple de imagini Aspose.Words Cold Rendering ale unor layout-uri standard comparate cu Microsoft Word ieșire:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
