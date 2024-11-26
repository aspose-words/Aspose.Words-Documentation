---
title: Verwenden von DocumentBuilder zum einfachen Ändern eines Dokuments
second_title: Aspose.Words für C++
articleTitle: Verwenden von DocumentBuilder zum einfachen Ändern eines Dokuments
linktitle: Verwenden von DocumentBuilder zum einfachen Ändern eines Dokuments
type: docs
description: "Verwenden Sie den Dokumentgenerator, um ein Dokument einfach in C++ zu ändern."
weight: 190
url: /de/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Formatierung festlegen

### Schriftformatierung

Die aktuelle Schriftformatierung wird durch ein `Font`-Objekt dargestellt, das von der Eigenschaft `DocumentBuilder.Font` zurückgegeben wird. Die Klasse `Font` enthält eine Vielzahl der in Microsoft Word möglichen Schrifteigenschaften. Das folgende Beispiel zeigt, wie Sie die Schriftformatierung festlegen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Absatzformatierung

Die aktuelle Absatzformatierung wird durch ein `ParagraphFormat`-Objekt dargestellt, das von der Eigenschaft `DocumentBuilder.ParagraphFormat` zurückgegeben wird. Dieses Objekt kapselt verschiedene Absatzformatierungseigenschaften ein, die in Microsoft Word verfügbar sind. Sie können die Absatzformatierung einfach auf den Standardstil Normaler Stil, linksbündig, kein Einzug, kein Abstand, keine Ränder und keine Schattierung zurücksetzen, indem Sie `ParagraphFormat.ClearFormatting` aufrufen. Das folgende Beispiel zeigt, wie Sie die Absatzformatierung festlegen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Arbeiten mit asiatischer Typografie

#### Abstand zwischen asiatischem und lateinischem Text, Zahlen automatisch anpassen

Wenn Sie eine Vorlage mit ostasiatischem und lateinischem Text entwerfen und die Darstellung der Formularvorlage verbessern möchten, indem Sie die Abstände zwischen beiden Texttypen steuern, können Sie Ihre Formularvorlage so konfigurieren, dass die Abstände zwischen diesen beiden Texttypen automatisch angepasst werden. Sie können die Eigenschaften AddSpaceBetweenFarEastAndAlpha und AddSpaceBetweenFarEastAndDigit der Klasse ParagraphFormat verwenden, um dies zu erreichen.

Das folgende Codebeispiel zeigt, wie die Eigenschaften `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` und `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` verwendet werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Asiatische Absatzabstände und Einzüge ändern

Das folgende Codebeispiel zeigt, wie asiatische Absatzabstände und Einzüge geändert werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Optionen für Zeilenumbrüche festlegen

Registerkarte asiatische Typografie des Eigenschaftendialogfelds `Paragraph` in MS Word hat eine Zeilenumbruchgruppe. Die Optionen dieser Gruppe können mit eingestellt werden FarEastLineBreakControl, WordWrap, HangingPunctuation eigenschaften der Klasse ParagraphFormat. Das Beispiel Below code zeigt, wie diese Eigenschaften verwendet werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Zellformatierung

Die Zellenformatierung wird beim Erstellen einer Tabelle verwendet. Es wird durch ein `CellFormat` -Objekt dargestellt, das von der Eigenschaft `DocumentBuilder.CellFormat` zurückgegeben wird. CellFormat kapselt verschiedene Tabellenzelleneigenschaften wie Breite oder vertikale Ausrichtung ein. Das folgende Beispiel zeigt, wie Sie eine Tabelle erstellen, die eine einzelne formatierte Zelle enthält.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Zeilenformatierung

Die aktuelle Zeilenformatierung wird durch ein `RowFormat`-Objekt bestimmt, das von der Eigenschaft `DocumentBuilder.RowFormat` zurückgegeben wird. Das Objekt kapselt Informationen zu allen Tabellenzeilenformatierungen ein. Das folgende Beispiel zeigt, wie Sie eine Tabelle erstellen, die eine einzelne Zelle enthält, und die Zeilenformatierung anwenden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Listenformatierung

Aspose.Words ermöglicht die einfache Erstellung von Listen durch Anwenden von Listenformatierungen. DocumentBuilder stellt die `DocumentBuilder.ListFormat`-Eigenschaft bereit, die ein `ListFormat`-Objekt zurückgibt. Dieses Objekt verfügt über mehrere Methoden, um eine Liste zu beginnen und zu beenden und den Einzug zu vergrößern / verkleinern. Es gibt zwei allgemeine Arten von Listen in Microsoft Word: Aufzählungszeichen und nummerierte Listen.

- Um eine Aufzählung zu beginnen, rufen Sie `ListFormat.ApplyBulletDefault` auf.
- Um eine nummerierte Liste zu starten, rufen Sie `ListFormat.ApplyNumberDefault` auf.

Nummer und Formatierung werden dem aktuellen Absatz und allen weiteren mit **DocumentBuilder** erstellten Absätzen hinzugefügt, bis `ListFormat.RemoveNumbers` aufgerufen wird, um die Formatierung von Aufzählungslisten zu stoppen. In Word-Dokumenten können Listen aus bis zu neun Ebenen bestehen. Listenformatierung für jede Ebene gibt an, welche Aufzählungszeichen oder Zahlen verwendet werden, linker Einzug, Abstand zwischen Aufzählungszeichen und Text usw.

- Um die Listenebene des aktuellen Absatzes um eine Ebene zu erhöhen, rufen Sie `ListFormat.ListIndent` auf.
- Um die Listenebene des aktuellen Absatzes um eine Ebene zu verringern, rufen Sie `ListFormat.ListOutdent` auf.

Die Methoden ändern die Listenebene und wenden die Formatierungseigenschaften der neuen Ebene an.

{{% alert color="primary" %}}

Sie können auch die Eigenschaft `ListFormat.ListLevelNumber` verwenden, um die Listenebene für den Absatz abzurufen oder festzulegen. Die Listenebenen sind 0 bis 8 nummeriert.

{{% /alert %}}

Das folgende Beispiel zeigt, wie eine mehrstufige Liste erstellt wird.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Seiteneinrichtung und Abschnittsformatierung

Seiteneinrichtungs- und Abschnittseigenschaften sind im `PageSetup`-Objekt gekapselt, das von der `DocumentBuilder.PageSetup`-Eigenschaft zurückgegeben wird. Das Objekt enthält alle Seiteneinrichtungsattribute eines Abschnitts (linker Rand, unterer Rand, Papierformat usw.) als Eigenschaften. Das folgende Beispiel zeigt, wie Eigenschaften wie Seitengröße und Ausrichtung für den aktuellen Abschnitt festgelegt werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Anwenden eines Stils

Einige Formatierungsobjekte wie Schriftart oder ParagraphFormat unterstützen Stile. Ein einzelner integrierter oder benutzerdefinierter Stil wird durch ein `Style`-Objekt dargestellt, das die entsprechenden Stileigenschaften wie Name, Basisstil, Schriftart und Absatzformatierung des Stils usw. enthält.

Darüber hinaus stellt ein **Style**-Objekt die `Style.StyleIdentifier`-Eigenschaft bereit, die eine gebietsschemaunabhängige Stilkennung zurückgibt, die durch einen **Style.StyleIdentifier**-Aufzählungswert dargestellt wird. Der Punkt ist, dass die Namen der integrierten Stile in Microsoft Word für verschiedene Sprachen lokalisiert sind. Mithilfe einer Stilkennung können Sie unabhängig von der Dokumentsprache den richtigen Stil finden. Die Aufzählungswerte entsprechen den integrierten Microsoft Word -Stilen wie Normal, Überschrift 1, Überschrift 2 usw. Allen benutzerdefinierten Stilen wird die **StyleIdentifier.User value** zugewiesen. Das folgende Beispiel zeigt, wie Sie einen Absatzstil anwenden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Ränder und Schattierungen

Grenzen werden durch BorderCollection dargestellt. Dies ist eine Sammlung von Rahmenobjekten, auf die nach Index oder Rahmentyp zugegriffen wird. Der Rahmentyp wird durch die `BorderType`-Aufzählung dargestellt. Einige Werte der Aufzählung sind auf mehrere oder nur ein Dokumentelement anwendbar. Beispielsweise gilt `BorderType.Bottom` für eine Absatz- oder Tabellenzelle, während `BorderType.DiagonalDown` nur den diagonalen Rand in einer Tabellenzelle angibt.

Sowohl die Rahmensammlung als auch jeder einzelne Rahmen haben ähnliche Attribute wie Farbe, Linienstil, Linienbreite, Abstand vom Text und optionaler Schatten. Sie werden durch gleichnamige Eigenschaften dargestellt. Sie können verschiedene Rahmentypen erzielen, indem Sie die Eigenschaftswerte kombinieren. Darüber hinaus können Sie mit **BorderCollection** - und **Border**-Objekten diese Werte durch Aufrufen der `Border.ClearFormatting`-Methode auf die Standardwerte zurücksetzen. Beachten Sie, dass der Rahmen unsichtbar ist, wenn die Rahmeneigenschaften auf die Standardwerte zurückgesetzt werden. Die Klasse `Shading` enthält Schattierungsattribute für Dokumentelemente. Sie können die gewünschte Schattierungstextur und die Farben einstellen, die auf den Hintergrund und den Vordergrund des Elements angewendet werden.

Die Schattierungstextur wird mit einem `TextureIndex`-Aufzählungswert festgelegt, der die Anwendung verschiedener Muster auf das **Shading**-Objekt ermöglicht. Um beispielsweise eine Hintergrundfarbe für ein Dokumentelement festzulegen, verwenden Sie den Wert `TextureIndex.TextureSolid` und legen Sie die Vordergrundschattierungsfarbe entsprechend fest. Das folgende Beispiel zeigt, wie Rahmen und Schattierungen auf einen Absatz angewendet werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Am Raster ausrichten

Aspose.Words stellt zwei Eigenschaften `ParagraphFormat.SnapToGrid` und `Font.SnapToGrid` bereit, um die Absatzeigenschaft am Raster auszurichten und festzulegen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Bewegen des Cursors

### Erkennen der aktuellen Cursorposition

Sie können jederzeit abrufen, wo sich der Cursor des Builders derzeit befindet. Die Eigenschaft `DocumentBuilder.CurrentNode` gibt den Knoten zurück, der derzeit in diesem Builder ausgewählt ist. Der Knoten ist ein direktes Kind eines Absatzes. Alle Einfügevorgänge, die Sie mit `DocumentBuilder` ausführen, werden vor `DocumentBuilder.CurrentNode` eingefügt. Wenn der aktuelle Absatz leer ist oder sich der Cursor kurz vor dem Ende des Absatzes befindet, gibt `DocumentBuilder.CurrentNode` null zurück.

Sie können auch die Eigenschaft `DocumentBuilder.CurrentParagraph` verwenden, die den aktuell in diesem **DocumentBuilder** ausgewählten Absatz abruft. Das folgende Beispiel zeigt, wie Sie in einem Dokumentgenerator auf den aktuellen Knoten zugreifen. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Verschieben zu einem beliebigen Knoten (Absätze und ihre untergeordneten Elemente)

Wenn Sie einen Dokumentobjektknoten haben, der ein Absatz oder ein direktes untergeordnetes Element eines Absatzes ist, können Sie den Cursor des Builders auf diesen Knoten zeigen. Verwenden Sie dazu die Methode `DocumentBuilder.MoveTo`. Das folgende Beispiel zeigt, wie eine Cursorposition zu einem angegebenen Knoten verschoben wird. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Zum Dokumentanfang/-ende wechseln

Wenn Sie zum Anfang des Dokuments wechseln müssen, rufen Sie `DocumentBuilder.MoveToDocumentStart` auf. Wenn Sie zum Ende des Dokuments wechseln müssen, rufen Sie `DocumentBuilder.MoveToDocumentEnd` auf. Das folgende Beispiel zeigt, wie Sie eine Cursorposition an den Anfang oder das Ende eines Dokuments verschieben. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Umzug in einen Abschnitt

Wenn Sie mit einem Dokument arbeiten, das mehrere Abschnitte enthält, können Sie mit `DocumentBuilder.MoveToSection` zu einem gewünschten Abschnitt wechseln. Diese Methode bewegt den Cursor an den Anfang eines angegebenen Abschnitts und akzeptiert den Index des erforderlichen Abschnitts. Wenn der Abschnittsindex größer oder gleich 0 ist, gibt er einen Index vom Anfang des Dokuments an, wobei 0 der erste Abschnitt ist. Wenn der Abschnittsindex kleiner als 0 ist, gibt er einen Index vom Ende des Dokuments an, wobei -1 der letzte Abschnitt ist. Das folgende Beispiel zeigt, wie Sie eine Cursorposition zum angegebenen Abschnitt verschieben. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Zu einer Kopf-/Fußzeile wechseln

Wenn Sie einige Daten in eine Kopf- oder Fußzeile einfügen müssen, sollten Sie zuerst mit `DocumentBuilder.MoveToHeaderFooter` dorthin verschieben. Die Methode akzeptiert einen HeaderFooterType -Aufzählungswert, der den Typ der Kopf- oder Fußzeile angibt, an die der Cursor verschoben werden soll. Wenn Sie Kopf- und Fußzeilen erstellen möchten, die für die erste Seite unterschiedlich sind, müssen Sie die Eigenschaft `PageSetup.DifferentFirstPageHeaderFooter` auf **true** setzen. Wenn Sie Kopf- und Fußzeilen erstellen möchten, die für gerade und ungerade Seiten unterschiedlich sind, müssen Sie `PageSetup.OddAndEvenPagesHeaderFooter` auf **true** setzen.

Wenn Sie zur Hauptstory zurückkehren müssen, verwenden Sie **DocumentBuilder.MoveToSection**, um die Kopf- oder Fußzeile zu verlassen. Das folgende Beispiel erstellt Kopf- und Fußzeilen in einem Dokument mit DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Zu einem Absatz wechseln

Verwenden Sie `DocumentBuilder.MoveToParagraph`, um den Cursor auf einen gewünschten Absatz im aktuellen Abschnitt zu bewegen. Sie sollten dieser Methode zwei Parameter übergeben: paragraphIndex (der Index des Absatzes, zu dem verschoben werden soll) und characterIndex (der Index des Zeichens innerhalb des Absatzes).

Die Navigation erfolgt innerhalb der aktuellen Story des aktuellen Abschnitts. Das heißt, wenn Sie den Cursor auf die primäre Kopfzeile des ersten Abschnitts bewegt haben, gibt paragraphIndex den Index des Absatzes in dieser Kopfzeile dieses Abschnitts an.

Wenn paragraphIndex größer oder gleich 0 ist, gibt es einen Index vom Anfang des Abschnitts an, wobei 0 der erste Absatz ist. Wenn paragraphIndex kleiner als 0 ist, gibt es einen Index vom Ende des Abschnitts an, wobei -1 der letzte Absatz ist.

Der Zeichenindex kann derzeit nur als 0 angegeben werden, um an den Anfang des Absatzes zu gelangen, oder als -1, um an das Ende des Absatzes zu gelangen. Das folgende Beispiel zeigt, wie Sie eine Cursorposition auf den angegebenen Absatz verschieben. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### In eine Tabellenzelle wechseln

Verwenden Sie `DocumentBuilder.MoveToCell`, wenn Sie den Cursor auf eine Tabellenzelle im aktuellen Abschnitt bewegen müssen. Diese Methode akzeptiert vier Parameter:

- tableIndex - der Index der Tabelle, zu der verschoben werden soll.
- rowIndex - der Index der Zeile in der Tabelle.
- columnIndex - der Index der Spalte in der Tabelle.
- characterIndex - der Index des Zeichens in der Zelle.

Die Navigation erfolgt innerhalb der aktuellen Story des aktuellen Abschnitts. Wenn der Index für die Indexparameter größer oder gleich 0 ist, wird ein Index von Anfang an angegeben, wobei 0 das erste Element ist. Wenn der index kleiner als 0 ist, gibt er einen Index vom Ende an, wobei -1 das letzte Element ist.

Beachten Sie auch, dass characterIndex derzeit nur 0 angeben kann, um zum Anfang der Zelle zu gelangen, oder -1, um zum Ende der Zelle zu gelangen. Das folgende Beispiel zeigt, wie eine Cursorposition in die angegebene Tabellenzelle verschoben wird. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Zu einem Lesezeichen wechseln

Lesezeichen werden häufig verwendet, um bestimmte Stellen im Dokument zu markieren, an denen neue Elemente eingefügt werden sollen. Um zu einem Lesezeichen zu wechseln, verwenden Sie `DocumentBuilder.MoveToBookmark`. Diese Methode hat zwei Überladungen. Der einfachste akzeptiert nichts als den Namen des Lesezeichens, wohin der Cursor bewegt werden soll. Das folgende Beispiel zeigt, wie Sie eine Cursorposition auf ein Lesezeichen verschieben. Sie können die Vorlagendatei dieses Beispiels hier herunterladen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Diese Überladung bewegt den Cursor an eine Position direkt nach dem Start des Lesezeichens mit dem angegebenen Namen. Eine weitere Überladung `DocumentBuilder.MoveToBookmark` bewegt den Cursor genauer zu einem Lesezeichen. Es akzeptiert zwei zusätzliche boolesche Parameter:

- isStart legt fest, ob der Cursor an den Anfang oder an das Ende des Lesezeichens verschoben werden soll.
- isAfter legt fest, ob der Cursor nach der Start- oder Endposition des Lesezeichens oder vor die Start- oder Endposition des Lesezeichens verschoben werden soll.

Das folgende Beispiel zeigt, wie Sie eine Cursorposition direkt nach dem Ende des Lesezeichens verschieben.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Der Vergleich für beide Methoden unterscheidet nicht zwischen Groß- und Kleinschreibung.

Das Einfügen von neuem Text auf diese Weise ersetzt nicht den vorhandenen Text des Lesezeichens. Beachten Sie, dass einige Lesezeichen im Dokument Formularfeldern zugewiesen sind. Wenn Sie zu einem solchen Lesezeichen wechseln und dort Text einfügen, wird der Text in den Formularfeldcode eingefügt. Obwohl dies das Formularfeld nicht ungültig macht, ist der eingefügte Text nicht sichtbar, da er Teil des Feldcodes wird.

## So konvertieren Sie zwischen Maßeinheiten

Die meisten Objekteigenschaften in Aspose.Words API, die eine Messung darstellen (Breite / Höhe, Ränder und verschiedene Abstände), akzeptieren Werte in Punkten (1 Zoll entspricht 72 Punkten). Manchmal ist dies nicht praktisch, daher gibt es die Klasse `ConvertUtil`, die Hilfsfunktionen zum Konvertieren zwischen verschiedenen Maßeinheiten bereitstellt. Es ermöglicht die Konvertierung von Zoll in Punkte, Punkten in Zoll, Pixeln in Punkte und Punkten in Pixel. Wenn Pixel in Punkte konvertiert werden und umgekehrt, kann dies mit einer Auflösung von 96 dpi (Punkte pro Zoll) oder mit der angegebenen dpi-Auflösung durchgeführt werden.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
