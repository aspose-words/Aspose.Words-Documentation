---
title: Dokumente einfügen und anhängen
second_title: Aspose.Words für Python via .NET
articleTitle: Dokumente einfügen und anhängen
linktitle: Dokumente einfügen und anhängen
description: "Kombinieren Sie Dokumente zu einem: Fügen Sie ein Dokument in ein neues oder vorhandenes ein oder hängen Sie es an, indem Sie `Suchen und Ersetzen`, `Zusammenführen von Feldern`, `Lesezeichen` oder einfach am Ende des Dokuments in Python verwenden."
type: docs
weight: 80
url: /de/python-net/insert-and-append-documents/
---

Manchmal ist es erforderlich, mehrere Dokumente zu einem zusammenzufassen. Sie können dies manuell tun oder die Aspose.Words-Funktion zum Einfügen oder Anhängen verwenden.

Mit der Einfügeoperation können Sie den Inhalt zuvor erstellter Dokumente in ein neues oder vorhandenes einfügen.

Mit der Anhängefunktion wiederum können Sie ein Dokument nur am Ende eines anderen Dokuments hinzufügen.

In diesem Artikel wird erklärt, wie Sie ein Dokument auf unterschiedliche Weise einfügen oder an ein anderes anhängen können, und es werden die allgemeinen Eigenschaften beschrieben, die Sie beim Einfügen oder Anhängen von Dokumenten anwenden können.

## Fügen Sie ein Dokument ein

Wie oben erwähnt, wird ein Dokument in Aspose.Words als Knotenbaum dargestellt, und beim Einfügen eines Dokuments in ein anderes werden Knoten vom ersten Dokumentbaum in den zweiten kopiert.

Sie können Dokumente auf unterschiedliche Weise an verschiedenen Orten einfügen. Beispielsweise können Sie ein Dokument durch einen Ersetzungsvorgang, ein Zusammenführungsfeld während eines Zusammenführungsvorgangs oder über ein Lesezeichen einfügen.

Sie können auch die [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/)- oder [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions)-Methode verwenden, die dem Einfügen eines Dokuments in Microsoft Word ähnelt, um ein ganzes Dokument an der aktuellen Cursorposition einzufügen, ohne dass es vorher importiert werden muss.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit der **insert_document**-Methode einfügt:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Das folgende Codebeispiel zeigt, wie man ein Dokument mit der **insert_document_inline**-Methode einfügt:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

In den folgenden Unterabschnitten werden die Optionen beschrieben, mit denen Sie ein Dokument in ein anderes einfügen können.

### Fügen Sie ein Dokument als Lesezeichen ein

Sie können eine Textdatei in ein Dokument importieren und direkt nach einem Lesezeichen einfügen, das Sie im Dokument definiert haben. Erstellen Sie dazu einen mit einem Lesezeichen versehenen Absatz an der Stelle, an der das Dokument eingefügt werden soll.

Das folgende Codierungsbeispiel zeigt, wie Sie den Inhalt eines Dokuments in ein Lesezeichen in einem anderen Dokument einfügen:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Beachten Sie, dass das Lesezeichen nicht mehrere Absätze oder Texte umfassen sollte, die im endgültigen Dokument angezeigt werden sollen.

{{% /alert %}}

## Hängen Sie ein Dokument an

Möglicherweise haben Sie einen Anwendungsfall, bei dem Sie zusätzliche Seiten aus einem Dokument am Ende eines vorhandenen Dokuments einfügen müssen. Dazu müssen Sie lediglich die [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/)-Methode aufrufen, um ein Dokument am Ende eines anderen hinzuzufügen.

{{% alert color="primary" %}}

Beachten Sie, dass [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) eine Methode auf Knotenebene innerhalb eines Dokuments ist. Sie können beispielsweise einen Absatz erstellen, Formatierungseigenschaften festlegen und ihn dann mithilfe der [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)-Methode als untergeordnetes Element an den Text anhängen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Dokument an das Ende eines anderen Dokuments angehängt wird:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Knoten manuell importieren und einfügen

Mit Aspose.Words können Sie Dokumente automatisch einfügen und anhängen, ohne dass vorherige Importanforderungen erforderlich sind. Wenn Sie jedoch einen bestimmten Knoten Ihres Dokuments einfügen oder anhängen müssen, beispielsweise einen Abschnitt oder einen Absatz, müssen Sie diesen Knoten zunächst manuell importieren.

Wenn Sie einen Abschnitt oder Absatz in einen anderen einfügen oder anhängen müssen, müssen Sie im Wesentlichen die Knoten des ersten Dokumentknotenbaums mithilfe der [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/)-Methode in den zweiten importieren. Nach dem Import Ihrer Knoten müssen Sie die [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)-/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/)-Methode verwenden, um einen neuen Knoten nach/vor dem Referenzknoten einzufügen. Dadurch können Sie den Einfügevorgang anpassen, indem Sie Knoten aus einem Dokument importieren und an bestimmten Positionen einfügen.

Sie können die [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)-Methode auch verwenden, um einen neuen angegebenen Knoten am Ende der Liste der untergeordneten Knoten hinzuzufügen, beispielsweise wenn Sie Inhalte auf Absatzebene statt auf Abschnittsebene anhängen möchten.

Das folgende Codebeispiel zeigt, wie Sie mithilfe der [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)-Methode Knoten manuell importieren und nach einem bestimmten Knoten einfügen:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Durch den Import wird ein neuer Knoten erstellt, der eine Kopie des ursprünglichen Knotens ist und zum Einfügen in das Zieldokument geeignet ist.

{{% /alert %}}

Der Inhalt wird Abschnitt für Abschnitt in das Zieldokument importiert, was bedeutet, dass Einstellungen wie Seiteneinrichtung und Kopf- oder Fußzeilen beim Import erhalten bleiben. Beachten Sie außerdem, dass Sie beim Einfügen oder Anhängen eines Dokuments Formatierungseinstellungen definieren können, um festzulegen, wie zwei Dokumente zusammengefügt werden.

## Allgemeine Eigenschaften für Einfüge- und Anhängedokumente

Sowohl die [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/)- als auch die [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/)-Methode akzeptieren [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) und [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) als Eingabeparameter. Mit [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) können Sie steuern, wie die Dokumentformatierung zusammengeführt wird, wenn Sie Inhalte aus einem Dokument in ein anderes importieren, indem Sie verschiedene Formatmodi wie [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) und [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles) auswählen. Beim [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) können Sie verschiedene Importoptionen auswählen, z. B. [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) und [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Mit Aspose.Words können Sie die Visualisierung eines resultierenden Dokuments anpassen, wenn zwei Dokumente in einem Einfüge- oder Anhängevorgang mithilfe von [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) und [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) zusammengefügt werden. Die [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/)-Eigenschaft enthält alle Attribute eines Abschnitts wie [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) und andere. Der häufigste Anwendungsfall besteht darin, die [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)-Eigenschaft festzulegen, um zu definieren, ob der hinzugefügte Inhalt auf derselben Seite angezeigt oder in eine neue Seite aufgeteilt wird.

{{% alert color="primary" %}}

Beachten Sie, dass [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) und [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) nicht steuern, wie zwei Dokumente zusammen eingefügt/angehängt werden. Sie ermöglichen Ihnen lediglich, das Erscheinungsbild Ihres Ergebnisdokuments zu ändern.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument an ein anderes anhängen und gleichzeitig verhindern, dass sich der Inhalt auf zwei Seiten aufteilt:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
