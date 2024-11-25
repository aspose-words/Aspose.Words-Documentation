---
title: Rendern in Java
second_title: Aspose.Words für Java
articleTitle: Rendering
linktitle: Rendering
description: "Verwenden Sie die Renderfunktion Aspose.Words für Java, um ein Flow-Layout-Dokument in Seiten zu formatieren und ein solches Dokument oder ausgewählte Seiten in ein anderes Dokument zu konvertieren (PDF, HTML, XPS, usw.) oder Bild (TIFF, PNG, SVG, usw.) formate zum Anzeigen, Weiterkonvertieren oder Drucken."
type: docs
weight: 30
url: /de/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Wir verwenden den Begriff "Rendern" in Aspose.Words, um den Prozess der Konvertierung eines Dokuments in ein Dateiformat oder ein Medium zu beschreiben, das paginiert ist oder das Konzept von Seiten hat. Wir sprechen über das Rendern eines Dokuments in Seiten. Das folgende Diagramm zeigt, was in Aspose.Words gerendert wird.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Mit den Renderfunktionen von Aspose.Words können Sie Folgendes ausführen:

- Konvertieren Sie ein Dokument oder ausgewählte Seiten in PDF, XPS, HTML, XAML, PostScript, und PCL Formate.
- Konvertieren Sie ein Dokument in ein mehrseitiges TIFF -Dokument oder konvertieren Sie eine beliebige Seite in ein Rasterbild und speichern Sie es als BMP, PNG oder JPEG.
- Konvertieren Sie eine Dokumentseite in ein skalierbares Vektorgrafikbild (SVG) oder konvertieren Sie es in ein Vektorbild und speichern Sie es als EMF.
- Rendern (zeichnen) Sie eine Dokumentseite in einer bestimmten Größe oder Skalierung auf dem `Graphics`-Objekt, um Miniaturansichten, Bilder in voller Größe oder skalierte Bilder von Dokumentseiten zu erstellen.
- Rendern Sie ein [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)-Objekt getrennt vom Dokument in ein beliebiges Bildformat oder in ein `Graphics`-Objekt.
- Zeigen Sie eine beliebige Seite eines Dokuments in einer Swing-Komponente an.
- Drucken oder zeigen Sie Dokumentseiten in der Vorschau mit der standardmäßigen Java-Druckinfrastruktur an.

## Dokumentenformate mit Fließlayout oder festem Layout {#flow-layout-or-fixed-layout-document-formats}

Die meisten Dokumentformate, die in Aspose.Words geladen werden können, werden als "Flow-Layout" -Formate bezeichnet. Flow-Layout-Formate umfassen DOC, OOXML, RTF, ODT, und HTML. Dokumente in diesen Formaten bestehen aus verschiedenen Elementen wie Absätzen, Tabellen, Kopf- und Fußzeilen, Bildern, Feldern und deren Formatierung, z. B. Fett, kursiv, Schriftart, Größe. Die Flow-Layout-Formate enthalten jedoch keine Informationen über die Position, an der jeder einzelne Absatz oder jedes einzelne Zeichen auf einer Seite angezeigt wird.

Im Gegensatz dazu enthalten die Formate "festes Layout" (auch als "feste Seite" bezeichnet) wie PDF und XPS genaue Positionsinformationen für alle Dokumentelemente. Diese Formate bewahren das ursprüngliche Erscheinungsbild eines Dokuments, nachdem es in Seiten aufgeteilt wurde, und bieten eine höhere Genauigkeit der angezeigten Informationen.

## Seitenlayout-Engine {#page-layout-engine}

Aspose.Words implementiert eine eigene Seitenlayout-Engine, die ein Flow-Layout-Dokument in Seiten formatiert. Aspose.Words implementiert eine Reihe von Renderern, die entweder ein Dokument mit festem Layout wie PDF oder XPS erstellen oder Seiten in ein anderes Medium wie Drucken oder Zeichnen ausgeben. Beachten Sie, dass der Export auch für HTML und XAML paginiert werden kann. Dies bedeutet, dass ein Dokument als reguläres HTML oder XAML (Flow-Layout-Format) oder als "paginierte" HTML und XAML mit absoluten Positionen von Elementen gespeichert werden kann.

Der wichtigste Vorteil der Verwendung der Aspose.Words -Seitenlayout-Engine besteht darin, dass sie die Funktionsweise der Seitenlayout-Engine von Microsoft Word nachahmt. Wenn Sie also ein Microsoft Word -Dokument in PDF, XPS konvertieren oder es mit Aspose.Words drucken, wird die Ausgabe fast genau so angezeigt, als ob sie mit Microsoft Word erstellt worden wäre. Beachten Sie, dass Aspose.Words Microsoft Word nicht verwendet.
