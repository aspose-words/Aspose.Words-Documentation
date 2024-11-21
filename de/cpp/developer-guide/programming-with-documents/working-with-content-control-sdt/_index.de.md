---
title: Arbeiten mit Inhaltskontrolle SDT
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Inhaltskontrolle SDT
linktitle: Arbeiten mit Inhaltskontrolle SDT
type: docs
description: "Erweitertes Dokumentinhaltsmanagement, Erstellen und Bearbeiten von Inhaltssteuerelementen (strukturierte Dokument-Tags) mit C++."
weight: 390
url: /de/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

In Microsoft Word können Sie ein Formular erstellen, indem Sie mit einer Vorlage beginnen und Inhaltssteuerelemente hinzufügen, einschließlich Kontrollkästchen, Textfelder, Datumsauswahl und Dropdown-Listen. In Aspose.Words wird ein strukturiertes Dokument-Tag oder ein Inhaltssteuerelement aus einem beliebigen in Aspose.Words geladenen Dokument als StructuredDocumentTag-Knoten importiert. Strukturierte Dokument-Tags (SDT oder Inhaltskontrolle) ermöglichen es, kundendefinierte Semantiken sowie deren Verhalten und Erscheinungsbild in ein Dokument einzubetten. StructuredDocumentTag kann in einem Dokument an folgenden Stellen vorkommen:

- Blockebene - Zwischen Absätzen und Tabellen, als Kind eines Körpers, HeaderFooter, Kommentars, einer Fußnote oder eines Formknotens
- Zeilenebene - Zwischen Zeilen in einer Tabelle als Kind eines Tabellenknotens
- Zellebene - Zwischen Zellen in einer Tabellenzeile als Kind eines Zeilenknotens
- Inline-Ebene - Unter Inline-Inhalten als untergeordnetes Element eines Absatzes
- In einem anderen StructuredDocumentTag verschachtelt

## So legen Sie den Stil fest, um Text zu formatieren, der in das Inhaltssteuerelement eingegeben wurde

Wenn Sie den Stil der Inhaltssteuerung festlegen möchten, können Sie die Eigenschaften `StructuredDocumentTag.Style` oder `StructuredDocumentTag.StyleName` verwenden. Wenn Sie den Text in das Inhaltssteuerelement im Ausgabedokument eingeben, hat der eingegebene Text den Stil "Zitat".

{{% alert color="primary" %}}

Beachten Sie, dass nur verknüpfte Stile und Zeichenformate auf die Inhaltssteuerung angewendet werden können. Eine InvalidOperationException ("Dieser Stil kann nicht auf SDT angewendet werden") wird ausgelöst, wenn ein Stil vorhanden, aber nicht verknüpft ist oder ein Zeichenstil angewendet wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie den Stil der Inhaltssteuerung festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Arbeiten mit der Inhaltssteuerung für wiederholte Abschnitte

Die Inhaltssteuerung für wiederholte Abschnitte ermöglicht das Wiederholen des darin enthaltenen Inhalts. Mit Aspose.Words können die strukturierten Dokument-Tag-Knoten des wiederholten Abschnitts und der wiederholten Abschnittselementtypen erstellt werden, und zu diesem Zweck stellt der SdtType-Aufzählungstyp die **RepeatingSectionItem**-Eigenschaft bereit.

Das folgende Codebeispiel zeigt, wie Sie ein Inhaltssteuerelement für wiederholte Abschnitte an eine Tabelle binden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
