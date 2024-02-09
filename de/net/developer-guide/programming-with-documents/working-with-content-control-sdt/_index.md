---
title: Arbeiten mit Content Control SDT
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Content Control SDT
linktitle: Arbeiten mit Content Control SDT
description: "Erweiterte Dokumentinhaltsverwaltung, wie Sie Inhaltssteuerelemente (strukturierte Dokument-Tags) mit C# erstellen und bearbeiten."
type: docs
weight: 390
url: /de/net/working-with-content-control-sdt/
---

In Microsoft Word können Sie ein Formular erstellen, indem Sie mit einer Vorlage beginnen und Inhaltssteuerelemente hinzufügen, einschließlich Kontrollkästchen, Textfelder, Datumsauswahl und Dropdown-Listen. In Aspose.Words wird ein strukturiertes Dokument-Tag oder ein Inhaltssteuerelement aus jedem in Aspose.Words geladenen Dokument als StructuredDocumentTag-Knoten importiert. Strukturierte Dokument-Tags (SDT oder Inhaltskontrolle) ermöglichen die Einbettung kundenspezifischer Semantik sowie deren Verhalten und Erscheinungsbild in ein Dokument.

StructuredDocumentTag kann in einem Dokument an folgenden Stellen vorkommen:

- Blockebene – Zwischen Absätzen und Tabellen, als untergeordnetes Element eines Body-, HeaderFooter-, Comment-, Footnote- oder Shape-Knotens
- Zeilenebene – Zwischen Zeilen in einer Tabelle, als untergeordnetes Element eines Tabellenknotens
- Zellenebene – Zwischen Zellen in einer Tabellenzeile, als untergeordnetes Element eines Zeilenknotens
- Inline-Ebene – Unter Inline-Inhalten im Inneren, als untergeordnetes Element eines Absatzes
– In einem anderen StructuredDocumentTag verschachtelt

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

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ Kontrollkästchen erstellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ Rich-Text-Box erstellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement vom Typ Kombinationsfeld erstellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## So aktualisieren Sie Inhaltssteuerelemente

In diesem Abschnitt wird erläutert, wie Sie die Werte von SDT oder Inhaltssteuerung programmgesteuert aktualisieren.

Das folgende Codebeispiel zeigt, wie der aktuelle Status des Kontrollkästchens festgelegt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Das folgende Codebeispiel zeigt, wie Inhaltssteuerelemente vom Typ "Einfaches Textfeld", "Dropdown-Liste" und "Bild" geändert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Bindung der Inhaltskontrolle an benutzerdefinierte XML-Teile

Sie können Inhaltssteuerelemente mit XML-Daten (*benutzerdefinierter XML-Teil*) in Word-Dokumenten binden.

Das folgende Codebeispiel zeigt, wie die Inhaltssteuerung an benutzerdefinierte XML-Teile gebunden wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping des Tag-Bereichs strukturierter Dokumente

Sie können die Zuordnung dieses strukturierten Dokument-Tag-Bereichs zu XML-Daten in einem benutzerdefinierten XML-Teil des aktuellen Dokuments mithilfe von **StructuredDocumentTagRangeStart.XmlMapping-Eigenschaft** erhalten. Allerdings kann die [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/)-Methode verwendet werden, um einen strukturierten Dokument-Tag-Bereich XML-Daten zuzuordnen.

Das folgende Codebeispiel zeigt, wie die XML-Zuordnung festgelegt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Inhalte eines Inhaltssteuerelements löschen

Sie können den Inhalt eines Inhaltssteuerelements löschen, indem Sie einen Platzhalter anzeigen. Die **StructuredDocumentTag.Clear**-Methode löscht den Inhalt dieses strukturierten Dokument-Tags und zeigt einen Platzhalter an, sofern dieser definiert ist. Es ist jedoch nicht möglich, den Inhalt eines Inhaltssteuerelements zu löschen, wenn es Revisionen aufweist. Wenn ein Inhaltssteuerelement keinen Platzhalter hat, werden wie in Microsoft Word fünf Leerzeichen eingefügt (außer sich wiederholende Abschnitte, sich wiederholende Abschnittselemente, Gruppen, Kontrollkästchen, Zitate). Wenn ein Inhaltssteuerelement benutzerdefiniertem XML zugeordnet ist, wird der referenzierte XML-Knoten gelöscht.

Das folgende Codebeispiel zeigt, wie der Inhalt der Inhaltssteuerung gelöscht wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Ändern Sie die Hintergrund- und Rahmenfarben der Inhaltssteuerung

Mit der `StructuredDocumentTag.Color`-Eigenschaft können Sie die Farbe der Inhaltssteuerung abrufen oder festlegen. Die Farbe beeinflusst die Inhaltssteuerung in zwei Situationen:

1. MS Word hebt den Hintergrund des Inhaltssteuerelements hervor, wenn die Maus über das Inhaltssteuerelement bewegt wird. Dies hilft, die Inhaltskontrolle zu identifizieren. Die Hervorhebungsfarbe ist etwas "weicher" als beim *Color*. Beispielsweise hebt MS Word den Hintergrund rosa hervor, wenn *Color* rot ist.
2. Wenn Sie mit dem Inhaltssteuerelement interagieren (Bearbeiten, Auswählen usw.), wird der Rand des Inhaltssteuerelements mit dem *Color* gefärbt.

Das folgende Codebeispiel zeigt, wie Sie die Farbe des Inhaltssteuerelements ändern:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## So legen Sie den Stil fest, um in das Inhaltssteuerelement eingegebenen Text zu formatieren

Wenn Sie den Stil der Inhaltssteuerung festlegen möchten, können Sie `StructuredDocumentTag.Style`- oder `StructuredDocumentTag.StyleName`-Eigenschaften verwenden. Wenn Sie den Text in die Inhaltssteuerung im Ausgabedokument eingeben, hat der eingegebene Text den Stil "Zitat".

{{% alert color="primary" %}}

Beachten Sie, dass nur verknüpfte Stile und Zeichenstile auf die Inhaltssteuerung angewendet werden können. Eine InvalidOperationException ("Dieser Stil kann nicht auf das SDT angewendet werden") wird ausgelöst, wenn ein Stil angewendet wird, der vorhanden, aber nicht verknüpft oder Zeichenstil ist.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie den Stil der Inhaltssteuerung festlegen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Arbeiten mit der Inhaltskontrolle für wiederkehrende Abschnitte

Die Inhaltssteuerung für sich wiederholende Abschnitte ermöglicht die Wiederholung des darin enthaltenen Inhalts. Mithilfe von Aspose.Words können die strukturierten Dokument-Tag-Knoten der Typen "Wiederholungsabschnitt" und "Wiederholungsabschnitt" erstellt werden. Zu diesem Zweck stellt [SdtType-Aufzählungstyp](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) **RepeatingSectionItem**-Eigenschaften bereit.

Das folgende Codebeispiel zeigt, wie ein sich wiederholendes Abschnittsinhaltssteuerelement an eine Tabelle gebunden wird.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
