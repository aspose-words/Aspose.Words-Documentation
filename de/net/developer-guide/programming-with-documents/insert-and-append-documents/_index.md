---
title: Dokumente in C# einfügen und anhängen
second_title: Aspose.Words für .NET
articleTitle: Dokumente einfügen und anhängen
linktitle: Dokumente einfügen und anhängen
description: "Kombinieren Sie Dokumente zu einem: Fügen Sie ein Dokument in ein neues oder vorhandenes ein oder hängen Sie es an, indem Sie `Suchen und Ersetzen`, `Zusammenführen von Feldern`, `Lesezeichen` oder einfach am Ende des Dokuments in C# verwenden."
type: docs
weight: 80
url: /de/net/insert-and-append-documents/
---

Manchmal ist es erforderlich, mehrere Dokumente zu einem zusammenzufassen. Sie können dies manuell tun oder die Aspose.Words-Funktion zum Einfügen oder Anhängen verwenden.

Mit der Einfügeoperation können Sie den Inhalt zuvor erstellter Dokumente in ein neues oder vorhandenes einfügen.

Mit der Anhängefunktion wiederum können Sie ein Dokument nur am Ende eines anderen Dokuments hinzufügen.

In diesem Artikel wird erklärt, wie Sie ein Dokument auf unterschiedliche Weise einfügen oder an ein anderes anhängen können, und es werden die allgemeinen Eigenschaften beschrieben, die Sie beim Einfügen oder Anhängen von Dokumenten anwenden können.

## Fügen Sie ein Dokument {#insert-a-document} ein

Wie oben erwähnt, wird ein Dokument in Aspose.Words als Knotenbaum dargestellt, und beim Einfügen eines Dokuments in ein anderes werden Knoten vom ersten Dokumentbaum in den zweiten kopiert.

Sie können Dokumente auf unterschiedliche Weise an verschiedenen Orten einfügen. Beispielsweise können Sie ein Dokument durch einen Ersetzungsvorgang, ein Zusammenführungsfeld während eines Zusammenführungsvorgangs oder über ein Lesezeichen einfügen.

Sie können auch die [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/)- oder die [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/)-Methode verwenden, die dem Einfügen eines Dokuments in Microsoft Word ähnelt, um ein ganzes Dokument an der aktuellen Cursorposition einzufügen, ohne dass es vorher importiert werden muss.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit der **InsertDocument**-Methode einfügt:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Das folgende Codebeispiel zeigt, wie man ein Dokument mit der **InsertDocumentInline**-Methode einfügt:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

In den folgenden Unterabschnitten werden die Optionen beschrieben, mit denen Sie ein Dokument in ein anderes einfügen können.

### Einfügen eines Dokuments während des Such- und Ersetzungsvorgangs {#insert-a-document-during-find-and-replace-operation}

Sie können Dokumente einfügen, während Sie Such- und Ersetzungsvorgänge ausführen. Beispielsweise kann ein Dokument Absätze mit den Texten [EINFÜHRUNG] und [SCHLUSSFOLGERUNG] enthalten. Im endgültigen Dokument müssen Sie diese Absätze jedoch durch den Inhalt eines anderen externen Dokuments ersetzen. Um dies zu erreichen, müssen Sie einen Handler für das Ersetzungsereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Ersetzungsereignis erstellen, um ihn später im Einfügeprozess zu verwenden:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Das folgende Codebeispiel zeigt, wie der Inhalt eines Dokuments während eines Such- und Ersetzungsvorgangs in ein anderes eingefügt wird:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Ein Dokument während der Mail Merge-Operation {#insert-a-document-during-mail-merge-operation} einfügen

Sie können während eines mail merge-Vorgangs ein Dokument in ein Zusammenführungsfeld einfügen. Eine mail merge-Vorlage kann beispielsweise ein Zusammenführungsfeld wie [Zusammenfassung] enthalten. Im endgültigen Dokument müssen Sie jedoch Inhalte aus einem anderen externen Dokument in dieses Zusammenführungsfeld einfügen. Um dies zu erreichen, müssen Sie einen Handler für das Merge-Ereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Zusammenführungsereignis erstellen, um ihn später im Einfügeprozess zu verwenden:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie mithilfe des erstellten Handlers ein Dokument in das Zusammenführungsfeld einfügen:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Fügen Sie ein Dokument als Lesezeichen {#insert-a-document-at-bookmark} ein

Sie können eine Textdatei in ein Dokument importieren und direkt nach einem Lesezeichen einfügen, das Sie im Dokument definiert haben. Erstellen Sie dazu einen mit einem Lesezeichen versehenen Absatz an der Stelle, an der das Dokument eingefügt werden soll.

Das folgende Codierungsbeispiel zeigt, wie Sie den Inhalt eines Dokuments in ein Lesezeichen in einem anderen Dokument einfügen:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Beachten Sie, dass das Lesezeichen nicht mehrere Absätze oder Texte umfassen sollte, die im endgültigen Dokument angezeigt werden sollen.

{{% /alert %}}

## Hängen Sie ein Dokument {#append-a-document} an

Möglicherweise haben Sie einen Anwendungsfall, bei dem Sie zusätzliche Seiten aus einem Dokument am Ende eines vorhandenen Dokuments einfügen müssen. Dazu müssen Sie lediglich die [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/)-Methode aufrufen, um ein Dokument am Ende eines anderen hinzuzufügen.

{{% alert color="primary" %}}

Beachten Sie, dass [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) eine Methode auf Knotenebene innerhalb eines Dokuments ist. Sie können beispielsweise einen Absatz erstellen, Formatierungseigenschaften festlegen und ihn dann mithilfe der **AppendChild**-Methode als untergeordnetes Element an den Text anhängen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Dokument an das Ende eines anderen Dokuments angehängt wird:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Knoten manuell importieren und einfügen {#import-and-insert-nodes-manually}

Mit Aspose.Words können Sie Dokumente automatisch einfügen und anhängen, ohne dass vorherige Importanforderungen erforderlich sind. Wenn Sie jedoch einen bestimmten Knoten Ihres Dokuments einfügen oder anhängen müssen, beispielsweise einen Abschnitt oder einen Absatz, müssen Sie diesen Knoten zunächst manuell importieren.

Wenn Sie einen Abschnitt oder Absatz in einen anderen einfügen oder anhängen müssen, müssen Sie im Wesentlichen die Knoten des ersten Dokumentknotenbaums mithilfe der [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/)-Methode in den zweiten importieren. Nach dem Import Ihrer Knoten müssen Sie die [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)-/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/)-Methode verwenden, um einen neuen Knoten nach/vor dem Referenzknoten einzufügen. Dadurch können Sie den Einfügevorgang anpassen, indem Sie Knoten aus einem Dokument importieren und an bestimmten Positionen einfügen.

Sie können die [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/)-Methode auch verwenden, um einen neuen angegebenen Knoten am Ende der Liste der untergeordneten Knoten hinzuzufügen, beispielsweise wenn Sie Inhalte auf Absatzebene statt auf Abschnittsebene anhängen möchten.

Das folgende Codebeispiel zeigt, wie Sie mithilfe der **InsertAfter**-Methode Knoten manuell importieren und nach einem bestimmten Knoten einfügen:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Durch den Import wird ein neuer Knoten erstellt, der eine Kopie des ursprünglichen Knotens ist und zum Einfügen in das Zieldokument geeignet ist.

{{% /alert %}}

Der Inhalt wird Abschnitt für Abschnitt in das Zieldokument importiert, was bedeutet, dass Einstellungen wie Seiteneinrichtung und Kopf- oder Fußzeilen beim Import erhalten bleiben. Beachten Sie außerdem, dass Sie beim Einfügen oder Anhängen eines Dokuments Formatierungseinstellungen definieren können, um festzulegen, wie zwei Dokumente zusammengefügt werden.

## Allgemeine Eigenschaften für {#common-properties-for-insert-and-append-documents}-Dokumente zum Einfügen und Anhängen

Sowohl die [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/)- als auch die [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/)-Methode akzeptieren [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) und [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) als Eingabeparameter. Mit **ImportFormatMode** können Sie steuern, wie die Dokumentformatierung zusammengeführt wird, wenn Sie Inhalte aus einem Dokument in ein anderes importieren, indem Sie verschiedene Formatmodi wie [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) und [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/) auswählen. Mit der **ImportFormatOptions** können Sie verschiedene Importoptionen auswählen, z. B. [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) und [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Mit Aspose.Words können Sie die Visualisierung eines resultierenden Dokuments anpassen, wenn zwei Dokumente in einem Einfüge- oder Anhängevorgang zusammengefügt werden, indem Sie die [Section](https://reference.aspose.com/words/net/aspose.words/section/)- und [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/)-Eigenschaften verwenden. Die **PageSetup**-Eigenschaft enthält alle Attribute eines Abschnitts wie [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) und andere. Der häufigste Anwendungsfall besteht darin, die **SectionStart**-Eigenschaft festzulegen, um zu definieren, ob der hinzugefügte Inhalt auf derselben Seite angezeigt oder in eine neue Seite aufgeteilt wird.

{{% alert color="primary" %}}

Beachten Sie, dass die **Section**- und **PageSetup**-Eigenschaften nicht steuern, wie zwei Dokumente zusammen eingefügt/angehängt werden. Sie ermöglichen Ihnen lediglich, das Erscheinungsbild Ihres Ergebnisdokuments zu ändern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument an ein anderes anhängen und gleichzeitig verhindern, dass sich der Inhalt auf zwei Seiten aufteilt:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
