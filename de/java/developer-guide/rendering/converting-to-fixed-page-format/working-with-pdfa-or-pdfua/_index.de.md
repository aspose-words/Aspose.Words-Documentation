---
title: Arbeiten mit PDF/A oder PDF/UA
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit PDF/A oder PDF/UA
linktitle: Arbeiten mit PDF/A oder PDF/UA
description: "In PDF/A-1, PDF/A-2, PDF/A-4 und PDF/UA umrechnen Java. Es gibt einige Probleme bei der Konvertierung in PDF/A-Dokumente und Aspose.Words für Java löst sie."
type: docs
weight: 28
url: /de/java/working-with-pdfa-or-pdfua/
---

PDF/A und PDF/UA-Format verhängen mehrere Anforderungen an den Dokumenteninhalt, der bei der automatischen Umwandlung von einem Dokument in Word-Format auf PDF nicht erfüllt werden kann. Diese Anforderungen sollten entweder in einem Word-Dokument vor der Konvertierung oder in einem PDF-Dokument nach der Konvertierung überprüft und korrigiert werden, um ein vollständig PDF/A- und PDF/UA-konformes Dokument zu erstellen.

Grundlegende Anforderungen sind die Struktur oder Schriftart eines PDF/A- und PDF/UA-Dokuments, das wir in den folgenden Abschnitten berücksichtigen werden.

{{% alert color="primary" %}}

Bitte beachten Sie, dass die PDF/UA-1 Ausgabe auch WCAG 2.0 und § 508 konform ist.

{{% /alert %}}

## Anforderungen an die Struktur

Die aktuellen Anforderungen sind für PDF/A-1a, PDF/A-2a, PDF/A-4 und PDF/UA-1 Formate.

Es gibt einige Nuancen von wie Aspose.Words arbeitet bei der Umwandlung in verschiedene PDF-Format-Standards. Sie müssen berücksichtigt werden, wenn Sie das erwartete Ergebnis erhalten möchten.

{{% alert color="primary" %}}

Beachten Sie, dass es keine logischen Strukturanforderungen für PDF/A-4 gibt. Aus diesem Grund betrachten wir die PDF/A-4 Version in diesem Abschnitt "Dokumentestrukturanforderungen" nicht.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Es ist für Schriftsteller unvorstellbar, strukturelle oder semantische Informationen mit automatisierten Prozessen ohne entsprechende Überprüfung zu erzeugen.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Die folgenden Unterabschnitte beschreiben Nuancen, wie Aspose.Words arbeitet bei der Umwandlung in verschiedene PDF-Format Standards und Optionen für ihre Lösung.

### Strukturtyp

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ein PDF-Dokument ist eine Folge von Blöcken wie Überschriften, Absätze, Tabellen und andere. Diese Blöcke bilden eine Dokumentenstruktur – stark oder schwach.

Sowohl starke als auch schwache Strukturen sind für PDF/A gültig. Microsoft Word Dokumente haben eine schwache Struktur durch Design, und Aspose.Words erstellt PDF mit der schwachen Struktur bzw. erzeugt auch Überschriften nach den Umrissebenen der Absätze im Quelldokument.

Für ein PDF/UA-1 Dokument mit einer schwachen Struktur ist es zusätzlich erforderlich, dass die Überschriften ohne Lücken in Ordnung gehen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Die Block-Level-Struktur kann einem von zwei Hauptparadigmen folgen:</p>
    </ol>
      <li>Stark strukturiert. Die Gruppierelemente verschachteln so viele Ebenen wie nötig, um die Organisation des Materials in Artikel, Abschnitte, Unterabschnitte und so weiter zu reflektieren. Auf jeder Ebene sollten die Kinder des Gruppierungselements aus einer Position (H), einem oder mehreren Absätzen (P) für den Inhalt auf dieser Ebene und vielleicht einem oder mehreren zusätzlichen Gruppierungselementen für geschachtelte Unterabschnitte bestehen.</li>
      <li>Schwach strukturiert. Das Dokument ist relativ flach, hat vielleicht nur ein oder zwei Ebenen der Gruppierung Elemente, mit allen Rubriken, Absätzen und anderen BLSE als ihre unmittelbaren Kinder. In diesem Fall spiegelt sich die Organisation des Materials nicht in der logischen Struktur wider; sie kann jedoch durch die Verwendung von Rubriken mit spezifischen Ebenen (H1–H6) ausgedrückt werden.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Für PDF/UA-1-Dokumente enthält die Spezifikation eine Ergänzung in Bezug auf die Überschriftsebenen (erweitert um Details zu sehen):</summary>
    <p></p>
    <p>Benötigen die Dokumentsemantik eine absteigende Folge von Kopfzeilen, so muss diese Sequenz in strenger numerischer Reihenfolge ablaufen und darf keine zwischenlaufende Überschriftebene überschreiten. H1 H2 H3 ist zulässig, während H1 H3 nicht ist.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Um eine korrekte Ausgabe zu gewährleisten, müssen die Nutzer sicherstellen, dass der Inhalt des Quelldokuments ordnungsgemäß organisiert wird und die Umrissebenen für die Absätze korrekt festgelegt werden. Andernfalls sollte der Benutzer die Struktur des Ausgabe-PDF-Dokuments überprüfen und festlegen.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie man Konturebenen in Microsoft Word oder die Struktur des Ausgabe-PDF-Dokuments überprüfen und festlegen (weitere Details anzeigen).</summary>
    <p></p>
    <p>In Microsoft Word Standard-Stile "Heading X" könnten verwendet werden, um die Umrissebene einzustellen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Zusätzlich konnte die Umrissebene im Fenster "Paragraph" überprüft oder geändert werden:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat konnte die Dokumentenstruktur im Bereich "Tags" überprüft oder geändert werden:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Inhalt als Artefakt markieren

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Im Moment, Aspose.Words markiert Seitenüberschriften und Fußzeilen, Notentrennzeichen, wiederholte Tischkopfzellen und dekorative Bilder als Artefakte. Beachten Sie, dass diese Liste in Zukunft aktualisiert werden kann.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Die Grafikobjekte in einem Dokument können in zwei Klassen unterteilt werden:</p>
    </ol>
      <li>Der reale Inhalt eines Dokuments umfasst Objekte, die ursprünglich vom Autor des Dokuments vorgestellt wurden.</li>
      <li>Artefakte sind Grafikobjekte, die nicht Teil des ursprünglichen Inhalts des Autors sind, sondern im Zuge von Pagination, Layout oder anderen streng mechanischen Prozessen vom konformen Schriftsteller erzeugt werden.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Wenn ein Dokument andere Inhalte enthält, die als Artefakt gekennzeichnet werden sollten, oder wenn einer der artefaktierten Inhalte ein echter Inhalt ist, sollten die Kunden das in der Ausgabe PDF festlegen.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie man Formen als dekorative in Microsoft Word oder Markenform als Artefakt im Ausgabe-PDF-Dokument (weitere Details).</summary>
    <p></p>
    <p>Beispielsweise könnten Formen als dekorative in Microsoft Word, so werden sie als Artefakt in PDF exportiert:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Sie können Form als Artefakt in der Ausgabe markieren PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Auch können Sie Text in einem Header vom Artefakt auf reale Inhalte im Ausgang schalten PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Natürliche Sprache Spezifikation

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Textsprache ist in Microsoft Word Dokumente. Aspose.Words exportiert die angegebene Sprache in eine Ausgabe PDF mit der *Lang* Attribut an einer markierten Inhaltssequenz oder einem Span-Tag – es wird von der [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) Eigentum. Im Allgemeinen gibt es keine Sprachprobleme, wenn der Text vom Benutzer über Microsoft Word. Es besteht jedoch die Möglichkeit, dass die Sprache ungenau ist, wenn der Text automatisch erzeugt wird.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Die Standard-Natursprache für alle Texte in einer Datei sollte durch den Lang-Eintrag im Katalog des Dokuments angegeben werden.</p>
    <p>Alle Textinhalte innerhalb einer Datei, die sich von der Standardsprache unterscheidet, sollten durch Verwendung einer `Lang` Eigenschaft, die an einer markierten Inhaltssequenz oder durch einen Lang-Eintrag in einem Strukturelement-Wörterbuch angebracht ist ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Zusätzlich zu PDF/UA-1 gibt uns die Spezifikation folgendes an (weitere Details anzeigen):</summary>
    <p></p>
    <p>Natürliche Sprache wird erklärt... Änderungen der natürlichen Sprache sind anzugeben.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie Sie sicherstellen, dass die Sprache korrekt angegeben wird (weitere Details).</summary>
    <p></p>
    <p>Die Benutzer sollten sicherstellen, dass die Sprache entweder im Quelltextdokument korrekt angegeben wird:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Oder das Ausgabe-PDF-Dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Bildunterschrift

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Dokumente ermöglichen es Benutzern, Bildunterschrift hinzuzufügen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Eine Kaption, die eine Figur begleitet, ist mit einem Caption-Tag gekennzeichnet.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Derzeit Aspose.Words nicht mit dem Caption-Tag Untertitel exportieren, so dass sie in der Ausgabe PDF markiert werden müssen.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie man die Beschriftung einfügt (weitere Details).</summary>
    <p></p>
    <p>In Microsoft Word, die Beschriftung könnte durch das Kontextmenü eingefügt werden:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat könnte die Caption über die `Object` Dialog Eigenschaften:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate Beschreibungen

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Dokumente ermöglichen es Benutzern, abwechselnden Text zu Bildern, Formen und Tabellen hinzuzufügen. Aspose.Words exportiert einen solchen Wechseltext in die Ausgabe PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Alle Strukturelemente, deren Inhalt kein natürliches vorgegebenes Textanalogon, z.B. Bilder, Formeln usw., aufweist, sollten eine alternative Textbeschreibung mit dem Alt-Eintrag im Strukturelementwörterbuch liefern...</p>
    <p>HINWEIS Alternative Beschreibungen liefern Textbeschreibungen, die bei der ordnungsgemäßen Interpretation von ansonsten untextuellen Inhalten helfen.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: wie Sie sicherstellen können, dass alle Elemente einen alternativen Text haben (weitere Details).</summary>
    <p></p>
    <p>Benutzer sollten sicherstellen, dass alle Elemente einen alternativen Text in entweder dem Quelltextdokument haben:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Oder das Ausgabe-PDF-Dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate Beschreibungen für Hyperlinks

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Neben dem vorhergehenden Punkt, Microsoft Word Dokumente ermöglichen es Benutzern auch, alternativen Text zu Hyperlinks hinzuzufügen. Aspose.Words exportiert einen solchen Wechseltext in die Ausgabe PDF.

Leider können Sie nicht jede Anwendung eine alternative Beschreibung einrichten. Zum Beispiel Adobe Acrobat derzeit nicht in der Lage, eine solche Beschreibung für Hyperlinks einzurichten. Aber in Microsoft Word, Sie können dies wie folgt tun:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Manchmal gibt es ein Problem, dass es nicht möglich ist, Alttext für autogenerierte Hyperlinks in der Inhaltstabelle (TOC) durch die Microsoft Word GUI. Aspose.Words könnte solche Felder aktualisieren und die Links selbst generieren.

Folgen Sie dem Codebeispiel zum Update `TOC` Felder mit Aspose.Words Document Object Model (DOM:

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Tabelle Header

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabellen in PDF/UA-1 Dokumenten müssen Header haben – Spalte, Zeile oder beide. PDF/A erfordert nur eine Standard-Tabellenmarkierung, die keine zusätzlichen Einschränkungen hat. Anmerkung: Aspose.Words generiert automatisch die Standard-Tabellenmarkierung.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Tische sollten Header... Tabellen können Spaltenüberschriften, Zeilenüberschriften oder beide enthalten.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie man den Tisch-Header einstellt (weitere Details).</summary>
    <p></p>
    <p>Der Tischkopf könnte entweder die Quelle einrichten Microsoft Word Dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Oder die Ausgabe PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Ersatz Text

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Die Spezifikation sagt uns:</p>
    <p>Alle textuellen Strukturelemente, die nicht standardmäßig dargestellt sind, z.B. benutzerdefinierte Zeichen oder Inline-Grafik, sollten Ersatztext über die `ActualText` Eintritt in das Strukturelement Wörterbuch...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word Dokument erlaubt es den Benutzern nicht, Ersatztext festzulegen. Dies muss also im Output PDF überprüft und behoben werden:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abkürzungen und Akronyme Erweiterungen

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Alle Fälle von Abkürzungen und Akronymen in Textinhalten sollten mit einem Span-Tag, dessen E-Eigenschaft eine textuelle Erweiterung der Abkürzung oder Akronymus...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word Das Dokument erlaubt es Benutzern nicht, Abkürzungen und Akronyme Erweiterungen festzulegen. Dies muss also im Output PDF überprüft und behoben werden:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titel des Dokuments

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Dokument in PDF/UA-1 sollte einen Titel haben |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Die Spezifikation sagt uns:</p>
    <p>Der Metadaten-Stream im Katalogwörterbuch des Dokuments enthält einen dc:title-Eintrag, bei dem dc das empfohlene Präfix für das Dublin Core-Metadatenschema ist...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie man den Dokumenttitel festlegt (weitere Details).</summary>
    <p></p>
    <p>Der Dokumenttitel könnte entweder die Quelle einrichten Microsoft Word Dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Oder die Ausgabe PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Anforderungen an die Schriftart

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Es gibt auch eine Reihe von Nuancen der Arbeit mit Schriften bei der Umwandlung in PDF/A-1, PDF/A-2, PDF/A-4 oder PDF/UA-1 Formate mit Aspose.Words. Sie müssen berücksichtigt werden, wenn Sie mögliche Probleme mit dem Ausgabedokument vermeiden möchten.

Die nachfolgenden Abschnitte beschreiben solche Nuancen und Optionen für ihre Lösung.

### Schriftliche Anforderungen

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words überprüft nicht die rechtlichen Einschränkungen der verwendeten Schriftarten – es liegt an den Benutzern. Mit anderen Worten, ein Benutzer sollte keine unangemessenen Schriften für die PDF-Konvertierung mit Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Es werden nur Schriftprogramme verwendet, die legal in einer Datei für unbegrenztes, universelles Rendern einbettbar sind.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (genau die gleichen Zitate in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Die Nutzung der `.notdef` glyph ist verboten. Die `.notdef` glyph erscheint, wenn ein Dokument Zeichen enthält, die nicht in der ausgewählten Schrift vorhanden sind und die auch nicht über den Font Fallback-Mechanismus behoben werden können.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Ein entsprechendes Dokument darf keinen Verweis auf den .notdef enthalten. glyph aus jedem Text, der die Operatoren zeigt, unabhängig von der Textwiedergabe, in jedem Inhaltsstrom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (genau die gleichen Zitate in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: wie diese Zeichen zu entfernen oder zu ersetzen (Details zu sehen).</summary>
    <p></p>
    <p>Benutzer sollten diese Zeichen entweder im Quelltext-Dokument entfernen oder ersetzen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Oder das Ausgabe-PDF-Dokument mit dem "Edit PDF"-Tool:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Privater Nutzungsbereich (PUA)

|  PDF-Standard-Konformitätsstufen innerhalb Aspose.Words |  Voraussetzung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Private Use Area (PUA) Zeichen erscheinen meist für Windows symbolische Schriftarten wie "Symbol", "Wingdings", "Webdings" und andere. Microsoft Word Formate bieten keine Möglichkeit, den aktuellen Text für Zeichen zu speichern.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns folgendes (weitere Einzelheiten zu sehen):</summary>
    <p></p>
    <p>Für Ebene Für jedes Zeichen, das auf einen Code oder Codes im Unicode Private Use Area (PUA) abgebildet wird, ist ein ActualText-Eintrag ... für dieses Zeichen oder eine Zeichenfolge vorhanden, von der ein solches Zeichen Teil ist.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" ist ein Windows Unicode Schriftart, die als Alternative zu symbolischen Schriftarten verwendet werden könnte.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block können Sie Beispiele sehen: Was Benutzer tun sollte, um das Problem mit symbolischen Schriften zu lösen (weitere Details zu sehen).</summary>
    <p></p>
    <p>Ersetzen Sie die symbolische Schrift mit einem Unicode ein in das Quellwortdokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Oder einen ActualText-Eintrag zu den problematischen Zeichen im Ausgabe-PDF-Dokument hinzufügen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
