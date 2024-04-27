---
title: Arbeiten mit Content Control SDT in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Content Control SDT
linktitle: Arbeiten mit Content Control SDT
type: docs
description: "Advanced Document Content Management, wie Content Controls (Structured Document Tags) erstellt und manipuliert werden Java."
weight: 390
url: /de/java/working-with-content-control-sdt/
---

In Microsoft Word, Sie können ein Formular erstellen, indem Sie mit einer Vorlage beginnen und Inhaltskontrollen hinzufügen, einschließlich Checkboxen, Textfelder, Datumswähler und Dropdown-Listen. In <span notrans="<span notrans=" Aspose.Words"=""></span>,"> ein strukturiertes Dokument Tag oder Inhaltskontrolle aus jedem in Aspose.Words wird als StructuredDocumentTag-Knoten importiert. Strukturierte Dokument-Tags (SDT oder Content Control) ermöglichen die Einbettung von kundendefinierten Semantiken sowie deren Verhalten und Aussehen in ein Dokument.

Strukturiertes Dokument Tag kann in einem Dokument an folgenden Orten auftreten:

- Block-Level - Unter den Absätzen und Tabellen, als Kind eines Körpers, HeaderFooter, Kommentar, Fußnote oder eines Formknotens.
- Zeilenebene - Unter Zeilen in einer Tabelle, als Kind eines Tabellenknotens.
- Zellebene - Unter Zellen in einer Tabellenzeile, als Kind eines Zeilenknotens.
- Inline-Ebene - Unter Inline-Inhalte im Inneren, als Kind eines Absatzes.
- Eingebettet in einen anderen StructuredDocumentTag.

## Einfügen von Content Controls in ein Dokument

In dieser Version von Aspose.Words, Folgende Arten von SDT oder Inhaltskontrolle können erstellt werden:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Das folgende Codebeispiel zeigt, wie die Inhaltskontrolle des Typ-Checkbox erstellt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Das folgende Codebeispiel zeigt, wie die Inhaltskontrolle des Typ Rich Text Box erstellt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Das folgende Codebeispiel zeigt, wie die Inhaltskontrolle des Typ-Combo-Box erstellt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Wie Sie Content Controls aktualisieren

Dieser Abschnitt erklärt, wie die Werte von SDT oder Inhaltskontrolle programmatisch aktualisiert werden.

Das folgende Codebeispiel zeigt, wie der aktuelle Zustand des Kontrollkästchens eingestellt werden soll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Das folgende Codebeispiel zeigt, wie die Inhaltskontrollen vom Typ Klartextfeld, Dropdown-Liste und Bild geändert werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieser Beispiele herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Inhaltskontrolle an benutzerdefinierte XML-Teile binden

Sie können Inhaltskontrollen mit XML-Daten (*custom XML part*) in Word-Dokumenten binden

Das folgende Codebeispiel zeigt, wie die Inhaltskontrolle an benutzerdefinierte XML-Teile bindet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Klare Inhalte einer Content Control

Sie können den Inhalt einer Inhaltskontrolle mit Anzeige eines Platzhalters löschen. **StrukturierteDocumentTag.clear()** Mit der Methode werden Inhalte dieses strukturierten Dokument-Tags gelöscht und ein Platzhalter angezeigt, wenn es definiert ist. Allerdings Es ist nicht möglich, den Inhalt einer Inhaltskontrolle zu löschen, wenn sie Revisionen hat. Wenn eine Inhaltskontrolle keinen Platzhalter hat, werden fünf Leerzeichen wie in MS Word eingefügt (außer Wiederholung von Abschnitten, Wiederholung von Abschnitten, Gruppen, Kontrollkästen, Zitate). Wenn eine Inhaltssteuerung auf benutzerdefiniertes XML abgebildet wird, wird der referenzierte XML-Knoten gelöscht.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt der Inhaltskontrolle löschen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Content Control Hintergrund und Grenzfarben ändern

Die `StructuredDocumentTag.Color` Eigenschaft ermöglicht es Ihnen, die Farbe der Inhaltskontrolle zu erhalten oder einzustellen. Die Farbe beeinflusst die Inhaltskontrolle in zwei Situationen:

ANHANG MS Word unterstreicht den Hintergrund der Inhaltskontrolle, wenn die Maus über die Inhaltskontrolle bewegt. Dies hilft, die Inhaltskontrolle zu identifizieren. Die Farbe der Hervorhebung ist etwas "weicher" als die *Color*. Zum Beispiel, MS Word betont den Hintergrund mit der rosa Farbe, wenn *Color* ist Rot.
2. Wenn Sie mit der Inhaltskontrolle interagieren (Bearbeiten, Picken usw.), wird die Grenze der Inhaltskontrolle mit der *Color*.

Das folgende Codebeispiel zeigt, wie man die Farbe der Inhaltskontrolle ändert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## So setzen Sie Stil, um Text in die Inhaltskontrolle eingegeben zu formatieren

Wenn Sie den Stil der Inhaltskontrolle festlegen möchten, können Sie `StructuredDocumentTag.Style` oder `StructuredDocumentTag.StyleName` Eigenschaften. Wenn Sie den Text in die Inhaltskontrolle im Ausgabedokument eingeben, wird der eingegebene Text den Stil "Quote" haben.

{{% alert color="primary" %}}

Beachten Sie, dass nur Linked und Character-Stile auf die Inhaltskontrolle angewendet werden können. Eine InvalidOperationException ("Kann diesen Stil nicht auf das SDT anwenden") wird geworfen, wenn ein Stil, der existiert, aber nicht Linked oder Charakter Stil angewendet wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man den Stil der Inhaltskontrolle einstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Arbeiten mit Abschnitt Inhaltskontrolle wiederholen

Die wiederholte Abschnittsinhaltskontrolle erlaubt es, den darin enthaltenen Inhalt zu wiederholen. Verwendung Aspose.Words, die strukturierten Dokument-Tag-Knoten des Wiederholungsabschnitts und Wiederholen von Abschnittsartikeltypen können erstellt werden und zu diesem Zweck [Aufzählungsart SdtTyp](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) stellt REPEATING_SECTION_ITEM Mitglied zur Verfügung.

Das folgende Codebeispiel zeigt, wie eine wiederkehrende Abschnittsinhaltskontrolle an eine Tabelle bindet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

