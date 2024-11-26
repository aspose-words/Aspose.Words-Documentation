---
title: Dokumentenersteller-Übersicht in C++
second_title: Aspose.Words für C++
articleTitle: Übersicht über den Dokumentenersteller
linktitle: Übersicht über den Dokumentenersteller
type: docs
description: "Mit DocumentBuilder können Sie dynamische Dokumente von Grund auf neu erstellen oder mit C++ neue Elemente zu vorhandenen hinzufügen. DocumentBuilder bietet Methoden zum Einfügen von Text, Kontrollkästchen, Tabellen, Bildern und anderen Inhaltselementen in C++."
weight: 30
url: /de/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ist eine leistungsstarke Klasse, die mit [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) verknüpft ist und es Ihnen ermöglicht, dynamische Dokumente von Grund auf neu zu erstellen oder einem vorhandenen neue Elemente hinzuzufügen.

**DocumentBuilder**

## Dokumentenersteller oder Aspose.Words DOM

**DocumentBuilder**

Operationen, die mit **DocumentBuilder** möglich sind, sind auch möglich, wenn die Klassen von Aspose.Words DOM direkt verwendet werden. Die direkte Verwendung von Aspose.Words DOM -Klassen erfordert jedoch normalerweise mehr Codezeilen als die Verwendung von **DocumentBuilder**.

## Dokumentennavigation

Die Dokumentennavigation basiert auf dem Konzept eines virtuellen Cursors, mit dem Sie sich mit verschiedenen **DocumentBuilder.MoveToXXX** -Methoden wie [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) und [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/) an eine andere Stelle im Dokument bewegen können. Dieser virtuelle Cursor zeigt an, wo der Text beim Aufruf der Methoden eingefügt wird [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), und andere.

Das folgende Codebeispiel zeigt, wie Sie zu einem Lesezeichen navigieren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Erstellen und Ändern von Dokumenten

Aspose.Words API stellt mehrere Klassen bereit, die für die Formatierung verschiedener Elemente eines Dokuments verantwortlich sind. Jede der Klassen kapselt Formatierungseigenschaften ein, die sich auf ein bestimmtes Dokumentelement beziehen, z. B. Text, Absatz, Abschnitt und andere. Beispielsweise stellt die Klasse [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) Zeichenformatierungseigenschaften dar, die Klasse [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) Absatzformatierungseigenschaften usw. Objekte dieser Klassen werden von den entsprechenden **DocumentBuilder** Eigenschaften zurückgegeben, die dieselben Namen wie die Klassen haben. Daher können Sie während der Dokumenterstellung darauf zugreifen und die gewünschte Formatierung festlegen.

Sie können auch Text, Kontrollkästchen, Ole-Objekte, Bilder, Lesezeichen, Formularfelder und andere Dokumentelemente an der Cursorposition mit der Methode `Write` oder einer der Methoden **DocumentBuilder.InsertXXX**, z. B. [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/), und ähnliche Methoden.

Sehen wir uns an, wie Sie mit **DocumentBuilder** ein einfaches Dokument erstellen.

### Erstellen Sie ein Dokument mit DocumentBuilder

Zu Beginn müssen Sie eine **DocumentBuilder** erstellen und sie einem **Document** -Objekt zuordnen. Sie erstellen eine neue Instanz von **DocumentBuilder**, indem Sie ihren Konstruktor aufrufen und an ein **Document** -Objekt übergeben, um es an den Builder anzuhängen.

Um einen Text einzufügen, übergeben Sie die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die Methode **Write**.

Das folgende Codebeispiel zeigt, wie Sie ein einfaches Dokument mit einem Dokumentgenerator erstellen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Festlegen der Dokumentformatierung

Die Eigenschaft [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) definiert die Textformatierung. Dieses Objekt enthält verschiedene Schriftattribute (Schriftname, Schriftgröße, Farbe usw.). Einige wichtige Schriftattribute werden auch durch **DocumentBuilder** -Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind die booleschen Eigenschaften [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) und [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

Das folgende Codebeispiel zeigt, wie Sie einen formatierten Text mit **DocumentBuilder** einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) gibt die Zeichenformatierung an, die auf den gesamten Text angewendet wird, der ab der aktuellen Position im Dokument eingefügt wird.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) gibt die Absatzformatierung für den aktuellen und alle einzufügenden Absätze an.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) gibt die Seiten- und Abschnittseigenschaften für den aktuellen Abschnitt und den gesamten Abschnitt an, der eingefügt wird.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) und [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) geben Formatierungseigenschaften an, die ab der aktuellen Position im Dokument auf Tabellenzellen und -zeilen angewendet werden.

In diesem Fall bedeutet "aktuell" die Position, den Absatz, den Abschnitt, die Zelle oder die Zeile, in der sich der Cursor befindet.

{{% /alert %}}

{{% alert color="primary" %}}

Beachten Sie, dass die Eigenschaften **Font**, **ParagraphFormat** und **PageSetup** aktualisiert werden, wenn Sie zu einer anderen Position im Dokument navigieren, um die Formatierungseigenschaften dieser Position widerzuspiegeln.

{{% /alert %}}
