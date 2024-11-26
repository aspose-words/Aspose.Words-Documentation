---
title: Übersicht über den Document Builder in C#
second_title: Aspose.Words für .NET
articleTitle: Übersicht über den Document Builder
linktitle: Übersicht über den Document Builder
type: docs
description: "Mit DocumentBuilder können Sie mithilfe von C# dynamische Dokumente von Grund auf erstellen oder neue Elemente zu vorhandenen hinzufügen. DocumentBuilder bietet Methoden zum Einfügen von Text, Kontrollkästchen, Tabellen, Bildern und anderen Inhaltselementen in .NET."
weight: 30
url: /de/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) ist eine leistungsstarke Klasse, die mit [Document](https://reference.aspose.com/words/de/net/aspose.words/document/) verknüpft ist und es Ihnen ermöglicht, dynamische Dokumente von Grund auf zu erstellen oder neue Elemente zu einem vorhandenen hinzuzufügen.

**DocumentBuilder** bietet Methoden zum Einfügen von Text, Kontrollkästchen, Ole-Objekten, Absätzen, Listen, Tabellen, Bildern und anderen Inhaltselementen. Sie können damit Schriftarten, Absatz- oder Abschnittsformatierungen festlegen und andere Vorgänge ausführen.

## Document Builder oder Aspose.Words DOM

**DocumentBuilder** ergänzt die im Aspose.Words Document Object Model (DOM) verfügbaren Klassen und Methoden, um die gängigsten Dokumenterstellungsaufgaben zu vereinfachen. Das heißt, Sie können den Inhalt von Dokumenten sowohl über Aspose.Words DOM, was ein gutes Verständnis der Baumstruktur erfordert, als auch über den DocumentBuilder erstellen und ändern. Das `DocumentBuilder` ist eine "Fassade" für die komplexe **Document**-Struktur, die es Ihnen ermöglicht, schnell und einfach Inhalte und Formatierungen einzufügen.

Operationen, die mit **DocumentBuilder** möglich sind, sind auch bei direkter Verwendung der Klassen des Aspose.Words-DOM möglich. Die direkte Verwendung von Aspose.Words-DOM-Klassen erfordert jedoch normalerweise mehr Codezeilen als die Verwendung von **DocumentBuilder**.

## Dokumentennavigation

Die Dokumentnavigation basiert auf dem Konzept eines virtuellen Cursors, mit dem Sie mithilfe verschiedener **DocumentBuilder.MoveToXXX**-Methoden wie [MoveToDocumentStart](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/movetodocumentstart/) und [MoveToField](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/movetofield/) an eine andere Stelle im Dokument wechseln können. Dieser virtuelle Cursor zeigt an, wo der Text eingefügt wird, wenn die Methoden [Write](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertbreak/) und andere aufgerufen werden. Weitere Informationen zum virtuellen Cursor finden Sie im folgenden Artikel "Navigation mit Cursor".

Das folgende Codebeispiel zeigt, wie Sie zu einem Lesezeichen navigieren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Erstellen und Ändern von Dokumenten

Aspose.Words API stellt mehrere Klassen bereit, die für die Formatierung verschiedener Elemente eines Dokuments verantwortlich sind. Jede der Klassen kapselt Formatierungseigenschaften, die sich auf ein bestimmtes Dokumentelement beziehen, z. B. Text, Absatz, Abschnitt und andere. Beispielsweise stellt die [Font](https://reference.aspose.com/words/de/net/aspose.words/font/)-Klasse Zeichenformatierungseigenschaften dar, die [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/)-Klasse stellt Absatzformatierungseigenschaften dar und so weiter. Objekte dieser Klassen werden von den entsprechenden **DocumentBuilder**-Eigenschaften zurückgegeben, die dieselben Namen wie die Klassen haben. Daher können Sie während der Dokumenterstellung darauf zugreifen und die gewünschte Formatierung festlegen.

Sie können auch Text, Kontrollkästchen, Ole-Objekte, Bilder, Lesezeichen, Formularfelder und andere Dokumentelemente an der Cursorposition einfügen, indem Sie die `Write`-Methode oder eine der **DocumentBuilder.InsertXXX**-Methoden wie [InsertField](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) und ähnliche Methoden verwenden.

Sehen wir uns an, wie man mit **DocumentBuilder** ein einfaches Dokument erstellt.

### Erstellen Sie ein Dokument mit DocumentBuilder

Zunächst müssen Sie ein **DocumentBuilder** erstellen und es einem **Document**-Objekt zuordnen. Sie erstellen eine neue Instanz von **DocumentBuilder**, indem Sie den Konstruktor aufrufen und sie an ein **Document**-Objekt übergeben, um es an den Builder anzuhängen.

Um einen Text einzufügen, übergeben Sie die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die **Write**-Methode.

Das folgende Codebeispiel zeigt, wie Sie mit einem Document Builder ein einfaches Dokument erstellen.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Geben Sie die Dokumentformatierung an

Die [Font](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/font/)-Eigenschaft definiert die Textformatierung. Dieses Objekt enthält verschiedene Schriftartattribute (Schriftartname, Schriftgröße, Farbe usw.). Einige wichtige Schriftartattribute werden auch durch **DocumentBuilder**-Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind die booleschen Eigenschaften [Font.Bold](https://reference.aspose.com/words/de/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/de/net/aspose.words/font/italic/) und [Font.Underline](https://reference.aspose.com/words/de/net/aspose.words/font/underline/).

Das folgende Codebeispiel zeigt, wie man einen formatierten Text mit **DocumentBuilder** einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/font/) gibt die Zeichenformatierung an, die auf den gesamten Text angewendet wird, der ab der aktuellen Position im Dokument eingefügt wird.
- [ParagraphFormat](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/) gibt die Absatzformatierung für den aktuellen und alle einzufügenden Absätze an.
- [PageSetup](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/) gibt die Seiten- und Abschnittseigenschaften für den aktuellen Abschnitt und den gesamten Abschnitt an, der eingefügt wird.
- [CellFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/cellformat/) und [RowFormat](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/rowformat/) geben Formatierungseigenschaften an, die ab der aktuellen Position im Dokument auf Tabellenzellen und -zeilen angewendet werden.

In dieser Situation bedeutet "aktuell" die Position, den Absatz, den Abschnitt, die Zelle oder die Zeile, in der sich der Cursor befindet.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass die **Font**-, **ParagraphFormat**- und **PageSetup**-Eigenschaften jedes Mal aktualisiert werden, wenn Sie zu einer anderen Stelle im Dokument navigieren, um die Formatierungseigenschaften dieser Stelle widerzuspiegeln.

{{% /alert %}}
