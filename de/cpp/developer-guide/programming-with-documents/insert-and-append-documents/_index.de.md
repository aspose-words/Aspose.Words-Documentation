---
title: Dokumente in C++ einfügen und anhängen
second_title: Aspose.Words für C++
articleTitle: Dokumente einfügen und anhängen
linktitle: Dokumente einfügen und anhängen
description: "Kombinieren Sie Dokumente zu einem Dokument: Fügen Sie ein Dokument mit Suchen und Ersetzen, Seriendruckfeld, Lesezeichen oder einfach am Dokumentende in ein neues oder vorhandenes Dokument ein oder hängen Sie es an."
type: docs
weight: 80
url: /de/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es erforderlich, mehrere Dokumente zu einem zu kombinieren. Sie können dies manuell tun oder die Aspose.Words Einfüge- oder Anhängefunktion verwenden.

Mit dem Einfügevorgang können Sie den Inhalt zuvor erstellter Dokumente in ein neues oder vorhandenes Dokument einfügen.

Mit der Anhängefunktion können Sie wiederum ein Dokument nur am Ende eines anderen Dokuments hinzufügen.

In diesem Artikel wird erläutert, wie Sie ein Dokument auf verschiedene Arten einfügen oder an ein anderes anhängen und die allgemeinen Eigenschaften beschreiben, die Sie beim Einfügen oder Anhängen von Dokumenten anwenden können.

## Dokument einfügen

Wie oben erwähnt, wird in Aspose.Words ein Dokument als ein Baum von Knoten dargestellt, und der Vorgang des Einfügens eines Dokuments in ein anderes besteht darin, Knoten vom ersten Dokumentbaum in den zweiten zu kopieren.

Sie können Dokumente auf verschiedene Arten an verschiedenen Stellen einfügen. Sie können beispielsweise ein Dokument über einen Ersetzungsvorgang, ein Seriendruckfeld während eines Seriendruckvorgangs oder über ein Lesezeichen einfügen.

Sie können auch die [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) -Methode verwenden, die dem Einfügen eines Dokuments in Microsoft Word ähnelt, um ein ganzes Dokument an der aktuellen Cursorposition ohne vorherigen Import einzufügen.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mit der Methode `InsertDocument` einfügen:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

In den folgenden Unterabschnitten werden die Optionen beschrieben, mit denen Sie ein Dokument in ein anderes einfügen können.

### Dokument während des Such- und Ersetzungsvorgangs einfügen {#insert-a-document-during-find-and-replace-operation}

Sie können Dokumente einfügen, während Sie Suchen- und Ersetzungsvorgänge ausführen. Beispielsweise kann ein Dokument Absätze mit dem Text [INTRODUCTION] und [CONCLUSION] enthalten. Im endgültigen Dokument müssen Sie diese Absätze jedoch durch den Inhalt ersetzen, der aus einem anderen externen Dokument stammt. Um dies zu erreichen, müssen Sie einen Handler für das Ersetzungsereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Ersetzungsereignis erstellen, um es später im Einfügevorgang zu verwenden:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Das folgende Codebeispiel zeigt, wie der Inhalt eines Dokuments während eines Such- und Ersetzungsvorgangs in ein anderes eingefügt wird:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Dokument während Mail Merge Vorgang {#insert-a-document-during-mail-merge-operation} einfügen

Sie können ein Dokument während eines mail merge-Vorgangs in ein Seriendruckfeld einfügen. Beispielsweise kann eine mail merge-Vorlage ein Seriendruckfeld wie [Zusammenfassung] enthalten. Im endgültigen Dokument müssen Sie jedoch Inhalte aus einem anderen externen Dokument in dieses Seriendruckfeld einfügen. Um dies zu erreichen, müssen Sie einen Handler für das Zusammenführungsereignis erstellen.

Das folgende Codebeispiel zeigt, wie Sie einen Handler für das Zusammenführungsereignis erstellen, um ihn später im Einfügevorgang zu verwenden:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Das folgende Codebeispiel zeigt, wie Sie mit dem erstellten Handler ein Dokument in das Seriendruckfeld einfügen:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Dokument als Lesezeichen einfügen

Sie können eine Textdatei in ein Dokument importieren und direkt nach einem Lesezeichen einfügen, das Sie im Dokument definiert haben. Erstellen Sie dazu einen Absatz mit Lesezeichen, in den das Dokument eingefügt werden soll.

Das folgende Codierungsbeispiel zeigt, wie Sie den Inhalt eines Dokuments in ein Lesezeichen in einem anderen Dokument einfügen:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Beachten Sie, dass das Lesezeichen nicht mehrere Absätze oder Texte einschließen sollte, die in Ihrem endgültigen Ergebnisdokument angezeigt werden sollen.

{{% /alert %}}

## Anhängen eines Dokuments

Möglicherweise haben Sie einen Anwendungsfall, in dem Sie zusätzliche Seiten aus einem Dokument an das Ende eines vorhandenen Dokuments einfügen müssen. Dazu müssen Sie nur die Methode [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) aufrufen, um ein Dokument am Ende eines anderen hinzuzufügen.

{{% alert color="primary" %}}

Beachten Sie, dass [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) eine Methode auf Knotenebene innerhalb eines Dokuments ist. Sie können beispielsweise einen Absatz erstellen, Formatierungseigenschaften festlegen und ihn dann mit der Methode **AppendChild** als untergeordnetes Element an den Textkörper anhängen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument an das Ende eines anderen Dokuments anhängen:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Knoten manuell importieren und einfügen {#import-and-insert-nodes-manually}

Aspose.Words ermöglicht das automatische Einfügen und Anhängen von Dokumenten ohne vorherige Importanforderungen. Wenn Sie jedoch einen bestimmten Knoten Ihres Dokuments einfügen oder anhängen müssen, z. B. einen Abschnitt oder einen Absatz, müssen Sie diesen Knoten zuerst manuell importieren.

Wenn Sie einen Abschnitt oder Absatz an einen anderen einfügen oder anhängen müssen, müssen Sie im Wesentlichen die Knoten des ersten Dokumentknotenbaums mit der Methode [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/) in den zweiten importieren. Nach dem Importieren Ihrer Knoten müssen Sie die Methode [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) verwenden, um einen neuen Knoten nach / vor dem Referenzknoten einzufügen. Auf diese Weise können Sie den Einfügevorgang anpassen, indem Sie Knoten aus einem Dokument importieren und an bestimmten Positionen einfügen.

Sie können auch die Methode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) verwenden, um einen neuen angegebenen Knoten am Ende der Liste der untergeordneten Knoten hinzuzufügen, z. B. wenn Sie Inhalte auf Absatzebene anstatt auf Abschnittsebene anhängen möchten.

Das folgende Codebeispiel zeigt, wie Knoten manuell importiert und nach einem bestimmten Knoten mit der Methode **InsertAfter** eingefügt werden:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Der Import erstellt einen neuen Knoten, der eine Kopie des ursprünglichen Knotens ist und zum Einfügen in das Zieldokument geeignet ist.

{{% /alert %}}

Inhalte werden abschnittsweise in das Zieldokument importiert, was bedeutet, dass Einstellungen wie Seiteneinrichtung und Kopf- oder Fußzeilen beim Import beibehalten werden. Es ist auch nützlich zu beachten, dass Sie beim Einfügen oder Anhängen eines Dokuments Formatierungseinstellungen definieren können, um festzulegen, wie zwei Dokumente zusammengefügt werden.

## Allgemeine Eigenschaften für Dokumente einfügen und Anhängen {#common-properties-for-insert-and-append-documents}

Sowohl [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) als auch [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) methoden akzeptieren [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) und [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) als Eingabeparameter. Mit **ImportFormatMode** können Sie steuern, wie Dokumentformatierungen zusammengeführt werden, wenn Sie Inhalte aus einem Dokument in ein anderes importieren, indem Sie verschiedene Formatmodi wie [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) und [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) auswählen. Mit **ImportFormatOptions** können Sie verschiedene Importoptionen auswählen, z [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), und [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Mit Aspose.Words können Sie die Visualisierung eines resultierenden Dokuments anpassen, wenn zwei Dokumente in einem Einfüge- oder Anhängevorgang mithilfe der Eigenschaften [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) und [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup) addiert werden. Die Eigenschaft **PageSetup** enthält alle Attribute eines Abschnitts, z. B.: [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), und andere. Der häufigste Anwendungsfall besteht darin, die Eigenschaft **SectionStart** festzulegen, um zu definieren, ob der hinzugefügte Inhalt auf derselben Seite angezeigt oder in eine neue aufgeteilt wird.

{{% alert color="primary" %}}

Beachten Sie, dass die Eigenschaften **Section** und **PageSetup** nicht steuern, wie zwei Dokumente eingefügt / angehängt werden. Sie erlauben Ihnen nur, das Aussehen Ihres Ergebnisdokuments zu ändern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Dokument an ein anderes angehängt wird, während der Inhalt nicht auf zwei Seiten aufgeteilt wird:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
