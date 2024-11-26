---
title: Arbeiten mit VBA-Makros in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit VBA-Makros
linktitle: Arbeiten mit VBA-Makros
description: "Arbeiten mit Dokument-VBA-Projekten unter Verwendung von C#."
type: docs
weight: 410
url: /de/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) für Microsoft Word ist eine einfache, aber leistungsstarke Programmiersprache, mit der die Funktionalität erweitert werden kann. Aspose.Words API bietet drei Klassen, um Zugriff auf den Quellcode des VBA-Projekts zu erhalten:

– Die [VBAProject](https://reference.aspose.com/words/de/net/aspose.words.vba/vbaproject/)-Klasse bietet Zugriff auf VBA-Projektinformationen
– Die [VBAModuleCollection](https://reference.aspose.com/words/de/net/aspose.words.vba/vbamodulecollection/)-Klasse gibt die Sammlung von VBA-Projektmodulen zurück
- Die [VbaModule](https://reference.aspose.com/words/de/net/aspose.words.vba/vbamodule/)-Klasse bietet Zugriff auf das VBA-Projektmodul
– Die [VbaModuleType](https://reference.aspose.com/words/de/net/aspose.words.vba/vbamoduletype/)-Enumeration definiert die Typen eines Modells in einem VBA-Projekt. Das Modul kann ein prozedurales Modul, ein Dokumentmodul, ein Klassenmodul oder ein Designermodul sein

## Erstellen Sie ein VBA-Projekt

Aspose.Words API stellt die [VbaProject](https://reference.aspose.com/words/de/net/aspose.words/document/vbaproject/)-Eigenschaft bereit, um VbaProject im Dokument abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie ein VBA-Projekt und ein VBA-Modul zusammen mit grundlegenden Eigenschaften, z. B. Name und Typ, erstellt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Lesen Sie Makros

Aspose.Words bietet Benutzern außerdem die Möglichkeit, VBA-Makros zu lesen.

Das folgende Codebeispiel zeigt, wie VBA-Makros aus dem Dokument gelesen werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Schreiben oder ändern Sie Makros

Mit Aspose.Words können Benutzer VBA-Makros ändern.

Das folgende Codebeispiel zeigt, wie Sie VBA-Makros mithilfe der [SourceCode](https://reference.aspose.com/words/de/net/aspose.words.vba/vbamodule/sourcecode/)-Eigenschaft ändern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## VBA-Projekt klonen

Mit Aspose.Words ist es auch möglich, VBA-Projekte zu klonen.

Das folgende Codebeispiel zeigt, wie Sie das VBA-Projekt mithilfe der [Clone](https://reference.aspose.com/words/de/net/aspose.words.vba/vbaproject/clone/)-Eigenschaft klonen, wodurch eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## VBA-Modul klonen

Bei Bedarf können Sie auch VBA-Module klonen.

Das folgende Codebeispiel zeigt, wie Sie das VBA-Modul mithilfe der [Clone](https://reference.aspose.com/words/de/net/aspose.words.vba/vbamodule/clone/)-Eigenschaft klonen, wodurch eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Arbeiten Sie mit den VBA-Projektreferenzen

Aspose.Words API stellt die [VbaReferenceCollection](https://reference.aspose.com/words/de/net/aspose.words.vba/vbareferencecollection/)-Klasse für die Arbeit mit VBA-Projektreferenzen bereit, die eine Sammlung von VBA-Projektreferenzen darstellen.

Das folgende Codebeispiel zeigt, wie einige Referenzen aus der Referenzsammlung eines VBA-Projekts entfernt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
