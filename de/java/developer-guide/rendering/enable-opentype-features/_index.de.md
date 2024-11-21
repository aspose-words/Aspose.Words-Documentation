---
title: OpenTyp Features aktivieren in Java
second_title: Aspose.Words für Java
articleTitle: OpenTyp Features aktivieren
linktitle: OpenTyp Features aktivieren
description: "Erweiterte Typografie-Funktionen in Aspose.Words für Java."
type: docs
weight: 25
url: /de/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType ist ein Schriftformat, das im Vergleich zu PostScript und TrueType eine bessere Unterstützung für internationale Sprachen und Schreibsysteme bietet. Die Layout-Features von OpenType sind häufig als OpenType-Features bekannt. Aspose.Words.Shaping.HarfBuzz Paket bietet Unterstützung für OpenType-Funktionen in Aspose.Words Verwendung von `HarfBuzz` Textformmaschine.

Aspose.Words ist in der Lage, Textformerobjekte extern zu verwenden. Ein Textformer stellt eine Schrift dar und berechnet die Formgebungsinformationen für einen Text. Ein Dokument bezieht sich typischerweise auf mehrere Schriftarten, so dass eine Textformerfabrik erforderlich ist. Dieses Paket enthält eine Implementierung einer Textformerfabrik, die von Aspose.Words.Layout.LayoutOptionen.TextShaperFactory Eigenschaft.

{{% alert color="primary" %}}

Textformung wird nur beim Export in PDF oder XPS Formate.

{{% /alert %}}

In einer typischen Anwendung wird eine einzelne Instanz einer Textformerfabrik unter allen Dokumenteninstanzen geteilt. Wenn ein Textformer erstellt wird, wird eine Schriftdatei aufgerufen. Das Parsing einer Schriftdatei ist eine teure Operation, so dass das Caching empfohlen wird. Aspose.Words Umsetzungen BasicTextShare Cache-Klasse, die Textformer-Fabrik-Implementierung und Cache Textformer Instanzen von der verpackten Fabrik zurückgegeben.

Das folgende Codebeispiel zeigt Ihnen, wie Sie die Unterstützung von OpenType Features aktivieren können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
