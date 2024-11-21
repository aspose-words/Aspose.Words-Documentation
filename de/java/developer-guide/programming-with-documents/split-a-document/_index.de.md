---
title: Ein Dokument teilen in Java
second_title: Aspose.Words für Java
articleTitle: Ein Dokument teilen
linktitle: Ein Dokument teilen
description: "Aspose.Words für Java bietet Ihnen eine effiziente Möglichkeit, ein Dokument in mehrere Dokumente durch Überschriften oder Abschnitte sowie Seiten oder Seitenbereiche zu teilen."
type: docs
weight: 90
url: /de/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* oder *split ein Dokument* ist der Prozess, ein großes Dokument in eine größere Anzahl kleinerer Dateien zu brechen. Es gibt verschiedene Gründe, eine Datei zu teilen. Zum Beispiel benötigen Sie nur einige Seiten aus einem bestimmten Dokument und nicht die gesamte. Oder aus Gründen der Privatsphäre möchten Sie nur einige Teile eines Dokuments mit anderen teilen. Mit dem Splitting-Feature können Sie nur die benötigten Teile des Dokuments erhalten und die notwendigen Aktionen mit ihnen durchführen, um z.B. zu markieren, zu speichern oder zu senden.

Aspose.Words bietet Ihnen eine effiziente Möglichkeit, ein Dokument in mehrere Dokumente durch Überschriften oder Abschnitte zu teilen. Sie können auch ein Dokument nach Seiten oder nach Seitenbereichen teilen. Beide Trennoptionen werden in diesem Artikel beschrieben.

Um ein Dokument mit kleineren Dateien zu teilen Aspose.Words, Sie müssen diesen Schritten folgen:

ANHANG Laden Sie das Dokument in jedem unterstützten Format.
ANHANG Teilen Sie das Dokument.
ANHANG Speichern Sie die Ausgabedokumente.

Nachdem Sie ein Dokument geteilt haben, können Sie alle Ausgabedokumente öffnen, die mit den gewünschten Seiten, Text usw. beginnen.

{{% alert color="primary" %}}

**Online testen**

Sie können diese Funktionalität mit unserer [Kostenlose Online Dokumente](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Ein Dokument mit verschiedenen Kriterien teilen {#split-a-document-using-different-criteria}

Aspose.Words Sie können EPUB- oder HTML-Dokumente nach verschiedenen Kriterien in Kapitel aufteilen. Dabei werden Stil und Layout des Quelldokuments für die Ausgabedokumente erhalten.

Sie können Kriterien mit Hilfe der [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) Aufzählung. So können Sie ein Dokument in Kapitel unter Verwendung eines der folgenden Kriterien unterteilen oder mehrere Kriterien zusammenfassen:

- Überschrift Absatz,
- Schnittbruch,
- Spaltenbruch,
- Seitenumbruch.

Beim Speichern der Ausgabe in HTML, Aspose.Words jedes einzelne Kapitel als separate HTML-Datei speichern. Dadurch wird das Dokument in mehrere HTML-Dateien aufgeteilt. Beim Speichern der Ausgabe an die EPUB, Aspose.Words das Ergebnis in einer einzigen EPUB-Datei unabhängig von der `DocumentSplitCriteria` Wert, den du benutzt hast. So beeinflusst die Verwendung von DocumentSplitCriteria für EPUB-Dokumente nur das Erscheinungsbild ihrer Inhalte in Leseranwendungen: Inhalt wird in Kapitel unterteilt und das Dokument wird nicht mehr kontinuierlich angezeigt.

{{% alert color="primary" %}}

Sie können ein Dokument nicht unter Verwendung der [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) Eigenschaft beim Speichern in MHTML-Format.

{{% /alert %}}

In diesem Abschnitt betrachten wir nur einige der möglichen Spaltkriterien.

### Ein Dokument von Rubriken teilen {#split-a-document-by-headings}

Um ein Dokument in Kapitel durch Rubriken zu teilen, verwenden Sie die **HeadingParagraph** Wert der **DocumentSplitCriteria** Eigentum.

Wenn Sie ein Dokument nach einem bestimmten Niveau der Rubriken, wie z. B. die Rubriken 1, 2 und 3, teilen müssen, verwenden Sie auch die [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) Eigentum. Die Ausgabe wird nach den Absätzen geteilt, die mit der angegebenen Positionsebene formatiert sind.

Das folgende Codebeispiel zeigt, wie ein Dokument in kleinere Teile aufgeteilt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Bitte beachten Sie, dass für diese Kriterien Aspose.Words nur unterstützt das Speichern in HTML-Format bei der Spaltung.

Beim Speichern auf EPUB wird das Dokument nicht in mehrere Dateien aufgeteilt, und es wird nur eine Ausgabedatei geben.

### Ein Dokument nach Abschnitten teilen {#split-a-document-by-sections}

Aspose.Words Sie können auch Abschnittsunterbrechungen verwenden, um Dokumente zu teilen und sie in HTML zu speichern. Zu diesem Zweck verwenden **SectionBreak** als **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Es gibt eine andere Möglichkeit, das Quelldokument in mehrere Ausgabedokumente zu teilen und Sie können jedes Ausgabeformat auswählen, das von Aspose.Words.

Das folgende Codebeispiel zeigt, wie man ein Dokument durch Schnittpausen in kleinere Teile zerlegt (ohne die Verwendung der `DocumentSplitCriteria` Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Geteilt nach Seiten {#splitting-by-pages}

Sie können auch eine Dokumentseite nach Seite, nach Seitenbereichen oder beginnend mit den angegebenen Seitennummern. In diesem Fall [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) Die Methode kann den Job machen.

Dieser Abschnitt beschreibt mehrere Anwendungsfälle der Teilung von Dokumenten durch Paged unter Verwendung der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse und **ExtractPages** Methode.

{{% alert color="primary" %}}

Sie können jede [Ich bin nicht da](/words/de/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Aufgrund der vielen Nuancen, die während der Reduzierung der Anzahl der Seiten auftreten, eine volle Übereinstimmung mit der Microsoft Word Layout ist eine ziemlich komplizierte Aufgabe. In Abhängigkeit von der Dokumentenkomplexität kann es daher zu geringfügigen Unterschieden im resultierenden Dokumentenlayout aus dem Originaldokument kommen.

{{% /alert %}}

### Eine Dokumentseite nach Seite teilen {#split-a-document-page-by-page}

Aspose.Words ermöglicht es Ihnen, eine mehrseitige Dokumentseite per Seite zu teilen.

Das folgende Codebeispiel zeigt, wie man ein Dokument teilt und jede Seite als separates Dokument speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Ein Dokument nach Seitenbereichen teilen {#split-a-document-by-page-ranges}

Aspose.Words ermöglicht die Aufteilung eines mehrseitigen Dokuments nach Seitenbereichen. Sie können eine Datei in mehrere Dateien mit verschiedenen Seitenbereichen teilen oder nur einen Bereich auswählen und nur diesen Teil des Quelldokuments speichern. Beachten Sie, dass Sie den Seitenbereich entsprechend der maximalen und minimalen Seitennummer eines Dokuments auswählen können.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit bestimmten Start- und Endindexen in kleinere Teile nach Seitenbereich spaltet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Callback Option zum Speichern eines Dokuments {#callback-option-for-saving-a-document}

Sie können die [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) Eigenschaft zu kontrollieren, wie Aspose.Words speichert Dokumentteile, wenn dieses Dokument in HTML-Format exportiert wird. Mit dieser Eigenschaft können Sie Ausgabedateien umbenennen oder sogar in benutzerdefinierte Streams umleiten.

Bitte beachten Sie, dass diese Rückmeldung bei der Speicherung an die EPUB nicht sinnvoll ist, da alle Ausgabeteile in einem einzigen Container gespeichert werden müssen – die .epub-Datei. So wird die Umleitung nicht unterstützt, und die Wirkung der Umbenennung ist nicht sichtbar, da Dateien innerhalb des Containers umbenannt werden.

## Zusammenführen des Split-Dokuments mit einem anderen Dokument {#merge-the-split-document-with-another-file}

Aspose.Words Sie können das Ausgabe-Split-Dokument mit einem anderen Dokument zu einem neuen Dokument zusammenführen. Dies kann als Dokumentverschmelzung bezeichnet werden.

Das folgende Codebeispiel zeigt, wie ein Split-Dokument mit einem anderen Dokument zusammengefasst werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
