---
title: Umrechnung zwischen Maßeinheiten in C++
second_title: Aspose.Words für C++
articleTitle: Umrechnen zwischen Maßeinheiten
linktitle: Umrechnen zwischen Maßeinheiten
description: "Aspose.Words für C++ kann Ihnen bei der Konvertierung zwischen Maßeinheiten helfen, z. B. Zoll in Punkte und Punkte in Zoll, Pixel in Punkte, Punkte in Pixel."
type: docs
weight: 20
url: /de/cpp/convert-between-measurement-units/
---

Die meisten in Aspose.Words API bereitgestellten Objekteigenschaften, die eine Messung darstellen, z. B. Breite oder Höhe, Ränder und verschiedene Abstände, akzeptieren Werte in Punkten, wobei 1 Zoll 72 Punkten entspricht. Manchmal ist dies nicht bequem und Punkte müssen in andere Einheiten umgewandelt werden.

Aspose.Words stellt die Klasse [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) bereit, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von Zoll, Pixel und Millimeter in Punkte, Punkte in Zoll und Pixel und die Konvertierung von Pixeln von einer Auflösung in eine andere.Die Konvertierung von Pixeln in Punkte und umgekehrt kann mit einer Auflösung von 96 dpi (Punkte pro Zoll) oder einer angegebenen DPI-Auflösung durchgeführt werden.

Die Klasse **ConvertUtil** ist besonders nützlich beim Festlegen verschiedener Seiteneigenschaften, da beispielsweise Zoll häufigere Maßeinheiten als Punkte sind.

Das folgende Codebeispiel zeigt, wie Seiteneigenschaften in Zoll angegeben werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

