---
title: Arbeiten mit VBA-Makros in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit VBA-Makros
linktitle: Arbeiten mit VBA-Makros
description: "Erstellen, lesen, schreiben, klonen und verwalten Sie VBA-Makros in einem Dokument mit Python."
type: docs
weight: 410
url: /de/python-net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) für Microsoft Word ist eine einfache, aber leistungsstarke Programmiersprache, mit der die Funktionalität erweitert werden kann. Aspose.Words API bietet drei Klassen, um Zugriff auf den Quellcode des VBA-Projekts zu erhalten:

– Die [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/)-Klasse bietet Zugriff auf VBA-Projektinformationen
– Die [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/)-Klasse gibt die Sammlung von VBA-Projektmodulen zurück
- Die [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/)-Klasse bietet Zugriff auf das VBA-Projektmodul
– Die [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/)-Enumeration definiert die Typen eines Modells in einem VBA-Projekt. Das Modul kann ein prozedurales Modul, ein Dokumentmodul, ein Klassenmodul oder ein Designermodul sein

## Erstellen Sie ein VBA-Projekt

Aspose.Words API stellt die [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/)-Eigenschaft bereit, um [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) im Dokument abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie ein VBA-Projekt und ein VBA-Modul zusammen mit grundlegenden Eigenschaften, z. B. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) und [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/), erstellt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Lesen Sie Makros

Aspose.Words bietet Benutzern außerdem die Möglichkeit, VBA-Makros zu lesen.

Das folgende Codebeispiel zeigt, wie VBA-Makros aus dem Dokument gelesen werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Schreiben oder ändern Sie Makros

Mit Aspose.Words können Benutzer VBA-Makros ändern.

Das folgende Codebeispiel zeigt, wie Sie VBA-Makros mithilfe der [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/)-Eigenschaft ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## VBA-Projekt klonen

Mit Aspose.Words ist es auch möglich, VBA-Projekte zu klonen.

Das folgende Codebeispiel zeigt, wie Sie das VBA-Projekt mithilfe der [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/)-Eigenschaft klonen, wodurch eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## VBA-Modul klonen

Bei Bedarf können Sie auch VBA-Module klonen.

Das folgende Codebeispiel zeigt, wie Sie das VBA-Modul mithilfe der [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/)-Eigenschaft klonen, wodurch eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Arbeiten Sie mit den VBA-Projektreferenzen

Aspose.Words API stellt eine [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/)-Klasse für die Arbeit mit VBA-Projektreferenzen bereit, die eine Sammlung von VBA-Projektreferenzen darstellen.

Das folgende Codebeispiel zeigt, wie einige Referenzen aus der Referenzsammlung eines VBA-Projekts entfernt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}