---
title: Konvertierung in das Festseitenformat in Java
second_title: Aspose.Words für Java
articleTitle: Konvertierung in das Festseitenformat
linktitle: Konvertierung in das Festseitenformat
description: "Aspose.Words für Java implementiert eine eigene Seitenlayout-Engine, die es ermöglicht, alle festen Seitenformate wie PDF, XPS und verschiedene Bildformate zu erstellen."
type: docs
weight: 10
url: /de/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementiert eine eigene Seitenlayout-Engine. Bevor wir uns mit den Spezifikationen befassen, lohnt es sich, das Dokument zunächst auf hohem Niveau zu diskutieren. Wenn Benutzer an ein Dokument denken, stellen sie sich normalerweise eine Reihe von Papierblättern vor, die Wörter, Bilder, Tabellen und Diagramme enthalten. Dokumente können verschiedener Art sein, z. B. Text, Tabellenkalkulationen, Folien, CAD Zeichnungen, Flussdiagramme, und können daher im Wesentlichen unterschiedliche Layouts aufweisen. Die meisten Anwendungen ermöglichen das Senden von Dokumenten an einen Drucker; In diesem Fall kann ein Benutzer das endgültige beabsichtigte Erscheinungsbild des Dokuments tatsächlich anzeigen.

## Anzeigen eines Dokuments in verschiedenen Anwendungen

Verschiedene Anwendungen zum Anzeigen oder Veröffentlichen von Dokumenten ermöglichen Benutzern das Öffnen (Adobe Acrobat, XPS Viewer) und manchmal das Bearbeiten (Adobe InDesign) von Dokumenten bestimmter Formate. Diese Anwendungen erzeugen typischerweise Dokumente im sogenannten "Festseiten" -Format. Ein solches Dokumentenformat beschreibt genau, wo der Inhalt eines Dokuments auf jeder Seite platziert ist. Intern enthält das Format PDF oder XPS eine Beschreibung jeder Seite sowie Zeichnungsanweisungen, die das Layout des Inhalts auf der Seite angeben. Dies ähnelt Bildformaten und beschreibt, wo der Inhalt entweder in Raster- oder Vektorform angezeigt wird.

Im Gegensatz dazu unterstützen einige Textbearbeitungsanwendungen das Anzeigen der Seiten eines Dokuments nicht. Zum Beispiel unterstützt Microsoft Notepad nur sehr wenige Funktionen außer dem einfachen Anzeigen, Bearbeiten und Drucken von Text. Die wichtige Beobachtung hierbei ist, dass solche Anwendungen weder Seiten des Dokuments anzeigen noch einem Benutzer mitteilen können, wie viele davon gedruckt würden, sondern nur das Anzeigen des Dokumentinhalts ermöglichen. Das Dokument kann im Nur-Text-Format gespeichert und von vielen anderen Anwendungen geöffnet werden. Mit einer Anwendung, die das Anzeigen von binärem Inhalt einer beliebigen Datei ermöglicht, kann man sehen, was in der Dokumentdatei gespeichert ist - es ist nur einfacher Text, es enthält nichts anderes.

Etwas anspruchsvollere Textbearbeitungsanwendungen wie Microsoft Word Pad speichern das Dokument im Rich Text Format (RTF), das mehr Formatierungsfunktionen unterstützt, z. B. Einfügen von Bildern, Zeichenformatierung, Absatzränder und Abstände. Das Format RTF enthält jedoch auch nur den Inhalt des Dokuments und keine Informationen zu Seiten.

Microsoft Word ist heute die fortschrittlichste Textbearbeitungsanwendung in Windows. Es formatiert Dateien im DOCX -Format, das den Inhalt des Dokuments flexibel und umfassend beschreibt, sodass Benutzer die Seitengröße und Ausrichtung für einen Dokumentabschnitt angeben und als WYSIWYG -Anwendung sogar Dokumentseiten auf dem Bildschirm anzeigen können. Dennoch gibt es immer noch keine Informationen darüber, wie der Inhalt des Dokuments auf den in der Dokumentdatei verfügbaren Seiten angezeigt wird. Die Dokumentdatei beschreibt nur den Inhalt selbst und die Beziehung der Dokumentobjekte zueinander sowie einige geometrische Einschränkungen. Daher berechnet Microsoft Word diese Informationen selbst, bevor ein Dokument angezeigt wird. Hier kommt ein Seitenlayout ins Spiel.

## Was ist ein Seitenlayout

Ein Dokumentseitenlayout ist eine Datenstruktur, die beschreibt, wo sich ein bestimmtes Objekt auf Seiten für alle Dokumentobjekte befindet. Da Objekte Eigenschaften haben, die sich auf ihr Erscheinungsbild auswirken, z. B. Schriftgröße, Schattierung oder Zeichnungseffekte, müssen Sie außerdem nicht nur wissen, wo sich das Objekt befindet, sondern auch, welche Bereiche der Seite es einnimmt und ob es auf mehrere Seiten angewendet wird, damit andere Objekte nicht dieselben Bereiche überlappen.

Aspose.Words implementiert intern Seitenlayoutfunktionen, die es ihm ermöglichen, alle festen Seitenformate wie PDF, XPS und verschiedene Bildformate zu erstellen. Ohne Seitenlayout wären die in der Dokumentdatei mit fester Seite gespeicherten Informationen nicht verfügbar und alle diese Formate würden nicht unterstützt.

Die Beziehung zwischen einem Dokument und einem Seitenlayout ist recht einfach. Während ein Dokument den Inhalt beschreibt, beschreibt das entsprechende Seitenlayout die Geometrie dieses Inhalts. Beachten Sie, dass ein Seitenlayout ohne ein Dokument nicht existieren kann, da es keinen Inhalt für die Berechnung der Geometrie geben würde, aber ein Dokument kann ohne ein Seitenlayout existieren. Wenn beispielsweise ein DOCX-Dokument in ein RTF-Dokument konvertiert wird, ist es normalerweise nicht erforderlich, die Geometrie zu kennen, da sie in keinem Format gespeichert wird.

## Erstellen eines Seitenlayouts

Das Erstellen eines Seitenlayouts kann sowohl in Bezug auf die Geschwindigkeit als auch auf den Speicher ein kostspieliger Vorgang sein. Dies hat mehrere Gründe:

- Das Dokument kann eine große Menge an Inhalten enthalten, die möglicherweise auf Tausenden von Seiten angezeigt werden müssen. Die Geometrie jedes Objekts auf jeder Seite müsste beschrieben werden, was Speicherressourcen verbraucht.
- Das Dokument kann viele Regeln enthalten, die der Geometrie Einschränkungen auferlegen. Es kann eine beträchtliche Rechenzeit aufgewendet werden, um sicherzustellen, dass jede Einschränkung erfüllt ist.
- Einige Dokumentfunktionen, z. B. das Feld `NUMPAGES`, erstellen rekursive Abhängigkeiten für zukünftige Eigenschaftswerte, die zum Zeitpunkt der Berechnung nicht verfügbar sind. Dies führt zu sich wiederholenden Berechnungen und summiert sich in der Rechenzeit.

Aus den oben genannten Gründen erstellt Aspose.Words nur dann ein Seitenlayout, wenn dies erforderlich ist. Ein typischer Grund dafür wäre eine Anforderung zum Rendern von Dokumentseiten oder zum Abrufen eines Feldwerts, der von den im Seitenlayout verfügbaren Informationen abhängt. Ein weniger offensichtlicher Grund könnte der Export eines Dokuments nach HTML sein. Obwohl HTML kein festes Seitenformat ist und die Geometrie der Inhaltsobjekte nicht beschreibt, werden dennoch Bilder unterstützt. Solche Bilder können in Form von Formen vorliegen, die in Microsoft Word mit einem Text darin erstellt wurden. Beispielsweise kann ein Diagramm mit Achsenbeschriftungen als Bild in HTML exportiert werden, aber bevor dies geschehen kann, muss Aspose.Words dieses Bild rendern und daher wissen, wo die Beschriftung angezeigt werden soll. Siehe das Diagrammbeispiel unten:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Nicht-geometrische Eigenschaften

Neben dem Umgang mit geometrischen Informationen ist ein Seitenlayout auch für die Berechnung von Farben und Rahmenstilen verantwortlich. In Microsoft Word kann die Textfarbe als automatisch angegeben werden, was bedeutet, dass die Farbauswahl auf der Schattierungsfarbe der Zelle oder des Absatzes oder auf der Farbe der Seite basiert, auf der der Text angezeigt wird.

Das Seitenlayout berechnet, wo der Text angezeigt wird und welcher Inhalt dahinter gerendert wird, wodurch die Farbberechnung aktiviert wird. Es gibt andere spezifische Berechnungen, die vom Seitenlayout durchgeführt werden. Beispielsweise hängt ein horizontaler Rahmen in einer Tabelle davon ab, ob eine Tabellenzeile in einer Textspalte die letzte ist und ob sie spaltenübergreifend unterteilt ist. Wenn eine Zeile zuletzt in einer Spalte gerendert wird, wird der untere Rand anstelle der horizontalen verwendet.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words kann ein Benutzer anfordern, ob ein neues Seitenlayout erstellt oder ein vorhandenes aktualisiert werden soll. Beides kann mit der Methode [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) ausgeführt werden, die von der Klasse [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) bereitgestellt wird. Wenn ein Seitenlayout nicht vorhanden ist, aber benötigt wird (z. B. wenn das Dokument in ein festes Seitenformat exportiert wird), ruft Aspose.Words diese Methode automatisch auf. Wenn jedoch bereits ein Seitenlayout vorhanden ist, verwendet Aspose.Words das vorhandene, um zu vermeiden, dass die für die Aktualisierung erforderlichen Ressourcen verbraucht werden. In diesem Fall muss der Benutzer die Methode `UpdatePageLayout` aufrufen, um sicherzustellen, dass das Seitenlayout mit dem Dokumentmodell auf dem neuesten Stand ist.

### Dynamische Struktur

Der Prozess der Erstellung des Seitenlayouts umfasst die folgenden Schritte:

- *Conversion* - Aufzählung des Inhalts des Dokumentmodells und Vorbereitung der entsprechenden Layoutobjekte.
- *Build* - Anordnen von Layoutobjekten, um den Inhalt des Dokuments auf Seiten darzustellen.
- *Reflow* - Aktualisieren der Objektanordnung, um Geometrieeinschränkungen zu erfüllen.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - Ein Schritt, der erforderlich ist, wenn das Dokument Formen mit verschachteltem Textinhalt enthält.

Beachten Sie, dass das Seitenlayout eine dynamische Struktur ist, die teilweise neu erstellt werden kann. Dies ist insbesondere dann erforderlich, wenn es unmöglich ist, Feldwerte zu berechnen, ohne die Dokumentlayoutstruktur neu zu erstellen. Das Feld kann auf die Position eines Objekts auf einer Seite verweisen, und gleichzeitig wird auch der Feldwert selbst auf der Seite gerendert, was sich auf die Position des referenzierten Objekts auswirkt. Ein Seitenlayout kann nicht auf einmal erstellt werden, da Feldwerte zum Zeitpunkt der Positionierung auf einer Seite möglicherweise noch nicht verfügbar sind.

Stellen Sie sich das typische Szenario vor, in dem das Feld `NUMPAGES` in der Fußzeile der ersten Seite des Dokuments angezeigt wird. Der Wert dieses Feldes ist die Gesamtzahl der Seiten. Um das Feld auf einer Seite zu positionieren, sollte sein Wert bekannt sein. Wenn derzeit nur die erste Seite erstellt wird, ist die Gesamtzahl der Seiten noch nicht bekannt. In diesem Fall muss das Seitenlayout den Standardwert verwenden und später zu diesem Feld zurückkehren und seinen Wert entsprechend den tatsächlichen Berechnungen ändern. Das Ändern des Feldwerts kann sich jedoch auf andere Dokumentinhalte auf einer Seite auswirken und letztendlich dazu führen, dass eine neue Seite angehängt oder eine vorhandene Seite entfernt wird, wodurch der berechnete Wert veraltet wird. Dieses Problem kann gelöst werden, indem das vorhandene Seitenlayout aktualisiert werden kann.

Beim Erstellen eines Layouts ist es auch möglich, [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) -Eigenschaften einzurichten, die sich auf die Ausgabe des Dokuments auf Seiten auswirken.

## Speichern im festen Seitenformat

Nachdem das Seitenlayout erstellt und die Geometrie der Objekte und ihre Position auf der Seite berechnet wurden, kann das Dokument in einem festen Seitenformat gespeichert werden, das von Aspose.Words unterstützt wird. Beim Speichern von Dokumenten in Festseitenformaten können die Renderoptionen verwendet werden, die allen diesen Formaten gemeinsam sind. Sie ermöglichen die Kontrolle:

- Die Anzahl und der Bereich der Seiten, die im Ausgabedokument enthalten sind ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Fortschritt der seitenweisen Dokumentenspeicherung ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Eine Reihe von Zeichen, die zum Rendern von Zahlen verwendet werden ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Ein Metadatei-Player ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Weitere Einzelheiten finden Sie in der [Umgang mit Windows Metadaten](/words/java/handling-windows-metafiles/) Beitrag.
- Eine Qualitätsrate für die erneute Komprimierung von JPEG-Bildern, deren Wert je nach ausgewähltem Speicherformat geringfügig abweichen kann ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimierung von Vektorgrafiken in der Aspose.Words-Ausgabe ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Grafikoptionen beim Speichern in den Formaten Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Speichern des Dokuments in Graustufen ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Umschalten zwischen dem Rendern von DrawingML-Formen und Fallback-Formen ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Umschalten zwischen DML Effekt-Rendering-Modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Das folgende Beispiel zeigt, wie Sie ein Dokument mit der Methode `Save` und den Renderoptionen im Format JPEG speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
