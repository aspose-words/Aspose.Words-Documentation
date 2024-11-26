---
title: Dokumente in Java einfügen und anhängen
second_title: Aspose.Words für Java
articleTitle: Dokumente einfügen und anhängen
linktitle: Dokumente einfügen und anhängen
description: "Dokumente zu einem kombinieren: Fügen Sie ein Dokument mit Suchen und Ersetzen, Seriendruckfeld, Lesezeichen oder einfach am Dokumentende in Java in ein neues oder vorhandenes Dokument ein oder hängen Sie es an."
type: docs
weight: 80
url: /de/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es erforderlich, mehrere Dokumente zu einem zu kombinieren. Sie können dies manuell tun oder die Aspose.Words Einfüge- oder Anhängefunktion verwenden.

Mit dem Einfügevorgang können Sie den Inhalt zuvor erstellter Dokumente in ein neues oder vorhandenes Dokument einfügen.

Mit der Anhängefunktion können Sie wiederum ein Dokument nur am Ende eines anderen Dokuments hinzufügen.

In diesem Artikel wird erläutert, wie Sie ein Dokument auf verschiedene Arten einfügen oder an ein anderes anhängen und die allgemeinen Eigenschaften beschreiben, die Sie beim Einfügen oder Anhängen von Dokumenten anwenden können.

## Dokument einfügen

Wie oben erwähnt, wird in Aspose.Words ein Dokument als ein Baum von Knoten dargestellt, und der Vorgang des Einfügens eines Dokuments in ein anderes besteht darin, Knoten vom ersten Dokumentbaum in den zweiten zu kopieren.

Sie können Dokumente auf verschiedene Arten an verschiedenen Stellen einfügen. Sie können beispielsweise ein Dokument über einen Ersetzungsvorgang, ein Seriendruckfeld während eines Seriendruckvorgangs oder über ein Lesezeichen einfügen.

Sie können auch die Methode [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) oder [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) verwenden, die dem Einfügen eines Dokuments in Microsoft Word ähnelt, um ein ganzes Dokument an der aktuellen Cursorposition ohne vorherigen Import einzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit der Methode **InsertDocument** einfügen:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit der Methode **InsertDocumentInline** einfügen:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

In den folgenden Unterabschnitten werden die Optionen beschrieben, mit denen Sie ein Dokument in ein anderes einfügen können.

### Dokument während des Such- und Ersetzungsvorgangs einfügen {#insert-a-document-during-find-and-replace-operation}

Sie können Dokumente einfügen, während Sie Suchen- und Ersetzungsvorgänge ausführen. Beispielsweise kann ein Dokument Absätze mit dem Text [INTRODUCTION] und [CONCLUSION] enthalten. Im endgültigen Dokument müssen Sie diese Absätze jedoch durch den Inhalt ersetzen, der aus einem anderen externen Dokument stammt. Um dies zu erreichen, müssen Sie einen Handler für das Ersetzungsereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Ersetzungsereignis erstellen, um es später im Einfügevorgang zu verwenden:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Das folgende Codebeispiel zeigt, wie der Inhalt eines Dokuments während eines Such- und Ersetzungsvorgangs in ein anderes eingefügt wird:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Dokument während Mail Merge Vorgang {#insert-a-document-during-mail-merge-operation} einfügen

Sie können ein Dokument während eines Mail Merge-Vorgangs in ein Seriendruckfeld einfügen. Beispielsweise kann eine Mail Merge-Vorlage ein Seriendruckfeld wie [Zusammenfassung] enthalten. Im endgültigen Dokument müssen Sie jedoch Inhalte aus einem anderen externen Dokument in dieses Seriendruckfeld einfügen. Um dies zu erreichen, müssen Sie einen Handler für das Zusammenführungsereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Zusammenführungsereignis erstellen, um ihn später im Einfügevorgang zu verwenden:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Das folgende Codebeispiel zeigt, wie Sie mit dem erstellten Handler ein Dokument in das Seriendruckfeld einfügen:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Dokument als Lesezeichen einfügen

Sie können eine Textdatei in ein Dokument importieren und direkt nach einem Lesezeichen einfügen, das Sie im Dokument definiert haben. Erstellen Sie dazu einen Absatz mit Lesezeichen, in den das Dokument eingefügt werden soll.

Das folgende Codierungsbeispiel zeigt, wie Sie den Inhalt eines Dokuments in ein Lesezeichen in einem anderen Dokument einfügen:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Beachten Sie, dass das Lesezeichen nicht mehrere Absätze oder Texte einschließen sollte, die in Ihrem endgültigen Ergebnisdokument angezeigt werden sollen.

{{% /alert %}}

## Anhängen eines Dokuments

Möglicherweise haben Sie einen Anwendungsfall, in dem Sie zusätzliche Seiten aus einem Dokument an das Ende eines vorhandenen Dokuments einfügen müssen. Dazu müssen Sie nur die Methode [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) aufrufen, um ein Dokument am Ende eines anderen hinzuzufügen.

{{% alert color="primary" %}}

Beachten Sie, dass [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) eine Methode auf Knotenebene innerhalb eines Dokuments ist. Sie können beispielsweise einen Absatz erstellen, Formatierungseigenschaften festlegen und ihn dann mit der Methode **AppendChild** als untergeordnetes Element an den Textkörper anhängen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument an das Ende eines anderen Dokuments anhängen:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Knoten manuell importieren und einfügen {#import-and-insert-nodes-manually}

Aspose.Words ermöglicht das automatische Einfügen und Anhängen von Dokumenten ohne vorherige Importanforderungen. Wenn Sie jedoch einen bestimmten Knoten Ihres Dokuments einfügen oder anhängen müssen, z. B. einen Abschnitt oder einen Absatz, müssen Sie diesen Knoten zuerst manuell importieren.

Wenn Sie einen Abschnitt oder Absatz an einen anderen einfügen oder anhängen müssen, müssen Sie im Wesentlichen die Knoten des ersten Dokumentknotenbaums mit der Methode [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) in den zweiten importieren. Nach dem Importieren Ihrer Knoten müssen Sie die Methode [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) verwenden, um einen neuen Knoten nach / vor dem Referenzknoten einzufügen. Auf diese Weise können Sie den Einfügevorgang anpassen, indem Sie Knoten aus einem Dokument importieren und an bestimmten Positionen einfügen.

Sie können auch die Methode [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) verwenden, um einen neuen angegebenen Knoten am Ende der Liste der untergeordneten Knoten hinzuzufügen, z. B. wenn Sie Inhalte auf Absatzebene anstatt auf Abschnittsebene anhängen möchten.

Das folgende Codebeispiel zeigt, wie Knoten manuell importiert und nach einem bestimmten Knoten mit der Methode **InsertAfter** eingefügt werden:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Der Import erstellt einen neuen Knoten, der eine Kopie des ursprünglichen Knotens ist und zum Einfügen in das Zieldokument geeignet ist.

{{% /alert %}}

Inhalte werden abschnittsweise in das Zieldokument importiert, was bedeutet, dass Einstellungen wie Seiteneinrichtung und Kopf- oder Fußzeilen beim Import beibehalten werden. Es ist auch nützlich zu beachten, dass Sie beim Einfügen oder Anhängen eines Dokuments Formatierungseinstellungen definieren können, um festzulegen, wie zwei Dokumente zusammengefügt werden.

## Allgemeine Eigenschaften für Dokumente einfügen und Anhängen {#common-properties-for-insert-and-append-documents}

Sowohl die Methoden [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) als auch [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) akzeptieren [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) und [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) als Eingabeparameter. Mit **ImportFormatMode** können Sie steuern, wie Dokumentformatierungen zusammengeführt werden, wenn Sie Inhalte aus einem Dokument in ein anderes importieren, indem Sie verschiedene Formatmodi wie [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) und [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES) auswählen. Mit **ImportFormatOptions** können Sie verschiedene Importoptionen auswählen, z [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), und [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Mit Aspose.Words können Sie die Visualisierung eines resultierenden Dokuments anpassen, wenn zwei Dokumente in einem Einfüge- oder Anhängevorgang mithilfe der Eigenschaften [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) und [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) addiert werden. Die Eigenschaft **PageSetup** enthält alle Attribute eines Abschnitts, z. B.: [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), und andere. Der häufigste Anwendungsfall besteht darin, die Eigenschaft **SectionStart** festzulegen, um zu definieren, ob der hinzugefügte Inhalt auf derselben Seite angezeigt oder in eine neue aufgeteilt wird.

{{% alert color="primary" %}}

Beachten Sie, dass die Eigenschaften **Section** und **PageSetup** nicht steuern, wie zwei Dokumente eingefügt / angehängt werden. Sie erlauben Ihnen nur, das Aussehen Ihres Ergebnisdokuments zu ändern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Dokument an ein anderes angehängt wird, während der Inhalt nicht auf zwei Seiten aufgeteilt wird:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
