---
title: OpenType-Funktionen in Java aktivieren
second_title: Aspose.Words für Java
articleTitle: OpenType-Funktionen aktivieren
linktitle: OpenType-Funktionen aktivieren
description: "Erweiterte Typografiefunktionen in Aspose.Words für Java."
type: docs
weight: 25
url: /de/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType ist ein Schriftformat, das eingeführt wurde, um internationale Sprachen und Schriftsysteme im Vergleich zu PostScript und TrueType besser zu unterstützen. Die Layout-Features von OpenType werden allgemein als OpenType-Features bezeichnet. Aspose.Words.Gestaltung.Das HarfBuzz-Paket bietet Unterstützung für OpenType -Funktionen in Aspose.Words mithilfe der `HarfBuzz`-Textformungs-Engine.

Aspose.Words kann extern bereitgestellte Textformer-Objekte verwenden. Ein Text Shaper repräsentiert eine Schriftart und berechnet Shaping-Informationen für einen Text. Ein Dokument bezieht sich normalerweise auf mehrere Schriftarten, daher ist eine Textformerfabrik erforderlich. Dieses Paket enthält eine Implementierung einer Textformerfabrik, die von Aspose.Words verwendet wird.Layout.LayoutOptions.TextShaperFactory Eigenschaft.

{{% alert color="primary" %}}

Die Textformung wird nur beim Export in die Formate PDF oder XPS durchgeführt.

{{% /alert %}}

In einer typischen Anwendung wird eine einzelne Instanz einer Text Shaper Factory von allen Dokumentinstanzen gemeinsam genutzt. Immer wenn ein Textformer erstellt wird, wird auf eine Schriftartdatei zugegriffen. Das Parsen einer Schriftartdatei ist ein teurer Vorgang, daher wird das Zwischenspeichern empfohlen. Aspose.Words implementiert die BasicTextShaperCache -Klasse, die die Implementierung der Text Shaper Factory umschließt und von der umschlossenen Factory zurückgegebene Text Shaper-Instanzen zwischenspeichert.

Das folgende Codebeispiel zeigt Ihnen, wie Sie die Unterstützung von OpenType-Funktionen aktivieren.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
