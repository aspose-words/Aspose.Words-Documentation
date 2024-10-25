---
title: Konvertieren Sie ein Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Ein Dokument konvertieren
linktitle: Ein Dokument konvertieren
type: docs
description: "Konvertieren Sie Dokumente einfach mit C++ von einem Format in ein anderes. Sie können mit allen gängigen Formaten wie Microsoft Word -Formaten wie DOCX oder DOC, OpenDocument-Formaten wie ODT oder OTT, Webformaten wie HTML oder XHTML, Textformaten wie MarkDown oder TXT und anderen arbeiten."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /de/cpp/convert-a-document/
---

Die Fähigkeit, Dokumente einfach und zuverlässig von einem Format in ein anderes zu konvertieren, ist einer der Hauptfunktionsbereiche von Aspose.Words. Eine solche Konvertierung ist nichts anderes als eine Kombination aus Lade- und Speichervorgängen.

## Was ist Dokumentkonvertierung {#what-is-document-conversion}

Fast jede Aufgabe, die Sie mit Aspose.Words ausführen möchten, umfasst das Laden oder Speichern eines Dokuments in einem bestimmten Format. Wie in den vorherigen Abschnitten erwähnt, gibt die [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)-Aufzählung alle von Aspose.Words unterstützten Formate *load* oder *import* an, und die [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)-Aufzählung gibt alle von Aspose.Words unterstützten Formate *save* oder *export* an. Somit kann Aspose.Words ein Dokument von jedem unterstützten Ladeformat in jedes unterstützte Speicherformat konvertieren. In der Regel erfordert eine solche Umrechnung mehrere Berechnungsschritte. Aus Benutzersicht ist die Konvertierung von einem Dokumentformat in ein anderes jedoch selbst sehr einfach und kann in nur zwei Schritten durchgeführt werden:

1. Laden Sie Ihr Dokument mit einem seiner Konstruktoren in ein [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) -Objekt.
1. Rufen Sie eine der [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters)-Methoden für das **Document**-Objekt auf und geben Sie das gewünschte Ausgabeformat an.

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können die Konvertierungsfunktion ausprobieren, indem Sie unsere verwenden [Kostenloser Online Konverter](https://products.aspose.app/words/conversion) Werkzeug.

{{% /alert %}}

## Beliebte Konvertierungen {#popular-conversions}

Der aktuelle Abschnitt beschreibt gängige Konvertierungen sowie Ideen zum Arbeiten mit einigen Formatkombinationen beim Laden und Speichern. Anhand der Beispiele in diesem Abschnitt können Sie verstehen, dass der Konvertierungsprozess selbst ziemlich universell ist und es keinen Sinn macht, alle möglichen Optionen zu beschreiben, da es aufgrund der großen Anzahl von Optionen mehrere hundert davon gibt [unterstützte Formate von Aspose.Words für C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Bitte beachten Sie, dass unten die beliebtesten Konvertierungskombinationen aufgeführt sind und nicht jede Kombination mit der bestimmten Seite verknüpft ist. Dies ist der Fall, weil unsere Artikel nicht für jedes Konvertierungspaar Beispiele enthalten - fast alle Konvertierungen sind ziemlich ähnlich. Stellen Sie dies sicher, indem Sie die Artikel im aktuellen Abschnitt lesen.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Wort in PDF umwandeln</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOC in PDF umwandeln</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCX in PDF umwandeln</a></li>
				<li>und andere</li>
			</ul>
		<h2>Bild in PDF umwandeln</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">JPG in PDF umwandeln</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">TIFF in PDF umwandeln</a></li>
				<li>und andere</li>
			</ul>
		<h2>Webformate in PDF konvertieren</h2>
			<ul>
				<li>Markdown in PDF umwandeln</li>
				<li>HTML in PDF umwandeln</li>
				<li>MHT (MHTML) in PDF umwandeln</li>
				<li>und andere</li>
			</ul>
		<h2>Andere Formate in PDF konvertieren</h2>
			<ul>
				<li>RTF in PDF umwandeln</li>
				<li>ODT in PDF umwandeln</li>
				<li>TXT in PDF umwandeln</li>
				<li>Mobi in PDF umwandeln</li>
				<li>und andere</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Konvertieren eines Dokuments in ein Bild</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">DOCX in JPG umwandeln</a></li>
				<li>DOC in PNG umwandeln</li>
				<li>und andere</li>
			</ul>
		<h2>Konvertieren eines Dokuments in Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Konvertieren eines Dokuments in Markdown</a></li>
				<li>HTML in Markdown umwandeln</li>
				<li>und andere</li>
			</ul>
		<h2>Konvertieren eines Dokuments in HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Wort in HTML umwandeln</a></li>
				<li>Markdown in HTML umwandeln</li>
				<li>Mobi in EPUB umwandeln</li>
				<li>und andere</li>
			</ul>
		<h2>Andere Beispiele</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Konvertieren Sie ein Dokument in MHTML und senden Sie es per E-Mail</a></li>
				<li>DOCX in DOC umwandeln</li>
				<li>HTML in Wort umwandeln</li>
				<li>und andere</li>
			</ul>
	</div>
</div>
