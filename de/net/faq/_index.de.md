---
title: FAQ
second_title: Aspose.Words für .NET
articleTitle: FAQ – Aspose.Words für .NET
linktitle: FAQ – Aspose.Words für .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words für .NET beantwortet die am häufigsten gestellten Fragen. Lernen Sie diese Seite kennen, um Ihr Problem bei allgemeinen Fragen oder spezifischen Themen schnell zu lösen."
weight: 75
url: /de/net/faq/
---

Auf dieser Seite finden Sie Antworten auf die am häufigsten gestellten Fragen. Bitte informieren Sie sich auf der aktuellen Seite – vielleicht können Sie so Ihr Problem schnell lösen.

Wenn Sie die Antwort auf Ihre Frage nicht gefunden haben, können Sie im Support-Forum nachfragen. Informationen dazu, wie Sie Ihre Frage oder Ihr Problem ordnungsgemäß melden, finden Sie auf der [Technische Unterstützung](/words/de/net/technical-support/)-Seite.

{{% alert color="primary" %}}

Zur Vereinfachung sind häufig gestellte Fragen nach Themen gruppiert.

{{% /alert %}}

## Allgemein

**F: Was ist Aspose.Words?**

Aspose.Words für .NET ist eine Klassenbibliothek, die es Ihren Anwendungen ermöglicht, eine Vielzahl von Dokumentenverarbeitungsaufgaben auszuführen. Mit Aspose.Words für .NET können Sie Dokumente ohne Anwendungen von Drittanbietern erstellen, ändern, konvertieren, rendern und drucken.

Details finden Sie in unserer Dokumentation.

------

**F: Was bedeutet "Aspose.Words erfordert keine Anwendungen von Drittanbietern"?**

Aspose.Words für .NET muss keine Anwendungen von Drittanbietern oder zusätzliche Softwarepakete installieren, um zu funktionieren. Laden Sie einfach Aspose.Words herunter, installieren Sie es wie im [Installation](/words/de/net/installation/)-Artikel beschrieben und legen Sie los.

------

**F: Welche Plattformen unterstützt Aspose.Words?**

Aspose.Words für .NET deckt die meisten gängigen Entwicklungsumgebungen und Bereitstellungsplattformen ab. Sein API kann zur Entwicklung von Anwendungen für eine Vielzahl von Betriebssystemen wie Windows, Linux und Mac OS sowie für verschiedene Plattformen verwendet werden.

Einzelheiten finden Sie auf der [Produktübersicht](/words/de/net/product-overview/)-Seite und im Abschnitt [Plattformen und Interoperability](/words/net/platforms-and-interoperability/).

------

**F: Welche Dokumentformate unterstützt Aspose.Words?**

Aspose.Words für .NET unterstützt die meisten gängigen Dokumentformate wie DOC, DOCX, HTML, Markdown, PDF, XML und andere.

Die vollständige Liste der unterstützten Formate finden Sie auf der [Unterstützte Dokumentformate](/words/de/net/supported-document-formats/)-Seite.

------

**F: Wie kann ich Aspose.Words kostenlos testen?**

Sie können dies auf zwei Arten tun – mit der Testversion oder einer 30-tägigen temporären Lizenz. Die Testversion ist die gleiche wie die gekaufte Version, sie bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern ein bewertendes Wasserzeichen am oberen Rand des Dokuments hinzu und begrenzt die maximale Dokumentgröße auf einige hundert Absätze. Mit einer temporären Lizenz können Sie Aspose.Words 30 Tage lang ohne Testeinschränkungen testen.

Weitere Informationen finden Sie auf der [Lizenzierung und Abonnement](/words/de/net/licensing/)-Seite.

{{% alert color="primary" %}}

Sie können auch einige der beliebtesten Aspose.Words-Funktionen über [Kostenlose Aspose.Words Online Apps](https://products.aspose.app/words) ausprobieren.

{{% /alert %}}

------

**F: Wie kann ich Aspose.Words kaufen?**

Um eine Aspose.Words-Lizenz zu kaufen, müssen Sie auf die [Kaufen](https://purchase.aspose.com/buy)-Seite gehen, das "Aspose.Words"-Produkt und den für Sie passenden Lizenztyp auswählen. Fügen Sie dann die Lizenz Ihrem Warenkorb hinzu und befolgen Sie die Anweisungen im Warenkorb.

Beantragen Sie nach dem Kauf die Lizenz wie im Abschnitt [Gekaufte Lizenz](/words/net/licensing/#purchased-license) beschrieben.

Einzelheiten zur Installation von Aspose.Words können auf der [Installation](/words/de/net/installation/)-Seite nachgelesen werden.

------

**F: Wie kann ich Unterstützung erhalten?**

Nutzen Sie das kostenlose technische Support-Forum. Einzelheiten dazu, wie Sie ein Problem ordnungsgemäß melden und was zu tun ist, bevor Sie das Forum kontaktieren, finden Sie auf der [Technische Unterstützung](/words/de/net/technical-support/)-Seite.

## Rendern eines Dokuments

{{% alert color="primary" %}}

Ausführlichere Informationen zum Rendern finden Sie im Abschnitt [Rendern](/words/de/net/rendering/)-Dokumentation.

{{% /alert %}}

**F: Warum unterscheiden sich Layout und Schriftarten im Ausgabedokument vom Original?**

Die Schriftart ist möglicherweise nicht verfügbar oder das Schriftartformat wird von Microsoft Word, aber nicht von Aspose.Words unterstützt. Aspose.Words führt [Bearbeiten und ersetzen Sie TrueType-Schriftarten](/words/de/net/manipulating-and-substitution-truetype-fonts/) aus.

So überprüfen Sie, ob die Schriftart fehlt:

* Verwenden Sie in Aspose.Words die Warnungen zur Schriftartersetzung (Einzelheiten finden Sie im Abschnitt "So erkennen Sie, dass die Schriftart ersetzt wurde" des [Bearbeiten und ersetzen Sie TrueType-Schriftarten](/words/de/net/manipulating-and-substitution-truetype-fonts/)-Artikels).
* Öffnen Sie in Microsoft Word das Dialogfeld "Schriftartenersetzung" (Datei → Optionen → Erweitert → Schriftartenersetzung).

------

**F: Wo soll ich Schriftarten für ASP.NET-Anwendungen speichern?**

In `APS.NET` gibt es bei mittlerer Vertrauenswürdigkeit keinen Zugriff auf den Systemschriftartenordner. Benutzer müssen Schriftarten in ihrem eigenen Ordner speichern.

------

**F: Warum funktioniert der Schriftart-Fallback nicht auf Nicht-Windows-Plattformen und warum werden Unicode-Zeichen durch .notdef glyph ersetzt?**

Anstelle eines Unicode-Zeichens können wir häufig `.notdef` glyph sehen. Dies ist normalerweise ein Kästchen oder eine Frage-glyph.

Dies liegt daran, dass die Microsoft Office-Fallback-Einstellungen standardmäßig ausgewählt sind und Microsoft Office-Schriftarten nicht verfügbar sind. Benutzer müssen Microsoft Office-Schriftarten installieren oder Fallback-Einstellungen ändern.

------

**F: Warum wird komplexer Skripttext wie Thailändisch oder Hebräisch möglicherweise aus irgendeinem Grund ungenau angezeigt, beispielsweise durch die falsche Position für diakritische Zeichen oder ungenaue Ligaturen?**

Einige komplexe Schriftarten erfordern die Verarbeitung der Advanced Typography-Funktionen, damit sie korrekt angezeigt werden. Erweiterte Typografie ist in Aspose.Words standardmäßig deaktiviert. Benutzer müssen Advanced Typography mit [TextShaperFactory](https://reference.aspose.com/words/de/net/aspose.words.layout/layoutoptions/textshaperfactory/) aktivieren.

------

**F: Benötige ich Lizenzdateien für die von mir verwendeten Schriftarten?**

Ja, das tust du. Beachten Sie daher beim Kopieren von Schriftarten, dass die meisten Schriftarten urheberrechtlich geschützt sind. Suchen Sie im Voraus nach Schriftartenlizenzen und stellen Sie sicher, dass diese frei auf einen anderen Computer übertragen werden können.

## Verschachteltes Mail Merge

{{% alert color="primary" %}}

Ausführlichere Informationen zu mail merge finden Sie im Abschnitt [Mail Merge und Berichterstattung](/words/net/mail-merge-and-reporting/)-Dokumentation.

{{% /alert %}}

**F: Warum gibt es in der generierten Ausgabe keine zusammengeführten Felder?**

Der ursprüngliche Name des Zusammenführungsfelds bleibt gleich, ohne durch die erforderlichen Daten aus der Datenquelle ersetzt zu werden. Dann gilt:

* Überprüfen Sie, ob die Daten ordnungsgemäß in die Tabellen geladen werden: Stellen Sie [TableName](https://reference.aspose.com/words/de/net/aspose.words.mailmerging/imailmergedatasource/tablename/) mit allen erforderlichen Primärschlüsseln und Beziehungen korrekt ein.
* Überprüfen Sie, ob die Zusammenführungsfelder richtig benannt sind. Verwenden Sie die [GetFieldNames](https://reference.aspose.com/words/de/net/aspose.words.mailmerging/mailmerge/getfieldnames/)-Methode, um alle Namen der Briefvorlagenfelder abzurufen und sicherzustellen, dass der Name der Briefvorlagenfelder in Ihrer Vorlage mit dem Namen in Ihrer Datenquelle übereinstimmt.

------

**F: Warum zeigt die Ausgabe der verschachtelten Zusammenführung keine Daten aus der untergeordneten Tabelle für den ersten Eintrag in der übergeordneten Tabelle an, sondern alle Elemente für den letzten Eintrag in der übergeordneten Tabelle, auch solche, die nicht tatsächlich damit verknüpft sind?**

Dies liegt daran, dass die Zusammenführungsbereiche in der Vorlage nicht korrekt geformt sind, was dazu führen kann, dass in allen verschachtelten mail merge-Bereichen überhaupt nichts mehr angezeigt wird. Das öffnende [StartTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/starttable/)-Tag und das schließende [EndTable](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/endtable/)-Tag müssen übereinstimmen und sich in derselben Zeile oder Zelle befinden. Wenn Sie beispielsweise mit der Verschachtelung von Zusammenführungsbereichen in einer Zelle einer Tabelle beginnen, müssen Sie den Zusammenführungsbereich in derselben Zeile wie die erste Zelle beenden.

------

**F: Warum zeigt jeder Eintrag aus der übergeordneten Tabelle jedes Element in der untergeordneten Tabelle an, auch solche, die nicht tatsächlich damit verknüpft sind?**

Dies liegt daran, dass die Beziehungen zwischen den übergeordneten und untergeordneten Tabellen nicht oder falsch eingerichtet sind. Es ist nötig zu:

* Stellen Sie die Datenintegrität in Ihrem **DataSet** sicher und verwenden Sie das **DataRelation**-Objekt, um die Eltern-Kind-Beziehung zwischen verwandten Datentabellen darzustellen.
* Lesen Sie den Abschnitt "So richten Sie Datenbeziehungen in verschachteltem Mail Merge mit Regionen ein" im Artikel [Verschachteltes Mail Merge mit Regionen](/words/net/nested-mail-merge-with-regions/).

------

**F: Warum gibt es beim Ausführen von verschachteltem mail merge eine Ausnahme: "System.ArgumentException: Diese Einschränkung kann nicht aktiviert werden, da nicht alle Werte entsprechende übergeordnete Werte haben"?**

Dies liegt daran, dass nicht jeder übergeordnete Datensatz über einen untergeordneten Datensatz verfügt und Ihre Datenquelle daher nicht den folgenden Kriterien entspricht: *Jede Zeile in der übergeordneten Tabelle sollte eine Eins-zu-eins-Beziehung zu den Zeilen der untergeordneten Tabelle haben, basierend auf dem primären und fremde Schlüssel*.

Deaktivieren Sie Fremdschlüsseleinschränkungen, wenn Sie ein **DataRelation** erstellen.

## Ein Dokument anhängen oder einfügen

{{% alert color="primary" %}}

Nähere Informationen zum Programmieren mit Dokumenten finden Sie im Bereich [Programmieren mit Dokumenten](/words/de/net/programming-with-documents/)-Dokumentation.

{{% /alert %}}

**F: Warum werden an ein Dokument angehängte Inhalte nicht auf derselben Seite angezeigt?**

Das Ergebnis des Anhängens wird aufgrund unterschiedlicher [PageSetup](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/)-Einstellungen für die Abschnitte, in denen die Dokumente aneinander angehängt werden, auf einer separaten Seite angezeigt. Nehmen Sie identische **PageSetup**-Einstellungen für die Abschnitte vor, in denen die Dokumente aneinander angehängt werden.

## Konvertieren Sie ein Dokument

{{% alert color="primary" %}}

Ausführlichere Informationen zum Konvertieren eines Dokuments finden Sie im Abschnitt [Konvertieren Sie ein Dokument](/words/de/net/convert-a-document/)-Dokumentation.

{{% /alert %}}

**F: Wie konvertiert man PDF in Word?**

Es ist ganz einfach: Laden Sie einfach ein Dokument in das Modell und speichern Sie es in einem beliebigen unterstützten Format.

Das folgende Codebeispiel zeigt den Prozess der Konvertierung einer PDF-Datei in DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**F: Wie konvertiert man DOCX in PDF?**

Es ist auch sehr einfach: Laden Sie einfach ein Dokument in das Modell und speichern Sie es in einem beliebigen unterstützten Format.

Das folgende Codebeispiel zeigt den Prozess der Konvertierung einer DOCX-Datei in PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Mit einem Dokument manipulieren

{{% alert color="primary" %}}

Nähere Informationen zum Programmieren mit Dokumenten finden Sie im Bereich [Programmieren mit Dokumenten](/words/de/net/programming-with-documents/)-Dokumentation.

{{% /alert %}}

**F: Wie teile ich ein Dokument Seite für Seite auf?**

Mit Aspose.Words können Sie ein mehrseitiges Dokument Seite für Seite aufteilen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument teilen und jede Seite als separates Dokument speichern:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**F: So öffnen Sie eine verschlüsselte Datei** **dokumentieren?**

Sie können versuchen, ein verschlüsseltes Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie man ein verschlüsseltes Dokument mit einem Passwort öffnet:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**F: Wie drucke ich ein Dokument?**

Nur zwei Zeilen Code.

Das folgende Codebeispiel zeigt, wie ein Dokument auf zwei Arten gedruckt wird:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**F: Wie bearbeite ich ein PDF-Dokument?**

Laden Sie einfach PDF in das Aspose.Words-Dokumentmodell und nehmen Sie Änderungen vor.

Das folgende Codebeispiel zeigt, wie ein Dokument bearbeitet wird:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**F: Wie verwende ich Aspose.Words in Docker?**

Eine ausführliche Antwort finden Sie im Artikel [So führen Sie Aspose.Words in Docker aus](/words/de/net/how-to-run-aspose-words-in-docker/).
