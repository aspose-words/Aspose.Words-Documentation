---
title: Konvertieren Sie zwischen Maßeinheiten in C#
second_title: Aspose.Words für .NET
articleTitle: Zwischen Maßeinheiten umrechnen
linktitle: Zwischen Maßeinheiten umrechnen
description: "Aspose.Words für .NET kann Ihnen bei der Umrechnung zwischen Maßeinheiten helfen, z. B. Zoll in Punkte und Punkte in Zoll, Pixel in Punkte, Punkte in Pixel mithilfe von C#."
type: docs
weight: 20
url: /de/net/convert-between-measurement-units/
---

Die meisten im Aspose.Words API bereitgestellten Objekteigenschaften, die bestimmte Maße darstellen, z. B. Breite oder Höhe, Ränder und verschiedene Abstände, akzeptieren Werte in Punkten, wobei 1 Zoll 72 Punkten entspricht. Manchmal ist dies nicht praktisch und Punkte müssen in andere Einheiten umgerechnet werden.

Aspose.Words stellt die [ConvertUtil](https://reference.aspose.com/words/de/net/aspose.words/convertutil/)-Klasse bereit, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von:

- Zoll, Pixel und Millimeter in Punkte
- zeigt auf Zoll und Pixel
- Pixel von einer Auflösung zur anderen

Die Konvertierung von Pixeln in Punkte und umgekehrt kann bei einer Auflösung von 96 dpi (Punkte pro Zoll) oder einer bestimmten dpi-Auflösung durchgeführt werden.

Die **ConvertUtil**-Klasse ist besonders nützlich beim Festlegen verschiedener Seiteneigenschaften, da beispielsweise Zoll häufigere Maßeinheiten als Punkte sind.

Das folgende Codebeispiel zeigt, wie Seiteneigenschaften in Zoll angegeben werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
