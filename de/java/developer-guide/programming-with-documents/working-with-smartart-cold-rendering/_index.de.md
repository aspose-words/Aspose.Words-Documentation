---
title: Arbeiten mit SmartArt Kaltrendern in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit SmartArt Kaltrendern
linktitle: Arbeiten mit SmartArt Kaltrendern
type: docs
description: "Aspose.Words für Java führt SmartArt Cold Rendering durch, was bedeutet, dass SmartArt Objekte angelegt und gerendert werden, wenn die vorgerenderte SmartArt Zeichnung fehlt oder falsch ist."
weight: 330
url: /de/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt Grafiken werden verwendet, um schnell und einfach eine visuelle Darstellung von Informationen zu erstellen. Sie wählen einfach aus einer Vielzahl von Layouts, die am besten zu Ihrer Situation passen. Diese Benutzerfreundlichkeit macht SmartArt -Grafiken für einige Zwecke sehr beliebt.

Microsoft Word generiert und speichert die vorgerenderte Zeichnung zusammen mit dem `SmartArt`-Objekt. In den meisten Fällen wird die vorgerenderte Zeichnung von Aspose.Words gut gerendert und es sind keine zusätzlichen Aktionen erforderlich. Wenn das Dokument jedoch von anderen Anwendungen gespeichert wird, fehlt möglicherweise die vorgerenderte SmartArt-Zeichnung oder ist falsch. In diesem Fall sollte das `SmartArt` -Objekt selbst mit Aspose.Words angelegt und gerendert werden. Wir nennen diesen Prozess das `SmartArt` kalte Rendering.

## SmartArt kaltes Rendering verwenden

Aspose.Words ermöglicht es Ihnen, eine vorgerenderte Zeichnung zu verwenden oder kaltes Rendern durchzuführen:

* Wenn eine vorgerenderte Zeichnung verfügbar ist, verwendet Aspose.Words diese zum Rendern des `SmartArt`-Objekts.
* Wenn eine vorgerenderte Zeichnung fehlt, führt Aspose.Words implizit ein Kaltrendern durch, um das `SmartArt`-Objekt zu rendern.
* Wenn eine vorgerenderte Zeichnung vorhanden, aber falsch ist, muss SmartArt explizit kalt gerendert werden, indem die Methode [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) aufgerufen wird.

Das folgende Codebeispiel zeigt, wie Zeichnungen für alle Diagramme im Dokument aktualisiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Unterstützung für Standard-SmartArt-Layouts

Derzeit wird nur eine begrenzte Anzahl von Standardlayouts Microsoft Word SmartArt unterstützt. Außerdem werden einige dieser Layouts teilweise unterstützt, was bedeutet, dass signifikante Knoten und Formen des Diagramms gerendert werden, aber es kann Unterschiede zwischen dem Diagrammlayout Microsoft Word und Aspose.Words geben.

Die folgende Tabelle listet die vollständig und teilweise unterstützten Layouts auf:

| SmartArt Layouts Gruppe | Vollständig unterstützte Layouts | Teilweise unterstützte Layouts |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Grundlegende Blockliste</li><li>Abwechselnde Sechsecke</li><li>Vertikale Aufzählungsliste</li><li>Vertikale Boxliste</li><li>Liste mit unterschiedlichen Breiten</li><li>Horizontale Aufzählungsliste</li><li>Gruppenliste</li><li>Vertikale Blockliste</li><li>Vertikale Chevron-Liste</li><li>Liste mit vertikalen Pfeilen</li><li>Trapezförmige Liste</li><li>Tabellenliste</li><li>Pyramidenliste</li><li>Zielliste</li></ul> | <ul><li>Linierte Liste</li><li>Liste der vertikalen Klammern</li><li>Registerkartenliste</li><li>Gestapelte Liste</li><li>Vertikale Akzentliste</li><li>Vertikale Kreisliste</li></ul> |
| `Process` | <ul><li>Grundlegender Prozess</li><li>Akzent-Prozess</li><li>Kontinuierlicher Blockprozess</li><li>Zunehmender Pfeilprozess</li><li>Konvergierender Text</li><li>Grundlegende Zeitleiste</li><li>Grundlegender Chevron-Prozess</li><li>Chevron-Akzent-Prozess</li><li>Geschlossener Chevron-Prozess</li><li>Chevron-Liste</li><li>Vertikaler Prozess</li><li>Gestaffelter Prozess</li><li>Prozessliste</li><li>Grundlegender Biegeprozess</li><li>Wiederholender Biegevorgang</li><li>Detaillierter Prozess</li><li>Pfeil nach oben</li><li>Absteigender Prozess</li><li>Rundbiegeverfahren</li></ul> | <ul><li>Prozess beschleunigen</li><li>Step-Down-Prozess</li><li>Wechselnde Strömung</li><li>Zunehmender Kreisprozess</li><li>Pie Prozess</li><li>Verbundener Blockprozess</li><li>Prozesspfeile</li><li>Zeitleiste mit Kreisakzenten</li><li>Kreisprozess</li><li>Unterschritt-Prozess</li><li>Stufenweiser Prozess</li><li>Zufälliger Ergebnisprozess</li><li>Kreispfeil-Prozess</li></ul> |
| `Cycle` |  | <ul><li>Segmentierter Zyklus</li><li>Sechskant Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Tabellenhierarchie</li><li>Architektur-Layout</li></ul> |
| `Relationship` | <ul><li>Gleichgewicht</li><li>Trichter</li><li>Getriebe</li><li>Plus und Minus</li><li>Pfeilband</li><li>Gegengewichtspfeile</li><li>Gegnerische Pfeile</li><li>Verschachteltes Ziel</li><li>Grundlegendes Ziel</li><li>Einfach Pie</li><li>Basisches Venn</li><li>Gestapeltes Venn</li><li>Miteinander verbundener Ring</li></ul> | <ul><li>Kreisbeziehung</li><li>Gegensätzliche Ideen</li><li>Gleichung</li><li>Vertikale Gleichung</li><li>Lineares Venn</li></ul> |
| `Matrix` | <ul><li>Grundmatrix</li><li>Betitelte Matrix</li><li>Gittermatrix</li><li>Zyklusmatrix</li></ul> |  |
| `Pyramid` |  | <ul><li>Segmentierte Pyramide</li></ul> |

## Vergleich von SmartArt Rendering in Aspose.Words und Microsoft

Die folgende Tabelle zeigt Beispielbilder von Aspose.Words Kaltrendern einiger Standardlayouts im Vergleich zur Microsoft Word -Ausgabe:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
