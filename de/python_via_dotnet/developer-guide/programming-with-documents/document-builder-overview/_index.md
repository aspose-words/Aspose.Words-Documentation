---
title: Übersicht über den Document Builder in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Übersicht über den Document Builder
linktitle: Übersicht über den Document Builder
type: docs
description: "Mit DocumentBuilder können Sie mithilfe von Python dynamische Dokumente von Grund auf erstellen oder neue Elemente zu vorhandenen hinzufügen. DocumentBuilder bietet Methoden zum Einfügen von Text, Kontrollkästchen, Tabellen, Bildern und anderen Inhaltselementen in Python."
weight: 30
url: /de/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ist eine leistungsstarke Klasse, die mit [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) verknüpft ist und es Ihnen ermöglicht, dynamische Dokumente von Grund auf zu erstellen oder neue Elemente zu einem vorhandenen hinzuzufügen.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bietet Methoden zum Einfügen von Text, Kontrollkästchen, Ole-Objekten, Absätzen, Listen, Tabellen, Bildern und anderen Inhaltselementen. Sie können damit Schriftarten, Absatz- oder Abschnittsformatierungen festlegen und andere Vorgänge ausführen.

## Document Builder oder Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ergänzt die im Aspose.Words Document Object Model (DOM) verfügbaren Klassen und Methoden, um die gängigsten Dokumenterstellungsaufgaben zu vereinfachen. Das heißt, Sie können den Inhalt von Dokumenten sowohl über Aspose.Words DOM, was ein gutes Verständnis der Baumstruktur erfordert, als auch über den DocumentBuilder erstellen und ändern. Das `DocumentBuilder` ist eine "Fassade" für die komplexe **Document**-Struktur, die es Ihnen ermöglicht, schnell und einfach Inhalte und Formatierungen einzufügen.

Operationen, die mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) möglich sind, sind auch bei direkter Verwendung der Klassen des Aspose.Words-DOM möglich. Die direkte Verwendung von Aspose.Words-DOM-Klassen erfordert jedoch normalerweise mehr Codezeilen als die Verwendung von [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Dokumentennavigation

Die Dokumentnavigation basiert auf dem Konzept eines virtuellen Cursors, mit dem Sie mithilfe verschiedener **DocumentBuilder.move_to_XXX**-Methoden wie [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) und [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) an eine andere Stelle im Dokument wechseln können. Dieser virtuelle Cursor zeigt an, wo der Text eingefügt wird, wenn die Methoden [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) und andere aufgerufen werden. Weitere Informationen zum virtuellen Cursor finden Sie im folgenden Artikel "Navigation mit Cursor".

Das folgende Codebeispiel zeigt, wie Sie zu einem Lesezeichen navigieren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Erstellen und Ändern von Dokumenten

Aspose.Words API stellt mehrere Klassen bereit, die für die Formatierung verschiedener Elemente eines Dokuments verantwortlich sind. Jede der Klassen kapselt Formatierungseigenschaften, die sich auf ein bestimmtes Dokumentelement beziehen, z. B. Text, Absatz, Abschnitt und andere. Beispielsweise stellt die [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)-Klasse Zeichenformatierungseigenschaften dar, die [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/)-Klasse stellt Absatzformatierungseigenschaften dar und so weiter. Objekte dieser Klassen werden von den entsprechenden [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Eigenschaften zurückgegeben, die dieselben Namen wie die Klassen haben. Daher können Sie während der Dokumenterstellung darauf zugreifen und die gewünschte Formatierung festlegen.

Sie können auch Text, Kontrollkästchen, Ole-Objekte, Bilder, Lesezeichen, Formularfelder und andere Dokumentelemente an der Cursorposition einfügen, indem Sie die `Write`-Methode oder eine der **DocumentBuilder.insert_XXX**-Methoden wie [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) und ähnliche Methoden verwenden.

Sehen wir uns an, wie man mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ein einfaches Dokument erstellt.

### Erstellen Sie ein Dokument mit DocumentBuilder

Zunächst müssen Sie ein [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) erstellen und es einem [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt zuordnen. Sie erstellen eine neue Instanz von [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), indem Sie dessen Konstruktor aufrufen und sie an ein [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt übergeben, um es an den Builder anzuhängen.

Um einen Text einzufügen, übergeben Sie die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/)-Methode.

Das folgende Codebeispiel zeigt, wie Sie mit einem Document Builder ein einfaches Dokument erstellen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Geben Sie die Dokumentformatierung an

Die [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/)-Eigenschaft definiert die Textformatierung. Dieses Objekt enthält verschiedene Schriftartattribute (Schriftartname, Schriftgröße, Farbe usw.). Einige wichtige Schriftartattribute werden auch durch [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind die booleschen Eigenschaften [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) und [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

Das folgende Codebeispiel zeigt, wie man einen formatierten Text mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) gibt die Zeichenformatierung an, die auf den gesamten Text angewendet wird, der ab der aktuellen Position im Dokument eingefügt wird.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) gibt die Absatzformatierung für den aktuellen und alle einzufügenden Absätze an.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) gibt die Seiten- und Abschnittseigenschaften für den aktuellen Abschnitt und den gesamten Abschnitt an, der eingefügt wird.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) und [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) geben Formatierungseigenschaften an, die ab der aktuellen Position im Dokument auf Tabellenzellen und -zeilen angewendet werden.

In dieser Situation bedeutet "aktuell" die Position, den Absatz, den Abschnitt, die Zelle oder die Zeile, in der sich der Cursor befindet.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass die [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/)-, [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/)- und [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/)-Eigenschaften jedes Mal aktualisiert werden, wenn Sie zu einer anderen Stelle im Dokument navigieren, um die Formatierungseigenschaften dieser Stelle widerzuspiegeln.

{{% /alert %}}
