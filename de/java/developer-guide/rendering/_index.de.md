---
title: Rendering in Java
second_title: Aspose.Words für Java
articleTitle: Rendering
linktitle: Rendering
description: "Verwendung Aspose.Words für Java das Feature zum Formatieren eines Flow-layout-Dokuments in Seiten und Konvertieren eines solchen Dokuments oder ausgewählter Seiten in ein anderes Dokument (PDF, HTML, XPS, etc.) oder Bildformate (TIFF, PNG, SVG, etc.) zum Betrachten, Weiterumwandeln oder Bedrucken."
type: docs
weight: 30
url: /de/java/rendering/
---

Wir verwenden den Begriff "Rendering" in Aspose.Words um den Prozess der Umwandlung eines Dokuments in ein Dateiformat oder ein Medium zu beschreiben, das paginiert ist oder das Konzept von Seiten hat. Wir sprechen von der Darstellung eines Dokuments in Seiten. Das folgende Diagramm zeigt, in welcher Rendering Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Die Rendering-Funktionen Aspose.Words Sie können folgendes ausführen:

- Konvertieren Sie ein Dokument oder ausgewählte Seiten in PDF, XPS, HTML, XAML, PostScript und PCL Formate.
- Konvertieren Sie ein Dokument in ein mehrseitiges TIFF-Dokument oder konvertieren Sie eine Seite in ein Rasterbild und speichern Sie es als BMP, PNG oder JPEG.
- Konvertieren Sie eine Dokumentseite in ein skalierbares Vektorgrafikbild (SVG) oder konvertieren Sie in ein Vektorbild und speichern Sie sie als EMF.
- Render (draw) eine Dokumentseite mit einer bestimmten Größe oder Skala auf der `Graphics` Objekt zum Erstellen von Miniaturansichten, Vollformat- oder Skalenbildern von Dokumentseiten.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Objekt separat vom Dokument zu jedem Bildformat oder zu einem `Graphics` Objekt.
- Zeige jede Seite eines Dokuments in einem Swing Component an.
- Drucken oder Vorschau Dokumentseiten mit dem Standard Java Druckinfrastruktur.

## Flow-layout oder Fixed-layout Dokumentenformate {#flow-layout-or-fixed-layout-document-formats}

Die meisten Dokumentformate, die in Aspose.Words sind als "flow-layout"-Formate bekannt. Flow-layout-Formate umfassen DOC, OOXML, RTF, ODT und HTML. Dokumente in diesen Formaten bestehen aus verschiedenen Elementen wie Absätzen, Tabellen, Kopfzeilen, Fußzeilen, Bildern, Feldern und deren Formatierung, zum Beispiel fett, italic, Schriftart, Größe. Die Flow-layout-Formate enthalten jedoch keine Informationen über die Position, in der jeder einzelne Absatz oder Zeichen auf einer Seite angezeigt wird.

Im Gegensatz dazu werden die Formate "fixed-layout" (auch "fixed page") wie PDF und XPS genaue Positionierungsinformationen für alle Belegelemente enthalten. Diese Formate bewahren das ursprüngliche Erscheinungsbild eines Dokuments, nachdem es in Seiten angelegt wurde, und bieten eine höhere Genauigkeit der angezeigten Informationen.

## Seite Layout Motor {#page-layout-engine}

Aspose.Words implementiert eine eigene Seitenlayout-Engine, die ein Flow-layout-Dokument in Seiten formatiert. Aspose.Words eine Reihe von Renderern implementiert, die entweder ein Festlayout-Dokument wie PDF oder XPS, oder Ausgabeseiten in ein anderes Medium wie Druck oder Zeichnung ausgeben. Beachten Sie, dass der Export auch für HTML und XAML paginiert werden kann. Dies bedeutet, dass ein Dokument als normales HTML oder XAML (flow-layout-Format) oder als "paginated" HTML und XAML gespeichert werden kann, die absolute Positionen von Elementen aufweisen.

Der wichtigste Vorteil der Verwendung Aspose.Words Seite Layout-Engine ist, dass es den Weg mihmt Microsoft Word’s Seite Layout-Engine funktioniert. Wenn Sie also ein Microsoft Word Dokument in PDF, XPS, oder mit Aspose.Words, die Ausgabe erscheint fast genau, als ob sie von Microsoft Word. Anmerkung: Aspose.Words nicht nutzen Microsoft Word.
