---
title: Verwendung `DocumentBuilder` um ein Dokument zu ändern
second_title: Aspose.Words für Java
articleTitle: Verwendung `DocumentBuilder` um ein Dokument zu ändern
linktitle: Verwendung `DocumentBuilder` um ein Dokument zu ändern
type: docs
description: "Verwenden Sie den Dokumentenbauer, um ein Dokument einfach in Java."
weight: 20
url: /de/java/using-documentbuilder-to-modify-a-document/
---

## Angabe der Formatierung

### Schriftformatierung

Aktuelle Schriftformatierung wird durch eine `Font` zurückgegebenes Objekt `DocumentBuilder.Font` Eigentum. Die `Font` Klasse enthält eine Vielzahl von Schrifteigenschaften möglich in Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Das folgende Codebeispiel zeigt, wie die Schriftformatierung eingestellt werden soll.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Zellformatierung

Die Zellformatierung wird beim Aufbau einer Tabelle verwendet. Es wird durch eine `CellFormat` zurückgegebenes Objekt `DocumentBuilder.CellFormat` Eigentum. CellFormat kapselt verschiedene Tabellenzelleneigenschaften wie Breite oder vertikale Ausrichtung.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Das folgende Codebeispiel zeigt, wie man eine Tabelle erstellt, die eine einzelne formatierte Zelle enthält.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Row Formatierung

Die aktuelle Zeilenformatierung wird durch eine `RowFormat` Objekt, das von der `DocumentBuilder.RowFormat` Eigentum. Das Objekt kapselt Informationen über alle Tabellenzeilenformatierungen.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Dielow code Ein Beispiel zeigt, wie man eine Tabelle erstellt, die eine einzelne Zelle enthält und Zeilenformatierung anwendet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Liste Formatierung

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwendung von Listenformatierung. DocumentBuilder bietet `DocumentBuilder.ListFormat` Eigentum, das eine `ListFormat` Objekt. Dieses Objekt hat mehrere Methoden, um eine Liste zu starten und zu beenden und den Gedankenstrich zu erhöhen/ zu verkleinern.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Es gibt zwei allgemeine Arten von Listen in Microsoft Word: geschossen und nummeriert.

- Um eine Liste zu starten, rufen Sie an [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Um eine nummerierte Liste zu starten, rufen Sie an [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Die Kugel oder Nummer und Formatierung werden dem aktuellen Absatz und allen weiteren Absätzen hinzugefügt, die mit **DocumentBuilder** bis [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) wird aufgerufen, um die geschossene Listenformatierung zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Listenformatierung für jede Ebene gibt an, welche Kugel oder Nummer verwendet wird, linker Einschnitt, Raum zwischen der Kugel und Text usw.

- Ja. Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie an [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Ja. Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie an [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) Eigentum, um die Liste Ebene für den Absatz zu erhalten oder einzustellen. Die Listenwerte sind mit 0 bis 8 bezeichnet.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine Multilevel-Liste erstellt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Page Setup und Sektion Formatierung

Seitenaufbau und Profileigenschaften werden in der `PageSetup` Objekt, das von der `DocumentBuilder.PageSetup` Eigentum. Das Objekt enthält alle Seiten-Setup-Attribute eines Abschnitts (linker Rand, unterer Rand, Papiergröße und so weiter) als Eigenschaften.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Das folgende Codebeispiel zeigt, wie solche Eigenschaften wie Seitengröße und Orientierung für den aktuellen Abschnitt eingestellt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Einen Stil anwenden

Einige Formatierungsobjekte wie Font oder ParagraphFormat unterstützen Stile. Ein einzelner, eingebauter oder benutzerdefinierter Stil wird durch eine `Style` Objekt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils enthält, und so weiter.

Ferner ist a **Style** Objekt liefert [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) Eigenschaft, die eine lokal-unabhängige Stilkennung zurückgibt, die durch eine **Style.StyleIdentifier** Aufzählungswert. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word werden für verschiedene Sprachen lokalisiert. Mit einer Stilkennung finden Sie unabhängig von der Dokumentsprache den richtigen Stil. Die Aufzählungswerte entsprechen der Microsoft Word Eingebaute Stile wie Normal, Heading 1, Heading 2 etc. Alle benutzerdefinierten Stile werden der **StyleIdentifier. Benutzerwert**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Das folgende Codebeispiel zeigt, wie man einen Absatzstil anwendet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Grenzen und Schattierung

Die Grenzen sind durch die BorderCollection vertreten. Dies ist eine Sammlung von Border-Objekten, die durch Index oder per Grenzart zugegriffen werden. Der Bordtyp wird durch die `BorderType` Aufzählung. Einige Werte der Aufzählung gelten für mehrere oder nur ein Dokumentelement. Zum Beispiel `BorderType.Bottom` für einen Absatz oder eine Tabellenzelle gilt, während `BorderType.DiagonalDown` gibt nur die Diagonalgrenze in einer Tischzelle an.

Sowohl die Grenzkollektion als auch jede einzelne Grenze haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand vom Text und optionaler Schatten. Sie sind durch Eigenschaften des gleichen Namens dargestellt. Sie können verschiedene Grenztypen erreichen, indem Sie Eigenschaftswerte kombinieren. Zusätzlich, beide **BorderCollection** und **Border** Objekte erlauben es Ihnen, diese Werte standardmäßig durch Aufruf der [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Methode. Beachten Sie, dass bei Rücksetzen der Grenzeigenschaften auf Standardwerte die Grenze unsichtbar ist.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
Die [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Klasse enthält Shading-Attribute für Dokumentelemente. Sie können die gewünschte Schattierung Textur und die Farben festlegen, die auf den Hintergrund und den Vordergrund des Elements aufgebracht werden.

Die Schattierung Textur wird mit einer [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) Aufzählungswert, der die Anwendung verschiedener Muster auf die **Shading** Objekt. Zum Beispiel, um eine Hintergrundfarbe für ein Dokumentelement, verwenden Sie die [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) Wert und die Vordergrund-Schattierungsfarbe entsprechend einstellen.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Das nachfolgende Beispiel zeigt, wie man Grenzen anwendet und auf einen Absatz schattiert.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words bietet zwei Eigenschaften `ParagraphFormat.SnapToGrid` und `Font.SnapToGrid` zu erhalten und setzen Absatz Immobilien Snap auf Gitter

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Den Cursor bewegen

### Erfassung der aktuellen Cursorposition

Sie können erhalten, wo der Cursor des Builders derzeit jederzeit positioniert ist. Die [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) Eigenschaft gibt den Knoten zurück, der derzeit in diesem Builder ausgewählt wird. Der Knoten ist ein direktes Kind eines Absatzes. Alle Einsatzvorgänge, die Sie ausführen `DocumentBuilder` wird vor der `DocumentBuilder.CurrentNode`. Wenn der aktuelle Absatz leer ist oder der Cursor kurz vor dem Ende des Absatzes positioniert ist, `DocumentBuilder.CurrentNode` gibt null zurück.

Auch können Sie die [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) Eigenschaft, die den Absatz erhält, der derzeit in diesem **DocumentBuilder**. Dielow code Ein Beispiel zeigt, wie man auf den aktuellen Knoten in einem Dokumentbauer zugreifen kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Umzug zu jeder Node (Paragraphen und ihre Kinder)

Wenn Sie einen Dokumentobjekt-Knoten haben, der ein Absatz oder ein direktes Kind eines Absatzes ist, können Sie den Cursor des Builders auf diesen Knoten hinweisen. Verwenden Sie die [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) Verfahren zur Durchführung.
Das folgende Codebeispiel zeigt, wie man eine Cursorposition zu einem bestimmten Knoten bewegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Wechsel zum Dokument Start/End

Wenn Sie zum Anfang des Dokuments wechseln müssen, rufen Sie an [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Wenn Sie zum Ende des Dokuments bewegen müssen, rufen Sie an [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Wechseln zu einem Abschnitt

Wenn Sie mit einem Dokument arbeiten, das mehrere Abschnitte enthält, können Sie in einen gewünschten Abschnitt mit [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Dieses Verfahren bewegt den Cursor zu Beginn eines bestimmten Abschnitts und akzeptiert den Index des erforderlichen Abschnitts. Wenn der Abschnittsindex größer oder gleich 0 ist, gibt er einen Index vom Anfang des Dokuments an, wobei 0 der erste Abschnitt ist. Wenn der Abschnittsindex kleiner als 0 ist, gibt er einen Index vom Ende des Dokuments an, wobei -1 der letzte Abschnitt ist. Dielow code Ein Beispiel zeigt, wie man eine Cursorposition in den angegebenen Abschnitt bewegt. Sie können die Vorlagendatei dieses Beispiels herunterladen [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Umzug zu einem Header/Footer

Wenn Sie einige Daten in einen Header oder Footer platzieren müssen, sollten Sie es zuerst mit [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Das Verfahren nimmt einen Aufzählungswert von HeaderFooterType an, der die Art des Headers oder Footers angibt, zu dem der Cursor bewegt werden soll.

Wenn Sie Header und Footer erstellen möchten, die für die erste Seite unterschiedlich sind, müssen Sie die [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) Eigentum an **true**. Wenn Sie Header und Footer erstellen möchten, die für gerade und seltsame Seiten unterschiedlich sind, müssen Sie festlegen [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) bis **true**.

Wenn Sie zurück zur Hauptgeschichte, verwenden[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) aus dem Kopf oder Fuß zu ziehen. Im folgenden Beispiel erstellen Kopfzeilen und Fußzeilen in einem Dokument mit DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Zu einem Absatz bewegen

Verwendung[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) den Cursor auf einen gewünschten Absatz im aktuellen Abschnitt zu verschieben. Sie sollten zwei Parameter an diese Methode übergeben: ParagraphIndex (der Index des Absatzes zu bewegen) und ZeichenIndex (der Index des Zeichens innerhalb des Absatzes).

Die Navigation erfolgt innerhalb der aktuellen Geschichte des aktuellen Abschnitts. Das heißt, wenn Sie den Cursor auf den primären Header des ersten Abschnitts verschoben haben, dann gibt ParagraphIndex den Index des Absatzes innerhalb des Headers dieses Abschnitts an.

Wenn ParagraphIndex größer oder gleich 0 ist, gibt er einen Index ab Anfang des Abschnitts an, wobei 0 der erste Absatz ist. Wenn ParagraphIndex weniger als 0 ist, gibt es einen Index vom Ende des Abschnitts an, wobei -1 der letzte Absatz ist. Der Zeichenindex kann derzeit nur mit 0 angegeben werden, um zum Anfang des Absatzes oder -1 zu gelangen, um zum Ende des Absatzes zu gelangen. Das folgende Codebeispiel zeigt, wie man eine Cursorposition in den angegebenen Absatz bewegt. Sie können die Vorlagendatei dieses Beispiels herunterladen [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Wechseln zu einer Tischzelle

Verwendung [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) wenn Sie den Cursor in eine Tabellenzelle im aktuellen Abschnitt verschieben müssen. Diese Methode akzeptiert vier Parameter:

- tableIndex - der Index der Tabelle zu bewegen.
- ZeileIndex - der Index der Zeile in der Tabelle.
- SpalteIndex - der Index der Spalte in der Tabelle.
- charakterIndex - der Index des Zeichens innerhalb der Zelle.

Die Navigation erfolgt innerhalb der aktuellen Geschichte des aktuellen Abschnitts.

Für die Indexparameter, wenn der Index größer oder gleich 0 ist, gibt er von Anfang an einen Index an, wobei 0 das erste Element ist. Wenn der Index kleiner als 0 ist, gibt er einen Index vom Ende an, wobei -1 das letzte Element ist.

Beachten Sie auch, dass ZeichenIndex derzeit nur 0 angeben kann, um zum Anfang der Zelle zu bewegen oder -1 zum Ende der Zelle zu bewegen. Das folgende Codebeispiel zeigt, wie man eine Cursorposition in die angegebene Tabellenzelle bewegt. Sie können die Vorlagendatei dieses Beispiels herunterladen [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Umzug zu einem Lesezeichen

Lesezeichen werden häufig verwendet, um bestimmte Stellen in dem Dokument zu markieren, wo neue Elemente eingefügt werden sollen. Um zu einem Lesezeichen zu wechseln, verwenden [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Dieses Verfahren hat zwei Überlastungen. Der einfachste akzeptiert nichts als den Namen des Lesezeichens, wo der Cursor bewegt werden soll. Das folgende Codebeispiel zeigt, wie man eine Cursorposition zu einem Lesezeichen bewegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Diese Überlastung bewegt den Cursor auf eine Position kurz nach dem Start des Lesezeichens mit dem angegebenen Namen. Eine weitere Überlastung [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) bewegt den Cursor zu einem Lesezeichen mit größerer Präzision. Es akzeptiert zwei zusätzliche boolesche Parameter:

- isStart bestimmt, ob der Cursor zum Anfang oder zum Ende des Lesezeichens bewegt wird.
- isAfter bestimmt, ob der Cursor nach der Start- oder Endposition des Lesezeichens bewegt wird oder den Cursor vor der Start- oder Endposition des Lesezeichens bewegt wird.

Das folgende Codebeispiel zeigt, wie man eine Cursorposition kurz nach dem Lesezeichenende bewegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Einfügen eines neuen Textes auf diese Weise ersetzt nicht den vorhandenen Text des Lesezeichens. Beachten Sie, dass einige Lesezeichen im Dokument den Formularfeldern zugeordnet sind. Mit einem solchen Lesezeichen und dem Einfügen von Text wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht invalidiert, wird der eingefügte Text nicht sichtbar, weil er Teil des Feldcodes wird.

### Zu einem `Merge` Feld

Manchmal muss man ein "manuell" ausführen mail merge Verwendung `DocumentBuilder` oder füllen Sie ein Zusammenführungsfeld in einer besonderen Weise in einem mail merge Event-Handler. Das ist, wenn [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) könnte nützlich sein. Die Methode akzeptiert den Namen des Zusammenführungsfeldes. Es bewegt den Cursor in eine Position, die kurz über das angegebene Mergerfeld hinausgeht und das Mergerfeld entfernt. Das folgende Codebeispiel zeigt, wie man den Cursor in eine Position über das angegebene Merge-Feld bewegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Umrechnen zwischen Messeinheiten

Die meisten der in der Aspose.Words API die einige Messungen darstellt (Breite/Höhe, Margen und verschiedene Entfernungen) akzeptieren Werte in Punkten (1 Zoll entspricht 72 Punkten). Manchmal ist das nicht bequem, so dass es `ConvertUtil` Klasse, die Hilfefunktionen bietet, um zwischen verschiedenen Messeinheiten umzuwandeln. Es ermöglicht die Umwandlung von Inches zu Punkten, Punkten zu Inches, Pixel zu Punkten und Punkten zu Pixeln. Wenn Pixel in Punkte umgewandelt werden und umgekehrt, kann es bei 96 dpi (Punkte pro Zoll) Auflösungen oder bei der angegebenen dpi Auflösung durchgeführt werden.

**ConvertUtil** ist sehr nützlich bei der Einstellung unterschiedlicher Seiteneigenschaften, da z.B. Inches häufiger als Punkte Messeinheiten sind. Das folgende Beispiel zeigt, wie man die Seiteneigenschaften in Zoll einrichten kann.

Das folgende Codebeispiel zeigt, wie man Seiteneigenschaften in Zoll angibt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
