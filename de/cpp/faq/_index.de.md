---
title: FAQ
second_title: Aspose.Words für C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words für C++ beantwortet die am häufigsten gestellten Fragen. Lernen Sie diese Seite kennen, um Ihr Problem bei allgemeinen Fragen oder bestimmten Themen schnell zu lösen."
weight: 75
url: /de/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Auf dieser Seite finden Sie Antworten auf die am häufigsten gestellten Fragen. Bitte lernen Sie die aktuelle Seite kennen – vielleicht können Sie so Ihr Problem schnell lösen.

Wenn Sie die Antwort auf Ihre Frage nicht gefunden haben, können Sie im Support-Forum nachfragen. Informationen darüber, wie Sie Ihre Frage oder Ihr Problem ordnungsgemäß melden können, finden Sie im [Technischer Support](/words/cpp/technical-support/) Seite.

{{% alert color="primary" %}}

Häufig gestellte Fragen sind zur Vereinfachung nach Themen gruppiert.

{{% /alert %}}

## Allgemein

**F: Was ist Aspose.Words?**

Aspose.Words für C++ ist eine Klassenbibliothek, mit der Ihre Anwendungen eine Vielzahl von Dokumentenverarbeitungsaufgaben ausführen können. Mit Aspose.Words für C++ können Sie Dokumente ohne Anwendungen von Drittanbietern generieren, ändern, konvertieren, rendern und drucken.

Details finden Sie in unserer Dokumentation.

------

**F: Was bedeutet "Aspose.Words erfordert keine Anwendungen von Drittanbietern"?**

Aspose.Words für C++ es müssen keine Anwendungen von Drittanbietern oder zusätzliche Softwarepakete installiert werden, um zu funktionieren. Laden Sie einfach Aspose.Words herunter und installieren Sie es wie in der ["Installation"](/words/cpp/installation/) artikel und loslegen.

------

**F: Welche Plattformen werden von Aspose.Words unterstützt?**

Aspose.Words für C++ deckt die meisten gängigen Entwicklungsumgebungen und Bereitstellungsplattformen ab. Mit API können Anwendungen für eine Vielzahl von Betriebssystemen wie Windows, Linux und Mac OS sowie für verschiedene Plattformen entwickelt werden.

Einzelheiten finden Sie in der [Produktübersicht](/words/cpp/product-overview/) Seite.

------

**F: Welche Dokumentformate werden von Aspose.Words unterstützt?**

Aspose.Words für C++ unterstützt die meisten gängigen Dokumentenformate wie DOC, DOCX, HTML, Markdown, PDF, XML, und andere.

Die vollständige Liste der unterstützten Formate finden Sie auf der [Unterstützte Dokumentenformate](/words/cpp/supported-document-formats/) Seite.

------

**F: Wie kann ich Aspose.Words kostenlos testen?**

Sie können dies auf zwei Arten tun – mit der Testversion oder einer temporären 30-Tage-Lizenz. Die Testversion ist die gleiche wie die gekaufte, sie bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern oben im Dokument ein bewertendes Wasserzeichen hinzu und begrenzt die maximale Dokumentgröße auf einige hundert Absätze. Mit einer temporären Lizenz können Sie Aspose.Words 30 Tage lang ohne Testbeschränkungen testen.

Sehen Sie die [Lizenzierung und Abonnement](/words/cpp/licensing/) seite für weitere Informationen.

{{% alert color="primary" %}}

Sie können auch einige der beliebtesten Aspose.Words Funktionen über die [Aspose.Words kostenlose Online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**F: Wie kann ich Aspose.Words kaufen?**

Um eine Aspose.Words-Lizenz zu kaufen, müssen Sie zum gehen [Kauf](https://purchase.aspose.com/buy) seite, wählen Sie das Produkt "Aspose.Words" und den Lizenztyp aus, der zu Ihnen passt. Legen Sie dann die Lizenz in Ihren Warenkorb und folgen Sie den Anweisungen im Warenkorb.

Beantragen Sie nach dem Kauf die Lizenz wie in der beschrieben [Gekaufte Lizenz](/words/cpp/licensing/#purchased-license) Abschnitt.

Einzelheiten zur Installation von Aspose.Words finden Sie auf der [Installation](/words/cpp/installation/) Seite.

------

**F: Wie kann ich Unterstützung erhalten?**

Nutzen Sie das kostenlose Forum für technischen Support. Einzelheiten dazu, wie Sie ein Problem ordnungsgemäß melden und was zu tun ist, bevor Sie das Forum kontaktieren, finden Sie im [Technischer Support](/words/cpp/technical-support/) Seite.

## Rendern eines Dokuments

{{% alert color="primary" %}}

Detailliertere Informationen zum Rendern finden Sie in der [Rendering](/words/cpp/rendering/) abschnitt Dokumentation.

{{% /alert %}}

**F: Warum unterscheiden sich Layout und Schriftarten im Ausgabedokument vom Original?**

Die Schriftart ist möglicherweise nicht verfügbar oder das Schriftformat wird von Microsoft Word, aber nicht von Aspose.Words unterstützt. Aspose.Words wird ausgeführt [schriftartenersetzung](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Um zu überprüfen, ob die Schriftart fehlt:

- Verwenden Sie in Aspose.Words die Warnungen zum Ersetzen von Schriftarten (Einzelheiten finden Sie im Abschnitt "Erkennen, dass die Schriftart ersetzt wurde" des [TrueType -Schriftarten bearbeiten und ersetzen](/words/cpp/manipulate-and-substitute-truetype-fonts/) Beitrag).
- Öffnen Sie in Microsoft Word das Dialogfeld "Schriftartenersetzung" (Datei → Optionen → Erweitert → Schriftartenersetzung).

------

**F: Warum funktioniert das Font-Fallback nicht auf Nicht-Windows -Plattformen und Unicode-Zeichen werden durch das ersetzt.keine defg-Glyphe?**

Wir können oft die `.notdef` Glyphe anstelle eines Unicode-Zeichens sehen. Dies ist normalerweise ein Kästchen oder eine Fragenglyphe.

Dies liegt daran, dass standardmäßig Microsoft Office-Fallback-Einstellungen ausgewählt sind und Microsoft Office-Schriftarten nicht verfügbar sind. Benutzer müssen Microsoft Office-Schriftarten installieren oder Fallback-Einstellungen ändern.

------

**F: Warum könnte komplexer Schrifttext, wie Thai oder Hebräisch, aus irgendeinem Grund ungenau angezeigt werden, z. B. die falsche Position für diakritische Zeichen oder ungenaue Ligaturen?**

Einige komplexe Skriptschriften erfordern die Verarbeitung der erweiterten Typografiefunktionen, um sie korrekt anzuzeigen. Erweiterte Typografie ist in Aspose.Words standardmäßig deaktiviert. Benutzer müssen erweiterte Typografie mit [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) aktivieren.

------

**F: Benötige ich Lizenzdateien für die von mir verwendeten Schriftarten?**

Ja, das tust du. Beachten Sie daher beim Kopieren von Schriftarten, dass die meisten Schriftarten urheberrechtlich geschützt sind. Suchen Sie vorher nach Schriftlizenzen und stellen Sie sicher, dass sie frei auf einen anderen Computer übertragen werden können.

## Dokument anhängen oder einfügen

{{% alert color="primary" %}}

Nähere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmieren mit Dokumenten](/words/cpp/programming-with-documents/) abschnitt Dokumentation.

{{% /alert %}}

**F: Warum werden an ein Dokument angehängte Inhalte nicht auf derselben Seite angezeigt?**

Das Anhängeergebnis wird auf einer separaten Seite angezeigt, da die [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)-Einstellungen für die Abschnitte, in denen die Dokumente angehängt werden, unterschiedlich sind. Nehmen Sie identische **PageSetup**-Einstellungen für die Abschnitte vor, in denen die Dokumente angehängt werden.

## Ein Dokument konvertieren

{{% alert color="primary" %}}

Detailliertere Informationen zum Konvertieren eines Dokuments finden Sie in der [Ein Dokument konvertieren](/words/cpp/convert-a-document/) abschnitt Dokumentation.

{{% /alert %}}

**F: Wie konvertiere ich DOCX in PDF?**

Es ist auch sehr einfach, laden Sie einfach ein Dokument in das Modell und speichern Sie es in einem beliebigen unterstützten Format.

Das folgende Codebeispiel zeigt den Prozess der Konvertierung einer DOCX -Datei in PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Mit einem Dokument manipulieren

{{% alert color="primary" %}}

Nähere Informationen zur Programmierung mit Dokumenten finden Sie in der [Programmieren mit Dokumenten](/words/cpp/programming-with-documents/) abschnitt Dokumentation.

{{% /alert %}}

**F: Wie teilt man ein Dokument Seite für Seite auf?**

Mit Aspose.Words können Sie ein mehrseitiges Dokument Seite für Seite aufteilen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument teilen und jede Seite als separates Dokument speichern:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**F: So öffnen Sie eine verschlüsselte**

Sie können versuchen, ein verschlüsseltes Dokument ohne Kennwort zu öffnen, was zu einer Ausnahme führen sollte.

Das folgende Codebeispiel zeigt, wie Sie ein verschlüsseltes Dokument mit einem Kennwort öffnen:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
