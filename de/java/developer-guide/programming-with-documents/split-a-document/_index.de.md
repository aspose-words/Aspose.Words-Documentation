---
title: Teilen Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Teilen eines Dokuments
linktitle: Teilen eines Dokuments
description: "Aspose.Words für Java bietet Ihnen eine effiziente Möglichkeit, ein Dokument nach Überschriften oder Abschnitten sowie nach Seiten oder Seitenbereichen in mehrere Dokumente aufzuteilen."
type: docs
weight: 90
url: /de/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* oder *split a document* ist der Vorgang, bei dem ein großes Dokument in eine größere Anzahl kleinerer Dateien aufgeteilt wird. Es gibt verschiedene Gründe, eine Datei zu teilen. Beispielsweise benötigen Sie nur einige Seiten aus einem bestimmten Dokument und nicht die gesamte. Oder Sie möchten aus Datenschutzgründen nur einige Teile eines Dokuments für andere freigeben. Mit der Aufteilungsfunktion können Sie nur die erforderlichen Teile des Dokuments abrufen und die erforderlichen Aktionen damit ausführen, z. B. zum Markieren, Speichern oder Senden.

Aspose.Words bietet Ihnen eine effiziente Möglichkeit, ein Dokument nach Überschriften oder Abschnitten in mehrere Dokumente aufzuteilen. Sie können ein Dokument auch nach Seiten oder Seitenbereichen aufteilen. Beide Aufteilungsoptionen werden in diesem Artikel beschrieben.

Um ein Dokument mit Aspose.Words in kleinere Dateien aufzuteilen, müssen Sie die folgenden Schritte ausführen:

1. Laden Sie das Dokument in einem beliebigen unterstützten Format.
1. Teilen Sie das Dokument.
1. Speichern Sie die Ausgabedokumente.

Nachdem Sie ein Dokument geteilt haben, können Sie alle Ausgabedokumente öffnen, die mit den erforderlichen Seiten, Texten usw. beginnen.

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können diese Funktionalität mit unserem ausprobieren [Kostenloser Online Dokumententeiler](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dokument nach verschiedenen Kriterien aufteilen {#split-a-document-using-different-criteria}

Mit Aspose.Words können Sie EPUB- oder HTML-Dokumente nach verschiedenen Kriterien in Kapitel aufteilen. Dabei bleiben Stil und Layout des Quelldokuments für die Ausgabedokumente erhalten.

Sie können Kriterien mit der [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)-Aufzählung angeben. So können Sie ein Dokument anhand eines der folgenden Kriterien in Kapitel unterteilen oder mehrere Kriterien miteinander kombinieren:

- überschrift absatz,
- Abschnittsumbruch,
- spaltenumbruch,
- Seitenumbruch.

Wenn Sie die Ausgabe in HTML speichern, speichern Aspose.Words jedes einzelne Kapitel als separate HTML-Datei. Infolgedessen wird das Dokument in mehrere HTML -Dateien aufgeteilt. Wenn Sie die Ausgabe in EPUB speichern, speichert Aspose.Words das Ergebnis in einer einzelnen EPUB-Datei, unabhängig vom verwendeten `DocumentSplitCriteria`-Wert. Die Verwendung von DocumentSplitCriteria für EPUB Dokumente wirkt sich also nur auf das Erscheinungsbild ihres Inhalts in Reader-Anwendungen aus: Der Inhalt wird in Kapitel unterteilt und das Dokument wird nicht mehr fortlaufend angezeigt.

{{% alert color="primary" %}}

Sie können ein Dokument beim Speichern im Format MHTML nicht mit der Eigenschaft [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) teilen.

{{% /alert %}}

In diesem Abschnitt betrachten wir nur einige der möglichen Split-Kriterien.

### Dokument nach Überschriften aufteilen {#split-a-document-by-headings}

Um ein Dokument nach Überschriften in Kapitel aufzuteilen, verwenden Sie den Wert **HeadingParagraph** der Eigenschaft **DocumentSplitCriteria**.

Wenn Sie ein Dokument nach einer bestimmten Ebene von Überschriftenabsätzen aufteilen müssen, z. B. Überschriften 1, 2 und 3, verwenden Sie auch die Eigenschaft [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). Die Ausgabe wird durch Absätze unterteilt, die mit der angegebenen Überschriftenebene formatiert sind.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument nach Überschrift in kleinere Teile aufteilen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Bitte beachten Sie, dass Aspose.Words für dieses Kriterium beim Teilen nur das Speichern im HTML-Format unterstützt.

Beim Speichern in EPUB wird das Dokument nicht in mehrere Dateien aufgeteilt und es gibt nur eine Ausgabedatei.

### Dokument nach Abschnitten aufteilen {#split-a-document-by-sections}

Mit Aspose.Words können Sie auch Abschnittsumbrüche verwenden, um Dokumente zu teilen und in HTML zu speichern. Verwenden Sie zu diesem Zweck **SectionBreak** als **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Es gibt eine andere Möglichkeit, das Quelldokument in mehrere Ausgabedokumente aufzuteilen, und Sie können ein beliebiges von Aspose.Words unterstütztes Ausgabeformat auswählen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument nach Abschnittsumbrüchen in kleinere Teile aufteilen (ohne die Eigenschaft `DocumentSplitCriteria` zu verwenden):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Nach Seiten aufteilen {#splitting-by-pages}

Sie können ein Dokument auch seitenweise, nach Seitenbereichen oder beginnend mit den angegebenen Seitenzahlen aufteilen. In diesem Fall kann die [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) -Methode die Aufgabe übernehmen.

In diesem Abschnitt werden verschiedene Anwendungsfälle zum Aufteilen von Dokumenten nach Seiten mit der Klasse [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) und der Methode **ExtractPages** beschrieben.

{{% alert color="primary" %}}

Sie können jeden verwenden [von Aspose.Words unterstütztes Ausgabeformat](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Aufgrund der vielen Nuancen, die bei der Reduzierung der Seitenanzahl auftreten, ist eine vollständige Übereinstimmung mit dem Microsoft Word -Layout eine ziemlich komplizierte Aufgabe. Daher kann es je nach Komplexität des Dokuments zu geringfügigen Unterschieden im resultierenden Dokumentlayout vom Originaldokument kommen.

{{% /alert %}}

### Dokument Seite für Seite teilen {#split-a-document-page-by-page}

Mit Aspose.Words können Sie ein mehrseitiges Dokument Seite für Seite aufteilen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument teilen und jede Seite als separates Dokument speichern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dokument nach Seitenbereichen aufteilen {#split-a-document-by-page-ranges}

Aspose.Words ermöglicht das Aufteilen eines mehrseitigen Dokuments nach Seitenbereichen. Sie können eine Datei in mehrere Dateien mit verschiedenen Seitenbereichen aufteilen oder einfach einen Bereich auswählen und nur diesen Teil des Quelldokuments speichern. Beachten Sie, dass Sie den Seitenbereich entsprechend der maximalen und minimalen Seitenzahl eines Dokuments auswählen können.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument nach Seitenbereich mit bestimmten Start- und Endindizes in kleinere Teile aufteilen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Rückrufoption zum Speichern eines Dokuments {#callback-option-for-saving-a-document}

Sie können die Eigenschaft [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) verwenden, um zu steuern, wie Aspose.Words Dokumentteile speichert, wenn dieses Dokument in das Format HTML exportiert wird. Mit dieser Eigenschaft können Sie Ausgabedateien umbenennen oder sogar in benutzerdefinierte Streams umleiten.

Bitte beachten Sie, dass dieser Rückruf beim Speichern in EPUB nicht nützlich ist, da alle Ausgabeteile in einem einzigen Container gespeichert werden müssen – dem .epub-Datei. Daher wird die Stream-Umleitung nicht unterstützt, und der Effekt des Umbenennens ist nicht sichtbar, da Dateien innerhalb des Containers umbenannt werden.

## Zusammenführen des geteilten Dokuments mit einem anderen Dokument {#merge-the-split-document-with-another-file}

Aspose.Words ermöglicht es Ihnen, das geteilte Ausgabedokument mit einem anderen Dokument zu einem neuen Dokument zusammenzuführen. Dies kann als Dokumentzusammenführung bezeichnet werden.

Das folgende Codebeispiel zeigt, wie Sie ein geteiltes Dokument mit einem anderen Dokument zusammenführen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
