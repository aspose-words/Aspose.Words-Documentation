---
title: FAQ
second_title: Aspose.Words für Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words für Java beantwortet die am häufigsten gestellten Fragen. Lernen Sie diese Seite kennen, um Ihr Problem bei allgemeinen Fragen oder bestimmten Themen schnell zu lösen."
weight: 75
url: /de/java/faq/
timestamp: 2024-01-31-14-23-37
---

Auf dieser Seite finden Sie Antworten auf die am häufigsten gestellten Fragen. Bitte lernen Sie die aktuelle Seite kennen – vielleicht können Sie so Ihr Problem schnell lösen.

Wenn Sie die Antwort auf Ihre Frage nicht gefunden haben, können Sie im Support-Forum nachfragen. Informationen darüber, wie Sie Ihre Frage oder Ihr Problem ordnungsgemäß melden können, finden Sie im [Technischer Support](/words/java/technical-support/) Seite.

{{% alert color="primary" %}}

Häufig gestellte Fragen sind zur Vereinfachung nach Themen gruppiert.

{{% /alert %}}

## Allgemein

**F: Was ist Aspose.Words?**

Aspose.Words für Java ist eine Klassenbibliothek, mit der Ihre Anwendungen eine Vielzahl von Dokumentenverarbeitungsaufgaben ausführen können. Mit Aspose.Words für Java können Sie Dokumente ohne Anwendungen von Drittanbietern generieren, ändern, konvertieren, rendern und drucken.

Details finden Sie in unserer Dokumentation.

------

**F: Was bedeutet "Aspose.Words erfordert keine Anwendungen von Drittanbietern"?**

Aspose.Words für Java muss keine Anwendungen von Drittanbietern oder zusätzliche Softwarepakete installieren, um zu funktionieren. Laden Sie einfach Aspose.Words herunter und installieren Sie es wie in der [Installation](/words/java/installation/) artikel und loslegen.

------

**F: Welche Plattformen werden von Aspose.Words unterstützt?**

Aspose.Words für Java deckt die meisten gängigen Entwicklungsumgebungen und Bereitstellungsplattformen ab. Mit API können Anwendungen für eine Vielzahl von Betriebssystemen wie Windows, Linux und Mac OS sowie für verschiedene Plattformen entwickelt werden.

Einzelheiten finden Sie in der [Produktübersicht](/words/java/product-overview/) seite und die [Plattformen und InteropErabilität](/words/java/platforms-and-interoperability/) Abschnitt.

------

**F: Welche Dokumentformate werden von Aspose.Words unterstützt?**

Aspose.Words für Java unterstützt die meisten gängigen Dokumentenformate wie DOC, DOCX, HTML, Markdown, PDF, XML, und andere.

Die vollständige Liste der unterstützten Formate finden Sie auf der [Unterstützte Dokumentenformate](/words/java/supported-document-formats/) Seite.

------

**F: Wie kann ich Aspose.Words kostenlos testen?**

Sie können dies auf zwei Arten tun – mit der Testversion oder einer temporären 30-Tage-Lizenz. Die Testversion ist die gleiche wie die gekaufte, sie bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern oben im Dokument ein bewertendes Wasserzeichen hinzu und begrenzt die maximale Dokumentgröße auf einige hundert Absätze. Mit einer temporären Lizenz können Sie Aspose.Words 30 Tage lang ohne Testbeschränkungen testen.

Sehen Sie die [Lizenzierung und Abonnement](/words/java/licensing/) seite für weitere Informationen.

{{% alert color="primary" %}}

Sie können auch einige der beliebtesten Aspose.Words Funktionen über die [Aspose.Words kostenlose Online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**F: Wie kann ich Aspose.Words kaufen?**

Um eine Aspose.Words-Lizenz zu kaufen, müssen Sie zum gehen [Kauf](https://purchase.aspose.com/buy) seite, wählen Sie das Produkt "Aspose.Words" und den Lizenztyp aus, der zu Ihnen passt. Legen Sie dann die Lizenz in Ihren Warenkorb und folgen Sie den Anweisungen im Warenkorb.

Beantragen Sie nach dem Kauf die Lizenz wie in der beschrieben [Gekaufte Lizenz](/words/java/licensing/#purchased-license) Abschnitt.

Einzelheiten zur Installation von Aspose.Words finden Sie auf der [Installation](/words/java/installation/) Seite.

------

**F: Wie kann ich Unterstützung erhalten?**

Nutzen Sie das kostenlose Forum für technischen Support. Einzelheiten dazu, wie Sie ein Problem ordnungsgemäß melden und was zu tun ist, bevor Sie das Forum kontaktieren, finden Sie im [Technischer Support](/words/java/technical-support/) Seite.

## Rendern eines Dokuments

{{% alert color="primary" %}}

Detailliertere Informationen zum Rendern finden Sie in der [Rendering](/words/java/rendering/) abschnitt Dokumentation.

{{% /alert %}}

**F: Warum unterscheiden sich Layout und Schriftarten im Ausgabedokument vom Original?**

Die Schriftart ist möglicherweise nicht verfügbar oder das Schriftformat wird von Microsoft Word, aber nicht von Aspose.Words unterstützt. Aspose.Words wird ausgeführt [schriftartenersetzung](/words/java/manipulate-and-substitute-truetype-fonts/).

Um zu überprüfen, ob die Schriftart fehlt:

- Verwenden Sie in Aspose.Words die Warnungen zum Ersetzen von Schriftarten (Einzelheiten finden Sie im Abschnitt "Erkennen, dass die Schriftart ersetzt wurde" des [TrueType -Schriften bearbeiten und ersetzen](/words/java/manipulate-and-substitute-truetype-fonts/) Beitrag).
- Öffnen Sie in Microsoft Word das Dialogfeld "Schriftartenersetzung" (Datei → Optionen → Erweitert → Schriftartenersetzung).

------

**F: Warum funktioniert das Font-Fallback nicht auf Nicht-Windows -Plattformen und Unicode-Zeichen werden durch das ersetzt.keine defg-Glyphe?**

Wir können oft die `.notdef` Glyphe anstelle eines Unicode-Zeichens sehen. Dies ist normalerweise ein Kästchen oder eine Fragenglyphe.

Dies liegt daran, dass standardmäßig Microsoft Office-Fallback-Einstellungen ausgewählt sind und Microsoft Office-Schriftarten nicht verfügbar sind. Benutzer müssen Microsoft Office-Schriftarten installieren oder Fallback-Einstellungen ändern.

------

**F: Warum könnte komplexer Schrifttext, wie Thai oder Hebräisch, aus irgendeinem Grund ungenau angezeigt werden, z. B. die falsche Position für diakritische Zeichen oder ungenaue Ligaturen?**

Einige komplexe Skriptschriften erfordern die Verarbeitung der erweiterten Typografiefunktionen, um sie korrekt anzuzeigen. Erweiterte Typografie ist in Aspose.Words standardmäßig deaktiviert. Benutzer müssen erweiterte Typografie mit [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory) aktivieren.

------

**F: Benötige ich Lizenzdateien für die von mir verwendeten Schriftarten?**

Ja, das tust du. Beachten Sie daher beim Kopieren von Schriftarten, dass die meisten Schriftarten urheberrechtlich geschützt sind. Suchen Sie vorher nach Schriftlizenzen und stellen Sie sicher, dass sie frei auf einen anderen Computer übertragen werden können.

## Verschachtelt Mail Merge

{{% alert color="primary" %}}

Nähere Informationen zu Mail Merge finden Sie in der [Mail Merge und Berichterstattung](/words/java/mail-merge-and-reporting/) abschnitt Dokumentation.

{{% /alert %}}

**F: Warum gibt es in der generierten Ausgabe keine zusammengeführten Felder?**

Der ursprüngliche Name des Seriendruckfelds bleibt unverändert, ohne durch die erforderlichen Daten aus der Datenquelle ersetzt zu werden.dann:

- Überprüfen Sie, ob die Daten ordnungsgemäß in Tabellen geladen werden: Setzen Sie die [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) mit allen erforderlichen Primärschlüsseln und Beziehungen korrekt.
- Überprüfen Sie, ob die Seriendruckfelder richtig benannt sind. Verwenden Sie die Methode [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames), um alle Namen der Seriendruckfelder abzurufen und sicherzustellen, dass der Name der Seriendruckfelder in Ihrer Vorlage mit dem Namen in Ihrer Datenquelle übereinstimmt.

------

**F: Warum zeigt die Ausgabe der verschachtelten Zusammenführung keine Daten aus der untergeordneten Tabelle für den ersten Eintrag in der übergeordneten Tabelle an, sondern alle Elemente für den letzten Eintrag in der übergeordneten Tabelle, auch solche, die nicht tatsächlich damit verknüpft sind?**

Dies liegt daran, dass die Zusammenführungsbereiche in der Vorlage nicht korrekt gebildet sind, wodurch alle verschachtelten Mail Merge -Bereiche überhaupt nichts mehr anzeigen können. Das öffnende Tag [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) und das schließende Tag [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) müssen übereinstimmen und sich in derselben Zeile oder Zelle befinden. Wenn Sie beispielsweise mit dem Verschachteln von Zusammenführungsbereichen in einer Zelle einer Tabelle beginnen, müssen Sie den Zusammenführungsbereich in derselben Zeile wie die erste Zelle beenden.

------

**F: Warum zeigt jeder Eintrag aus der übergeordneten Tabelle jedes Element in der untergeordneten Tabelle an, auch solche, die nicht tatsächlich damit verknüpft sind?**

Dies liegt daran, dass die Beziehung zwischen den übergeordneten und untergeordneten Tabellen nicht oder falsch eingerichtet ist. Es ist notwendig:

- Stellen Sie die Datenintegrität in Ihrem **DataSet** sicher und verwenden Sie das **DataRelation**-Objekt, um die Eltern-Kind-Beziehung zwischen verwandten Datentabellen darzustellen.
- Lesen Sie den Abschnitt "Einrichten von Datenbeziehungen in verschachtelten Mail Merge mit Regionen" im Artikel [Verschüttelt Mail Merge mit Regionen](/words/java/nested-mail-merge-with-regions/).

------

**F: Warum ist eine Ausnahme: "System.ArgumentException: Diese Einschränkung kann nicht aktiviert werden, da nicht alle Werte entsprechende übergeordnete Werte haben" beim Ausführen von nested mail merge?**

Dies geschieht, weil nicht jeder übergeordnete Datensatz einen untergeordneten Datensatz hat, sodass Ihre Datenquelle nicht den folgenden Kriterien entspricht: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Deaktivieren Sie Fremdschlüsseleinschränkungen, wenn Sie eine **DataRelation** erstellen.

## Dokument anhängen oder einfügen

{{% alert color="primary" %}}

Nähere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmieren mit Dokumenten](/words/java/programming-with-documents/) abschnitt Dokumentation.

{{% /alert %}}

**F: Warum werden an ein Dokument angehängte Inhalte nicht auf derselben Seite angezeigt?**

Das Anhängeergebnis wird auf einer separaten Seite angezeigt, da die [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)-Einstellungen für die Abschnitte, in denen die Dokumente angehängt werden, unterschiedlich sind. Nehmen Sie identische **PageSetup**-Einstellungen für die Abschnitte vor, in denen die Dokumente angehängt werden.

## Ein Dokument konvertieren

{{% alert color="primary" %}}

Detailliertere Informationen zum Konvertieren eines Dokuments finden Sie in der [Ein Dokument konvertieren](/words/java/convert-a-document/) abschnitt Dokumentation.

{{% /alert %}}

**F: Wie konvertiere ich DOCX in PDF?**

Es ist auch sehr einfach, laden Sie einfach ein Dokument in das Modell und speichern Sie es in einem beliebigen unterstützten Format.

Das folgende Codebeispiel zeigt den Prozess der Konvertierung einer DOCX -Datei in PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Mit einem Dokument manipulieren

{{% alert color="primary" %}}

Nähere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmieren mit Dokumenten](/words/java/programming-with-documents/) abschnitt Dokumentation.

{{% /alert %}}

**F: Wie teilt man ein Dokument Seite für Seite auf?**

Mit Aspose.Words können Sie ein mehrseitiges Dokument Seite für Seite aufteilen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument teilen und jede Seite als separates Dokument speichern:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**F: So öffnen Sie eine verschlüsselte**

Sie können versuchen, ein verschlüsseltes Dokument ohne Kennwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie Sie ein verschlüsseltes Dokument mit einem Kennwort öffnen:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**F: Wie drucke ich ein Dokument?**

Für eine ausführliche Antwort lesen Sie den Artikel [Drucken eines Dokuments programmgesteuert oder mithilfe von Dialogen](/words/java/print-a-document-programmatically-or-using-dialogs/).
