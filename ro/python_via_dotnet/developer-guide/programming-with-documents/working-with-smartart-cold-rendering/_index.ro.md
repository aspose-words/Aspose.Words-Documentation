---
title: Lucrul cu SmartArt redare la rece
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu SmartArt redare la rece
linktitle: Lucrul cu SmartArt redare la rece
type: docs
description: "Aspose.Words pentru Python via .NET efectuează SmartArt Redare la rece, ceea ce înseamnă că stabilește și redă obiecte SmartArt dacă desenul SmartArt pre-randat lipsește sau este incorect."
weight: 330
url: /ro/python-net/working-with-smartart-cold-rendering/
---

SmartArt grafica este utilizată pentru a crea rapid și ușor o reprezentare vizuală a informațiilor. Pur și simplu Alegeți dintr-un număr mare de machete care se potrivesc cel mai bine situației dvs. Această ușurință de utilizare face ca grafica SmartArt să fie destul de populară în anumite scopuri.

Microsoft Word generează și salvează desenul pre-randat împreună cu obiectul `SmartArt`. În majoritatea cazurilor, desenul pre-renderat este redat bine de Aspose.Words și nu sunt necesare acțiuni suplimentare. Cu toate acestea, dacă documentul este salvat de alte aplicații, desenul SmartArt pre-randat poate lipsi sau incorect. În acest caz, obiectul `SmartArt` în sine ar trebui să fie așezat și redat folosind Aspose.Words. Noi numim acest proces `SmartArt` Redare la rece.

## Folosind SmartArt Redare La Rece

Aspose.Words vă permite să utilizați un desen pre-randat sau să efectuați redarea la rece:

* Dacă este disponibil un desen pre-randat, Aspose.Words îl folosește pentru a reda obiectul `SmartArt`.
* Dacă lipsește desenul pre-renderat, Aspose.Words efectuează implicit renderarea la rece pentru a rendera obiectul `SmartArt`.
* Dacă un desen pre-renderat este prezent, dar este incorect, este necesar să se efectueze SmartArt renderarea la rece în mod explicit prin apelarea metodei [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

Următorul exemplu de cod arată cum să actualizați desenele pentru toate diagramele din document:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Suport pentru machete standard SmartArt

În prezent, sunt acceptate doar un număr limitat de machete standard Microsoft Word SmartArt. De asemenea, unele dintre aceste aspecte sunt suportate parțial, ceea ce înseamnă că nodurile și formele semnificative ale diagramei sunt redate, dar pot exista diferențe între aspectul diagramei Microsoft Word și Aspose.Words.

Tabelul de mai jos enumeră aspectele suportate integral și parțial:

| SmartArt Grup De Machete | Aspecte complet acceptate | Aspecte parțial acceptate |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Lista De Blocuri De Bază</li><li>Hexagoane Alternante</li><li>Listă Verticală De Gloanțe</li><li>Lista Verticală A Casetelor</li><li>Lista De Lățime Variabilă</li><li>Lista Orizontală A Marcatorilor</li><li>Lista Grupată</li><li>Lista Blocurilor Verticale</li><li>Lista Verticală A Chevronului</li><li>Lista Verticală A Săgeților</li><li>Lista Trapezoidală</li><li>Lista Tabelelor</li><li>Lista Piramidelor</li><li>Lista Țintă</li></ul> | <ul><li>Lista Aliniată</li><li>Lista Verticală A Parantezelor</li><li>Lista Filelor</li><li>Lista Stivuită</li><li>Lista De Accent Vertical</li><li>Lista Cercului Vertical</li></ul> |
| `Process` | <ul><li>Procesul De Bază</li><li>Procesul De Accent</li><li>Proces Continuu De Blocare</li><li>Creșterea Procesului De Săgeată</li><li>Text Convergent</li><li>Cronologie De Bază</li><li>Procesul De Bază Chevron</li><li>Procesul De Accent Chevron</li><li>Procesul Chevron Închis</li><li>Lista Chevron</li><li>Proces Vertical</li><li>Proces Eșalonat</li><li>Lista Proceselor</li><li>Procesul De Îndoire De Bază</li><li>Repetarea Procesului De Îndoire</li><li>Proces Detaliat</li><li>Săgeată În Sus</li><li>Procesul Descendent</li><li>Proces De Îndoire Circulară</li></ul> | <ul><li>Procesul De Intensificare</li><li>Pas În Jos Proces</li><li>Flux Alternativ</li><li>Procesul De Creștere A Cercului</li><li>Pie procesul</li><li>Proces Bloc Interconectat</li><li>Săgeți De Proces</li><li>Cronologia Accentului Cercului</li><li>Procesul Cercului</li><li>Procesul Sub-Pas</li><li>Procesul Etapizat</li><li>Proces aleatoriu la rezultat</li><li>Proces Săgeată Cerc</li></ul> |
| `Cycle` |  | <ul><li>Ciclu Segmentat</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Ierarhia Tabelului</li><li>Arhitectura Layout</li></ul> |
| `Relationship` | <ul><li>Echilibru</li><li>Pâlnie</li><li>Unelte</li><li>Plus Și Minus</li><li>Arrow Ribbon</li><li>Săgeți De Contrabalansare</li><li>Săgeți Opuse</li><li>Țintă Imbricată</li><li>Țintă De Bază</li><li>De bază Pie</li><li>Venn De Bază</li><li>Stacked Venn</li><li>Inel Interconectat</li></ul> | <ul><li>Relația De Cerc</li><li>Idei Opuse</li><li>Ecuația</li><li>Ecuația Verticală</li><li>Venn Liniar</li></ul> |
| `Matrix` | <ul><li>Matricea De Bază</li><li>Matrix Intitulat</li><li>Matrice De Rețea</li><li>Matricea Ciclului</li></ul> |  |
| `Pyramid` |  | <ul><li>Piramida Segmentată</li></ul> |

## Compararea SmartArt randare în Aspose.Words și Microsoft

Tabelul de mai jos prezintă exemple de imagini cu Aspose.Words Redare la rece a unor machete standard în comparație cu Microsoft Word ieșire:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
