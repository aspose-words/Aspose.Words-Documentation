---
title: Verwendung `DocumentBuilder` zum Einfügen von Dokumentenelementen
second_title: Aspose.Words für Java
articleTitle: Verwendung `DocumentBuilder` zum Einfügen von Dokumentenelementen
linktitle: Verwendung `DocumentBuilder` zum Einfügen von Dokumentenelementen
type: docs
description: "Legen Sie Dokumentelemente mit dem Dokumentbauer ein Java."
weight: 10
url: /de/java/use-documentbuilder-to-insert-document-elements/
---

Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) wird verwendet, um Dokumente zu ändern. Dieser Artikel erklärt und beschreibt, wie eine Reihe von Aufgaben ausgeführt werden können.

## Einfügen einer Streichung von Text

Geben Sie einfach die Zeichenfolge an, die Sie in das Dokument einfügen müssen [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) Methode. Textformatierung wird durch die `Font` Eigentum. Dieses Objekt enthält verschiedene Schrift-Attribute (Fontname, Schriftgröße, Farbe usw.). Einige wichtige Font-Attribute werden auch durch [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Eigenschaften, damit Sie direkt auf sie zugreifen können. Dies sind Boolesche Eigenschaften [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), und [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Beachten Sie, dass die von Ihnen gesetzte Zeichenformatierung auf allen Text anwendbar ist, der von der aktuellen Position im Dokument eingeschaltet wird.

{{% /alert %}}

Das folgende Codebeispiel Legt formatierten Text mit DocumentBuilder ein.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Einfügen eines Absatzes

DocumentBuilder.writeln fügt eine Zeichenfolge des Textes in das Dokument ein, fügt aber zusätzlich einen Absatzbruch hinzu. Die aktuelle Schriftformatierung wird auch vom DocumentBuilder angegeben.! Font-Eigenschaft und aktuelle Absatzformatierung wird durch die Eigenschaft DocumentBuilder.getParagraphFormat bestimmt

Das folgende Codebeispiel zeigt, wie ein Absatz in das Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Einfügen einer Tabelle

Der grundlegende Algorithmus, um eine Tabelle mit `DocumentBuilder` ist einfach:

ANHANG Starten Sie die Tabelle mit [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
ANHANG Legen Sie eine Zelle mit [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Dies startet automatisch eine neue Zeile. Wenn erforderlich, verwenden Sie die [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) Eigenschaft zur Angabe der Zellformatierung.
ANHANG Zelleninhalte unter Verwendung von `DocumentBuilder` Methoden.
ANHANG Wiederholen Sie die Schritte 2 und 3, bis die Zeile abgeschlossen ist.
ANHANG Anruf [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) um die aktuelle Zeile zu beenden. Bei Bedarf verwenden [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) Eigenschaft zur Angabe der Zeilenformatierung.
ANHANG Wiederholen Sie die Schritte 2 - 5 bis die Tabelle abgeschlossen ist.
ANHANG Anruf [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) um das Tischgebäude zu beenden. Die entsprechenden DocumentBuilder-Tabellen-Erstellungsverfahren werden nachfolgend beschrieben.

### Beginn einer Tabelle

Calling DocumentBuilder.start Tabelle ist der erste Schritt bei der Erstellung eines Tisches. Es kann auch innerhalb einer Zelle aufgerufen werden, in diesem Fall beginnt es einen geschachtelten Tisch. Die nächste Methode ist DocumentBuilder.insertCell.

### Einfügen einer Zelle

Nach dem Aufruf von DocumentBuilder. Einsatzbereich Cell, eine neue Zelle erstellt und alle Inhalte, die Sie mit anderen Methoden der `DocumentBuilder` die Klasse wird der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu starten, rufen Sie DocumentBuilder an. Einsatzbereich Zelle wieder. Verwenden Sie das DocumentBuilder.getCell Formatieren Sie Eigenschaft, um die Zellformatierung anzugeben. Es gibt eine [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Objekt, das alle Formatierung für eine Tabellenzelle darstellt.

### Ende einer Row

Call DocumentBuilder.end Row, um die aktuelle Zeile zu beenden. Wenn Sie DocumentBuilder anrufen. Einsatzbereich Zelle sofort danach, dann setzt sich die Tabelle in einer neuen Zeile fort. Verwenden Sie die `DocumentBuilder.RowFormat` Eigenschaft zur Angabe der Zeilenformatierung. Es gibt eine [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) Objekt, das alle Formatierung für eine Tabellenzeile darstellt.

### Ende einer Tabelle

Call DocumentBuilder.end Tisch, um die aktuelle Tabelle zu beenden. Diese Methode sollte nur einmal nach DocumentBuilder aufgerufen werden. endRow wurde gerufen. Nach dem Aufruf, DocumentBuilder.end Die Tabelle bewegt den Cursor aus der aktuellen Zelle in eine Position kurz nach der Tabelle. Das folgende Beispiel zeigt, wie man eine formatierte Tabelle erstellt, die 2 Zeilen und 2 Spalten enthält.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Einfügen eines Bruchs

Wenn Sie eine neue Zeile, Absatz, Spalte, Abschnitt oder Seite explizit starten möchten, rufen Sie DocumentBuilder an. EinfügenBreak. Passen Sie zu dieser Methode die Art der Pause, die Sie einfügen müssen, die durch die `BreakType` Aufzählung
Das folgende Codebeispiel zeigt, wie man Seitenumbrüche in ein Dokument einfügen kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Einfügen eines Bildes

DocumentBuilder bietet mehrere Überlastungen der [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) Methode, mit der Sie ein inline oder schwimmendes Bild einfügen können. Wenn das Bild eine EMF- oder WMF-Metadatei ist, wird es im Metadateiformat in das Dokument eingefügt. Alle anderen Bilder werden im PNG-Format gespeichert. Das DokumentBuilder.insert Bildmethode kann Bilder aus verschiedenen Quellen verwenden:

- Aus einer Akte oder `URL` durch Passieren eines Stringparameters
- Von einem Strom durch einen `Stream` Parameter
- Aus einem Bildobjekt durch Passieren eines Bildparameters
- Aus einem Byte-Array durch Passieren eines Byte-Array-Parameters
- Ja. Und andere

Für jedes DokumentBuilder. Einsatzbereich Bildmethoden, es gibt weitere Überlastungen, mit denen Sie ein Bild mit folgenden Optionen einfügen können:

- Inline oder schwimmend an einer bestimmten Position
- Prozent- oder benutzerdefinierte Größe

Das DokumentBuilder.insert Bildmethode gibt eine [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Objekt, das gerade erstellt und eingefügt wurde, so können Sie die Eigenschaften der Form weiter ändern.

### Einfügen eines Inline-Bildes

Geben Sie einen einzigen String, der eine Datei darstellt, die das Bild zu DocumentBuilder enthält. Einsatzbereich Bild, um das Bild als Inline-Grafik in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie ein Inline-Bild an der Cursorposition in ein Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Einfügen eines Floatings (Absolut positioniert) Bild

Dieses Beispiel legt ein schwimmendes Bild aus einer Datei oder `URL` bei einer bestimmten Position und Größe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Einfügen eines Lesezeichens

Um ein Lesezeichen in das Dokument einzufügen, sollten Sie Folgendes tun:

ANHANG Anruf [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) den gewünschten Namen des Lesezeichens weitergeben.
ANHANG Legen Sie den Lesezeichentext ein `DocumentBuilder` Methoden.
ANHANG Anruf [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) den gleichen Namen, den Sie bei DocumentBuilder.startBookmark verwendet haben.

Lesezeichen können sich überschneiden und alle Bereiche überspannen. Um ein gültiges Lesezeichen zu erstellen, müssen Sie sowohl DocumentBuilder.startBookmark als auch DocumentBuilder.endBookmark mit dem gleichen Lesezeichennamen anrufen.

Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden ignoriert, wenn das Dokument gespeichert wird.

Das folgende Codebeispiel zeigt, wie ein Lesezeichen in ein Dokument mit einem Dokumentbauer eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Einfügen eines Feldes

Felder in Microsoft Word Dokumente bestehen aus einem Feldcode und einem Feldergebnis. Der Feldcode ist wie eine Formel und das Feldergebnis ist der Wert, den die Formel erzeugt. Der Feldcode kann auch Feldschalter enthalten, die zusätzliche Anweisungen zur Durchführung einer bestimmten Aktion sind. Sie können zwischen Anzeigen von Feldcodes und Ergebnissen in Ihrem Dokument wechseln Microsoft Word mit dem Tastenkürzel Alt+F9. Feldcodes erscheinen zwischen Lockenstreben ( { } ). [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) um Felder im Dokument zu erstellen. Sie müssen einen Feldtyp, Feldcode und Feldwert angeben. Wenn Sie nicht sicher sind über die jeweilige Feldcode-Syntax, erstellen Sie das Feld in Microsoft Word zuerst und schalten, um seinen Feldcode zu sehen
Das folgende Codebeispiel legt ein Zusammenführungsfeld in ein Dokument mit DocumentBuilder ein.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Einfügen eines `Form` Feld

Formularfelder sind ein besonderer Fall von Word-Feldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textbox, Combobox und Checkbox. DocumentBuilder bietet spezielle Methoden, um jede Art von Formularfeld in das Dokument einzufügen: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), und [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Beachten Sie, dass, wenn Sie einen Namen für das Formularfeld angeben, automatisch ein Lesezeichen mit demselben Namen erstellt wird.

### Einfügen eines Texteingangs

DocumentBuilder.insertTextInput, um ein Textfeld in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie ein Texteingabeformularfeld in ein Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Einfügen eines `CheckBox`

Call DocumentBuilder.insert CheckBox, um ein Kontrollkästchen in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie ein Checkbox Formularfeld in ein Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Einfügen einer Combo Box

Call DocumentBuilder.insertComboBox eine Kombibox in das Dokument einfügen. Das folgende Codebeispiel zeigt, wie ein Combo-Box-Formfeld in ein Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Lokale auf Feldebene einfügen

Kunden können angeben Lokal auf Feldebene jetzt und kann eine bessere Kontrolle erreichen. Lokale Ids können in jedem Feld innerhalb des DocumentBuilder zugeordnet werden. Die folgenden Beispiele illustrieren, wie diese Option genutzt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Einfügen von HTML

Sie können einfach eine HTML-String einfügen, die ein HTML-Fragment oder ein ganzes HTML-Dokument in das Word-Dokument enthält. Passen Sie einfach diesen String an den DocumentBuilder. Einsatzbereich Html-Methode. Eine der nützlichen Implementierungen des Verfahrens ist das Speichern eines HTML-Strings in einer Datenbank und das Einfügen in das Dokument während mail merge die formatierten Inhalte hinzugefügt zu bekommen, anstatt es mit verschiedenen Methoden des Dokumentbauers zu bauen. Das folgende Codebeispiel zeigt Einfügen von HTML in ein Dokument mit DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Einfügen eines Hyperlinks

Verwenden Sie DocumentBuilder.insertHyperlink, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter: Text des im Dokument angezeigten Links, Link-Ziel (URL oder ein Name eines Lesezeichens innerhalb des Dokuments) und einen booleschen Parameter, der sein sollte true wenn `URL` ist ein Name eines Lesezeichens innerhalb des Dokuments. DocumentBuilder.insertHyperlink ruft intern DocumentBuilder.insertField. Das Verfahren fügt immer apostrophes am Anfang und Ende der URL hinzu. Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit unter Verwendung des `Font` Eigentum. Das folgende Codebeispiel fügt einen Hyperlink in ein Dokument mit DocumentBuilder ein.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Einfügen einer Inhaltstabelle

Sie können einfügen `TOC` (Inhaltetabelle) Feld in das Dokument an der aktuellen Position durch Aufruf der [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Methode. Das DocumentBuilder.insertTableOfContent-Verfahren wird nur eine `TOC` Feld in das Dokument. Um die Inhaltstabelle zu erstellen und nach Seitennummern anzuzeigen, die beiden **Document.UpdateFields**Nach dem Einfügen des Feldes muss ein Verfahren aufgerufen werden. Das folgende Codebeispiel zeigt, wie ein Feld Inhaltstabelle in ein Dokument eingefügt werden kann.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Einfügen von Ole Object

Wenn Sie Ole Object anrufen möchten [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Dateiname und -erweiterung beim Einfügen von Ole Object festlegen

OLE-Paket ist ein Vermächtnis und "unbesetzt" Weg, um eingebettete Objekte zu speichern, wenn der OLE-Handler unbekannt ist. Früh Windows Versionen wie Windows 3.1, 95 und 98 hatten Packager. exe Anwendung, die verwendet werden könnte, um jede Art von Daten in das Dokument einzubetten. Diese Anmeldung ist von Windows aber MS Word und andere Anwendungen verwenden es noch, um Daten einzubetten, wenn der OLE-Handler fehlt oder unbekannt. Die OlePackage-Klasse ermöglicht den Zugriff auf OLE Package-Eigenschaften. Das folgende Codebeispiel zeigt, wie Sie den Dateinamen, die Erweiterung und den Anzeigenamen für OLE Package festlegen können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Zugriff auf OLE Object Raw Data

Das folgende Codebeispiel zeigt, wie man OLE erhält Objektrohdaten mit `OleFormat.GetRawData`() Methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## In horizontaler Richtung Regel in Dokument

Das folgende Codebeispiel zeigt, wie man horizontale Regelform mit Hilfe eines Dokuments einfügen kann `DocumentBuilder.InsertHorizontalRule` Methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Arbeiten mit Formen

### Einfügen von Inline- und Freischwimmformen

Sie können eine Inline-Form mit einer bestimmten Art und Größe und einer freilaufenden Form mit der angegebenen Position, Größe und Textumschlag-Typ in ein Dokument mit `DocumentBuilder.InsertShape` Methode. Die `DocumentBuilder.InsertShape` Ein Verfahren erlaubt das Einfügen von DML-Form in das Dokumentmodell. Das Dokument muss im Format gespeichert werden, das DML-Formulare unterstützt, andernfalls werden solche Knoten in VML-Form umgewandelt, während das Dokument speichert. Das folgende Codebeispiel zeigt, wie diese Formen in das Dokument eingefügt werden können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Snip Corner Rechteck erstellen

Sie können ein Schnip Ecke Rechteck erstellen Aspose.Words. Die Formen sind SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, und DiagonalCornersRounded. Die DML-Form wird mit `DocumentBuilder.InsertShape` Verfahren mit diesen Formen. Diese Typen können nicht verwendet werden, um VML-Formen zu erstellen. Versuch, eine Form zu schaffen, indem der öffentliche Konstrukteur der Klasse "Shape" die Ausnahme "NotSupportedException" erhöht. Das folgende Codebeispiel zeigt, wie diese Formen in das Dokument eingefügt werden können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importieren Sie Formen mit Math XML als Formen in DOM

Sie können verwenden `LoadOptions.ConvertShapeToOfficeMath` Eigenschaft, die Formen mit EquationXML in Office Math-Objekte zu konvertieren. Der Standardwert dieser Eigenschaft entspricht dem MS Word-Verhalten, d.h. Formen mit Gleichung XML werden nicht in Office-Math-Objekte umgewandelt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
