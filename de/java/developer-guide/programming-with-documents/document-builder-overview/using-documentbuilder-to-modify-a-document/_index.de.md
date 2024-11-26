---
title: DocumentBuilder zum Ändern eines Dokuments verwenden
second_title: Aspose.Words für Java
articleTitle: DocumentBuilder zum Ändern eines Dokuments verwenden
linktitle: DocumentBuilder zum Ändern eines Dokuments verwenden
type: docs
description: "Verwenden Sie den Dokumentgenerator, um ein Dokument einfach in Java zu ändern."
weight: 20
url: /de/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Formatierung festlegen

### Schriftformatierung

Die aktuelle Schriftformatierung wird durch ein `Font`-Objekt dargestellt, das von der Eigenschaft `DocumentBuilder.Font` zurückgegeben wird. Die `Font` -Klasse enthält eine Vielzahl von Schrifteigenschaften, die in Microsoft Word möglich sind.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
Das folgende Codebeispiel zeigt, wie die Schriftformatierung festgelegt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Zellformatierung

Die Zellenformatierung wird beim Erstellen einer Tabelle verwendet. Es wird durch ein `CellFormat` -Objekt dargestellt, das von der Eigenschaft `DocumentBuilder.CellFormat` zurückgegeben wird. CellFormat kapselt verschiedene Tabellenzelleneigenschaften wie Breite oder vertikale Ausrichtung ein.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
Das folgende Codebeispiel zeigt, wie Sie eine Tabelle erstellen, die eine einzelne formatierte Zelle enthält.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Zeilenformatierung

Die aktuelle Zeilenformatierung wird durch ein `RowFormat`-Objekt bestimmt, das von der Eigenschaft `DocumentBuilder.RowFormat` zurückgegeben wird. Das Objekt kapselt Informationen zu allen Tabellenzeilenformatierungen ein.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
Das Beispiel below code zeigt, wie Sie eine Tabelle erstellen, die eine einzelne Zelle enthält, und Zeilenformatierungen anwenden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Listenformatierung

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwenden von Listenformatierungen. DocumentBuilder stellt die `DocumentBuilder.ListFormat`-Eigenschaft bereit, die ein `ListFormat`-Objekt zurückgibt. Dieses Objekt verfügt über mehrere Methoden, um eine Liste zu beginnen und zu beenden und den Einzug zu vergrößern / verkleinern.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Es gibt zwei allgemeine Arten von Listen in Microsoft Word: Aufzählungszeichen und nummerierte Listen.

- Um eine Aufzählung zu beginnen, rufen Sie [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) auf.
- Um eine nummerierte Liste zu starten, rufen Sie [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) auf.

Nummer und Formatierung werden dem aktuellen Absatz und allen weiteren mit **DocumentBuilder** erstellten Absätzen hinzugefügt, bis [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) aufgerufen wird, um die Formatierung von Aufzählungslisten zu stoppen.

In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Listenformatierung für jede Ebene gibt an, welche Aufzählungszeichen oder Zahlen verwendet werden, linker Einzug, Abstand zwischen Aufzählungszeichen und Text usw.

- Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent) auf.
- Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent) auf.

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die Eigenschaft [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) verwenden, um die Listenebene für den Absatz abzurufen oder festzulegen. Die Listenebenen sind von 0 bis 8 nummeriert.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine Liste mit mehreren Ebenen erstellt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Seiteneinrichtung und Abschnittsformatierung

Seiteneinrichtungs- und Abschnittseigenschaften sind im `PageSetup`-Objekt gekapselt, das von der `DocumentBuilder.PageSetup`-Eigenschaft zurückgegeben wird. Das Objekt enthält alle Seiteneinrichtungsattribute eines Abschnitts (linker Rand, unterer Rand, Papierformat usw.) als Eigenschaften.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
Das folgende Codebeispiel zeigt, wie Eigenschaften wie Seitengröße und Ausrichtung für den aktuellen Abschnitt festgelegt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Anwenden eines Stils

Einige Formatierungsobjekte wie Schriftart oder ParagraphFormat unterstützen Stile. Ein einzelner integrierter oder benutzerdefinierter Stil wird durch ein `Style`-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils usw. enthält.

Darüber hinaus stellt ein **Style**-Objekt die [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)-Eigenschaft bereit, die eine gebietsschemaunabhängige Stilkennung zurückgibt, die durch einen **Style.StyleIdentifier**-Aufzählungswert dargestellt wird. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe einer Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den integrierten Microsoft Word -Stilen wie Normal, Heading 1, Heading 2 usw. Allen benutzerdefinierten Stilen wird die **StyleIdentifier.User value** zugewiesen.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
Das folgende Codebeispiel zeigt, wie Sie ein Absatzformat anwenden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Ränder und Schattierungen

Grenzen werden durch BorderCollection dargestellt. Dies ist eine Sammlung von Rahmenobjekten, auf die nach Index oder Rahmentyp zugegriffen wird. Der Rahmentyp wird durch die `BorderType`-Aufzählung dargestellt. Einige Werte der Aufzählung sind auf mehrere oder nur ein Dokumentelement anwendbar. Beispielsweise gilt `BorderType.Bottom` für eine Absatz- oder Tabellenzelle, während `BorderType.DiagonalDown` nur den diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand zum Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Sie können verschiedene Rahmentypen erzielen, indem Sie Eigenschaftswerte kombinieren. Darüber hinaus können Sie mit **BorderCollection** - und **Border** -Objekten diese Werte durch Aufrufen der [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)-Methode auf die Standardwerte zurücksetzen. Beachten Sie, dass der Rahmen unsichtbar ist, wenn die Rahmeneigenschaften auf die Standardwerte zurückgesetzt werden.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
Die Klasse [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) enthält Schattierungsattribute für Dokumentelemente. Sie können die gewünschte Schattierungstextur und die Farben einstellen, die auf den Hintergrund und den Vordergrund des Elements angewendet werden.

Die Schattierungstextur wird mit einem gesetzt [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) Aufzählungswert, der die Anwendung verschiedener Muster auf das **Shading**-Objekt ermöglicht. Um beispielsweise eine Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie die [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) wert und legen Sie die Vordergrundschattierungsfarbe entsprechend fest.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
Das folgende Beispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Am Raster ausrichten

Aspose.Words stellt zwei Eigenschaften `ParagraphFormat.SnapToGrid` und `Font.SnapToGrid` bereit, um die Absatzeigenschaft am Raster auszurichten und festzulegen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Bewegen des Cursors

### Erkennen der aktuellen Cursorposition

Sie können jederzeit abrufen, wo sich der Cursor des Builders derzeit befindet. Die Eigenschaft [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) gibt den Knoten zurück, der derzeit in diesem Builder ausgewählt ist. Der Knoten ist ein direktes Kind eines Absatzes. Alle Einfügevorgänge, die Sie mit `DocumentBuilder` ausführen, werden vor `DocumentBuilder.CurrentNode` eingefügt. Wenn der aktuelle Absatz leer ist oder sich der Cursor kurz vor dem Ende des Absatzes befindet, gibt `DocumentBuilder.CurrentNode` null zurück.

Sie können auch die Eigenschaft [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) verwenden, die den aktuell in diesem **DocumentBuilder** ausgewählten Absatz abruft. Das Beispiel below code zeigt, wie Sie in einem Dokumentgenerator auf den aktuellen Knoten zugreifen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Verschieben zu einem beliebigen Knoten (Absätze und ihre untergeordneten Elemente)

Wenn Sie einen Dokumentobjektknoten haben, der ein Absatz oder ein direktes untergeordnetes Element eines Absatzes ist, können Sie den Cursor des Builders auf diesen Knoten zeigen. Verwenden Sie dazu die Methode [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).
Das folgende Codebeispiel zeigt, wie eine Cursorposition zu einem angegebenen Knoten verschoben wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Zum Dokumentanfang/-ende wechseln

Wenn Sie zum Anfang des Dokuments wechseln müssen, rufen Sie [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) auf. Wenn Sie zum Ende des Dokuments wechseln müssen, rufen Sie [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) auf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Umzug in einen Abschnitt

Wenn Sie mit einem Dokument arbeiten, das mehrere Abschnitte enthält, können Sie mit [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) zu einem gewünschten Abschnitt wechseln. Diese Methode bewegt den Cursor an den Anfang eines angegebenen Abschnitts und akzeptiert den Index des erforderlichen Abschnitts. Wenn der Abschnittsindex größer oder gleich 0 ist, gibt er einen Index vom Anfang des Dokuments an, wobei 0 der erste Abschnitt ist. Wenn der Abschnittsindex kleiner als 0 ist, gibt er einen Index vom Ende des Dokuments an, wobei -1 der letzte Abschnitt ist. Das Beispiel below code zeigt, wie eine Cursorposition an den angegebenen Abschnitt verschoben wird. Sie können die Vorlagendatei dieses Beispiels herunterladen von [hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Zu einer Kopf-/Fußzeile wechseln

Wenn Sie einige Daten in eine Kopf- oder Fußzeile einfügen müssen, sollten Sie zuerst mit [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) dorthin verschieben.Die Methode akzeptiert einen HeaderFooterType -Aufzählungswert, der den Typ der Kopf- oder Fußzeile angibt, an die der Cursor verschoben werden soll.

Wenn Sie Kopf- und Fußzeilen erstellen möchten, die für die erste Seite unterschiedlich sind, müssen Sie die Eigenschaft [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) auf **true** setzen. Wenn Sie Kopf- und Fußzeilen erstellen möchten, die für gerade und ungerade Seiten unterschiedlich sind, müssen Sie [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) auf **true** setzen.

Wenn Sie zur Hauptstory zurückkehren müssen, verwenden Sie [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), um die Kopf- oder Fußzeile zu verlassen. Das folgende Beispiel erstellt Kopf- und Fußzeilen in einem Dokument mit DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Zu einem Absatz wechseln

Verwenden Sie[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int), um den Cursor auf einen gewünschten Absatz im aktuellen Abschnitt zu bewegen. Sie sollten dieser Methode zwei Parameter übergeben: paragraphIndex (der Index des Absatzes, zu dem verschoben werden soll) und characterIndex (der Index des Zeichens innerhalb des Absatzes).

Die Navigation erfolgt innerhalb der aktuellen Story des aktuellen Abschnitts. Das heißt, wenn Sie den Cursor auf die primäre Kopfzeile des ersten Abschnitts bewegt haben, gibt paragraphIndex den Index des Absatzes in dieser Kopfzeile dieses Abschnitts an.

Wenn paragraphIndex größer oder gleich 0 ist, gibt es einen Index vom Anfang des Abschnitts an, wobei 0 der erste Absatz ist. Wenn paragraphIndex kleiner als 0 ist, gibt es einen Index vom Ende des Abschnitts an, wobei -1 der letzte Absatz ist. Der Zeichenindex kann derzeit nur als 0 angegeben werden, um zum Anfang des Absatzes zu gelangen, oder als -1, um zum Ende des Absatzes zu gelangen. Das folgende Codebeispiel zeigt, wie eine Cursorposition auf den angegebenen Absatz verschoben wird. Sie können die Vorlagendatei dieses Beispiels herunterladen von [hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### In eine Tabellenzelle wechseln

Verwenden Sie [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int), wenn Sie den Cursor auf eine Tabellenzelle im aktuellen Abschnitt bewegen müssen. Diese Methode akzeptiert vier Parameter:

- tableIndex - der Index der Tabelle, zu der verschoben werden soll.
- rowIndex - der Index der Zeile in der Tabelle.
- columnIndex - der Index der Spalte in der Tabelle.
- characterIndex - der Index des Zeichens in der Zelle.

Die Navigation erfolgt innerhalb der aktuellen Story des aktuellen Abschnitts.

Wenn der Index für die Indexparameter größer oder gleich 0 ist, wird ein Index von Anfang an angegeben, wobei 0 das erste Element ist. Wenn der Index kleiner als 0 ist, gibt er einen Index vom Ende an, wobei -1 das letzte Element ist.

Beachten Sie auch, dass characterIndex derzeit nur 0 angeben kann, um zum Anfang der Zelle zu gelangen, oder -1, um zum Ende der Zelle zu gelangen. Das folgende Codebeispiel zeigt, wie eine Cursorposition in die angegebene Tabellenzelle verschoben wird. Sie können die Vorlagendatei dieses Beispiels herunterladen von [hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Zu einem Lesezeichen wechseln

Lesezeichen werden häufig verwendet, um bestimmte Stellen im Dokument zu markieren, an denen neue Elemente eingefügt werden sollen. Um zu einem Lesezeichen zu wechseln, verwenden Sie [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Diese Methode hat zwei Überladungen. Der einfachste akzeptiert nichts als den Namen des Lesezeichens, wohin der Cursor bewegt werden soll. Das folgende Codebeispiel zeigt, wie eine Cursorposition auf ein Lesezeichen verschoben wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Diese Überladung bewegt den Cursor an eine Position direkt nach dem Start des Lesezeichens mit dem angegebenen Namen. Eine weitere Überladung [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) bewegt den Cursor genauer zu einem Lesezeichen. Es akzeptiert zwei zusätzliche boolesche Parameter:

- isStart legt fest, ob der Cursor an den Anfang oder an das Ende des Lesezeichens verschoben werden soll.
- isAfter legt fest, ob der Cursor nach der Start- oder Endposition des Lesezeichens oder vor die Start- oder Endposition des Lesezeichens verschoben werden soll.

Das folgende Codebeispiel zeigt, wie Sie eine Cursorposition direkt nach dem Ende des Lesezeichens verschieben.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Das Einfügen von neuem Text auf diese Weise ersetzt nicht den vorhandenen Text des Lesezeichens. Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugewiesen sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht ungültig macht, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

### Zu einem `Merge`-Feld wechseln

Manchmal müssen Sie möglicherweise ein "manuelles" Mail Merge mit `DocumentBuilder` ausführen oder ein Seriendruckfeld auf spezielle Weise in einem Mail Merge -Ereignishandler ausfüllen. Dann könnte [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) nützlich sein. Die Methode akzeptiert den Namen des Seriendruckfelds. Es bewegt den Cursor an eine Position direkt hinter dem angegebenen Seriendruckfeld und entfernt das Seriendruckfeld. Das folgende Codebeispiel zeigt, wie Sie den Cursor an eine Position direkt hinter dem angegebenen Seriendruckfeld bewegen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## So konvertieren Sie zwischen Maßeinheiten

Die meisten Objekteigenschaften in Aspose.Words API, die einige Maße (Breite / Höhe, Ränder und verschiedene Abstände) darstellen, akzeptieren Werte in Punkten (1 Zoll entspricht 72 Punkten). Manchmal ist dies nicht praktisch, daher gibt es die Klasse `ConvertUtil`, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von Zoll in Punkte, Punkten in Zoll, Pixeln in Punkte und Punkten in Pixel. Wenn Pixel in Punkte konvertiert werden und umgekehrt, kann dies mit einer Auflösung von 96 dpi (Punkte pro Zoll) oder mit der angegebenen dpi-Auflösung durchgeführt werden.

**ConvertUtil**

Das folgende Codebeispiel zeigt, wie Seiteneigenschaften in Zoll angegeben werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
