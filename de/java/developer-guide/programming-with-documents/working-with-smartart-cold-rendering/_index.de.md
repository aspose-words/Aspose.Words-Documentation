---
title: Arbeiten mit Smart Kunst Kalte Rendering in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Smart Art Kalte Rendering
linktitle: Arbeiten mit Smart Art Kalte Rendering
type: docs
description: "Aspose.Words für Java führt Smart aus Art Cold Rendering, was bedeutet, dass es SmartArt-Objekte herausgibt und macht, wenn die vorveröffentlichte SmartArt-Zeichnung fehlt oder falsch ist."
weight: 330
url: /de/java/working-with-smartart-cold-rendering/
---

SmartArt Grafiken werden verwendet, um schnell und einfach eine visuelle Darstellung von Informationen zu erstellen. Sie wählen einfach aus einer großen Anzahl von Layouts, die am besten zu Ihrer Situation passen. Diese einfache Bedienung macht SmartArt Grafiken für einige Zwecke sehr beliebt.

Microsoft Word erzeugt und speichert die vorverbreitete Zeichnung zusammen mit der `SmartArt` Objekt. In den meisten Fällen wird die vorverbreitete Zeichnung durch Aspose.Words und keine zusätzlichen Aktionen erforderlich sind. Wird das Dokument jedoch durch andere Anwendungen gespeichert, kann die vorveröffentlichte SmartArt-Zeichnung fehlen oder falsch sein. In diesem Fall `SmartArt` Objekt selbst sollte ausgelegt und mit Aspose.Words. Wir nennen diesen Prozess `SmartArt` Cold Rendering.

## Smart nutzen Art Kalte Rendering

Aspose.Words ermöglicht es Ihnen, eine vorverzerrte Zeichnung zu verwenden oder kaltes Rendern durchzuführen:

* Ist eine vorverbreitete Zeichnung verfügbar, Aspose.Words verwendet es, um die `SmartArt` Objekt.
* Wenn eine vorverbreitete Zeichnung fehlt, Aspose.Words implizit führt kaltes Rendering, um die `SmartArt` Objekt.
* Ist eine vorerkannte Zeichnung vorhanden, aber falsch, ist es erforderlich, SmartArt-Kälte-Rendering explizit durch Aufruf durchzuführen [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) Methode.

Das folgende Codebeispiel zeigt, wie man Zeichnungen für alle Diagramme im Dokument aktualisiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Unterstützung für Standard SmartArt Layouts

Derzeit nur eine begrenzte Anzahl von Standard Microsoft Word SmartArt Layouts werden unterstützt. Auch werden einige dieser Layouts teilweise unterstützt, was bedeutet, dass signifikante Knoten und Formen des Diagramms dargestellt werden, aber es kann Unterschiede zwischen Microsoft Word und Aspose.Words Diagrammlayout.

Die folgende Tabelle enthält die vollständig und teilweise unterstützten Layouts:

|  Smart Art Layouts Group |  Voll unterstützte Layouts |  Teilweise unterstützte Layouts |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Grundbausteine</li><li>Ändern von Hexagonen</li><li>Vertikale Bulletliste</li><li>Liste der vertikalen Boxen</li><li>Änderung der Breitenliste</li><li>horizontale Bullenliste</li><li>GroupListe</li><li>Vertikale Blockliste</li><li>Vertical Chevron List</li><li>Liste der Pfeile</li><li>Trapezoid-Liste</li><li>Tabelle</li><li>Liste der Pyramiden</li><li>Zielliste</li></ul> |  <ul><li>Auflistung</li><li>Vertikale Klammerliste</li><li>Liste</li><li>Gestapelte Liste</li><li>Vertikale Genauigkeitsliste</li><li>Vertikale Kreisliste</li></ul> |
|  `Process`  |  <ul><li>Basisverfahren</li><li>Schneller Prozess</li><li>Kontinuierlicher Blockprozess</li><li>Erhöhung des Arrow-Prozesses</li><li>Konvergieren von Text</li><li>Einfache Timeline</li><li>Basic Chevron Process</li><li>Chevron Accent Prozess</li><li>Geschlossener Chevron-Prozess</li><li>Chevron Liste</li><li>Vertikaler Prozess</li><li>Staggered Process</li><li>Prozessliste</li><li>Basic Bending Prozess</li><li>Wiederholen des Biegeprozesses</li><li>Detailliertes Verfahren</li><li>Aufwärts Pfeil</li><li>Prozess löschen</li><li>Runder Biegeprozess</li></ul> |  <ul><li>Schritt für Schritt</li><li>Schritt für Schritt</li><li>Wechselstrom</li><li>zunehmender Kreisprozess</li><li>Verfahren</li><li>Verbundener Blockprozess</li><li>Prozesspfeile</li><li>Kreis Accent Timeline</li><li>Kreisprozess</li><li>Subschritt-Prozess</li><li>Phased-Prozess</li><li>Zufällig für den Ergebnisprozess</li><li>Kreis Pfeilprozess</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Segmentierter Zyklus</li><li>Sechskant-Radius</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarchie im Überblick</li><li>Architektur Layout</li></ul> |
|  `Relationship`  |  <ul><li>Saldo</li><li>Pilze</li><li>Getriebe</li><li>Plus und Minus</li><li>Arrow Ribbon</li><li>Gegengewicht Pfeile</li><li>Arrows freisetzen</li><li>Eingebettetes Ziel</li><li>Grundziel</li><li>Grundstück</li><li>Grundlegende Venen</li><li>Gestapelte Venn</li><li>Interconnected Ring</li></ul> |  <ul><li>Kreis Beziehung</li><li>Unglaubliche Ideen</li><li>Gleichung</li><li>Vertikale Gleichung</li><li>Lineare Venen</li></ul> |
|  `Matrix`  |  <ul><li>Grundlegende Matrix</li><li>Titel Matrix</li><li>Grid Matrix</li><li>Rad-Matrix</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Segmentierte Pyramide</li></ul> |

## Vergleich von SmartArt Rendering in Aspose.Words und Microsoft

Die folgende Tabelle zeigt Beispielbilder von Aspose.Words kalt Rendering einiger Standard-Layouts im Vergleich zu Microsoft Word Ausgabe:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
