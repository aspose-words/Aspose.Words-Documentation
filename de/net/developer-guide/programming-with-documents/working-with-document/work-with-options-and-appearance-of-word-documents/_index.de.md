---
title: Optionen und Aussehen Word-Dokument
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit Optionen und Erscheinungsbild von Word-Dokumenten
linktitle: Arbeiten Sie mit Optionen und Erscheinungsbild von Word-Dokumenten
description: "Steuern Sie das Erscheinungsbild von Word-Dokumenten unter Berücksichtigung der Unterschiede zwischen verschiedenen Microsoft Word-Versionen mithilfe von C#."
type: docs
weight: 40
url: /de/net/work-with-word-document-options-and-appearance/
---

Manchmal müssen Sie möglicherweise das Erscheinungsbild eines Dokuments ändern, beispielsweise Spracheinstellungen oder die Anzahl der Zeilen pro Seite festlegen. Aspose.Words bietet die Möglichkeit, die Anzeige des Dokuments sowie einige zusätzliche Optionen zu steuern. Dieser Artikel beschreibt solche Möglichkeiten.

## Legen Sie die Anzeigeoptionen für Dokumente fest

Mithilfe der [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/)-Klasse können Sie steuern, wie ein Dokument in Microsoft Word angezeigt wird. Beispielsweise können Sie mit der [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/)-Eigenschaft einen Dokumentzoomwert oder mit der [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/)-Eigenschaft den Ansichtsmodus festlegen.

Das folgende Codebeispiel zeigt, wie sichergestellt wird, dass ein Dokument beim Öffnen in Microsoft Word mit 50 % angezeigt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei für dieses Beispiel von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schreibt keinen Zoomfaktor in ein Dokument und legt den Standardzoom nicht mehr anhand des in das Dokument geschriebenen Werts fest, sondern scheint stattdessen den Zoomfaktor des zuletzt geöffneten Dokuments zu verwenden.

{{% /alert %}}

## Legen Sie die Seitenanzeigeoptionen fest

Wenn Sie die Anzahl der Zeichen pro Zeile festlegen möchten, verwenden Sie die [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/)-Eigenschaft. Sie können auch die Anzahl der Zeilen pro Seite für ein Word-Dokument festlegen – verwenden Sie die [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/)-Eigenschaft, um die Anzahl der Zeilen pro Seite im Dokumentraster abzurufen oder festzulegen.

{{% alert color="primary" %}}

In Microsoft Word können Sie dieselben Parameter nur dann über die Registerkarte "Dokumentraster" im Dialogfeld "Seite einrichten" festlegen, wenn die Unterstützung für asiatische Sprachen installiert ist.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie die Anzahl der Zeichen pro Zeile und die Anzahl der Zeilen pro Seite für ein Microsoft Word-Dokument festlegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Legen Sie die Spracheinstellungen fest

Die Anzeige eines Dokuments in Microsoft Word hängt davon ab, welche Sprachen als Standard für dieses Dokument festgelegt sind. Wenn in den Standardeinstellungen keine Sprachen festgelegt sind, übernimmt Microsoft Word Informationen aus dem Dialogfeld "Office-Spracheinstellungen festlegen", das beispielsweise in Microsoft Word 2019 unter "Datei → Optionen → Sprache" zu finden ist.

Mit Aspose.Words können Sie auch Spracheinstellungen mithilfe der [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/)-Klasse einrichten. Beachten Sie außerdem, dass es für die korrekte Anzeige Ihres Dokuments notwendig ist, die Microsoft Word-Version festzulegen, mit der der Dokumentladevorgang übereinstimmen soll – dies kann über die [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/)-Eigenschaft erfolgen.

{{% alert color="primary" %}}

Wenn Ihr Aspose.Words-generiertes Dokument nicht wie erwartet aussieht, überprüfen Sie die **LanguagePreferences**- und **MswVersion**-Werte und passen Sie sie gegebenenfalls an die Einstellungen Ihrer Microsoft Word-Version an.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man Japanisch zu Bearbeitungssprachen hinzufügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Das folgende Codebeispiel zeigt, wie man Russisch als Standardbearbeitungssprache festlegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimieren Sie ein Dokument für eine bestimmte Word-Version

Die [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/)-Methode ermöglicht die Optimierung des Dokumentinhalts sowie des Standard-Aspose.Words-Verhaltens für eine bestimmte Microsoft Word-Version. Mit dieser Methode können Sie verhindern, dass Microsoft Word beim Laden des Dokuments das Menüband "Kompatibilitätsmodus" anzeigt. Beachten Sie, dass Sie möglicherweise auch die `Compliance`-Eigenschaft auf Iso29500_2008_Transitional oder höher setzen müssen.

Das folgende Codebeispiel zeigt, wie Sie Dokumentinhalte für Microsoft Word 2016 optimieren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
