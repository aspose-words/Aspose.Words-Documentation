---
title: Rendern in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Rendern
linktitle: Rendern
description: "Verwenden Sie die Rendering-Funktion Aspose.Words für Python via .NET, um ein Flow-Layout-Dokument in Seiten zu formatieren und ein solches Dokument oder ausgewählte Seiten in andere Dokumentformate (PDF, HTML, XPS usw.) oder Bildformate (TIFF, PNG, SVG usw.) zu konvertieren Anzeigen, weitere Konvertierungen oder Drucken."
type: docs
weight: 20
url: /de/python-net/rendering/
---

Wir verwenden den Begriff "Rendering" in Aspose.Words, um den Prozess der Konvertierung eines Dokuments in ein Dateiformat oder ein Medium zu beschreiben, das paginiert ist oder das Konzept von Seiten hat. Wir sprechen über die Darstellung eines Dokuments in Seiten. Das folgende Diagramm zeigt, was Rendering in Aspose.Words ist.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Mit den Rendering-Funktionen von Aspose.Words können Sie Folgendes ausführen:

- Konvertieren Sie ein Dokument oder ausgewählte Seiten in die Formate PDF, XPS, HTML, XAML, PostScript und PCL.
- Konvertieren Sie ein Dokument in ein mehrseitiges TIFF-Dokument oder konvertieren Sie eine beliebige Seite in ein Rasterbild und speichern Sie es als BMP, PNG oder JPEG.
- Konvertieren Sie eine Dokumentseite in ein Scalable Vector Graphics-Bild (SVG) oder konvertieren Sie sie in ein Vektorbild und speichern Sie es als EMF.
- Rendern Sie ein [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Objekt getrennt vom Dokument in ein beliebiges Bildformat.

## Dokumentformate mit Flow-Layout oder festem Layout

Die meisten Dokumentformate, die in Aspose.Words geladen werden können, werden als "Flow-Layout"-Formate bezeichnet. Zu den Flow-Layout-Formaten gehören DOC, OOXML, RTF, ODT und HTML. Dokumente in diesen Formaten bestehen aus verschiedenen Elementen wie Absätzen, Tabellen, Kopf- und Fußzeilen, Bildern, Feldern und deren Formatierung, zum Beispiel Fett, Kursiv, Schriftart, Größe. Die Flow-Layout-Formate enthalten jedoch keine Informationen über die Position, an der jeder einzelne Absatz oder jedes einzelne Zeichen auf einer Seite angezeigt wird.

Im Gegensatz dazu enthalten die "Fixed-Layout"-Formate (auch bekannt als "Fixed Page") wie PDF und XPS genaue Positionierungsinformationen für alle Dokumentelemente. Diese Formate bewahren das ursprüngliche Erscheinungsbild eines Dokuments, nachdem es in Seiten aufgeteilt wurde, und sorgen so für eine höhere Genauigkeit der angezeigten Informationen.

## Seitenlayout-Engine

Aspose.Words implementiert eine eigene Seitenlayout-Engine, die ein Flow-Layout-Dokument in Seiten formatiert. Aspose.Words implementiert eine Reihe von Renderern, die entweder ein Dokument mit festem Layout wie PDF oder XPS erstellen oder Seiten in ein anderes Medium wie Drucken oder Zeichnen ausgeben. Beachten Sie, dass der Export auch für HTML und XAML paginiert werden kann. Dies bedeutet, dass ein Dokument als normales HTML oder XAML (Flow-Layout-Format) oder als "paginiertes" HTML und XAML mit absoluten Positionen von Elementen gespeichert werden kann.

Der wichtigste Vorteil der Verwendung der Aspose.Words-Seitenlayout-Engine besteht darin, dass sie die Funktionsweise der Seitenlayout-Engine von Microsoft Word nachahmt. Wenn Sie also ein Microsoft Word-Dokument in PDF oder XPS konvertieren oder es mit Aspose.Words drucken, sieht die Ausgabe fast genauso aus, als ob sie mit Microsoft Word erstellt worden wäre. Beachten Sie, dass Aspose.Words Microsoft Word nicht verwendet.
