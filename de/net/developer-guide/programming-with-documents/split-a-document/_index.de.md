---
title: Teilen Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Teilen Sie ein Dokument
linktitle: Teilen Sie ein Dokument
description: "Teilen Sie ein Dokument mit C# in mehrere Dateien auf. Verwenden Sie die Teilungsfunktion, um ein Dokument effektiv nach Überschriften oder Abschnitten sowie nach Seiten oder Seitenbereichen aufzuteilen."
type: docs
weight: 90
url: /de/net/split-a-document/
---

*Splitting* oder *ein Dokument aufteilen* ist der Vorgang, bei dem ein großes Dokument in eine größere Anzahl kleinerer Dateien aufgeteilt wird. Es gibt verschiedene Gründe, eine Datei zu teilen. Beispielsweise benötigen Sie nur einige Seiten eines bestimmten Dokuments und nicht das gesamte. Oder Sie möchten aus Datenschutzgründen nur einige Teile eines Dokuments mit anderen teilen. Mit der Aufteilungsfunktion können Sie nur die erforderlichen Teile des Dokuments abrufen und die erforderlichen Aktionen damit durchführen, beispielsweise markieren, speichern oder senden.

Aspose.Words bietet Ihnen eine effiziente Möglichkeit, ein Dokument nach Überschriften oder Abschnitten in mehrere Dokumente aufzuteilen. Sie können ein Dokument auch nach Seiten oder Seitenbereichen aufteilen. Beide Aufteilungsmöglichkeiten werden in diesem Artikel beschrieben.

Um ein Dokument mit Aspose.Words in kleinere Dateien aufzuteilen, müssen Sie die folgenden Schritte ausführen:

1. Laden Sie das Dokument in einem beliebigen unterstützten Format.
1. Teilen Sie das Dokument.
1. Speichern Sie die Ausgabedokumente.

Nachdem Sie ein Dokument geteilt haben, können Sie alle Ausgabedokumente öffnen, die mit den erforderlichen Seiten, Texten usw. beginnen.

{{% alert color="primary" %}}

**Versuchen Sie es online**

Sie können diese Funktionalität mit unserem [Kostenloser Online Dokumentensplitter](https://products.aspose.app/words/splitter) ausprobieren.

{{% /alert %}}

## Teilen Sie ein Dokument nach verschiedenen Kriterien {#split-a-document-using-different-criteria}

Mit Aspose.Words können Sie EPUB- oder HTML-Dokumente nach verschiedenen Kriterien in Kapitel aufteilen. Dabei bleiben Stil und Layout des Quelldokuments für die Ausgabedokumente erhalten.

Sie können Kriterien mithilfe der [DocumentSplitCriteria](https://reference.aspose.com/words/de/net/aspose.words.saving/documentsplitcriteria/)-Enumeration angeben. So können Sie ein Dokument nach einem der folgenden Kriterien in Kapitel unterteilen oder mehrere Kriterien miteinander kombinieren:

- Überschrift Absatz,
- Abschnitt Pause,
- Spaltenumbruch,
- Seitenumbruch.

Beim Speichern der Ausgabe in HTML speichert Aspose.Words jedes einzelne Kapitel als separate HTML-Datei. Dadurch wird das Dokument in mehrere HTML-Dateien aufgeteilt. Wenn Sie die Ausgabe im EPUB-Format speichern, speichert Aspose.Words das Ergebnis in einer einzigen EPUB-Datei, unabhängig vom verwendeten `DocumentSplitCriteria`-Wert. Die Verwendung von DocumentSplitCriteria für EPUB-Dokumente wirkt sich also nur auf die Darstellung ihres Inhalts in Reader-Anwendungen aus: Der Inhalt wird in Kapitel unterteilt und das Dokument erscheint nicht mehr fortlaufend.

{{% alert color="primary" %}}

Sie können ein Dokument nicht mithilfe der [DocumentSplitCriteria](https://reference.aspose.com/words/de/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/)-Eigenschaft aufteilen, wenn Sie es im MHTML-Format speichern.

{{% /alert %}}

In diesem Abschnitt betrachten wir nur einige der möglichen Aufteilungskriterien.

### Teilen Sie ein Dokument nach Überschriften auf {#split-a-document-by-headings}

Um ein Dokument nach Überschriften in Kapitel aufzuteilen, verwenden Sie den **HeadingParagraph**-Wert der **DocumentSplitCriteria**-Eigenschaft.

Wenn Sie ein Dokument nach einer bestimmten Ebene von Überschriftenabsätzen aufteilen müssen, z. B. Überschriften 1, 2 und 3, verwenden Sie auch die [DocumentSplitHeadingLevel](https://reference.aspose.com/words/de/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/)-Eigenschaft. Die Ausgabe wird in Absätze unterteilt, die mit der angegebenen Überschriftenebene formatiert sind.

Das folgende Codebeispiel zeigt, wie man ein Dokument anhand der Überschrift in kleinere Teile aufteilt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Bitte beachten Sie, dass Aspose.Words für dieses Kriterium beim Teilen nur das Speichern im HTML-Format unterstützt.

Beim Speichern im EPUB-Format wird das Dokument nicht in mehrere Dateien aufgeteilt und es gibt nur eine Ausgabedatei.

### Teilen Sie ein Dokument nach Abschnitten auf {#split-a-document-by-sections}

Aspose.Words ermöglicht Ihnen auch die Verwendung von Abschnittsumbrüchen, um Dokumente aufzuteilen und sie im HTML-Format zu speichern. Verwenden Sie dazu **SectionBreak** als **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Es gibt eine andere Möglichkeit, das Quelldokument in mehrere Ausgabedokumente aufzuteilen, und Sie können jedes von Aspose.Words unterstützte Ausgabeformat auswählen.

Das folgende Codebeispiel zeigt, wie man ein Dokument durch Abschnittsumbrüche in kleinere Teile aufteilt (ohne die `DocumentSplitCriteria`-Eigenschaft zu verwenden):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Aufgeteilt nach Seiten {#splitting-by-pages}

Sie können ein Dokument auch Seite für Seite, nach Seitenbereichen oder beginnend mit den angegebenen Seitenzahlen aufteilen. In einem solchen Fall kann die [ExtractPages](https://reference.aspose.com/words/de/net/aspose.words/document/extractpages/)-Methode die Aufgabe erledigen.

In diesem Abschnitt werden mehrere Anwendungsfälle der Aufteilung von Dokumenten nach Seiten mithilfe der [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse und der **ExtractPages**-Methode beschrieben.

{{% alert color="primary" %}}

Sie können jedes [Unterstützte Dokumentformate](/words/de/net/supported-document-formats/) verwenden.

{{% /alert %}}

{{% alert color="primary" %}}

Aufgrund der vielen Nuancen, die bei gleichzeitiger Reduzierung der Seitenzahl auftreten, ist eine vollständige Übereinstimmung mit dem Microsoft Word-Layout eine ziemlich komplizierte Aufgabe. Daher kann es je nach Komplexität des Dokuments zu geringfügigen Abweichungen im resultierenden Dokumentlayout vom Originaldokument kommen.

{{% /alert %}}

### Teilen Sie ein Dokument Seite für Seite auf, {#split-a-document-page-by-page}

Mit Aspose.Words können Sie ein mehrseitiges Dokument Seite für Seite aufteilen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument teilen und jede Seite als separates Dokument speichern:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Teilen Sie ein Dokument nach Seitenbereichen {#split-a-document-by-page-ranges} auf

Aspose.Words ermöglicht die Aufteilung eines mehrseitigen Dokuments nach Seitenbereichen. Sie können eine Datei in mehrere Dateien mit unterschiedlichen Seitenbereichen aufteilen oder einfach einen Bereich auswählen und nur diesen Teil des Quelldokuments speichern. Beachten Sie, dass Sie den Seitenbereich entsprechend der maximalen und minimalen Seitenzahl eines Dokuments wählen können.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument nach Seitenbereich mit bestimmten Start- und Endindizes in kleinere Teile aufteilen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Rückrufoption zum Speichern eines Dokuments {#callback-option-for-saving-a-document}

Mit der [DocumentPartSavingCallback](https://reference.aspose.com/words/de/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/)-Eigenschaft können Sie steuern, wie Aspose.Words Dokumentteile speichert, wenn dieses Dokument in das HTML-Format exportiert wird. Mit dieser Eigenschaft können Sie Ausgabedateien umbenennen oder sie sogar in benutzerdefinierte Streams umleiten.

Bitte beachten Sie, dass dieser Rückruf beim Speichern in EPUB nicht sinnvoll ist, da alle Ausgabeteile in einem einzigen Container gespeichert werden müssen – der .epub-Datei. Daher wird die Stream-Umleitung nicht unterstützt und die Auswirkung des Umbenennens ist nicht sichtbar, da Dateien innerhalb des Containers umbenannt werden.

## Führen Sie das geteilte Dokument mit einem anderen {#merge-the-split-document-with-another-file}-Dokument zusammen

Mit Aspose.Words können Sie das ausgegebene geteilte Dokument mit einem anderen Dokument zusammenführen, um ein neues Dokument zu bilden. Dies kann als Dokumentzusammenführung bezeichnet werden.

Das folgende Codebeispiel zeigt, wie ein geteiltes Dokument mit einem anderen Dokument zusammengeführt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
