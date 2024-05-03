---
title: Umrechnen zwischen Messeinheiten in Java
second_title: Aspose.Words für Java
articleTitle: Umrechnen zwischen Messeinheiten
linktitle: Umrechnen zwischen Messeinheiten
description: "Aspose.Words für Java kann Ihnen helfen, wie man zwischen Messeinheiten umwandelt, z.B. Inches zu Punkten und Punkten zu Inches, Pixel zu Punkten, Punkten zu Pixeln."
type: docs
weight: 20
url: /de/java/convert-between-measurement-units/
---

Die meisten der in der Aspose.Words API die einige Messungen, wie Breite oder Höhe, Ränder und verschiedene Abstände darstellen, akzeptieren Werte in Punkten, wobei 1 Zoll 72 Punkte entspricht. Manchmal ist dies nicht bequem und Punkte müssen in andere Einheiten umgewandelt werden.

Aspose.Words bietet [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) Klasse, die Hilfefunktionen bietet, um zwischen verschiedenen Messeinheiten umzuwandeln. Es ermöglicht die Umwandlung von Inches, Pixeln und Millimetern zu Punkten, Punkten zu Inches und Pixeln und die Umwandlung von Pixeln von einer Auflösung in eine andere. Die Umwandlung von Pixeln zu Punkten und umgekehrt kann bei 96 dpi (Punkte pro Zoll) Auflösungen oder vorgegebener dpi-Auflösung durchgeführt werden.

Die **ConvertUtil** Eine Klasse ist besonders nützlich bei der Einstellung verschiedener Seiteneigenschaften, da z.B. Inches häufigere Messeinheiten sind als Punkte.

Das folgende Codebeispiel zeigt, wie man Seiteneigenschaften in Zoll angibt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
