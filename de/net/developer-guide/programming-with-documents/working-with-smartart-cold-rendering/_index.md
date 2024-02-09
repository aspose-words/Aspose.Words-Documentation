---
title: Arbeiten mit SmartArt Cold Rendering in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit SmartArt Cold Rendering
linktitle: Arbeiten mit SmartArt Cold Rendering
description: "Einführung in SmartArt-Formen mit C#."
type: docs
description: "Aspose.Words für .NET führt SmartArt Cold Rendering durch, was bedeutet, dass es SmartArt-Objekte anordnet und rendert, wenn die vorgerenderte SmartArt-Zeichnung fehlt oder mit C# fehlerhaft ist."
weight: 330
url: /de/net/working-with-smartart-cold-rendering/
---

Mithilfe von SmartArt-Grafiken können Informationen schnell und einfach visuell dargestellt werden. Sie wählen einfach aus einer Vielzahl von Layouts dasjenige aus, das am besten zu Ihrer Situation passt. Aufgrund dieser Benutzerfreundlichkeit sind SmartArt-Grafiken für einige Zwecke sehr beliebt.

Microsoft Word generiert und speichert die vorgerenderte Zeichnung zusammen mit dem `SmartArt`-Objekt. In den meisten Fällen wird die vorgerenderte Zeichnung von Aspose.Words gut gerendert und es sind keine zusätzlichen Aktionen erforderlich. Wenn das Dokument jedoch von anderen Anwendungen gespeichert wird, fehlt möglicherweise die vorgerenderte SmartArt-Zeichnung oder ist falsch. In diesem Fall sollte das `SmartArt`-Objekt selbst mithilfe von Aspose.Words gestaltet und gerendert werden. Wir nennen diesen Prozess das `SmartArt` Cold Rendering.

## Verwenden von SmartArt Cold Rendering

Mit Aspose.Words können Sie eine vorgerenderte Zeichnung verwenden oder ein Kaltrendering durchführen:

* Wenn eine vorgerenderte Zeichnung verfügbar ist, verwendet Aspose.Words diese zum Rendern des `SmartArt`-Objekts.
* Wenn die vorgerenderte Zeichnung fehlt, führt Aspose.Words implizit ein Kaltrendering durch, um das `SmartArt`-Objekt zu rendern.
* Wenn eine vorgerenderte Zeichnung vorhanden, aber falsch ist, muss das SmartArt-Kaltrendering explizit durch Aufruf der [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/)-Methode durchgeführt werden.

Das folgende Codebeispiel zeigt, wie Zeichnungen für alle Diagramme im Dokument aktualisiert werden:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Unterstützung für Standard-SmartArt-Layouts

Derzeit wird nur eine begrenzte Anzahl standardmäßiger Microsoft Word-SmartArt-Layouts unterstützt. Außerdem werden einige dieser Layouts teilweise unterstützt, was bedeutet, dass wichtige Knoten und Formen des Diagramms gerendert werden, es jedoch möglicherweise Unterschiede zwischen dem Microsoft Word- und dem Aspose.Words-Diagrammlayout gibt.

In der folgenden Tabelle sind die vollständig und teilweise unterstützten Layouts aufgeführt:

|  SmartArt-Layouts Group |  Vollständig unterstützte Layouts |  Teilweise unterstützte Layouts |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Grundlegende Sperrliste</li><li>Abwechselnde Sechsecke</li><li>Vertikale Aufzählungsliste</li><li>Vertikale Boxliste</li><li>Liste mit unterschiedlicher Breite</li><li>Horizontale Aufzählungsliste</li><li>Grouped-Liste</li><li>Vertikale Blockliste</li><li>Vertikale Chevron-Liste</li><li>Vertikale Pfeilliste</li><li>Trapezliste</li><li>Tabellenliste</li><li>Pyramidenliste</li><li>Zielliste</li></ul> |  <ul><li>Gefütterte Liste</li><li>Vertikale Klammerliste</li><li>Tab-Liste</li><li>Gestapelte Liste</li><li>Vertikale Akzentliste</li><li>Vertikale Kreisliste</li></ul> |
|  `Process`  |  <ul><li>Grundlegender Prozess</li><li>Akzentprozess</li><li>Kontinuierlicher Blockprozess</li><li>Zunehmender Pfeilprozess</li><li>Konvergierender Text</li><li>Grundlegende Zeitleiste</li><li>Grundlegender Chevron-Prozess</li><li>Chevron-Akzentprozess</li><li>Geschlossener Chevron-Prozess</li><li>Chevron-Liste</li><li>Vertikaler Prozess</li><li>Gestaffelter Prozess</li><li>Prozessliste</li><li>Grundlegender Biegeprozess</li><li>Wiederholter Biegevorgang</li><li>Detaillierter Prozess</li><li>Aufwärtspfeil</li><li>Absteigender Prozess</li><li>Kreisbiegeprozess</li></ul> |  <ul><li>Step-Up-Prozess</li><li>Step-Down-Prozess</li><li>Wechselnder Fluss</li><li>Zunehmender Kreisprozess</li><li>Kuchenprozess</li><li>Vernetzter Blockprozess</li><li>Prozesspfeile</li><li>Kreis-Akzent-Zeitleiste</li><li>Kreisprozess</li><li>Unterschrittprozess</li><li>Phasenweiser Prozess</li><li>Zufälliger Ergebnisprozess</li><li>Kreispfeilprozess</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Segmentierter Zyklus</li><li>Sechseck-Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Tabellenhierarchie</li><li>Architekturlayout</li></ul> |
|  `Relationship`  |  <ul><li>Gleichgewicht</li><li>Trichter</li><li>Gang</li><li>Plus und Minus</li><li>Pfeilband</li><li>Gegengewichtspfeile</li><li>Gegenpfeile</li><li>Verschachteltes Ziel</li><li>Grundlegendes Ziel</li><li>Einfacher Kuchen</li><li>Grundlegendes Venn</li><li>Gestapeltes Venn</li><li>Verbundener Ring</li></ul> |  <ul><li>Kreisbeziehung</li><li>Gegensätzliche Ideen</li><li>Gleichung</li><li>Vertikale Gleichung</li><li>Lineares Venn</li></ul> |
|  `Matrix`  |  <ul><li>Grundmatrix</li><li>Mit dem Titel Matrix</li><li>Gittermatrix</li><li>Zyklusmatrix</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Segmentierte Pyramide</li></ul> |

## Vergleich des SmartArt-Renderings in Aspose.Words und Microsoft

Die folgende Tabelle zeigt Beispielbilder von Aspose.Words Cold Rendering einiger Standardlayouts im Vergleich zur Microsoft Word-Ausgabe:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="Circular_Bending_Process_Aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="Circular_Bending_Process_Word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
