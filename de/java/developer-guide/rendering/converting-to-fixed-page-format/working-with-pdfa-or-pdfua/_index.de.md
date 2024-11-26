---
title: Arbeiten mit PDF/A oder PDF/UA
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit PDF/A oder PDF/UA
linktitle: Arbeiten mit PDF/A oder PDF/UA
description: "Konvertieren in PDF/A-1, PDF/A-2, PDF/A-4 und PDF/UA mit Java. Es gibt einige Probleme beim Konvertieren in PDF/A -Dokumente, und Aspose.Words für Java löst sie."
type: docs
weight: 28
url: /de/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Das Format PDF/A und PDF/UA stellt mehrere Anforderungen in Bezug auf den Dokumentinhalt, die bei der automatischen Konvertierung von einem Dokument im Word-Format nach PDF nicht erfüllt werden können. Diese Anforderungen sollten entweder in einem Word-Dokument vor der Konvertierung oder in einem PDF-Dokument nach der Konvertierung überprüft und korrigiert werden, um ein vollständig PDF/A- und PDF/UA-konformes Dokument zu erstellen.

Grundvoraussetzungen sind die Struktur oder Schriftarten eines PDF/A - und PDF/UA -Dokuments, auf die wir in den folgenden Abschnitten eingehen werden.

{{% alert color="primary" %}}

Bitte beachten Sie, dass die Ausgabe von PDF/UA-1 auch WCAG 2.0 und Abschnitt 508 entspricht.

{{% /alert %}}

## Anforderungen an die Dokumentenstruktur

Die aktuellen Anforderungen sind für PDF/A-1a, PDF/A-2a, PDF/A-4, und PDF/UA-1 Formate.

Es gibt einige Nuancen, wie Aspose.Words bei der Konvertierung in verschiedene PDF -Formatstandards funktioniert. Sie müssen berücksichtigt werden, wenn Sie das erwartete Ergebnis erzielen möchten.

{{% alert color="primary" %}}

Beachten Sie, dass für PDF/A-4 keine logischen Strukturanforderungen bestehen. Aus diesem Grund berücksichtigen wir die PDF/A-4 -Version in diesem Abschnitt "Anforderungen an die Dokumentenstruktur" nicht.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Es ist für Autoren nicht ratsam, strukturelle oder semantische Informationen mit automatisierten Prozessen ohne entsprechende Überprüfung zu generieren.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

In den folgenden Unterabschnitten werden Nuancen der Funktionsweise von Aspose.Words bei der Konvertierung in verschiedene PDF -Formatstandards und Optionen für deren Lösung beschrieben.

### Strukturtyp

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ein PDF -Dokument ist eine Folge von Blöcken wie Überschriften, Absätzen, Tabellen und anderen. Diese Blöcke bilden eine Dokumentenstruktur – stark oder schwach.

Sowohl starke als auch schwache Strukturen sind für PDF/A gültig. Microsoft Word -Dokumente haben von Natur aus eine schwache Struktur, und Aspose.Words erstellt PDF mit der schwachen Struktur bzw. generiert auch Überschriften gemäß den Gliederungsebenen von Absätzen im Quelldokument.

Bei einem PDF/UA-1 -Dokument mit einer schwachen Struktur ist es zusätzlich erforderlich, dass die Überschriftennummern ohne Lücken in der Reihenfolge angeordnet sind.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Die Struktur auf Blockebene kann einem von zwei Hauptparadigmen folgen:</p>
    </ol>
      <li>Stark strukturiert. Die Gruppierungselemente sind auf so vielen Ebenen wie nötig verschachtelt, um die Organisation des Materials in Artikel, Abschnitte, Unterabschnitte usw. widerzuspiegeln. Auf jeder Ebene sollten die untergeordneten Elemente des Gruppierungselements aus einer Überschrift (H), einem oder mehreren Absätzen (P) für Inhalte auf dieser Ebene und möglicherweise einem oder mehreren zusätzlichen Gruppierungselementen für verschachtelte Unterabschnitte bestehen.</li>
      <li>Schwach strukturiert. Das Dokument ist relativ flach und hat möglicherweise nur eine oder zwei Ebenen von Gruppierungselementen mit allen Überschriften, Absätzen und anderen BLSEs als unmittelbaren untergeordneten Elementen. In diesem Fall spiegelt sich die Organisation des Materials nicht in der logischen Struktur wider; Es kann jedoch durch die Verwendung von Überschriften mit bestimmten Ebenen ausgedrückt werden (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Für PDF/UA-1-Dokumente enthält die Spezifikation einen Zusatz in Bezug auf Überschriftenebenen (erweitern, um Details anzuzeigen):</summary>
    <p></p>
    <p>Wenn die Dokumentensemantik eine absteigende Abfolge von Überschriften erfordert, muss eine solche Abfolge in strikter numerischer Reihenfolge erfolgen und darf eine dazwischenliegende Überschriftenebene nicht überspringen. H1 H2 H3 ist zulässig, H1 H3 nicht.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Um eine korrekte Ausgabe zu gewährleisten, müssen Benutzer sicherstellen, dass der Inhalt des Quelldokuments ordnungsgemäß organisiert ist und Gliederungsebenen für Absätze korrekt angegeben sind. Andernfalls sollte der Benutzer die Struktur des Ausgabedokuments PDF überprüfen und korrigieren.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Festlegen von Gliederungsebenen in Microsoft Word oder Überprüfen und Korrigieren der Struktur des Ausgabedokuments PDF (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>In Microsoft Word könnten Standardstile "Überschrift X" verwendet werden, um die Gliederungsebene festzulegen:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Zusätzlich könnte die Gliederungsebene im Fenster "Absatz" überprüft oder geändert werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat konnte die Dokumentstruktur im Bereich "Tags" überprüft oder geändert werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Markieren des Inhalts als Artefakt

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Derzeit markiert Aspose.Words Kopf- und Fußzeilen von Seiten, Notentrennzeichen, wiederholte Tabellenkopfzellen und dekorative Bilder als Artefakte. Beachten Sie, dass diese Liste in Zukunft aktualisiert werden kann.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Die Grafikobjekte in einem Dokument können in zwei Klassen unterteilt werden:</p>
    </ol>
      <li>Der eigentliche Inhalt eines Dokuments besteht aus Objekten, die Material darstellen, das ursprünglich vom Autor des Dokuments eingeführt wurde.</li>
      <li>Artefakte sind Grafikobjekte, die nicht Teil des ursprünglichen Inhalts des Autors sind, sondern vom konformen Autor im Zuge von Paginierung, Layout oder anderen rein mechanischen Prozessen erzeugt werden.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Wenn ein Dokument andere Inhalte enthält, die als Artefakt markiert werden sollen, oder wenn es sich bei einem der Artefakte um echte Inhalte handelt, sollten Kunden dies in der Ausgabe PDF korrigieren.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Markieren von Formen als dekorativ in Microsoft Word oder Markieren von Formen als Artefakt im Ausgabedokument PDF (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>Beispielsweise könnten Formen in Microsoft Word als dekorativ markiert werden, sodass sie als Artefakt nach PDF exportiert werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Sie können die Form als Artefakt in der Ausgabe PDF markieren:</p>
   <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Außerdem können Sie Text in einer Kopfzeile vom Artefakt zu echtem Inhalt in der Ausgabe PDF wechseln:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spezifikation natürlicher Sprache

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Die Textsprache ist in Microsoft Word-Dokumenten angegeben. Aspose.Words exportiert die angegebene Sprache in eine Ausgabe PDF mit dem Attribut *Lang*, das an eine Sequenz mit markiertem Inhalt oder ein Span-Tag angehängt ist - es wird von der Eigenschaft [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) gesteuert. Im Allgemeinen gibt es keine Sprachprobleme, wenn Text vom Benutzer über Microsoft Word eingegeben wird. Es besteht jedoch die Möglichkeit, dass die Sprache ungenau ist, wenn der Text automatisch generiert wird.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Die standardmäßige natürliche Sprache für den gesamten Text in einer Datei sollte durch den Spracheintrag im Katalogwörterbuch des Dokuments angegeben werden.</p>
    <p>Alle Textinhalte in einer Datei, die von der Standardsprache abweichen, sollten durch Verwendung einer `Lang` -Eigenschaft, die an eine Sequenz mit markiertem Inhalt angehängt ist, oder durch einen Spracheintrag in einem Strukturelement-Wörterbuch angezeigt werden...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Zusätzlich für PDF/UA-1 sagt uns die Spezifikation Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Natürliche Sprache wird deklariert ... Änderungen in der natürlichen Sprache werden deklariert.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: So stellen Sie sicher, dass die Sprache korrekt angegeben ist (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten sicherstellen, dass die Sprache im Word-Quelldokument korrekt angegeben ist:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Oder das Ausgabedokument PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Bildunterschrift

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word -Dokumente ermöglichen Benutzern das Hinzufügen von Bildunterschriften.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Eine Bildunterschrift, die einer Abbildung beigefügt ist, muss mit einem Beschriftungs-Tag versehen sein.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Derzeit kann Aspose.Words keine Untertitel mit dem Caption-Tag exportieren, daher müssen sie in der Ausgabe PDF gekennzeichnet sein.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Einfügen der Beschriftung (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>In Microsoft Word könnte die Beschriftung über das Kontextmenü eingefügt werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat kann die Beschriftung über den Eigenschaftendialog `Object` hinzugefügt oder geändert werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternative Beschreibungen

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word-Dokumente ermöglichen Benutzern das Hinzufügen von alternativem Text zu Bildern, Formen und Tabellen. Aspose.Words exportiert einen solchen Alternativtext in die Ausgabe PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Alle Strukturelemente, deren Inhalt kein natürliches vorgegebenes textliches Analogon hat, z. B. Bilder, Formeln usw., sollte eine alternative Textbeschreibung unter Verwendung des Alt-Eintrags im Strukturelement-Wörterbuch liefern...</p>
    <p>NOTE Alternative Beschreibungen stellen textuelle Beschreibungen bereit, die bei der korrekten Interpretation ansonsten undurchsichtiger nicht-textueller Inhalte helfen.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: So stellen Sie sicher, dass alle Elemente einen alternativen Text haben (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten sicherstellen, dass alle Elemente einen alternativen Text im Word-Quelldokument enthalten:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Oder das Ausgabedokument PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternative Beschreibungen für Hyperlinks

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Zusätzlich zum vorherigen Punkt können Benutzer in Microsoft Word -Dokumenten auch alternativen Text zu Hyperlinks hinzufügen. Aspose.Words exportiert einen solchen Alternativtext in die Ausgabe PDF.

Leider können Sie nicht in jeder Anwendung eine alternative Beschreibung einrichten. Zum Beispiel ermöglicht Adobe Acrobat derzeit nicht, eine solche Beschreibung für Hyperlinks einzurichten. In Microsoft Word können Sie dies jedoch wie folgt tun:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Manchmal gibt es ein Problem, dass es nicht möglich ist, Alternativtext für automatisch generierte Hyperlinks im Inhaltsverzeichnis (TOC) über Microsoft Word GUI festzulegen. Aspose.Words könnte solche Felder aktualisieren und die Links selbst generieren.

Befolgen Sie das Codebeispiel, um `TOC` -Felder mithilfe des Aspose.Words -Dokumentobjektmodells (DOM) zu aktualisieren:

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

### Tabellenkopf

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabellen in PDF/UA-1-Dokumenten müssen Überschriften haben - Spalte, Zeile oder beides. PDF/A erfordert nur Standardtabellenmarkierungen, für die keine zusätzlichen Einschränkungen gelten. Beachten Sie, dass Aspose.Words das Standardtabellen-Markup automatisch generiert.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Tabellen sollten Überschriften enthalten ... Tabellen können Spaltenüberschriften, Zeilenüberschriften oder beides enthalten.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Festlegen des Tabellenkopfs (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>Der Tabellenkopf kann entweder im Quelldokument Microsoft Word eingerichtet werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Oder die Ausgabe PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Ersetzungstext

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Die Spezifikation sagt uns Folgendes:</p>
    <p>Alle Textstrukturelemente, die nicht standardgemäß dargestellt werden, z. B. benutzerdefinierte Zeichen oder Inline-Grafiken, sollten Ersatztext mit dem Eintrag `ActualText` im Strukturelementwörterbuch liefern...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word -Dokument erlaubt Benutzern nicht, Ersatztext festzulegen. Dies muss also in der Ausgabe PDF überprüft und behoben werden:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abkürzungen und Akronyme Erweiterungen

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Alle Vorkommen von Abkürzungen und Akronymen im Textinhalt sollten in einer Sequenz mit markiertem Inhalt mit einem Span-Tag platziert werden, dessen E-Eigenschaft eine textuelle Erweiterung der Abkürzung oder des Akronyms bereitstellt...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word Dokument erlaubt Benutzern nicht, Abkürzungen und Akronym-Erweiterungen festzulegen. Dies muss also in der Ausgabe PDF überprüft und behoben werden:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Dokumenttitel

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Dokument in PDF/UA-1 sollte einen Titel haben. |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Die Spezifikation sagt uns Folgendes:</p>
    <p>Der Metadatenstrom im Katalogwörterbuch des Dokuments muss einen dc:title-Eintrag enthalten, wobei dc das empfohlene Präfix für das Dublin Core-Metadatenschema ist…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Festlegen des Dokumenttitels (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>Der Dokumenttitel kann entweder im Quelldokument Microsoft Word eingerichtet werden:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Oder die Ausgabe PDF:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Anforderungen an die Schriftart

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Es gibt auch eine Reihe von Nuancen beim Arbeiten mit Schriftarten beim Konvertieren in PDF/A-1, PDF/A-2, PDF/A-4 oder PDF/UA-1-Formate mit Aspose.Words. Sie müssen berücksichtigt werden, wenn Sie mögliche Probleme mit dem Ausgabedokument vermeiden möchten.

Die folgenden Abschnitte beschreiben solche Nuancen und Optionen für ihre Lösung.

### Schriftrechtliche Anforderungen

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words überprüft nicht die rechtlichen Einschränkungen der verwendeten Schriftarten - es liegt an den Benutzern. Mit anderen Worten, ein Benutzer sollte keine unangemessenen Schriftarten für die PDF -Konvertierung mit Aspose.Words bereitstellen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Es dürfen nur Schriftprogramme verwendet werden, die für unbegrenztes, universelles Rendering legal in eine Datei einbettbar sind.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 ( genau die gleichen Zitate in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Die Verwendung der `.notdef` Glyphe ist verboten. Das Symbol `.notdef` wird angezeigt, wenn ein Dokument Zeichen enthält, die in der ausgewählten Schriftart nicht vorhanden sind und die auch nicht über den Schriftarten-Fallback-Mechanismus aufgelöst werden können.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Ein konformes Dokument darf keinen Verweis auf die enthalten.notdef Glyphe aus einem beliebigen Text, der Operatoren anzeigt, unabhängig vom Textwiedergabemodus in einem beliebigen Inhaltsstrom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 ( genau die gleichen Zitate in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Entfernen oder Ersetzen dieser Zeichen (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten diese Zeichen entweder im Word-Quelldokument entfernen oder ersetzen:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Oder das Ausgabedokument PDF mit dem Werkzeug "PDF bearbeiten":</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Privater Bereich (PUA)

| PDF Standard-Konformitätsstufen innerhalb von Aspose.Words | Vorhandensein der Anforderung |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Privatnutzungsbereich (PUA) Zeichen erscheinen hauptsächlich für Windows symbolische Schriftarten wie "Symbol", "Wingdings", "Webdings" und andere. Microsoft Word -Formate bieten keine Option zum Speichern von tatsächlichem Text für Zeichen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern, um Details zu sehen):</summary>
    <p></p>
    <p>Nur für Level-A-Konformität, für jeden Charakter ... das ist einem Code oder Codes im Unicode Private Use Area (PUA), einem ActualText -Eintrag, zugeordnet... muss für dieses Zeichen oder eine Zeichenfolge, zu der ein solches Zeichen gehört, vorhanden sein.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" ist eine Windows Unicode-Schriftart, die als Alternative zu symbolischen Schriftarten verwendet werden könnte.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Was Benutzer tun sollten, um das Problem mit symbolischen Schriftarten zu lösen (erweitern, um Details anzuzeigen).</summary>
    <p></p>
    <p>Ersetzen Sie die symbolische Schriftart im Word-Quelldokument durch eine Unicode-Schriftart:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Oder fügen Sie den problematischen Zeichen im Ausgabedokument PDF einen Eintrag ActualText hinzu:</p>
    <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
