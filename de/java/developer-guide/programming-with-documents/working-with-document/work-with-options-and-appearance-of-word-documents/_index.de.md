---
title: Optionen und Aussehen von Word-Dokumenten
second_title: Aspose.Words für Java
articleTitle: Arbeit mit Optionen und Aussehen von Word-Dokumenten
linktitle: Arbeit mit Optionen und Aussehen von Word-Dokumenten
description: "Kontrollieren Sie das Aussehen von Word-Dokumenten unter Berücksichtigung der Differenz zwischen verschiedenen Microsoft Word Versionen mit Java."
type: docs
weight: 40
url: /de/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie das Erscheinungsbild eines Dokuments ändern, z.B. die Spracheinstellungen oder die Anzahl der Zeilen pro Seite festlegen.Aspose.Words bietet die Möglichkeit, zu kontrollieren, wie das Dokument angezeigt wird, sowie einige zusätzliche Optionen. Dieser Artikel beschreibt solche Möglichkeiten.

## Optionen zur Dokumentenanzeige festlegen

Sie können kontrollieren, wie ein Dokument angezeigt wird Microsoft Word Verwendung von [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) Klasse. Zum Beispiel können Sie einen Dokument-Zoom-Wert mit dem [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) Eigenschaft oder Ansichtsmodus mit dem [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) Eigentum.

Das folgende Codebeispiel zeigt, wie sichergestellt werden kann, dass ein Dokument bei 50 % beim Öffnen angezeigt wird. Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Sie können die Template-Datei für dieses Beispiel herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schreibt keinen Zoomfaktor zu einem Dokument und setzt nicht mehr den Standardzoom aus dem in das Dokument geschriebenen Wert, sondern es scheint den Zoomfaktor des letzten offenen Dokuments zu verwenden.

{{% /alert %}}

## Seite anzeigen Optionen einstellen

Wenn Sie die Anzahl der Zeichen pro Zeile festlegen möchten, verwenden Sie die [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) Eigentum. Sie können auch die Anzahl der Zeilen pro Seite für ein Word-Dokument festlegen – verwenden Sie die [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) eine Eigenschaft, um die Anzahl der Zeilen pro Seite im Dokumentenraster zu erhalten oder einzustellen.

{{% alert color="primary" %}}

In Microsoft Word, Sie können die gleichen Parameter nur dann einstellen, wenn die asiatische Sprachunterstützung installiert ist.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie die Anzahl der Zeichen pro Zeile und die Anzahl der Zeilen pro Seite für eine Microsoft Word Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Spracheinstellungen festlegen

Anzeige eines Dokuments in Microsoft Word hängt davon ab, welche Sprachen als Standardeinstellungen für dieses Dokument gesetzt werden. Wenn keine Sprachen in Standardeinstellungen gesetzt werden, Microsoft Word nimmt Informationen aus dem Dialogfeld "Büroeinstellungen einstellen" auf, das zum Beispiel unter "Datei → Optionen → Sprache" in Microsoft Word 2019.

Mit Aspose.Words, Sie können auch Spracheinstellungen mit der [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) Klasse. Beachten Sie auch, dass für die korrekte Anzeige Ihres Dokuments die Einstellung der Microsoft Word Version, dass der Dokument-Ladeprozess übereinstimmen sollte – dies kann mit der [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) Eigentum.

{{% alert color="primary" %}}

Wenn Sie Aspose.Words generiertes Dokument sieht nicht wie erwartet aus, überprüfen Sie die **LanguagePreferences** und **MswVersion** Werte und Einstellungen, falls erforderlich, um die Einstellungen für Ihre Microsoft Word Version.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man Japanisch zur Bearbeitung von Sprachen hinzufügt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Das folgende Codebeispiel zeigt, wie man Russisch als Standardbearbeitungssprache festlegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimieren Sie ein Dokument für ein bestimmtes Wort Version

Die [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) Methode ermöglicht die Optimierung von Dokumenteninhalten sowie Standard Aspose.Words Verhalten für eine bestimmte Version Microsoft Word. Sie können diese Methode verwenden, um zu verhindern Microsoft Word von der Anzeige des "Kompatibilitätsmodus"-Bands bei der Dokumentenbeladung. Beachten Sie, dass Sie möglicherweise auch die `Compliance` Eigentum an Iso29500_2008_Transitional oder höher.

Das folgende Codebeispiel zeigt, wie man Dokumentinhalte für Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
