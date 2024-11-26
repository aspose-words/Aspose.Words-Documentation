---
title: Aktivieren Sie OpenType-Funktionen in C#
second_title: Aspose.Words für .NET
articleTitle: Aktivieren Sie OpenType-Funktionen
linktitle: Aktivieren Sie OpenType-Funktionen
description: "Erweiterte Typografiefunktionen mit C#."
type: docs
weight: 25
url: /de/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType ist ein Schriftformat, das eingeführt wurde, um im Vergleich zu PostScript und TrueType eine bessere Unterstützung für internationale Sprachen und Schriftsysteme zu bieten. Die Layoutfunktionen von OpenType werden allgemein als OpenType-Funktionen bezeichnet. Das Paket Aspose.Words.Shaping.HarfBuzz bietet Unterstützung für OpenType-Funktionen in Aspose.Words mithilfe der HarfBuzz-Textformungs-Engine.

Aspose.Words ist in der Lage, extern bereitgestellte Textformerobjekte zu verwenden. Ein Textformer stellt eine Schriftart dar und berechnet Forminformationen für einen Text. Ein Dokument bezieht sich normalerweise auf mehrere Schriftarten, daher ist eine Textformer-Fabrik erforderlich. Dieses Paket enthält eine Implementierung einer Textformer-Factory, die von der Eigenschaft Aspose.Words.Layout.LayoutOptions.TextShaperFactory verwendet wird.

{{% alert color="primary" %}}

Die Textformung wird nur beim Export in die Formate PDF oder XPS durchgeführt.

{{% /alert %}}

In einer typischen Anwendung wird eine einzelne Instanz einer Textformer-Factory von allen Dokumentinstanzen gemeinsam genutzt. Immer wenn ein Textformer erstellt wird, wird auf eine Schriftartendatei zugegriffen. Das Parsen einer Schriftartendatei ist ein kostspieliger Vorgang, daher wird die Zwischenspeicherung empfohlen. Aspose.Words implementiert die Klasse BasicTextShaperCache, die die Implementierung der Text-Shaper-Factory umschließt und von der umschlossenen Factory zurückgegebene Text-Shaper-Instanzen zwischenspeichert.

Das folgende Codebeispiel zeigt Ihnen, wie Sie die Unterstützung von OpenType-Funktionen aktivieren.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
