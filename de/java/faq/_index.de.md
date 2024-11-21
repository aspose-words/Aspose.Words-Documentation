---
title: FAQ
second_title: Aspose.Words für Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words für Java die am häufigsten gestellten Fragen beantwortet. Erfahren Sie diese Seite, um Ihr Problem bei allgemeinen Fragen oder bestimmten Themen schnell zu lösen."
weight: 75
url: /de/java/faq/
timestamp: 2024-01-31-14-23-37
---

Diese Seite enthält Antworten auf die am häufigsten gestellten Fragen. Bitte lernen Sie die aktuelle Seite – vielleicht können Sie Ihr Problem schnell lösen.

Wenn Sie die Antwort auf Ihre Frage nicht gefunden haben, können Sie im Support-Forum fragen. Für Informationen, wie Sie Ihre Frage oder Problem richtig melden, siehe die [Technische Unterstützung](/words/de/java/technical-support/) Seite.

{{% alert color="primary" %}}

Häufig gestellte Fragen werden nach Thema für Ihren Komfort gruppiert.

{{% /alert %}}

## Allgemeines

**Q: Was ist los? Aspose.Words?**

Aspose.Words für Java ist eine Klasse-Bibliothek, mit der Ihre Anwendungen eine Vielzahl von Dokumentenverarbeitungsaufgaben ausführen können. mit Aspose.Words für Java, Sie können Dokumente ohne Drittanbieter-Anwendungen generieren, modifizieren, konvertieren, rendern und drucken.

Details finden Sie in unserer Dokumentation.

------

**Q: Was bedeutet das?Aspose.Words erfordert keine Drittanbieter-Anwendungen?**

Aspose.Words für Java muss keine Drittanbieter-Anwendungen oder zusätzliche Softwarepakete zur Arbeit installieren. Einfach herunterladen und installieren Aspose.Words wie in der [Installation](/words/de/java/installation/) Artikel und starten.

------

**Q: Welche Plattformen tut Aspose.Words Unterstützung?**

Aspose.Words für Java umfasst die meisten beliebten Entwicklungsumgebungen und Bereitstellungsplattformen. Sie API zur Entwicklung von Anwendungen für eine breite Palette von Betriebssystemen wie Windows, Linux, und Mac OS, und verschiedene Plattformen.

Für Details siehe die [Was ist das?](/words/de/java/product-overview/) Seite und [Das ist nicht alles. InteropErneuerbarkeit](/words/java/platforms-and-interoperability/) Abschnitt.

------

**Q: Welche Dokumentformate macht Aspose.Words Unterstützung?**

Aspose.Words für Java unterstützt die meisten der beliebten Dokumentformate wie DOC, DOCX, HTML, Markdown, PDF, XML und andere.

Sie können die vollständige Liste der unterstützten Formate auf der [Ich bin nicht da](/words/de/java/supported-document-formats/) Seite.

------

**Q: Wie kann ich es versuchen? Aspose.Words frei?**

Sie können dies auf zwei Arten tun – mit der Trial-Version oder einer 30-tägigen temporären Lizenz. Die Trial-Version ist die gleiche wie die gekaufte, es bietet volle Produkt-Funktionalität, fügt aber ein evaluatives Wasserzeichen an der Spitze des Dokuments beim Laden und Speichern und begrenzt die maximale Dokumentengröße auf einige hundert Absätze. Eine vorübergehende Lizenz ermöglicht es Ihnen zu testen Aspose.Words ohne Trial-Einschränkungen für 30 Tage.

Siehe [Lizenzierung und Abonnement](/words/de/java/licensing/) Seite für weitere Informationen.

{{% alert color="primary" %}}

Sie können auch versuchen einige der beliebtesten Aspose.Words Merkmale durch die [Aspose.Words kostenlos online kaufen Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Wie kann ich kaufen Aspose.Words?**

Um eine Aspose.Words Lizenz, Sie müssen in die [Wie geht's?](https://purchase.aspose.com/buy) Seite, wählen Sie "Aspose.Words" Produkt und die Art der Lizenz, die zu Ihnen passt. Dann fügen Sie die Lizenz in Ihren Warenkorb und folgen Sie den Einkaufswagen Anweisungen.

Nach dem Kauf gilt für die Lizenz wie in der [Erworbene Lizenz](/words/java/licensing/#purchased-license) Abschnitt.

Details zur Installation Aspose.Words kann auf der [Installation](/words/de/java/installation/) Seite.

------

**Q: Wie kann ich Unterstützung bekommen?**

Nutzen Sie das kostenlose technische Support-Forum. Für Details, wie man ein Problem richtig meldet und was getan werden muss, bevor man das Forum kontaktiert, siehe [Technische Unterstützung](/words/de/java/technical-support/) Seite.

## Erstellung eines Dokuments

{{% alert color="primary" %}}

Weitere Informationen zum Rendern finden Sie in der [Rendering](/words/de/java/rendering/) Abteilung Dokumentation.

{{% /alert %}}

**Q: Warum unterscheiden sich die Layouts und Schriftarten im Ausgabedokument vom Original?**

Die Schriftart kann nicht verfügbar sein oder das Schriftformat wird von Microsoft Word aber nicht unterstützt Aspose.Words. Aspose.Words wird ausführen [Manipulate und Substitute TrueType Fonts](/words/de/java/manipulate-and-substitute-truetype-fonts/).

Um zu überprüfen, ob die Schrift fehlt:

- In Aspose.Words Verwenden Sie die Font-Substitutionswarnungen (für Details, siehe die "Wie zu erkennen, dass der Font wurde ersetzt" Abschnitt der [Manipulate und Substitute TrueType Fonts](/words/de/java/manipulate-and-substitute-truetype-fonts/) Artikel
- In Microsoft Word Öffnen Sie das Dialogfeld "Font Substitution" (Datei → Optionen → Fortgeschrittene → Schriftsubstitution).

------

**Q: Warum funktioniert die Schrift nicht auf Nicht-Windows Plattformen und Unicode Zeichen werden durch die .notdef ersetzt glyph?**

Wir können oft sehen `.notdef` glyph anstatt eines Unicode-Zeichens. Dies ist in der Regel eine Box oder eine Frage glyph.

Das ist, weil Microsoft Die Einstellungen für die Office-Abfallsicherung werden standardmäßig ausgewählt und Microsoft Office Schriftarten sind nicht verfügbar. Benutzer müssen installieren Microsoft Office-Fonts oder ändern Fallback-Einstellungen.

------

**Q: Warum können komplexe Skripttexte, wie Thai oder Hebräisch, aus irgendeinem Grund ungenau angezeigt werden, wie die falsche Position für Diakritik oder ungenaue Ligaturen?**

Einige komplexe Schriftarten erfordern, dass die Advanced Typography-Funktionen verarbeitet werden, um sie korrekt anzuzeigen. Fortgeschrittene Typografie ist behindert Aspose.Words Standardmäßig. Benutzer müssen Advanced Typography mit [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Brauche ich Lizenzdateien für die Schriftarten, die ich benutze?**

Ja. Beachten Sie daher beim Kopieren von Schriften, dass die meisten Schriftarten urheberrechtlich geschützt sind. Suchen Sie Schriftartenlizenzen vorher und überprüfen Sie, ob sie frei auf eine andere Maschine übertragen werden können.

## Eingefügt Mail Merge

{{% alert color="primary" %}}

Weitere Informationen finden Sie hier mail merge in der [Mail Merge und Reporting](/words/java/mail-merge-and-reporting/) Abteilung Dokumentation.

{{% /alert %}}

**Q: Warum gibt es keine zusammengeführten Felder in der generierten Ausgabe?**

Der ursprüngliche Name des Zusammenführungsfeldes bleibt gleich, ohne durch die benötigten Daten aus der Datenquelle ersetzt zu werden, dann:

- Überprüfen Sie, ob die Daten richtig in Tabellen geladen werden: [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) korrekt mit allen erforderlichen Primärschlüsseln und Beziehungen.
- Überprüfen Sie, ob die Zusammenführungsfelder richtig benannt sind. Verwenden Sie die [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) Methode, um alle Zusammenführungsfelder Namen zu erhalten und sicherzustellen, dass der Name der Zusammenführungsfelder in Ihrer Vorlage demjenigen in Ihrer Datenquelle entspricht.

------

**Q: Warum zeigt die Ausgabe der verschachtelten Verschmelzung nicht Daten aus der Kindertabelle für den ersten Eintrag in der Elterntabelle, sondern zeigt alle Elemente für den letzten Eintrag in der Elterntabelle, auch diejenigen, die nicht tatsächlich mit ihr verbunden sind?**

Dies liegt daran, dass die Zusammenführungsbereiche in der Vorlage nicht richtig ausgebildet sind, was alles verschachtelt machen kann mail merge Regionen, um überhaupt nichts zu zeigen. Die [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) öffnen tag und die [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) Schließen Tag muss übereinstimmen und in der gleichen Zeile oder Zelle sein. Wenn Sie z.B. beginnen, zusammenführende Regionen in einer Zelle einer Tabelle zu verschachteln, müssen Sie den Zusammenschlussbereich in der gleichen Zeile wie die erste Zelle beenden.

------

**Q: Warum zeigt jeder Eintrag aus der Elterntabelle jeden Artikel in der Kindertabelle, auch diejenigen, die nicht mit ihm verbunden sind?**

Dies liegt daran, dass die Beziehung zwischen Eltern- und Kindertabellen nicht aufgebaut oder falsch aufgebaut ist. Es ist notwendig:

- Sicherstellung der Datenintegrität in Ihrem **DataSet** und die **DataRelation** die Eltern-Kind-Beziehung zwischen verwandten Datentabellen darzustellen.
- Überprüfen Sie den Abschnitt "Wie Sie Datenbeziehungen in eingelagert einrichten Mail Merge mit Regionen" im Artikel [Das ist ein Tag Mail Merge mit den Regionen](/words/java/nested-mail-merge-with-regions/).

------

**Q: Warum ist eine Ausnahme: "System. ArgumentException: Diese Beschränkung kann nicht aktiviert werden, da nicht alle Werte entsprechende Elternwerte haben" während der Ausführung verschachtelt mail merge?**

Dies geschieht, weil nicht jeder Elternrekord einen Kinderrekord hat, so dass Ihre Datenquelle nicht den folgenden Kriterien entspricht: * jede Zeile in der Elterntabelle sollte eine ein-zu-ein Beziehung zu den Zeilen der Kindertabelle auf Basis der Primär- und Fremdschlüssel* haben.

Deaktivieren Sie fremde Schlüsselzwänge, wenn Sie eine **DataRelation**.

## Dokument anhängen oder einfügen

{{% alert color="primary" %}}

Weitere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmierung mit Dokumenten](/words/de/java/programming-with-documents/) Abteilung Dokumentation.

{{% /alert %}}

**Q: Warum erscheint auf derselben Seite kein Inhalt an ein Dokument?**

Das Append-Ergebnis erscheint auf einer separaten Seite aufgrund eines Unterschieds in [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Einstellungen für die Abschnitte, in denen die Dokumente zusammengefügt werden. identisch machen **PageSetup** Einstellungen für die Abschnitte, in denen die Dokumente zusammengefügt werden.

## Dokument umrechnen

{{% alert color="primary" %}}

Weitere Informationen zur Umwandlung eines Dokuments in der [Dokument umrechnen](/words/de/java/convert-a-document/) Abteilung Dokumentation.

{{% /alert %}}

**Q: Wie konvertiert man DOCX in PDF?**

Es ist auch sehr einfach, laden Sie einfach ein Dokument an das Modell und speichern Sie es in jedes unterstützte Format.

Das folgende Codebeispiel zeigt den Prozess der Konvertierung der Datei DOCX in PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipula mit einem Dokument

{{% alert color="primary" %}}

Weitere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmierung mit Dokumenten](/words/de/java/programming-with-documents/) Abteilung Dokumentation.

{{% /alert %}}

**Q: Wie spaltet man eine Dokumentseite nach Seite?**

Aspose.Words ermöglicht es Ihnen, eine mehrseitige Dokumentseite per Seite zu teilen.

Das folgende Codebeispiel zeigt, wie man ein Dokument teilt und jede Seite als separates Dokument speichert:

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

**Q: Wie man eine verschlüsselte** **Dokument?**

Sie können versuchen, ein verschlüsseltes Dokument ohne Passwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie ein verschlüsseltes Dokument mit einem Passwort geöffnet werden kann:

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

**Q: Wie druckt man ein Dokument?**

Für eine ausführliche Antwort, lernen Sie den Artikel [Drucken eines der Dokumente Programmierung oder Verwendung von Dialogen](/words/de/java/print-a-document-programmatically-or-using-dialogs/).
