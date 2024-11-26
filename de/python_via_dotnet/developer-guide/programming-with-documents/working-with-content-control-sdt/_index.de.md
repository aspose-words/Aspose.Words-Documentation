---
title: Arbeiten mit Content Control SDT
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Content Control SDT
linktitle: Arbeiten mit Content Control SDT
description: "Mit Python können Sie kundenspezifische Semantik sowie deren Verhalten und Erscheinungsbild in ein Dokument einbetten."
type: docs
weight: 390
url: /de/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word können Sie ein Formular erstellen, indem Sie mit einer Vorlage beginnen und Inhaltssteuerelemente hinzufügen, einschließlich Kontrollkästchen, Textfelder, Datumsauswahl und Dropdown-Listen. In Aspose.Words wird ein strukturiertes Dokument-Tag oder Inhaltssteuerelement aus jedem in Aspose.Words geladenen Dokument als [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)-Knoten importiert. Strukturierte Dokument-Tags (SDT oder Inhaltskontrolle) ermöglichen die Einbettung kundenspezifischer Semantik sowie deren Verhalten und Erscheinungsbild in ein Dokument. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) kann in einem Dokument an folgenden Stellen vorkommen:

- Blockebene – Zwischen Absätzen und Tabellen, als untergeordnetes Element eines [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)-, [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)-, [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)-, [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)- oder [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knotens
- Zeilenebene – Zwischen Zeilen in einer Tabelle, als untergeordnetes Element eines [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Knotens
- Zellenebene – Zwischen Zellen in einer Tabellenzeile, als untergeordnetes Element eines [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)-Knotens
- Inline-Ebene – Unter Inline-Inhalten im Inneren, als untergeordnetes Element eines [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- In einem anderen [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) verschachtelt

## Einfügen von Inhaltssteuerelementen in ein Dokument

In dieser Version von Aspose.Words können die folgenden Arten von SDT oder Inhaltskontrolle erstellt werden:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Das folgende Codebeispiel zeigt, wie ein Inhaltssteuerelement vom Typ Kontrollkästchen erstellt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Das folgende Codebeispiel zeigt, wie ein Inhaltssteuerelement vom Typ Rich-Text-Feld erstellt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Das folgende Codebeispiel zeigt, wie ein Inhaltssteuerelement vom Typ Kombinationsfeld erstellt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## So aktualisieren Sie Inhaltssteuerelemente

In diesem Abschnitt wird erläutert, wie Sie die Werte von SDT oder Inhaltssteuerung programmgesteuert aktualisieren

Das folgende Codebeispiel zeigt, wie der aktuelle Status des Kontrollkästchens festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Das folgende Codebeispiel zeigt, wie Inhaltssteuerelemente vom Typ "Einfaches Textfeld", "Dropdown-Liste" und "Bild" geändert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieser Beispiele von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx) herunterladen.

{{% /alert %}}

## Bindung der Inhaltskontrolle an benutzerdefinierte XML-Teile

Sie können Inhaltssteuerelemente mit XML-Daten (*benutzerdefinierter XML-Teil*) in Word-Dokumenten binden.

Das folgende Codebeispiel zeigt, wie die Inhaltssteuerung an benutzerdefinierte XML-Teile gebunden wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping des Tag-Bereichs strukturierter Dokumente

Mithilfe der [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/)-Eigenschaft können Sie die Zuordnung dieses strukturierten Dokument-Tag-Bereichs zu XML-Daten in einem benutzerdefinierten XML-Teil des aktuellen Dokuments abrufen. Allerdings kann die [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/)-Methode verwendet werden, um einen strukturierten Dokument-Tag-Bereich XML-Daten zuzuordnen.

Das folgende Codebeispiel zeigt, wie die XML-Zuordnung festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Inhalte eines Inhaltssteuerelements löschen

Sie können den Inhalt eines Inhaltssteuerelements löschen, indem Sie einen Platzhalter anzeigen. Die [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/)-Methode löscht den Inhalt dieses strukturierten Dokument-Tags und zeigt einen Platzhalter an, sofern dieser definiert ist. Es ist jedoch nicht möglich, den Inhalt eines Inhaltssteuerelements zu löschen, wenn es Revisionen aufweist. Wenn ein Inhaltssteuerelement keinen Platzhalter hat, werden wie in MS Word fünf Leerzeichen eingefügt (außer sich wiederholende Abschnitte, sich wiederholende Abschnittselemente, Gruppen, Kontrollkästchen, Zitate). Wenn ein Inhaltssteuerelement benutzerdefiniertem XML zugeordnet ist, wird der referenzierte XML-Knoten gelöscht.

Das folgende Codebeispiel zeigt, wie der Inhalt der Inhaltssteuerung gelöscht wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Ändern Sie die Hintergrund- und Rahmenfarben der Inhaltssteuerung

Mit der [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/)-Eigenschaft können Sie die Farbe der Inhaltssteuerung abrufen oder festlegen. Die Farbe beeinflusst die Inhaltssteuerung in zwei Situationen:

1. MS Word hebt den Hintergrund des Inhaltssteuerelements hervor, wenn die Maus über das Inhaltssteuerelement bewegt wird. Dies hilft, die Inhaltskontrolle zu identifizieren. Die Hervorhebungsfarbe ist etwas "weicher" als beim *color*. Beispielsweise hebt MS Word den Hintergrund rosa hervor, während *color* rot ist.
2. Wenn Sie mit dem Inhaltssteuerelement interagieren (Bearbeiten, Auswählen usw.), wird der Rand des Inhaltssteuerelements mit dem *color* gefärbt.

Das folgende Codebeispiel zeigt, wie Sie die Farbe des Inhaltssteuerelements ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## So legen Sie den Stil fest, um in das Inhaltssteuerelement eingegebenen Text zu formatieren

Wenn Sie den Stil der Inhaltssteuerung festlegen möchten, können Sie [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/)- oder [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/)-Eigenschaften verwenden. Wenn Sie den Text in die Inhaltssteuerung im Ausgabedokument eingeben, hat der eingegebene Text den Stil "Zitat".

{{% alert color="primary" %}}

Beachten Sie, dass nur verknüpfte Stile und Zeichenstile auf die Inhaltssteuerung angewendet werden können. Eine Ausnahme ("Dieser Stil kann nicht auf das SDT angewendet werden") wird ausgelöst, wenn ein Stil angewendet wird, der vorhanden, aber nicht verknüpft oder Zeichenstil ist.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie den Stil der Inhaltssteuerung festlegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Arbeiten mit der Inhaltskontrolle für wiederkehrende Abschnitte

Die Inhaltssteuerung für sich wiederholende Abschnitte ermöglicht die Wiederholung des darin enthaltenen Inhalts. Mithilfe von Aspose.Words können die strukturierten Dokument-Tag-Knoten der Typen "Wiederholungsabschnitt" und "Wiederholungsabschnitt" erstellt werden. Zu diesem Zweck stellt der Aufzählungstyp [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) eine [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item)-Eigenschaft bereit.

Das folgende Codebeispiel zeigt, wie ein sich wiederholendes Abschnittsinhaltssteuerelement an eine Tabelle gebunden wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
