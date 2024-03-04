---
title: Konvertieren in das feste Seitenformat in C#
second_title: Aspose.Words für .NET
articleTitle: Konvertieren in das Fixed-Page-Format
linktitle: Konvertieren in das Fixed-Page-Format
description: "Speichern Sie Dokumente mit C# in den Formaten PDF, XPS, HTML, XAML, PostScript und PCL."
type: docs
weight: 10
url: /de/net/converting-to-fixed-page-format/
---

Aspose.Words implementiert eine eigene Seitenlayout-Engine. Bevor man sich mit den Spezifikationen befasst, lohnt es sich, das Dokument zunächst auf hoher Ebene zu besprechen. Wenn Benutzer über ein Dokument nachdenken, stellen sie sich normalerweise eine Reihe von Papierblättern vor, die Wörter, Bilder, Tabellen und Diagramme enthalten. Dokumente können unterschiedlicher Art sein, z. B. Text, Tabellenkalkulationen, Folien, CAD-Zeichnungen, Flussdiagramme, und daher grundsätzlich unterschiedliche Layouts aufweisen. Die meisten Anwendungen ermöglichen das Senden von Dokumenten an einen Drucker. Dies ist der Zeitpunkt, an dem ein Benutzer tatsächlich das endgültige beabsichtigte Erscheinungsbild des Dokuments sehen kann.

## Anzeigen eines Dokuments in verschiedenen Anwendungen

Verschiedene Anwendungen zum Anzeigen oder Veröffentlichen von Dokumenten ermöglichen es Benutzern, Dokumente bestimmter Formate zu öffnen (Adobe Acrobat, XPS Viewer) und manchmal zu bearbeiten (Adobe InDesign). Diese Anwendungen erzeugen typischerweise Dokumente im sogenannten "Fixed-Page"-Format. Ein solches Dokumentformat beschreibt genau, wo der Inhalt eines Dokuments auf jeder Seite platziert wird. Intern enthält das PDF- oder XPS-Format eine Beschreibung jeder Seite sowie Zeichenanweisungen, die das Layout des Inhalts auf der Seite festlegen. Dies ähnelt Bildformaten und beschreibt, wo der Inhalt entweder in Raster- oder Vektorform angezeigt wird.

Im Gegensatz dazu unterstützen einige Textbearbeitungsanwendungen die Anzeige der Seiten eines Dokuments nicht. Microsoft Notepad unterstützt beispielsweise nur sehr wenige Funktionen außer dem einfachen Anzeigen, Bearbeiten und Drucken von Text. Die wichtige Beobachtung hierbei ist, dass solche Anwendungen weder Seiten des Dokuments anzeigen noch einem Benutzer mitteilen können, wie viele davon gedruckt werden sollen, sondern lediglich die Anzeige des Dokumentinhalts ermöglichen. Das Dokument kann im Nur-Text-Format gespeichert und von vielen anderen Anwendungen geöffnet werden. Mit einer Anwendung, die das Anzeigen des Binärinhalts einer beliebigen Datei ermöglicht, kann man sehen, was in der Dokumentdatei gespeichert ist – es ist nur einfacher Text, sonst ist nichts drin.

Etwas anspruchsvollere Textbearbeitungsanwendungen wie Microsoft WordPad speichern das Dokument im Rich Text Format (RTF), das mehr Formatierungsfunktionen wie das Einfügen von Bildern, Zeichenformatierung, Absatzränder und Abstände unterstützt. Allerdings enthält das RTF-Format auch nur den Inhalt des Dokuments und keine Informationen über die Seiten.

Microsoft Word ist heute die fortschrittlichste Textbearbeitungsanwendung in Windows. Es formatiert Dateien im DOCX-Format, das den Inhalt des Dokuments flexibel und umfassend beschreibt, sodass Benutzer die Seitengröße und Ausrichtung für einen Dokumentabschnitt festlegen und als WYSIWYG-Anwendung sogar Dokumentseiten auf dem Bildschirm anzeigen können. Es liegen jedoch noch keine Informationen darüber vor, wie der Inhalt des Dokuments auf den in der Dokumentdatei verfügbaren Seiten angezeigt wird. Die Dokumentdatei beschreibt lediglich den Inhalt selbst und die Beziehung der Dokumentobjekte zueinander sowie einige geometrische Einschränkungen. Daher berechnet Microsoft Word diese Informationen selbst, bevor ein Dokument angezeigt wird. Hier kommt das Seitenlayout ins Spiel.

## Was ist ein Seitenlayout?

Ein Dokumentseitenlayout ist eine Datenstruktur, die beschreibt, wo sich ein bestimmtes Objekt auf den Seiten aller Dokumentobjekte befindet. Da Objekte darüber hinaus Eigenschaften haben, die sich auf ihr Erscheinungsbild auswirken, wie z. B. Schriftgröße, Schattierung oder Zeicheneffekte, müssen Sie nicht nur wissen, wo sich das Objekt befindet, sondern auch, welche Bereiche der Seite es einnimmt und ob dies der Fall ist auf mehrere Seiten anwenden, damit andere Objekte nicht dieselben Bereiche überlappen.

Aspose.Words implementiert die Seitenlayoutfunktion intern und ermöglicht so die Erstellung aller festen Seitenformate wie PDF, XPS und verschiedene Bildformate. Ohne Seitenlayout wären die in der Dokumentdatei mit fester Seite gespeicherten Informationen nicht verfügbar und alle diese Formate würden nicht unterstützt.

Der Zusammenhang zwischen einem Dokument und einem Seitenlayout ist recht einfach. Während ein Dokument den Inhalt beschreibt, beschreibt das entsprechende Seitenlayout die Geometrie dieses Inhalts. Beachten Sie, dass ein Seitenlayout ohne ein Dokument nicht existieren kann, da es keinen Inhalt für die Berechnung der Geometrie gäbe. Ein Dokument kann jedoch ohne ein Seitenlayout existieren. Wenn beispielsweise ein DOCX-Dokument in ein RTF-Dokument konvertiert wird, ist es normalerweise nicht erforderlich, die Geometrie zu kennen, da sie in keinem Format gespeichert wird.

## Seitenlayout erstellen

Das Erstellen eines Seitenlayouts kann sowohl hinsichtlich der Geschwindigkeit als auch des Speichers ein kostspieliger Vorgang sein. Dies hat mehrere Gründe:

- Das Dokument enthält möglicherweise eine große Menge an Inhalten, die möglicherweise auf Tausenden von Seiten angezeigt werden müssen. Die Geometrie jedes Objekts auf jeder Seite müsste beschrieben werden, was Speicherressourcen verbrauchen würde.
- Das Dokument enthält möglicherweise viele Regeln, die der Geometrie Einschränkungen auferlegen. Es kann viel Rechenzeit aufgewendet werden, um sicherzustellen, dass alle Einschränkungen erfüllt sind
– Einige Dokumentfunktionen, zum Beispiel das `NUMPAGES`-Feld, erzeugen rekursive Abhängigkeiten für zukünftige Eigenschaftswerte, die zum Zeitpunkt der Berechnung nicht verfügbar sind. Dies führt zu sich wiederholenden Berechnungen und erhöht die Rechenzeit.

Aus den oben genannten Gründen erstellt Aspose.Words nur dann ein Seitenlayout, wenn es notwendig ist. Ein typischer Grund hierfür wäre eine Anforderung zum Rendern von Dokumentseiten oder zum Abrufen eines Feldwerts, der von den im Seitenlayout verfügbaren Informationen abhängt. Ein weniger offensichtlicher Grund könnte der Export eines Dokuments nach HTML sein. Auch wenn HTML kein festes Seitenformat ist und die Geometrie der Inhaltsobjekte nicht beschreibt, unterstützt es dennoch Bilder. Solche Bilder können in Form von in Microsoft Word erstellten Formen vorliegen, in denen sich ein Text befindet. Beispielsweise kann ein Diagramm mit Achsenbeschriftungen als Bild in HTML exportiert werden. Bevor dies jedoch erfolgen kann, muss Aspose.Words das Bild rendern und daher wissen, wo die Beschriftung angezeigt werden soll. Sehen Sie sich das Diagrammbeispiel unten an:

<img src="/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="Konvertieren in ein festes Seitenformat_1" style="width:800px"/>

### Nichtgeometrische Eigenschaften

Neben der Verarbeitung geometrischer Informationen ist ein Seitenlayout auch für die Berechnung von Farben und Rahmenstilen verantwortlich. In Microsoft Word kann die Textfarbe automatisch angegeben werden, was bedeutet, dass die Farbauswahl auf der Schattierungsfarbe der Zelle oder des Absatzes oder auf der Farbe der Seite basieren sollte, auf der der Text erscheint.

Das Seitenlayout berechnet, wo der Text erscheint und welcher Inhalt dahinter gerendert wird, und ermöglicht so die Farbberechnung. Es gibt weitere spezifische Berechnungen, die das Seitenlayout durchführt. Ein horizontaler Rahmen in einer Tabelle hängt beispielsweise davon ab, ob eine Tabellenzeile an letzter Stelle in einer Textspalte steht und ob sie über mehrere Spalten verteilt ist. Wenn eine Zeile als letztes in einer Spalte gerendert wird, wird der untere Rand anstelle des horizontalen verwendet.

![converting-to-fixed-page-format_2](/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words kann ein Benutzer anfordern, ob er ein neues Seitenlayout erstellen oder ein vorhandenes aktualisieren möchte. Beides kann mit der [UpdatePageLayout](https://reference.aspose.com/words/de/net/aspose.words/document/updatepagelayout/)-Methode durchgeführt werden, die von der [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse bereitgestellt wird. Wenn kein Seitenlayout vorhanden ist, es aber benötigt wird (z. B. wenn das Dokument in ein festes Seitenformat exportiert wird), ruft Aspose.Words diese Methode automatisch auf. Wenn jedoch bereits ein Seitenlayout vorhanden ist, verwendet Aspose.Words das vorhandene, um den Ressourcenverbrauch für die Aktualisierung zu vermeiden. In diesem Fall muss der Benutzer die `UpdatePageLayout`-Methode aufrufen, um sicherzustellen, dass das Seitenlayout dem Dokumentmodell entspricht.

### Dynamische Struktur

Der Prozess der Erstellung eines Seitenlayouts umfasst die folgenden Schritte:

- *Conversion* – Auflisten des Inhalts des Dokumentmodells und Vorbereiten entsprechender Layoutobjekte.
- *Build* – Anordnen von Layoutobjekten, um den Inhalt des Dokuments auf Seiten darzustellen.
- *Reflow* – Aktualisierung der Objektanordnung, um Geometriebeschränkungen zu erfüllen.
- *Layoutobjekte in eine feste Seitendarstellung projizieren und Farbinformationen finalisieren*.
- *Erstellen und Umfließen von Forminhalten* – ein Schritt, der erforderlich ist, wenn das Dokument Formen mit verschachteltem Textinhalt enthält.

Beachten Sie, dass es sich beim Seitenlayout um eine dynamische Struktur handelt, die teilweise neu aufgebaut werden kann. Dies ist insbesondere dann erforderlich, wenn es unmöglich ist, Feldwerte zu berechnen, ohne die Dokumentlayoutstruktur neu aufzubauen. Das Feld kann auf die Position eines Objekts auf einer Seite verweisen, und gleichzeitig wird auch der Feldwert selbst auf der Seite gerendert, was sich auf die Position des referenzierten Objekts auswirkt. Ein Seitenlayout kann nicht in einem Rutsch erstellt werden, da Feldwerte zum Zeitpunkt der Positionierung auf einer Seite möglicherweise noch nicht verfügbar sind.

Stellen Sie sich das typische Szenario vor, bei dem das `NUMPAGES`-Feld in der Fußzeile der ersten Seite des Dokuments erscheint. Der Wert dieses Feldes ist die Gesamtzahl der Seiten. Um das Feld auf einer Seite zu positionieren, muss sein Wert bekannt sein. Wenn derzeit nur die erste Seite erstellt wird, ist die Gesamtzahl der Seiten noch nicht bekannt. In diesem Fall muss das Seitenlayout den Standardwert verwenden und später zu diesem Feld zurückkehren und seinen Wert entsprechend den tatsächlichen Berechnungen ändern. Das Ändern des Feldwerts kann sich jedoch auf andere Dokumentinhalte auf einer Seite auswirken und letztendlich dazu führen, dass eine neue Seite angehängt oder eine vorhandene Seite entfernt wird, wodurch der berechnete Wert veraltet ist. Dieses Problem kann gelöst werden, indem die Aktualisierung des vorhandenen Seitenlayouts ermöglicht wird.

Beim Erstellen eines Layouts ist es auch möglich, [LayoutOptions](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/)-Eigenschaften einzurichten, die sich auf die Ausgabe des Dokuments auf Seiten auswirken.

## Speichern im Festseitenformat

Nachdem das Seitenlayout erstellt und die Geometrie der Objekte sowie ihre Position auf der Seite berechnet wurden, kann das Dokument in einem von Aspose.Words unterstützten Format mit festen Seiten gespeichert werden. Beim Speichern von Dokumenten in Festseitenformaten können die allen diesen Formaten gemeinsamen Rendering-Optionen genutzt werden. Sie ermöglichen die Kontrolle von:

- Die Anzahl und der Umfang der im Ausgabedokument ([PageCount](https://reference.aspose.com/words/de/net/aspose.words/document/pagecount/)) enthaltenen Seiten.
- Fortschritt der seitenweisen Dokumentspeicherung ([PageSavingCallback](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
– Eine Reihe von Zeichen, die zum Rendern von Zahlen verwendet werden ([NumeralFormat](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)).
- Ein Metadatei-Player ([MetafileRenderingOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Weitere Einzelheiten finden Sie im [Umgang mit Windows-Metadateien](/words/de/net/handling-windows-metafiles/)-Artikel.
- Eine Qualitätsrate für die Neukomprimierung von JPEG-Bildern, deren Wert je nach ausgewähltem Speicherformat ([JpegQuality](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)) geringfügig abweichen kann.
- Optimierung von Vektorgrafiken in der Aspose.Words-Ausgabe ([OptimizeOutput](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- Grafikoptionen beim Speichern in den Formaten TIFF, PNG, BMP, Jpeg, EMF ([UseAntiAliasing](https://reference.aspose.com/words/de/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/de/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Speichern des Dokuments in Graustufen ([ColorMode](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
- Umschalten zwischen der Darstellung von DrawingML-Formen und Fallback-Formen ([DmlRenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Umschalten zwischen DML-Effekt-Rendering-Modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/de/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

Das folgende Beispiel zeigt, wie ein Dokument mithilfe der `Save`-Methode und der Rendering-Optionen im JPEG-Format gespeichert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cs" >}}
