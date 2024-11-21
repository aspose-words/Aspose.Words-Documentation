---
title: Umrechnen in Festseitenformat in Java
second_title: Aspose.Words für Java
articleTitle: Umrechnen in Fix-Seite Format
linktitle: Umrechnen in Fix-Seite Format
description: "Aspose.Words für Java implementiert eine eigene Seitenlayout-Engine, die es ermöglicht, alle festen Seitenformate, wie PDF, herzustellen. XPS, und verschiedene Bildformate."
type: docs
weight: 10
url: /de/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementiert seine eigene Seite Layout-Engine. Bevor es in seine Spezifikationen geht, lohnt es sich, das Dokument auf hohem Niveau zu diskutieren. Wenn Sie über ein Dokument nachdenken, stellen sich Benutzer in der Regel eine Reihe von Papierblättern mit Wörtern, Bildern, Tabellen und Diagrammen vor. Dokumente können von verschiedenen Arten sein, wie Text, Tabellenblätter, Dias, CAD-Zeichnungen, Flussdiagramme und können daher im Wesentlichen verschiedene Layouts aufweisen. Die meisten Anwendungen erlauben das Senden von Dokumenten an einen Drucker; dies ist, wenn ein Benutzer tatsächlich das endgültige beabsichtigte Aussehen des Dokuments anzeigen kann.

## Anzeige eines Dokumentes in verschiedenen Anwendungen

Verschiedene Dokument-Betrachtungs- oder Verlagsanwendungen ermöglichen es Benutzern, sich zu öffnen (Adobe Acrobat, XPS Viewer), und manchmal bearbeiten (Adobe InDesign) Dokumente bestimmter Formate. Diese Anwendungen produzieren typischerweise sogenannte "fixed-page" Formatdokumente. Ein solches Dokumentformat beschreibt genau, wo der Inhalt eines Dokuments auf jeder Seite platziert wird. Intern, das PDF oder XPS Das Format enthält eine Beschreibung jeder Seite sowie eine Zeichnungsanweisung, die das Layout des Inhalts auf der Seite angibt. Dies ist ähnlich wie Bildformate, wobei der Inhalt entweder in Raster- oder Vektorform dargestellt wird.

Im Gegensatz dazu unterstützen einige Textbearbeitungsanwendungen die Ansicht der Seiten eines Dokuments nicht. Zum Beispiel Microsoft Notepad unterstützt nur sehr wenige Funktionen, die nicht nur Text anzeigen, bearbeiten und drucken. Wichtig ist dabei, dass solche Anwendungen weder Seiten des Dokuments zeigen noch einem Benutzer sagen können, wie viele von ihnen gedruckt werden, nur um den Dokumentinhalt anzuzeigen. Das Dokument kann im Klartextformat gespeichert und von vielen anderen Anwendungen geöffnet werden. Mit einer Anwendung, die das Anzeigen von binären Inhalten einer beliebigen Datei ermöglicht, kann man sehen, was in der Dokumentdatei gespeichert ist – es ist nur einfacher Text, es gibt nichts anderes in ihr.

Leicht anspruchsvollere Text-Editing-Anwendungen, wie Microsoft WordPad, speichern Sie das Dokument in Rich Text Format (RTF), das mehr Formatierungsfunktionen unterstützt, wie Einfügen von Bildern, Zeichenformatierung, Rand und Abstand. Das RTF-Format enthält jedoch auch nur den Inhalt des Dokuments, der keine Informationen über Seiten hat.

Microsoft Word ist die am weitesten fortgeschrittene Text-Edition-Anwendung in Windows Heute. Es formatiert Dateien im DOCX-Format, die den Inhalt des Dokuments flexibel und umfassend beschreibt, so dass Benutzer Seitengröße, Orientierung für einen Dokumentabschnitt angeben und, als WYSIWYG-Anwendung, sogar Dokumentseiten auf dem Bildschirm anzeigen. Dennoch gibt es noch keine Informationen darüber, wie der Inhalt des Dokuments auf den in der Dokumentdatei verfügbaren Seiten angezeigt wird. Die Dokumentdatei beschreibt nur den Inhalt selbst und die Beziehung von Dokumentobjekten zueinander, zusammen mit einigen geometrischen Zwängen. Dies führt dazu, bevor ein Dokument angezeigt wird, Microsoft Word berechnet diese Information selbst. Hier kommt ein Seitenlayout ins Spiel.

## Was ist ein Seitenlayout?

Ein Dokumentseitenlayout ist eine Datenstruktur, in der beschrieben wird, wo sich ein bestimmtes Objekt auf Seiten für alle Dokumentobjekte befindet. Darüber hinaus, da Objekte Eigenschaften haben, die ihre Erscheinungen beeinflussen, wie Schriftgröße, Schattierung oder Zeichnungseffekte, müssen Sie nicht nur wissen, wo das Objekt ist, sondern auch welcher Bereich (s) der Seite, die es einnimmt, und ob es sich um mehrere Seiten handelt, so dass andere Objekte den gleichen Bereich (s) nicht überlappen.

Aspose.Words die Seitenlayout-Funktionalität intern implementiert, so dass sie alle festen Seitenformate, wie PDF, erzeugen kann XPS, und verschiedene Bildformate. Ohne Seitenlayout wären die in der Datei fester Seitendokumente gespeicherten Informationen nicht verfügbar und alle diese Formate würden nicht unterstützt.

Die Beziehung zwischen einem Dokument und einem Seitenlayout ist ganz einfach. Während ein Dokument den Inhalt beschreibt, beschreibt das entsprechende Seitenlayout die Geometrie dieses Inhalts. Beachten Sie, dass ein Seitenlayout ohne Dokument nicht existiert, da es keinen Inhalt für die Berechnung der Geometrie geben würde, aber ein Dokument kann ohne Seitenlayout existieren. Wenn beispielsweise ein DOCX-Dokument in ein RTF-Dokument umgewandelt wird, ist es typischerweise nicht erforderlich, die Geometrie zu kennen, da es weder Format speichert.

## Erstellen eines Seitenlayouts

Die Erstellung eines Seitenlayouts kann ein kostenintensives Verfahren sein, sowohl in Bezug auf Geschwindigkeit und Speicher. Dies ist aus mehreren Gründen:

- Ja. Das Dokument kann eine große Menge von Inhalten haben, die auf Tausenden von Seiten angezeigt werden müssen. Die Geometrie jedes Objekts auf jeder Seite müsste beschrieben werden, wodurch Speicherressourcen verbraucht werden.
- Ja. Das Dokument kann viele Regeln haben und Einschränkungen auf Geometrie setzen. Bedeutende Rechenzeit kann ausgegeben werden, um sicherzustellen, dass jede Beschränkung erfüllt ist
- Einige Dokumentmerkmale, zum Beispiel die `NUMPAGES` Feld, erstellen Sie wiederkehrende Abhängigkeiten für zukünftige Immobilienwerte, die zum Zeitpunkt der Berechnung nicht verfügbar sind. Dies führt zu repetitiven Berechnungen und addiert sich in Rechenzeit.

Aus den vorgenannten Gründen, Aspose.Words wird nur dann ein Seitenlayout erstellen, wenn es notwendig ist. Ein typischer Grund hierfür wäre die Anfrage, Dokumentseiten zu machen oder einen Feldwert zu erhalten, der von Informationen abhängt, die im Seitenlayout verfügbar sind. Ein weniger offensichtlicher Grund könnte ein Dokument in HTML exportieren. Obwohl HTML kein Festseitenformat ist und die Geometrie der Inhaltsobjekte nicht beschreibt, unterstützt es dennoch Bilder. Solche Bilder können in Form von in Microsoft Word mit einem Text darin. Beispielsweise kann ein Diagramm mit Achsetiketten als Bild in HTML exportiert werden, aber bevor dies geschehen kann Aspose.Words muss dieses Bild machen und muss daher wissen, wo das Etikett angezeigt werden soll. Siehe unten das Diagrammbeispiel:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Nicht-geometrische Eigenschaften

Neben der Bearbeitung von geometrischen Informationen ist ein Seitenlayout auch für die Berechnung von Farben und Randstilen verantwortlich. In Microsoft Word, Textfarbe kann automatisch angegeben werden, was bedeutet, dass die Farbauswahl auf der Abschattungsfarbe der Zelle oder des Absatzes basiert oder auf der Farbe der Seite, in der der Text erscheint.

Seitenlayout berechnet, wo der Text angezeigt wird und welche Inhalte dahinter wiedergegeben werden, wodurch die Farbberechnung ermöglicht wird. Es gibt andere spezifische Berechnungen durch das Seitenlayout. So hängt beispielsweise eine horizontale Grenze in einer Tabelle davon ab, ob eine Tabellenzeile in einer Textspalte zuletzt ist und ob sie über Spalten gebrochen ist. Wird in einer Spalte eine Zeile zuletzt wiedergegeben, so wird anstelle von horizontal die untere Grenze verwendet.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In <span notrans="<span notrans=" Aspose.Words"=""></span>,"> ein Benutzer kann verlangen, ob ein neues Seitenlayout erstellt oder ein bestehendes aktualisiert wird. Beide können von der [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) Verfahren, das von der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. Wenn ein Seitenlayout nicht existiert, aber es besteht Bedarf daran (z.B. wenn das Dokument in ein Festseitenformat exportiert wird), Aspose.Words wird diese Methode automatisch anrufen. Ist jedoch bereits ein Seitenlayout vorhanden, Aspose.Words wird das bestehende verwenden, um zu vermeiden, dass die Ressourcen benötigt werden, um es zu aktualisieren. In diesem Fall muss der Benutzer die `UpdatePageLayout` Verfahren, um sicherzustellen, dass das Seitenlayout mit dem Dokumentmodell aktuell ist.

### Dynamische Struktur

Der Prozess der Erstellung des Seitenlayouts umfasst die folgenden Schritte:

- Ja. *Conversion* – Aufzählung von Inhalten des Dokumentmodells und Erstellung entsprechender Layoutobjekte.
- Ja. *Build* – Anordnung von Layout-Objekten, um den Inhalt des Dokuments auf Seiten darzustellen.
- Ja. *Reflow* – Aktualisierung der Objektanordnung, um Geometriezwänge zu erfüllen.
- *Projektieren von Layout-Objekten in eine feste Seitenpräsentation und abschließende Farbinformationen*.
- *Building und Reflowing von Forminhalt* – ein Schritt, der erforderlich ist, wenn das Dokument Formen mit geschachtelten Textinhalten enthält.

Beachten Sie, dass das Seitenlayout eine dynamische Struktur ist, die teilweise wieder aufgebaut werden kann. Dies ist insbesondere dann erforderlich, wenn es nicht möglich ist, Feldwerte zu berechnen, ohne die Beleglayoutstruktur neu aufzubauen. Das Feld kann den Ort eines Objekts auf einer Seite referenzieren und gleichzeitig wird auch der Feldwert selbst auf der Seite dargestellt, was den Ort des referenzierten Objekts beeinflusst. Ein Seitenlayout kann nicht in einem Klick aufgebaut werden, da Feldwerte zum Zeitpunkt der Positionierung auf einer Seite noch nicht verfügbar sein können.

Betrachten Sie das typische Szenario, wenn `NUMPAGES` Feld erscheint in der Fußzeile der ersten Seite im Dokument. Der Wert dieses Feldes ist die Gesamtzahl der Seiten. Um das Feld auf einer Seite zu positionieren, sollte sein Wert bekannt sein. Wird derzeit nur die erste Seite gebaut, so ist die Gesamtzahl der Seiten noch nicht bekannt. In diesem Fall muss das Seitenlayout den Standardwert verwenden und später auf dieses Feld zurückkommen und seinen Wert nach tatsächlichen Berechnungen ändern. Eine Änderung des Feldwerts kann jedoch andere Dokumentinhalte auf einer Seite beeinflussen und letztendlich dazu führen, dass eine neue Seite angehängt oder eine bestehende Seite entfernt wird, wodurch der berechnete Wert veraltet wird. Dieses Problem kann gelöst werden, indem es möglich ist, das bestehende Seitenlayout zu aktualisieren.

Bei der Erstellung eines Layouts ist es auch möglich, [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Eigenschaften, die die Ausgabe des Dokuments auf Seiten beeinflussen.

## Sparen auf Fix-Seite Format

Nachdem das Seitenlayout aufgebaut ist und die Geometrie der Objekte und deren Position auf der Seite berechnet wird, kann das Dokument in einem von Aspose.Words. Beim Speichern von Dokumenten auf Festseitenformate können die für alle diese Formate gemeinsamen Rendering-Optionen verwendet werden. Sie erlauben die Kontrolle:

- Ja. Anzahl und Reichweite der im Ausgabedokument enthaltenen Seiten ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Fortschritt der Seiten-für-Seiten-Dokumentersparnis ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Eine Reihe von Zeichen, die verwendet werden, um Zahlen Rendering ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Ein Metafile-Player ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Weitere Details finden Sie in der [Der Präsident Windows Metafiles](/words/de/java/handling-windows-metafiles/) Artikel.
- Eine Qualitätsrate für die Rekomprimierung von JPEG-Bildern, deren Wert sich je nach gewähltem Speicherformat leicht unterscheiden kann ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimierung von Vektorgrafiken in Aspose.Words Ausgang[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Grafikoptionen beim Speichern in Tiff, Png, Bmp, Jpeg, Emf Formate ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Das Dokument in grauem Maßstab speichern ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Wechseln zwischen dem Rendern von Zeichnungs-ML-Formen und Rückfallformen ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Umschalten zwischen DML-Effekten Rendering Modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Das folgende Beispiel zeigt, wie man ein Dokument im JPEG-Format mit dem `Save` Verfahren und Rendering-Optionen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
