---
title: Optionen und Aussehen von Word-Dokumenten
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Optionen und Aussehen von Word-Dokumenten
linktitle: Arbeiten mit Optionen und Aussehen von Word-Dokumenten
description: "Steuern Sie das Erscheinungsbild von Word-Dokumenten unter Berücksichtigung der Unterschiede zwischen verschiedenen Microsoft Word -Versionen mit Java."
type: docs
weight: 40
url: /de/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie möglicherweise das Erscheinungsbild eines Dokuments ändern, z. B. Spracheinstellungen oder die Anzahl der Zeilen pro Seite festlegen.Aspose.Words bietet die Möglichkeit zu steuern, wie das Dokument angezeigt wird, sowie einige zusätzliche Optionen. Dieser Artikel beschreibt solche Möglichkeiten.

## Optionen für die Dokumentenanzeige festlegen

Mit der Klasse [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) können Sie steuern, wie ein Dokument in Microsoft Word angezeigt wird. Sie können beispielsweise einen Dokumentzoomwert mit der Eigenschaft [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) oder den Ansichtsmodus mit der Eigenschaft [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) festlegen.

Das folgende Codebeispiel zeigt, wie sichergestellt wird, dass ein Dokument beim Öffnen in Microsoft Word zu 50% angezeigt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für dieses Beispiel herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schreibt keinen Zoomfaktor in ein Dokument und setzt den Standardzoom nicht mehr auf den in das Dokument geschriebenen Wert, sondern scheint den Zoomfaktor des zuletzt geöffneten Dokuments zu verwenden.

{{% /alert %}}

## Optionen für die Seitenanzeige festlegen

Wenn Sie die Anzahl der Zeichen pro Zeile festlegen möchten, verwenden Sie die Eigenschaft [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). Sie können auch die Anzahl der Zeilen pro Seite für ein Word–Dokument festlegen. Verwenden Sie die Eigenschaft [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage), um die Anzahl der Zeilen pro Seite im Dokumentraster abzurufen oder festzulegen.

{{% alert color="primary" %}}

In Microsoft Word können Sie dieselben Parameter nur über die Registerkarte "Dokumentraster" im Dialogfeld "Seiteneinrichtung" festlegen, wenn die Unterstützung für asiatische Sprachen installiert ist.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Zeichen pro Zeile und die Anzahl der Zeilen pro Seite für ein Microsoft Word-Dokument festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Spracheinstellungen festlegen

Die Anzeige eines Dokuments in Microsoft Word hängt davon ab, welche Sprachen als Standard für dieses Dokument festgelegt sind. Wenn in den Standardeinstellungen keine Sprachen festgelegt sind, übernimmt Microsoft Word Informationen aus dem Dialogfeld "Office-Spracheinstellungen festlegen", das beispielsweise in Microsoft Word 2019 unter "Datei → Optionen → Sprache" zu finden ist.

Mit Aspose.Words können Sie auch Spracheinstellungen mit der Klasse [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) einrichten. Beachten Sie auch, dass es für die korrekte Anzeige Ihres Dokuments erforderlich ist, die Microsoft Word –Version festzulegen, mit der der Dokumentladevorgang übereinstimmen soll - dies kann mit der Eigenschaft [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) erfolgen.

{{% alert color="primary" %}}

Wenn Ihr Aspose.Words generiertes Dokument nicht wie erwartet aussieht, überprüfen Sie die Werte **LanguagePreferences** und **MswVersion** und passen Sie sie gegebenenfalls an die Einstellungen für Ihre Microsoft Word-Version an.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie Japanisch zu Bearbeitungssprachen hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Das folgende Codebeispiel zeigt, wie Russisch als Standardbearbeitungssprache festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimieren eines Dokuments für eine bestimmte Word-Version

Die [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) -Methode ermöglicht die Optimierung des Dokumentinhalts sowie des Standardverhaltens von Aspose.Words für eine bestimmte Version von Microsoft Word. Mit dieser Methode können Sie verhindern, dass Microsoft Word beim Laden des Dokuments das Menüband "Kompatibilitätsmodus" anzeigt. Beachten Sie, dass Sie möglicherweise auch die Eigenschaft `Compliance` auf Iso29500_2008_Transitional oder höher setzen müssen.

Das folgende Codebeispiel zeigt, wie Dokumentinhalte für Microsoft Word 2016 optimiert werden:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
