---
title: Arbeiten mit PDF/A oder PDF/UA
second_title: Aspose.Words für Python
articleTitle: Arbeiten mit PDF/A oder PDF/UA
linktitle: Arbeiten mit PDF/A oder PDF/UA
description: "Konvertieren Sie mit Python in PDF/A-1, PDF/A-2, PDF/A-4 und PDF/UA. Bei der Konvertierung in PDF/A-Dokumente gibt es einige Probleme, die durch Aspose.Words für Python gelöst werden können."
type: docs
weight: 28
url: /de/python-net/working-with-pdfa-or-pdfua/
---

Das PDF/A- und PDF/UA-Format stellt mehrere Anforderungen an den Dokumentinhalt, die bei der automatischen Konvertierung von einem Dokument im Word-Format in PDF nicht erfüllt werden können. Diese Anforderungen sollten entweder in einem Word-Dokument vor der Konvertierung oder in einem PDF-Dokument nach der Konvertierung überprüft und korrigiert werden, um ein vollständig PDF/A- und PDF/UA-kompatibles Dokument zu erstellen.

Grundlegende Anforderungen bestehen an die Struktur bzw. Schriftarten eines PDF/A- und PDF/UA-Dokuments, die wir in den folgenden Abschnitten betrachten.

{{% alert color="primary" %}}

Bitte beachten Sie, dass die PDF/UA-1-Ausgabe auch WCAG 2.0 und Abschnitt 508 entspricht.

{{% /alert %}}

## Anforderungen an die Dokumentstruktur

Die aktuellen Anforderungen gelten für die Formate PDF/A-1a, PDF/A-2a, PDF/A-4 und PDF/UA-1.

Es gibt einige Nuancen in der Funktionsweise von Aspose.Words bei der Konvertierung in verschiedene PDF-Formatstandards. Sie müssen berücksichtigt werden, wenn Sie das erwartete Ergebnis erzielen möchten.

{{% alert color="primary" %}}

Beachten Sie, dass es für PDF/A-4 keine logischen Strukturanforderungen gibt. Aus diesem Grund berücksichtigen wir die PDF/A-4-Version in diesem Abschnitt "Anforderungen an die Dokumentstruktur" nicht.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Es ist für Autoren nicht ratsam, strukturelle oder semantische Informationen mithilfe automatisierter Prozesse ohne entsprechende Überprüfung zu generieren.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

In den folgenden Unterabschnitten werden die Nuancen der Funktionsweise von Aspose.Words bei der Konvertierung in verschiedene PDF-Formatstandards und Optionen für deren Lösung beschrieben.

### Strukturtyp

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ein PDF-Dokument ist eine Folge von Blöcken wie Überschriften, Absätzen, Tabellen und anderen. Diese Blöcke bilden eine Dokumentstruktur – stark oder schwach.

Für PDF/A gelten sowohl starke als auch schwache Strukturen. Microsoft Word-Dokumente haben von Natur aus eine schwache Struktur, und Aspose.Words erstellt PDFs mit entsprechend schwacher Struktur und generiert außerdem Überschriften entsprechend der Gliederungsebene der Absätze im Quelldokument.

Bei einem PDF/UA-1-Dokument mit schwacher Struktur ist es zusätzlich erforderlich, dass die Überschriftennummern lückenlos in der richtigen Reihenfolge stehen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Die Struktur auf Blockebene kann einem von zwei Hauptparadigmen folgen:</p>
    </ol>
      <li>Stark strukturiert. Die Gruppierungselemente sind auf so vielen Ebenen wie nötig verschachtelt, um die Organisation des Materials in Artikel, Abschnitte, Unterabschnitte usw. widerzuspiegeln. Auf jeder Ebene sollten die untergeordneten Elemente des Gruppierungselements aus einer Überschrift (H), einem oder mehreren Absätzen (P) für den Inhalt auf dieser Ebene und möglicherweise einem oder mehreren zusätzlichen Gruppierungselementen für verschachtelte Unterabschnitte bestehen.</li>
      <li>Schwach strukturiert. Das Dokument ist relativ flach und verfügt möglicherweise nur über eine oder zwei Ebenen von Gruppierungselementen, wobei alle Überschriften, Absätze und anderen BLSEs ihre unmittelbaren untergeordneten Elemente sind. In diesem Fall spiegelt sich die Organisation des Materials nicht in der logischen Struktur wider; Es kann jedoch durch die Verwendung von Überschriften mit bestimmten Ebenen (H1–H6) ausgedrückt werden.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Für PDF/UA-1-Dokumente enthält die Spezifikation einen Zusatz in Bezug auf Überschriftenebenen (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Wenn die Dokumentsemantik eine absteigende Folge von Überschriften erfordert, muss diese Folge in streng numerischer Reihenfolge erfolgen und darf keine dazwischen liegende Überschriftenebene überspringen. H1 H2 H3 ist zulässig, H1 H3 hingegen nicht.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Um eine korrekte Ausgabe zu gewährleisten, müssen Benutzer sicherstellen, dass der Inhalt des Quelldokuments ordnungsgemäß organisiert ist und die Gliederungsebenen für Absätze korrekt angegeben sind. Andernfalls sollte der Benutzer die Struktur des ausgegebenen PDF-Dokuments überprüfen und korrigieren.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: wie Sie Gliederungsebenen in Microsoft Word festlegen oder die Struktur des ausgegebenen PDF-Dokuments überprüfen und korrigieren (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>In Microsoft Word können die Standardformate "Überschrift X" verwendet werden, um die Gliederungsebene festzulegen:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWÜberschrift1-2" style="width:800px"/>
    <p>Darüber hinaus konnte im Fenster "Absatz" die Gliederungsebene überprüft bzw. geändert werden:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat kann die Dokumentstruktur im Bereich "Tags" überprüft oder geändert werden:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Den Inhalt als Artefakt markieren

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Derzeit markiert Aspose.Words Seitenkopf- und -fußzeilen, Notiztrennzeichen, wiederholte Tabellenkopfzellen und dekorative Bilder als Artefakte. Beachten Sie, dass diese Liste in Zukunft möglicherweise aktualisiert wird.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Die Grafikobjekte in einem Dokument können in zwei Klassen unterteilt werden:</p>
    </ol>
      <li>Der eigentliche Inhalt eines Dokuments besteht aus Objekten, die Material darstellen, das ursprünglich vom Autor des Dokuments eingeführt wurde.</li>
      <li>Artefakte sind Grafikobjekte, die nicht Teil des ursprünglichen Inhalts des Autors sind, sondern vom konformen Autor im Zuge der Paginierung, des Layouts oder anderer rein mechanischer Prozesse generiert werden.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Wenn ein Dokument andere Inhalte enthält, die als Artefakt markiert werden sollten, oder wenn es sich bei den artefaktierten Inhalten um echte Inhalte handelt, sollten Kunden dies im Ausgabe-PDF korrigieren.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: wie man Formen in Microsoft Word als dekorativ markiert oder Formen im ausgegebenen PDF-Dokument als Artefakt markiert (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Formen könnten beispielsweise in Microsoft Word als dekorativ markiert werden, sodass sie als Artefakt in PDF exportiert werden:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Sie können die Form im Ausgabe-PDF als Artefakt markieren:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Außerdem können Sie den Text in einer Kopfzeile vom Artefakt in echten Inhalt im Ausgabe-PDF umwandeln:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spezifikation natürlicher Sprache

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Die Textsprache wird in Microsoft Word-Dokumenten angegeben. Aspose.Words exportiert die angegebene Sprache in ein Ausgabe-PDF, wobei das *Lang*-Attribut an eine markierte Inhaltssequenz oder ein Span-Tag angehängt wird – dies wird durch die [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/)-Eigenschaft gesteuert. Im Allgemeinen gibt es keine Sprachprobleme, wenn der Benutzer Text über Microsoft Word eingibt. Es besteht jedoch die Möglichkeit, dass die Sprache ungenau ist, wenn der Text automatisch generiert wird.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Die standardmäßige natürliche Sprache für den gesamten Text in einer Datei sollte durch den Lang-Eintrag im Katalogwörterbuch des Dokuments angegeben werden.</p>
    <p>Alle Textinhalte innerhalb einer Datei, die von der Standardsprache abweichen, sollten durch die Verwendung einer `Lang`-Eigenschaft angegeben werden, die an eine Sequenz mit markiertem Inhalt angehängt ist, oder durch einen Lang-Eintrag in einem Strukturelementwörterbuch ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Darüber hinaus sagt uns die Spezifikation für PDF/UA-1 Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Natürliche Sprache muss deklariert werden... Änderungen in der natürlichen Sprache müssen deklariert werden.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: So stellen Sie sicher, dass die Sprache korrekt angegeben ist (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten sicherstellen, dass die Sprache im Word-Quelldokument korrekt angegeben ist:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Oder das ausgegebene PDF-Dokument:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Alternative Beschreibungen

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word-Dokumente ermöglichen Benutzern das Hinzufügen von Alternativtext zu Bildern, Formen und Tabellen. Aspose.Words exportiert einen solchen Alternativtext in das Ausgabe-PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Alle Strukturelemente, deren Inhalt kein natürlich vorgegebenes textliches Analogon hat, z. B. Bilder, Formeln usw., sollten über den Alt-Eintrag im Strukturelement-Wörterbuch eine alternative Textbeschreibung bereitstellen ...</p>
    <p>HINWEIS Alternative Beschreibungen bieten Textbeschreibungen, die bei der richtigen Interpretation ansonsten undurchsichtiger nicht-textueller Inhalte helfen.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: So stellen Sie sicher, dass alle Elemente einen alternativen Text haben (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten sicherstellen, dass alle Elemente im Word-Quelldokument einen alternativen Text haben:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Oder das ausgegebene PDF-Dokument:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Ersatztext

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Die Spezifikation sagt uns Folgendes:</p>
    <p>Alle textuellen Strukturelemente, die auf nicht standardmäßige Weise dargestellt werden, z. B. durch benutzerdefinierte Zeichen oder Inline-Grafiken, sollten Ersatztext mithilfe des `ActualText`-Eintrags im Strukturelementwörterbuch bereitstellen ...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Im Microsoft Word-Dokument können Benutzer keinen Ersatztext festlegen. Dies muss also im Ausgabe-PDF überprüft und behoben werden:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abkürzungen und Akronymerweiterungen

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Alle Instanzen von Abkürzungen und Akronymen im Textinhalt sollten in einer markierten Inhaltssequenz mit einem Span-Tag platziert werden, dessen E-Eigenschaft eine Texterweiterung der Abkürzung oder des Akronyms bereitstellt ...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Im Microsoft Word-Dokument können Benutzer keine Abkürzungen und Akronymerweiterungen festlegen. Dies muss also im Ausgabe-PDF überprüft und behoben werden:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Schriftartanforderungen

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Auch bei der Konvertierung in die Formate PDF/A-1, PDF/A-2, PDF/A-4 oder PDF/UA-1 mit Aspose.Words gibt es einige Nuancen bei der Arbeit mit Schriftarten. Sie müssen berücksichtigt werden, wenn Sie mögliche Probleme mit dem Ausgabedokument vermeiden möchten.

Die folgenden Abschnitte beschreiben solche Nuancen und Optionen für ihre Lösung.

### Gesetzliche Anforderungen an Schriftarten

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words überprüft nicht die rechtlichen Einschränkungen der verwendeten Schriftarten – es liegt in der Verantwortung der Benutzer. Mit anderen Worten: Ein Benutzer sollte keine ungeeigneten Schriftarten für die PDF-Konvertierung mit Aspose.Words bereitstellen.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Es dürfen nur Schriftprogramme verwendet werden, die für eine unbegrenzte, universelle Wiedergabe gesetzlich in eine Datei einbettbar sind.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (genau die gleichen Anführungszeichen in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Konformitätsstufen des PDF-Standards innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Die Nutzung des `.notdef` glyph ist untersagt. Das `.notdef` glyph erscheint, wenn ein Dokument Zeichen enthält, die in der ausgewählten Schriftart nicht vorhanden sind und die auch nicht über den Font-Fallback-Mechanismus aufgelöst werden können.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Ein konformes Dokument darf keinen Verweis auf das .notdef glyph von einem der Textanzeigeoperatoren enthalten, unabhängig vom Textwiedergabemodus in irgendeinem Inhaltsstrom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (genau die gleichen Anführungszeichen in zwei Spezifikationen)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: wie diese Zeichen entfernt oder ersetzt werden (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Benutzer sollten diese Zeichen im Word-Quelldokument entfernen oder ersetzen:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Oder das ausgegebene PDF-Dokument mit dem Tool "PDF bearbeiten":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Privatnutzungsbereich (PUA)

|  PDF-Standardkonformitätsstufen innerhalb von Aspose.Words |  Vorliegen einer Anforderung |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

PUA-Zeichen (Private Use Area) erscheinen hauptsächlich für symbolische Windows-Schriftarten wie "Symbol", "Wingdings", "Webdings" und andere. Microsoft Word-Formate bieten keine Möglichkeit, tatsächlichen Text für Zeichen zu speichern.

{{% alert color="secondary" %}}
<details>
    <summary>Die Spezifikation sagt uns Folgendes (erweitern Sie, um Details anzuzeigen):</summary>
    <p></p>
    <p>Nur für Level-A-Konformität muss für jedes Zeichen ..., das einem oder mehreren Codes in der Unicode Private Use Area (PUA) zugeordnet ist, ein ActualText-Eintrag ... für dieses Zeichen oder eine Zeichenfolge davon vorhanden sein Ein Charakter ist ein Teil.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" ist eine Windows-Unicode-Schriftart, die als Alternative zu symbolischen Schriftarten verwendet werden könnte.

{{% alert color="secondary" %}}
<details>
    <summary>In diesem Block sehen Sie Beispiele: Was der Benutzer tun sollte, um das Problem mit symbolischen Schriftarten zu lösen (erweitern Sie, um Details anzuzeigen).</summary>
    <p></p>
    <p>Ersetzen Sie die symbolische Schriftart durch eine Unicode-Schriftart im Word-Quelldokument:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Oder fügen Sie einen ActualText-Eintrag zu den problematischen Zeichen im ausgegebenen PDF-Dokument hinzu:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}