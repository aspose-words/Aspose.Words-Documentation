---
title: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
second_title: Aspose.Words für C++
articleTitle: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
linktitle: Verwenden Sie `DocumentBuilder`, um Dokumentelemente einzufügen
type: docs
description: "Fügen Sie Dokumentelemente mit dem Dokumentgenerator in C++ ein."
weight: 80
url: /de/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Die `DocumentBuilder` wird zum Ändern von Dokumenten verwendet. In diesem Artikel wird erläutert und beschrieben, wie Sie eine Reihe von Aufgaben ausführen:

## Einfügen einer Textzeichenfolge

Übergeben Sie einfach die Textzeichenfolge, die Sie in das Dokument einfügen möchten, an die Methode `DocumentBuilder.Write`. Die Textformatierung wird durch die Eigenschaft `Font` bestimmt. Dieses Objekt enthält verschiedene Schriftattribute (Schriftname, Schriftgröße, Farbe usw.). Einige wichtige Schriftattribute werden auch durch DocumentBuilder -Eigenschaften dargestellt, damit Sie direkt darauf zugreifen können. Dies sind boolesche Eigenschaften `Font.Bold`, `Font.Italic` und `Font.Underline`.

Beachten Sie, dass die von Ihnen festgelegte Zeichenformatierung für den gesamten Text gilt, der ab der aktuellen Position im Dokument eingefügt wird.

Das folgende Beispiel fügt formatierten Text mit DocumentBuilder ein.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Einfügen eines Absatzes

 `DocumentBuilder.Writeln` fügt ebenfalls eine Textzeichenfolge in das Dokument ein, fügt jedoch zusätzlich einen Absatzumbruch hinzu. Die aktuelle Schriftformatierung wird auch durch die Eigenschaft `DocumentBuilder.Font` angegeben, und die aktuelle Absatzformatierung wird durch die Eigenschaft `DocumentBuilder.ParagraphFormat` bestimmt. Das folgende Beispiel zeigt, wie Sie einen Absatz in das Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Einfügen einer Tabelle

Der grundlegende Algorithmus zum Erstellen einer Tabelle mit DocumentBuilder ist einfach:

1. Starten Sie die Tabelle mit `DocumentBuilder.StartTable`.
1. Fügen Sie eine Zelle mit `DocumentBuilder.InsertCell` ein. Dadurch wird automatisch eine neue Zeile gestartet. Verwenden Sie bei Bedarf die Eigenschaft `DocumentBuilder.CellFormat`, um die Zellenformatierung anzugeben.
1. Fügen Sie Zellinhalte mit den `DocumentBuilder` -Methoden ein.
1. Wiederholen Sie die Schritte 2 und 3, bis die Zeile vollständig ist.
1. Rufen Sie `DocumentBuilder.EndRow` auf, um die aktuelle Zeile zu beenden. Verwenden Sie bei Bedarf die Eigenschaft `DocumentBuilder.RowFormat`, um die Zeilenformatierung anzugeben.
1. Wiederholen Sie die Schritte 2 - 5, bis die Tabelle vollständig ist.
1. Rufen Sie `DocumentBuilder.EndTable` auf, um den Tabellenaufbau abzuschließen. Die geeigneten Methoden zum Erstellen von DocumentBuilder-Tabellen werden nachstehend beschrieben.

### Einen Tisch beginnen

Der Aufruf von `DocumentBuilder.StartTable` ist der erste Schritt beim Erstellen einer Tabelle. Es kann auch innerhalb einer Zelle aufgerufen werden.In diesem Fall wird eine verschachtelte Tabelle gestartet. Die nächste aufzurufende Methode ist `DocumentBuilder.InsertCell`.

### Einfügen einer Zelle

Nachdem Sie `DocumentBuilder->InsertCell` aufgerufen haben, wird eine neue Zelle erstellt und alle Inhalte, die Sie mit anderen Methoden der Klasse `DocumentBuilder` hinzufügen, werden der aktuellen Zelle hinzugefügt. Um eine neue Zelle in derselben Zeile zu beginnen, rufen Sie `DocumentBuilder->InsertCell` erneut auf. Verwenden Sie die Eigenschaft `DocumentBuilder.CellFormat`, um die Zellenformatierung anzugeben. Es gibt ein `CellFormat` -Objekt zurück, das die gesamte Formatierung für eine Tabellenzelle darstellt.

### Eine Zeile beenden

Rufen Sie `DocumentBuilder.EndRow` auf, um die aktuelle Zeile zu beenden. Wenn Sie unmittelbar danach `DocumentBuilder->InsertCell` aufrufen, wird die Tabelle in einer neuen Zeile fortgesetzt.

Verwenden Sie die Eigenschaft `DocumentBuilder.RowFormat`, um die Zeilenformatierung anzugeben. Es gibt ein `RowFormat` -Objekt zurück, das die gesamte Formatierung für eine Tabellenzeile darstellt.

### Beenden einer Tabelle

Rufen Sie `DocumentBuilder.EndTable` auf, um die aktuelle Tabelle zu beenden. Diese Methode sollte nur einmal aufgerufen werden, nachdem `DocumentBuilder->EndRow` aufgerufen wurde. Beim Aufruf bewegt `DocumentBuilder.EndTable` den Cursor aus der aktuellen Zelle an eine Position direkt nach der Tabelle. Das folgende Beispiel zeigt, wie Sie eine formatierte Tabelle erstellen, die 2 Zeilen und 2 Spalten enthält.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Einen Umbruch einfügen

Wenn Sie explizit eine neue Zeile, einen Absatz, eine Spalte, einen Abschnitt oder eine Seite beginnen möchten, rufen Sie `DocumentBuilder.InsertBreak` auf. Übergeben Sie dieser Methode den Typ der einzufügenden Unterbrechung, die durch die `BreakType` -Aufzählung dargestellt wird. Das folgende Beispiel zeigt, wie Seitenumbrüche in ein Dokument eingefügt werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Einfügen eines Bildes

DocumentBuilder bietet mehrere Überladungen der `DocumentBuilder->InsertImage` -Methode, mit denen Sie ein Inline- oder Floating-Bild einfügen können. Wenn das Bild eine Metadatei EMF oder WMF ist, wird es im Metadateiformat in das Dokument eingefügt. Alle anderen Bilder werden im Format PNG gespeichert. Die `DocumentBuilder->InsertImage` -Methode kann Bilder aus verschiedenen Quellen verwenden:

- Aus einer Datei oder `URL` durch Übergabe eines Zeichenfolgenparameters `DocumentBuilder->InsertImage`.
- Aus einem Stream durch Übergabe eines `Stream` -Parameters `DocumentBuilder->InsertImage`.
- Aus einem Bildobjekt durch Übergabe eines Bildparameters `DocumentBuilder->InsertImage`.
- Aus einem Byte-Array durch Übergabe eines Byte-Array-Parameters `DocumentBuilder.InsertImage`.Für jede der `DocumentBuilder->InsertImage` -Methoden gibt es weitere Überladungen, mit denen Sie ein Bild mit den folgenden Optionen einfügen können:
- Inline oder schwebend an einer bestimmten Position, z. B. `DocumentBuilder->InsertImage`.
- Prozentskala oder benutzerdefinierte Größe, z. B. `DocumentBuilder.InsertImage`. Außerdem gibt die `DocumentBuilder->InsertImage` -Methode ein `Shape` -Objekt zurück, das gerade erstellt und eingefügt wurde, damit Sie die Eigenschaften der Form weiter ändern können.

### Einfügen eines Inline-Bildes

Übergeben Sie eine einzelne Zeichenfolge, die eine Datei darstellt, die das Bild enthält, an `DocumentBuilder->InsertImage`, um das Bild als Inline-Grafik in das Dokument einzufügen. Das folgende Beispiel zeigt, wie Sie ein Inline-Bild an der Cursorposition in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Einfügen eines schwebenden (absolut positionierten) Bildes

In diesem Beispiel wird ein schwebendes Bild aus einer Datei oder `URL` an einer bestimmten Position und Größe eingefügt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Einfügen eines Lesezeichens

Um ein Lesezeichen in das Dokument einzufügen, sollten Sie Folgendes tun:

1. Rufen Sie `DocumentBuilder->StartBookmark` auf und übergeben Sie ihm den gewünschten Namen des Lesezeichens.
1. Fügen Sie den Lesezeichentext mit den Methoden DocumentBuilder ein.
1. Rufen Sie `DocumentBuilder.EndBookmark` auf und übergeben Sie ihm denselben Namen, den Sie mit **DocumentBuilder->StartBookmark** verwendet haben.
1. Lesezeichen können sich überlappen und einen beliebigen Bereich umfassen. Um ein gültiges Lesezeichen zu erstellen, müssen Sie sowohl `DocumentBuilder->StartBookmark` als auch `DocumentBuilder->EndBookmark` mit demselben Lesezeichennamen aufrufen.

{{% alert color="primary" %}}

Schlecht geformte Lesezeichen oder Lesezeichen mit doppelten Namen werden beim Speichern des Dokuments ignoriert.

{{% /alert %}}

Das folgende Beispiel zeigt, wie Sie mit einem Dokumentgenerator ein Lesezeichen in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Einfügen eines `Form`-Felds

Formularfelder sind ein besonderer Fall von Wortfeldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textfeld, Kombinationsfeld und Kontrollkästchen.DocumentBuilder bietet spezielle Methoden zum Einfügen der einzelnen Formularfeldtypen in das Dokument: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` und `DocumentBuilder.InsertComboBox`. Beachten Sie, dass, wenn Sie einen Namen für das Formularfeld angeben, automatisch ein Lesezeichen mit demselben Namen erstellt wird.

### Einfügen einer Texteingabe

 `DocumentBuilder.InsertTextInput`, um ein Textfeld in das Dokument einzufügen. Das folgende Beispiel zeigt, wie Sie ein Texteingabeformularfeld in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Kontrollkästchen einfügen

Rufen Sie `DocumentBuilder.InsertCheckBox` auf, um ein Kontrollkästchen in das Dokument einzufügen. Das folgende Beispiel zeigt, wie Sie ein Kontrollkästchen-Formularfeld in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Einfügen eines Kombinationsfelds

Rufen Sie `DocumentBuilder.InsertComboBox` auf, um ein Kombinationsfeld in das Dokument einzufügen. Das folgende Beispiel zeigt, wie Sie ein Kombinationsfeld-Formularfeld in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Gebietsschema auf Feldebene einfügen

Kunden können das Gebietsschema jetzt auf Feldebene angeben und eine bessere Kontrolle erreichen. Gebietsschema-IDs können jedem Feld innerhalb der DocumentBuilder zugeordnet werden. Die folgenden Beispiele zeigen, wie Sie diese Option nutzen können.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Einfügen eines Hyperlinks

Verwenden Sie `DocumentBuilder.InsertHyperlink`, um einen Hyperlink in das Dokument einzufügen. Diese Methode akzeptiert drei Parameter: Text des Links, der im Dokument angezeigt werden soll, Linkziel (URL oder ein Name eines Lesezeichens im Dokument) und ein boolescher Parameter, der wahr sein sollte, wenn `URL` ein Name ist eines Lesezeichens im Dokument.DocumentBuilder.InsertHyperlink ruft intern `DocumentBuilder.InsertField` auf.Die Methode fügt immer Apostrophe am Anfang und am Ende der URL hinzu. Beachten Sie, dass Sie die Schriftformatierung für den Hyperlink-Anzeigetext explizit mit der Eigenschaft `Font` angeben müssen. Das folgende Beispiel fügt einen Hyperlink mit DocumentBuilder in ein Dokument ein.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Ole-Objekt einfügen

Wenn Sie ein Ole-Objekt wünschen, rufen Sie `DocumentBuilder.InsertOleObject` auf. Übergeben Sie dieser Methode die `ProgId` explizit mit anderen Parametern. Das folgende Beispiel zeigt, wie Sie ein Ole-Objekt in ein Dokument einfügen.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Dateiname und Erweiterung beim Einfügen eines Ole-Objekts festlegen

Das OLE -Paket ist eine alte und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn der OLE -Handler unbekannt ist. Frühe Windows Versionen wie Windows 3.1, 95 und 98 hatten Packager.exe-Anwendung, mit der beliebige Datentypen in das Dokument eingebettet werden können. Jetzt ist diese Anwendung von Windows ausgeschlossen, aber MS Word und andere Anwendungen verwenden sie weiterhin zum Einbetten von Daten, wenn der OLE -Handler fehlt oder unbekannt ist. OlePackage Klasse ermöglicht den Zugriff auf OLE Paketeigenschaften. Das folgende Beispiel zeigt, wie Dateiname, Erweiterung und Anzeigename für das OLE -Paket festgelegt werden.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## HTML einfügen

Sie können ganz einfach eine HTML -Zeichenfolge, die ein HTML -Fragment oder ein ganzes HTML -Dokument enthält, in das Word-Dokument einfügen. Übergeben Sie diese Zeichenfolge einfach an die `DocumentBuilder->InsertHtml` -Methode. Eine der nützlichen Implementierungen der Methode besteht darin, eine HTML -Zeichenfolge in einer Datenbank zu speichern und sie während Mail Merge in das Dokument einzufügen, um den formatierten Inhalt hinzuzufügen, anstatt ihn mit verschiedenen Methoden des Dokumentgenerators zu erstellen. Das folgende Beispiel zeigt das Einfügen von HTML in ein Dokument mit DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Horizontale Linie in Dokument einfügen

Das Beispiel Be low code zeigt, wie eine horizontale Regelform mit der Methode `DocumentBuilder->InsertHorizontalRule` in ein Dokument eingefügt wird.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
