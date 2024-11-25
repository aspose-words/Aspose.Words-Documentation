---
title: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
second_title: Aspose.Words für Java
articleTitle: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
linktitle: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
type: docs
description: "Fügen Sie Dokumentelemente mit dem Dokumentgenerator in Java ein."
weight: 10
url: /de/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) wird zum Ändern von Dokumenten verwendet. In diesem Artikel wird erläutert und beschrieben, wie Sie eine Reihe von Aufgaben ausführen.

## Einfügen einer Textzeichenfolge

Übergeben Sie einfach die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die Methode [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). Die Textformatierung wird durch die Eigenschaft `Font` bestimmt. Dieses Objekt enthält verschiedene Schriftattribute (Schriftname, Schriftgröße, Farbe usw.). Einige wichtige Schriftattribute werden auch durch [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) -Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind boolesche Eigenschaften [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) und [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Beachten Sie, dass die von Ihnen festgelegte Zeichenformatierung für den gesamten Text gilt, der ab der aktuellen Position im Dokument eingefügt wird.

{{% /alert %}}

Das folgende Codebeispiel fügt formatierten Text mit DocumentBuilder ein.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Einfügen eines Absatzes

DocumentBuilder.writeln fügt ebenfalls eine Textzeichenfolge in das Dokument ein, fügt aber zusätzlich einen Absatzumbruch hinzu. Die aktuelle Schriftformatierung wird auch durch DocumentBuilder angegeben.Die getFont-Eigenschaft und die aktuelle Absatzformatierung werden durch DocumentBuilder bestimmt.getParagraphFormat Eigenschaft.

Das folgende Codebeispiel zeigt, wie Sie einen Absatz in das Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Einfügen einer Tabelle

Der grundlegende Algorithmus zum Erstellen einer Tabelle mit `DocumentBuilder` ist einfach:

1. Starten Sie die Tabelle mit [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Fügen Sie eine Zelle mit [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) ein. Dadurch wird automatisch eine neue Zeile gestartet. Verwenden Sie bei Bedarf die Eigenschaft [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat), um die Zellenformatierung anzugeben.
1. Fügen Sie Zellinhalte mit den `DocumentBuilder` -Methoden ein.
1. Wiederholen Sie die Schritte 2 und 3, bis die Zeile vollständig ist.
1. Rufen Sie [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) auf, um die aktuelle Zeile zu beenden. Verwenden Sie bei Bedarf die Eigenschaft [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat), um die Zeilenformatierung anzugeben.
1. Wiederholen Sie die Schritte 2 - 5, bis die Tabelle vollständig ist.
1. Rufen Sie [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) auf, um den Tabellenaufbau abzuschließen. Die geeigneten Methoden zum Erstellen von DocumentBuilder-Tabellen werden nachstehend beschrieben.

### Einen Tisch beginnen

DocumentBuilder anrufen.startTable ist der erste Schritt beim Erstellen einer Tabelle. Es kann auch innerhalb einer Zelle aufgerufen werden, in diesem Fall startet es eine verschachtelte Tabelle. Die nächste aufzurufende Methode ist DocumentBuilder.insertCell.

### Einfügen einer Zelle

Nachdem Sie DocumentBuilder aufgerufen haben.insertCell, eine neue Zelle wird erstellt und alle Inhalte, die Sie mit anderen Methoden der Klasse `DocumentBuilder` hinzufügen, werden der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu beginnen, rufen Sie DocumentBuilder auf.insertCell noch einmal. Verwenden Sie die DocumentBuilder.getCellFormat Eigenschaft zum Festlegen der Zellenformatierung. Es gibt ein [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) -Objekt zurück, das die gesamte Formatierung für eine Tabellenzelle darstellt.

### Eine Zeile beenden

Rufen Sie DocumentBuilder auf.endRow, um die aktuelle Zeile zu beenden. Wenn Sie DocumentBuilder aufrufen.insertCell Unmittelbar danach wird die Tabelle in einer neuen Zeile fortgesetzt. Verwenden Sie die Eigenschaft `DocumentBuilder.RowFormat`, um die Zeilenformatierung anzugeben. Es gibt ein [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) -Objekt zurück, das die gesamte Formatierung für eine Tabellenzeile darstellt.

### Beenden einer Tabelle

Rufen Sie DocumentBuilder auf.endTable, um die aktuelle Tabelle zu beenden. Diese Methode sollte nur einmal nach DocumentBuilder aufgerufen werden.endRow wurde aufgerufen. Beim Aufruf DocumentBuilder.endTable bewegt den Cursor aus der aktuellen Zelle an eine Position direkt nach der Tabelle. Das folgende Beispiel zeigt, wie Sie eine formatierte Tabelle erstellen, die 2 Zeilen und 2 Spalten enthält.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Einen Umbruch einfügen

Wenn Sie explizit eine neue Zeile, einen Absatz, eine Spalte, einen Abschnitt oder eine Seite beginnen möchten, rufen Sie DocumentBuilder auf.insertBreak. Übergeben Sie dieser Methode den Typ der einzufügenden Unterbrechung, die durch die `BreakType` -Aufzählung dargestellt wird.
Das folgende Codebeispiel zeigt, wie Seitenumbrüche in ein Dokument eingefügt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Einfügen eines Bildes

DocumentBuilder bietet mehrere Überladungen der [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) -Methode, mit denen Sie ein Inline- oder Floating-Bild einfügen können. Wenn das Bild eine Metadatei EMF oder WMF ist, wird es im Metadateiformat in das Dokument eingefügt. Alle anderen Bilder werden im PNG-Format gespeichert. Das DocumentBuilder.insertImage -Methode kann Bilder aus verschiedenen Quellen verwenden:

- Aus einer Datei oder `URL` durch Übergabe eines Zeichenfolgenparameters
- Aus einem Stream durch Übergabe eines `Stream`-Parameters
- Aus einem Bildobjekt durch Übergabe eines Bildparameters
- Aus einem Byte-Array durch Übergabe eines Byte-Array-Parameters
- Und andere

Für jede der DocumentBuilder.insertImage Methoden gibt es weitere Überladungen, mit denen Sie ein Bild mit den folgenden Optionen einfügen können:

- Inline oder schwebend an einer bestimmten Position
- Prozentskala oder benutzerdefinierte Größe

Außerdem die DocumentBuilder.Die insertImage -Methode gibt ein [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) -Objekt zurück, das gerade erstellt und eingefügt wurde, damit Sie die Eigenschaften der Form weiter ändern können.

### Einfügen eines Inline-Bildes

Übergeben Sie eine einzelne Zeichenfolge, die eine Datei darstellt, die das Bild enthält, an DocumentBuilder.insertImage, um das Bild als Inline-Grafik in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie Sie ein Inline-Bild an der Cursorposition in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Einfügen eines schwebenden (absolut positionierten) Bildes

In diesem Beispiel wird ein schwebendes Bild aus einer Datei oder `URL` an einer bestimmten Position und Größe eingefügt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Einfügen eines Lesezeichens

Um ein Lesezeichen in das Dokument einzufügen, sollten Sie Folgendes tun:

1. Rufen Sie [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) auf und übergeben Sie ihm den gewünschten Namen des Lesezeichens.
1. Fügen Sie den Lesezeichentext mit den Methoden `DocumentBuilder` ein.
1. Rufen Sie [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) auf und übergeben Sie ihm denselben Namen, den Sie mit DocumentBuilder verwendet haben.startBookmark.

Lesezeichen können sich überlappen und einen beliebigen Bereich umfassen. Um ein gültiges Lesezeichen zu erstellen, müssen Sie beide DocumentBuilder aufrufen.startBookmark und DocumentBuilder.endBookmark mit demselben Lesezeichennamen.

Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

Das folgende Codebeispiel zeigt, wie Sie mit einem Dokumentgenerator ein Lesezeichen in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Feld einfügen

Felder in Microsoft Word -Dokumenten bestehen aus einem Feldcode und einem Feldergebnis. Der Feldcode ist wie eine Formel und das Feldergebnis ist der Wert, den die Formel erzeugt. Der Feldcode kann auch Feldschalter enthalten, die zusätzliche Anweisungen zum Ausführen einer bestimmten Aktion sind. Sie können zwischen der Anzeige von Feldcodes und Ergebnissen in Ihrem Dokument in Microsoft Word mit der Tastenkombination Alt+F9 wechseln. Feldcodes werden zwischen geschweiften Klammern (`{ }`) angezeigt.Verwenden Sie [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), um Felder im Dokument zu erstellen. Sie müssen einen Feldtyp, einen Feldcode und einen Feldwert angeben. Wenn Sie sich über die bestimmte Feldcodesyntax nicht sicher sind, erstellen Sie zuerst das Feld in Microsoft Word und wechseln Sie, um den Feldcode anzuzeigen.
Im folgenden Codebeispiel wird ein Seriendruckfeld mit DocumentBuilder in ein Dokument eingefügt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Einfügen eines `Form`-Felds

Formularfelder sind ein besonderer Fall von Wortfeldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textfeld, Combobox und checkbox.DocumentBuilder bietet spezielle Methoden zum Einfügen der einzelnen Formularfeldtypen in das Dokument: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) und [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Beachten Sie, dass, wenn Sie einen Namen für das Formularfeld angeben, automatisch ein Lesezeichen mit demselben Namen erstellt wird.

### Einfügen einer Texteingabe

DocumentBuilder.insertTextInput, um ein Textfeld in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie Sie ein Texteingabeformularfeld in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Einfügen einer `CheckBox`

Rufen Sie DocumentBuilder auf.insertCheckBox, um eine checkbox in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie Sie ein checkbox-Formularfeld in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Einfügen eines Kombinationsfelds

Rufen Sie DocumentBuilder auf.insertComboBox, um ein Kombinationsfeld in das Dokument einzufügen. Das folgende Codebeispiel zeigt, wie Sie ein Kombinationsfeld-Formularfeld in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Gebietsschema auf Feldebene einfügen

Kunden können das Gebietsschema jetzt auf Feldebene angeben und eine bessere Kontrolle erreichen. Gebietsschema-IDs können jedem Feld innerhalb der DocumentBuilder zugeordnet werden. Die folgenden Beispiele zeigen, wie Sie diese Option nutzen können.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTML einfügen

Sie können ganz einfach eine HTML -Zeichenfolge, die ein HTML -Fragment oder ein ganzes HTML -Dokument enthält, in das Word-Dokument einfügen. Übergeben Sie diese Zeichenfolge einfach an DocumentBuilder.insertHtml Methode. Eine der nützlichen Implementierungen der Methode besteht darin, eine HTML -Zeichenfolge in einer Datenbank zu speichern und sie während Mail Merge in das Dokument einzufügen, um den formatierten Inhalt hinzuzufügen, anstatt ihn mit verschiedenen Methoden des Dokumentgenerators zu erstellen. Das folgende Codebeispiel zeigt Einfügungen von HTML in ein Dokument mit DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Einfügen eines Hyperlinks

Verwenden Sie DocumentBuilder.insertHyperlink, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter: Text des Links, der im Dokument angezeigt werden soll, Linkziel (URL oder ein Name eines Lesezeichens im Dokument) und ein boolescher Parameter, der wahr sein sollte, wenn `URL` ein Name ist eines Lesezeichens im Dokument.DocumentBuilder.insertHyperlink ruft intern DocumentBuilder auf.insertField. Die Methode fügt immer Apostrophe am Anfang und am Ende der URL hinzu. Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit mit der Eigenschaft `Font` angeben müssen. Das folgende Codebeispiel fügt einen Hyperlink mit DocumentBuilder in ein Dokument ein.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Einfügen eines Inhaltsverzeichnisses

Sie können ein `TOC`-Feld (Inhaltsverzeichnis) an der aktuellen Position in das Dokument einfügen, indem Sie die [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) -Methode aufrufen. Das DocumentBuilder.Die insertTableOfContents -Methode fügt nur ein `TOC` -Feld in das Dokument ein. Um das Inhaltsverzeichnis aufzubauen und nach Seitenzahlen anzuzeigen, muss nach dem Einfügen des Feldes die Methode both **Document.UpdateFields** aufgerufen werden. Das folgende Codebeispiel zeigt, wie ein Inhaltsverzeichnisfeld in ein Dokument eingefügt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Ole-Objekt einfügen

Wenn Sie Ole Objekt aufrufen möchten, rufen Sie [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String) auf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Dateiname und Erweiterung beim Einfügen von Ole -Objekten festlegen

Das OLE -Paket ist eine alte und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn der OLE -Handler unbekannt ist. Frühe Windows -Versionen wie Windows 3.1, 95 und 98 hatten eine Packager.exe -Anwendung, mit der jede Art von Daten in das Dokument eingebettet werden konnte. Jetzt ist diese Anwendung von Windows ausgeschlossen, aber MS Word und andere Anwendungen verwenden sie weiterhin zum Einbetten von Daten, wenn der OLE-Handler fehlt oder unbekannt ist. OlePackage Klasse ermöglicht den Zugriff auf OLE Package Eigenschaften.Das folgende Codebeispiel zeigt, wie Sie den Dateinamen, die Erweiterung und den Anzeigenamen für OLE Package festlegen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Erhalten Sie Zugriff auf OLE Objekt-Rohdaten

Das folgende Codebeispiel zeigt, wie OLE Objektrohdaten mit der `OleFormat.GetRawData` () -Methode abgerufen werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Horizontale Linie in Dokument einfügen

Das folgende Codebeispiel zeigt, wie Sie mit der `DocumentBuilder.InsertHorizontalRule` -Methode eine horizontale Regelform in ein Dokument einfügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Arbeiten mit Formen

### Inline- und frei schwebende Formen einfügen

Sie können eine Inline-Form mit einem angegebenen Typ und einer angegebenen Größe und eine frei schwebende Form mit der angegebenen Position, Größe und dem angegebenen Textumbruchtyp mit der Methode `DocumentBuilder.InsertShape` in ein Dokument einfügen. Die `DocumentBuilder.InsertShape` -Methode ermöglicht das Einfügen von DML -Formen in das Dokumentmodell. Das Dokument muss in dem Format gespeichert werden, das DML -Formen unterstützt, andernfalls werden solche Knoten beim Speichern des Dokuments in VML -Formen konvertiert. Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Erstellen Sie ein Snip-Eckrechteck

Sie können mit Aspose.Words ein Snip-Eckrechteck erstellen. Die Formtypen sind SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, und DiagonalCornersRounded. Die DML -Form wird mit der `DocumentBuilder.InsertShape` -Methode mit diesen Formtypen erstellt. Diese Typen können nicht zum Erstellen von VML-Formen verwendet werden. Der Versuch, eine Form mithilfe des öffentlichen Konstruktors der Klasse "Shape" zu erstellen, löst die Ausnahme "NotSupportedException" aus. Das folgende Codebeispiel zeigt, wie diese Arten von Formen in das Dokument eingefügt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importiere Formen mit Mathe XML als Formen in DOM

Sie können die Eigenschaft `LoadOptions.ConvertShapeToOfficeMath` verwenden, um die Formen mit EquationXML in Office Math-Objekte zu konvertieren. Der Standardwert dieser Eigenschaft entspricht dem Verhalten von MS Word, d. h. Formen mit der Gleichung XML werden nicht in Office Math-Objekte konvertiert.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
