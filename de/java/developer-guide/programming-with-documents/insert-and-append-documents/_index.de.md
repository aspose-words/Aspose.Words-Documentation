---
title: Dokumente einfügen und anhängen Java
second_title: Aspose.Words für Java
articleTitle: Dokumente einfügen und anfügen
linktitle: Dokumente einfügen und anfügen
description: "Kombinieren Sie Dokumente in eins: Einfügen oder Anfügen eines Dokuments in ein neues oder bestehendes, indem Sie das Feld finden und ersetzen, zusammenfügen, Lesezeichen oder einfach am Dokumentende in Java."
type: docs
weight: 80
url: /de/java/insert-and-append-documents/
---

Manchmal ist es erforderlich, mehrere Dokumente zu einem zu kombinieren. Sie können dies manuell tun oder Sie können Aspose.Words einfügen oder anhängen Funktion.

Mit der Insert-Operation können Sie den Inhalt der zuvor erstellten Dokumente in eine neue oder bestehende einfügen.

Die Append-Funktion ermöglicht es Ihnen, ein Dokument nur am Ende eines anderen Dokuments hinzuzufügen.

Dieser Artikel erklärt, wie man ein Dokument auf unterschiedliche Weise einfügen oder anhängen kann und beschreibt die gemeinsamen Eigenschaften, die Sie beim Einfügen oder Anfügen von Dokumenten anwenden können.

## Dokument einfügen

Wie oben erwähnt, in Aspose.Words ein Dokument als Baum von Knoten dargestellt ist, und der Betrieb des Einfügens eines Dokuments in ein anderes Kopieren von Knoten vom ersten Dokumentbaum zum zweiten.

Sie können Dokumente in einer Vielzahl von Standorten auf verschiedene Weise einfügen. Beispielsweise können Sie ein Dokument durch einen Austauschvorgang, ein Zusammenschlussfeld während eines Zusammenschlussvorgangs oder über ein Lesezeichen einfügen.

Sie können auch die [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) oder [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) Verfahren, das dem Einfügen eines Dokuments ähnlich ist Microsoft Word, ein ganzes Dokument an der aktuellen Cursorposition ohne vorherige Importierung einfügen.

Das folgende Codebeispiel zeigt, wie ein Dokument mit dem **InsertDocument** Methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Das folgende Codebeispiel zeigt, wie ein Dokument mit dem **InsertDocumentInline** Methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Die folgenden Unterabschnitte beschreiben die Optionen, bei denen Sie ein Dokument in ein anderes einfügen können.

### Einfügen eines Dokumentes während des Suchens und Ersetzens der Operation {#insert-a-document-during-find-and-replace-operation}

Sie können Dokumente einfügen, während Sie die Operationen finden und ersetzen. Ein Dokument kann beispielsweise Absätze mit dem Text [INTRODUCTION] und [CONCLUSION] enthalten. Aber im endgültigen Dokument müssen Sie diese Absätze durch den Inhalt eines anderen externen Dokuments ersetzen. Um dies zu erreichen, müssen Sie einen Handler für das Ersatzereignis erstellen.

Das folgende Codebeispiel zeigt, wie man einen Handler für das ersetzende Ereignis erstellt, um ihn später im Einsetzen zu verwenden:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Das folgende Codebeispiel zeigt, wie der Inhalt eines Dokuments während eines Funds in ein anderes eingefügt und ersetzt wird:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Ein Dokument einfügen Mail Merge Betrieb {#insert-a-document-during-mail-merge-operation}

Sie können während einer mail merge Betrieb. Zum Beispiel a mail merge Template kann ein Zusammenschlussfeld wie [Summary] enthalten. Aber im letzten Dokument müssen Sie Inhalte einfügen, die von einem anderen externen Dokument erhalten wurden. Um dies zu erreichen, müssen Sie einen Handler für das Merger-Event erstellen.

Das folgende Codebeispiel zeigt, wie ein Handler für das Fusionsereignis erstellt werden kann, um es später im Insertionsprozess zu verwenden:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Das folgende Codebeispiel zeigt, wie ein Dokument mit dem erstellten Handler in das Zusammenführungsfeld eingefügt werden kann:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Ein Dokument bei Bookmark einfügen

Sie können eine Textdatei in ein Dokument importieren und nach einem im Dokument definierten Lesezeichen einfügen. Um dies zu tun, erstellen Sie einen beschrifteten Absatz, in dem das Dokument eingefügt werden soll.

Das folgende Codierungsbeispiel zeigt, wie man den Inhalt eines Dokuments in ein anderes Dokument einfügen kann:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Beachten Sie, dass das Lesezeichen nicht mehrere Absätze oder Text einschließen sollte, die Sie möchten, dass sie in Ihrem abschließenden Dokument erscheinen.

{{% /alert %}}

## Dokument anhängen

Sie können einen Anwendungsfall haben, in dem Sie zusätzliche Seiten von einem Dokument bis zum Ende eines vorhandenen Dokuments einfügen müssen. Um dies zu tun, müssen Sie nur die [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) Verfahren zum Hinzufügen eines Dokuments zum Ende eines anderen.

{{% alert color="primary" %}}

Anmerkung: [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) ist eine Knotenebenenmethode innerhalb eines Dokuments. Zum Beispiel können Sie einen Absatz erstellen, Formatierungseigenschaften festlegen und dann als Kind an den Körper anhängen, indem Sie die **AppendChild** Methode.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Dokument am Ende eines anderen Dokuments angehängt werden kann:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Nodes manuell importieren und einfügen {#import-and-insert-nodes-manually}

Aspose.Words Sie können Dokumente automatisch ohne vorherige Importanforderungen einfügen und anhängen. Wenn Sie jedoch einen bestimmten Knoten Ihres Dokuments, wie einen Abschnitt oder einen Absatz, einfügen oder anhängen müssen, müssen Sie zuerst diesen Knoten manuell importieren.

Wenn Sie einen Abschnitt oder einen Absatz in einen anderen einfügen oder anhängen müssen, müssen Sie im Wesentlichen die Knoten des ersten Dokumentknotenbaums mit dem zweiten einführen. [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) Methode. Nach dem Import Ihrer Knoten müssen Sie die [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) Verfahren zum Einfügen eines neuen Knotens nach/vor dem Referenzknoten. Dadurch können Sie den Einlegevorgang anpassen, indem Sie Knoten aus einem Dokument importieren und an gegebenen Positionen einfügen.

Sie können auch die [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) Verfahren zum Hinzufügen eines neuen spezifizierten Knotens zum Ende der Liste der Kinderknoten, zum Beispiel, wenn Sie Inhalte auf der Absatzebene anstelle auf der Abschnittsebene anhängen möchten.

Das folgende Codebeispiel zeigt, wie man Knoten manuell importiert und nach einem bestimmten Knoten mit dem **InsertAfter** Methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Der Import erzeugt einen neuen Knoten, der eine Kopie des ursprünglichen Knotens ist und zur Einfügung in das Zieldokument geeignet ist.

{{% /alert %}}

Der Inhalt wird im Abschnitt des Zieldokuments nach Abschnitt importiert, d.h. während des Imports werden Einstellungen, wie z.B. Page Setup und Header oder Footer, erhalten. Es ist auch nützlich zu beachten, dass Sie Formatierungseinstellungen definieren können, wenn Sie ein Dokument einfügen oder anhängen, um anzugeben, wie zwei Dokumente zusammengefügt werden.

## Gemeinsame Eigenschaften für Einfügen und Anwenden von Dokumenten {#common-properties-for-insert-and-append-documents}

Beide [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) und [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) Methoden akzeptieren [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) und [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) als Eingangsparameter. Die **ImportFormatMode** Sie können kontrollieren, wie die Dokumentenformatierung zusammengeführt wird, wenn Sie Inhalte aus einem Dokument in ein anderes importieren, indem Sie verschiedene Formatmodi wie [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), und [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). Die **ImportFormatOptions** Sie können verschiedene Importoptionen wie [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), und [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words ermöglicht es Ihnen, die Visualisierung eines resultierenden Dokuments anzupassen, wenn zwei Dokumente in einem Einsatz- oder Append-Betrieb zusammengefügt werden, indem die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) und [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Eigenschaften. Die **PageSetup** Eigenschaft enthält alle Attribute eines Abschnitts wie [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), und andere. Der häufigste Anwendungsfall ist die **SectionStart** Eigenschaft zu definieren, ob der hinzugefügte Inhalt auf der gleichen Seite angezeigt wird oder in eine neue aufgeteilt wird.

{{% alert color="primary" %}}

Anmerkung: **Section** und **PageSetup** Eigenschaften steuern nicht, wie zwei Dokumente zusammen eingefügt/angehängt werden. Sie erlauben Ihnen nur, das Aussehen Ihres Ergebnisdokuments zu ändern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man ein Dokument an ein anderes anpasst, während der Inhalt von der Aufteilung auf zwei Seiten bleibt:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
