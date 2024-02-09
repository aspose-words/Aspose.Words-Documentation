---
title: Zwischen Maßeinheiten umrechnen
second_title: Aspose.Words für Python via .NET
articleTitle: Zwischen Maßeinheiten umrechnen
linktitle: Zwischen Maßeinheiten umrechnen
description: "Aspose.Words für Python via .NET kann Ihnen bei der Umrechnung zwischen Maßeinheiten helfen, zum Beispiel Zoll in Punkt und Punkt in Zoll, Pixel in Punkt, Punkt in Pixel."
type: docs
weight: 20
url: /de/python-net/convert-between-measurement-units/
---

Die meisten im Aspose.Words API bereitgestellten Objekteigenschaften, die bestimmte Maße darstellen, z. B. Breite oder Höhe, Ränder und verschiedene Abstände, akzeptieren Werte in Punkten, wobei 1 Zoll 72 Punkten entspricht. Manchmal ist dies nicht praktisch und Punkte müssen in andere Einheiten umgerechnet werden.

Aspose.Words stellt die [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/)-Klasse bereit, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von Zoll, Pixel und Millimeter in Punkte, von Punkten in Zoll und Pixel sowie die Konvertierung von Pixeln von einer Auflösung in eine andere. Die Konvertierung von Pixeln in Punkte und umgekehrt kann bei einer Auflösung von 96 dpi (Punkte pro Zoll) oder einer bestimmten dpi-Auflösung durchgeführt werden.

Die [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/)-Klasse ist besonders nützlich beim Festlegen verschiedener Seiteneigenschaften, da beispielsweise Zoll häufigere Maßeinheiten als Punkte sind.

Das folgende Codebeispiel zeigt, wie Seiteneigenschaften in Zoll angegeben werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
