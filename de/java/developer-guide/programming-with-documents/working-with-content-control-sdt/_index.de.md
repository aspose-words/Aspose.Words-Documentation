---
title: Arbeiten mit Inhaltskontrolle SDT in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Inhaltskontrolle SDT
linktitle: Arbeiten mit Inhaltskontrolle SDT
type: docs
description: "Erweitertes Dokumentinhaltsmanagement, Erstellen und Bearbeiten von Inhaltssteuerelementen (strukturierte Dokument-Tags) mit Java."
weight: 390
url: /de/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word können Sie ein Formular erstellen, indem Sie mit einer Vorlage beginnen und Inhaltssteuerelemente hinzufügen, einschließlich checkboxes, Textfelder, Datumsauswahl und Dropdown-Listen. In Aspose.Words wird ein strukturiertes Dokument-Tag oder ein Inhaltssteuerelement aus einem beliebigen in Aspose.Words geladenen Dokument als StructuredDocumentTag-Knoten importiert. Strukturierte Dokument-Tags (SDT oder Inhaltskontrolle) ermöglichen die Einbettung von kundendefinierter Semantik sowie deren Verhalten und Erscheinungsbild in ein Dokument.

StructuredDocumentTag kann in einem Dokument an folgenden Stellen vorkommen:

- Blockebene - Zwischen Absätzen und Tabellen, als Kind eines Körpers, HeaderFooter, Kommentars, einer Fußnote oder eines Formknotens.
- Zeilenebene - Unter Zeilen in einer Tabelle als untergeordnetes Element eines Tabellenknotens.
- Zellebene - Zwischen Zellen in einer Tabellenzeile als untergeordnetes Element eines Zeilenknotens.
- Inline-Ebene - Unter Inline-Inhalten im Inneren als untergeordnetes Element eines Absatzes.
- In einem anderen StructuredDocumentTag verschachtelt.

## Einfügen von Inhaltssteuerelementen in ein Dokument

In dieser Version von Aspose.Words können die folgenden Arten von SDT- oder Inhaltssteuerelementen erstellt werden:

- Checkbox
- DropDownList
- ComboBox
- Datum
- BuildingBlockGallery
- Gruppe
- `Picture`
- RichText
- PlainText

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ checkbox erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ Rich-Text-Feld erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ Kombinationsfeld erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## So aktualisieren Sie Inhaltssteuerelemente

In diesem Abschnitt wird erläutert, wie Sie die Werte von SDT oder Content Control programmgesteuert aktualisieren.

Das folgende Codebeispiel zeigt, wie der aktuelle Status von checkbox festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Das folgende Codebeispiel zeigt, wie Inhaltssteuerelemente vom Typ Nur-Text-Feld, Dropdown-Liste und Bild geändert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieser Beispiele herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Binden der Inhaltssteuerung an benutzerdefinierte XML -Teile

Sie können Inhaltssteuerelemente mit XML-Daten (*custom XML part*) in Word-Dokumenten binden.

Das folgende Codebeispiel zeigt, wie Inhaltssteuerelemente an benutzerdefinierte XML -Teile gebunden werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Inhalte eines Inhaltssteuerelements löschen

Sie können den Inhalt eines Inhaltssteuerelements löschen, indem Sie einen Platzhalter anzeigen. Die **StructuredDocumentTag.clear()** -Methode löscht den Inhalt dieses strukturierten Dokument-Tags und zeigt einen Platzhalter an, wenn er definiert ist. Es ist jedoch nicht möglich, den Inhalt eines Inhaltssteuerelements zu löschen, wenn es Überarbeitungen enthält. Wenn ein Inhaltssteuerelement keinen Platzhalter enthält, werden fünf Leerzeichen wie in MS Word eingefügt (außer wiederholten Abschnitten, wiederholten Abschnittselementen, Gruppen, Kontrollkästchen, Zitaten). Wenn ein Inhaltssteuerelement benutzerdefiniert XML zugeordnet ist, wird der referenzierte XML-Knoten gelöscht.

Das folgende Codebeispiel zeigt, wie der Inhalt der Inhaltskontrolle gelöscht wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Hintergrund- und Rahmenfarben der Inhaltssteuerung ändern

Mit der Eigenschaft `StructuredDocumentTag.Color` können Sie die Farbe des Inhaltssteuerelements abrufen oder festlegen. Die Farbe wirkt sich in zwei Situationen auf die Inhaltskontrolle aus:

1. MS Word hebt den Hintergrund des Inhaltssteuerelements hervor, wenn sich die Maus über das Inhaltssteuerelement bewegt. Dies hilft, die Inhaltskontrolle zu identifizieren. Die Farbe der Hervorhebung ist etwas "weicher" als die *Color*. Zum Beispiel hebt MS Wort den Hintergrund mit der rosa Farbe hervor, wenn *Color* Rot ist.
2. Wenn Sie mit dem Inhaltssteuerelement interagieren (Bearbeiten, Auswählen usw.), wird der Rand des Inhaltssteuerelements mit *Color* eingefärbt.

Das folgende Codebeispiel zeigt, wie Sie die Farbe des Inhaltssteuerelements ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## So legen Sie den Stil fest, um Text zu formatieren, der in das Inhaltssteuerelement eingegeben wurde

Wenn Sie den Stil der Inhaltssteuerung festlegen möchten, können Sie die Eigenschaften `StructuredDocumentTag.Style` oder `StructuredDocumentTag.StyleName` verwenden. Wenn Sie den Text in das Inhaltssteuerelement im Ausgabedokument eingeben, hat der eingegebene Text den Stil "Zitat".

{{% alert color="primary" %}}

Beachten Sie, dass nur verknüpfte Stile und Zeichenformate auf die Inhaltssteuerung angewendet werden können. Eine InvalidOperationException ("Dieser Stil kann nicht auf SDT angewendet werden") wird ausgelöst, wenn ein Stil vorhanden, aber nicht verknüpft ist oder ein Zeichenstil angewendet wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie den Stil der Inhaltssteuerung festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Arbeiten mit der Inhaltssteuerung für wiederholte Abschnitte

Die Inhaltssteuerung für wiederholte Abschnitte ermöglicht das Wiederholen des darin enthaltenen Inhalts. Mit Aspose.Words können die strukturierten Dokument-Tag-Knoten des wiederholten Abschnitts und der wiederholten Abschnittselementtypen erstellt werden, und zu diesem Zweck stellt [SdtType Aufzählungstyp](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEATING_SECTION_ITEM Mitglied bereit.

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement für wiederholte Abschnitte an eine Tabelle binden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

