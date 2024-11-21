---
title: Was ist ein Seitenlayout in C++
second_title: Aspose.Words für C++
articleTitle: Was ist ein Seitenlayout
linktitle: Was ist ein Seitenlayout
description: "Lassen Sie uns herausfinden, was ein Seitenlayout ist. Ein Seitenlayout beschreibt die Geometrie des Inhalts eines Dokuments."
type: docs
weight: 5
url: /de/cpp/what-is-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Eine **document page layout** ist eine Datenstruktur, die beschreibt, wo sich ein bestimmtes Objekt auf Seiten für alle Dokumentobjekte befindet. Da Objekte Eigenschaften haben, die sich auf ihr Erscheinungsbild auswirken, z. B. Schriftgröße, Schattierung oder Zeichnungseffekte, müssen Sie außerdem nicht nur wissen, wo sich das Objekt befindet, sondern auch, welche Bereiche der Seite es einnimmt und ob es auf mehrere Seiten angewendet wird, damit andere Objekte nicht dieselben Bereiche überlappen.

## Wofür ist ein Seitenlayout?

Aspose.Words implementiert intern Seitenlayoutfunktionen, die es ihm ermöglichen, alle festen Seitenformate wie PDF, XPS und verschiedene Bildformate zu erstellen. Ohne Seitenlayout wären die in der Dokumentdatei mit fester Seite gespeicherten Informationen nicht verfügbar und alle diese Formate würden nicht unterstützt.

Die Beziehung zwischen einem Dokument und einem Seitenlayout ist recht einfach. Während ein Dokument den Inhalt beschreibt, beschreibt das entsprechende Seitenlayout die Geometrie dieses Inhalts. Beachten Sie, dass ein Seitenlayout ohne ein Dokument nicht existieren kann, da es keinen Inhalt für die Berechnung der Geometrie geben würde, aber ein Dokument kann ohne ein Seitenlayout existieren. Wenn beispielsweise ein DOCX-Dokument in ein RTF-Dokument konvertiert wird, ist es normalerweise nicht erforderlich, die Geometrie zu kennen, da sie in keinem Format gespeichert wird.

## Siehe auch

* [Erstellen eines Seitenlayouts](/words/cpp/creating-a-page-layout/)
* [Speichern eines Dokuments im Festseitenformat](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Layoutoptionen angeben](/words/cpp/specify-layout-options/)
