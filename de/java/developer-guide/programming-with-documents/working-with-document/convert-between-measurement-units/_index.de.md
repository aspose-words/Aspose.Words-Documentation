---
title: Umrechnung zwischen Maßeinheiten in Java
second_title: Aspose.Words für Java
articleTitle: Umrechnen zwischen Maßeinheiten
linktitle: Umrechnen zwischen Maßeinheiten
description: "Aspose.Words für Java kann Ihnen bei der Umrechnung zwischen Maßeinheiten helfen, z. B. Zoll in Punkte und Punkte in Zoll, Pixel in Punkte, Punkte in Pixel."
type: docs
weight: 20
url: /de/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Die meisten in Aspose.Words API bereitgestellten Objekteigenschaften, die eine Messung darstellen, z. B. Breite oder Höhe, Ränder und verschiedene Abstände, akzeptieren Werte in Punkten, wobei 1 Zoll 72 Punkten entspricht. Manchmal ist dies nicht bequem und Punkte müssen in andere Einheiten umgewandelt werden.

Aspose.Words stellt die Klasse [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) bereit, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von Zoll, Pixel und Millimeter in Punkte, Punkte in Zoll und Pixel und die Konvertierung von Pixeln von einer Auflösung in eine andere.Die Konvertierung von Pixeln in Punkte und umgekehrt kann mit einer Auflösung von 96 dpi (Punkte pro Zoll) oder einer angegebenen DPI-Auflösung durchgeführt werden.

Die Klasse **ConvertUtil** ist besonders nützlich beim Festlegen verschiedener Seiteneigenschaften, da beispielsweise Zoll häufigere Maßeinheiten als Punkte sind.

Das folgende Codebeispiel zeigt, wie Seiteneigenschaften in Zoll angegeben werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
