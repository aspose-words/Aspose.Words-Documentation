---
title: Arbeiten mit VBA Makros in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit VBA Makros
linktitle: Arbeiten mit VBA Makros
description: "Arbeiten mit Dokument VBA -Projekten mit C++."
type: docs
weight: 410
url: /de/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic für Anwendungen (VBA) für Microsoft Word ist eine einfache, aber leistungsstarke Programmiersprache, mit der die Funktionalität erweitert werden kann. Aspose.Words API bietet drei Klassen, um Zugriff auf den Quellcode des VBA -Projekts zu erhalten:

- Die [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/)-Klasse bietet Zugriff auf VBA-Projektinformationen
- Die [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) -Klasse gibt die Sammlung von VBA -Projektmodulen zurück
- Die [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) -Klasse bietet Zugriff auf das VBA-Projektmodul

## Erstellen Sie ein VBA-Projekt

Aspose.Words API stellt die `Document.VbaProject` -Eigenschaft bereit, um VbaProject im Dokument abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie Sie ein VBA -Projekt und ein VBA -Modul zusammen mit grundlegenden Eigenschaften, z. B. Name und Typ, erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Makros lesen

Aspose.Words bietet Benutzern auch die Möglichkeit, VBA Makros zu lesen.

Das folgende Codebeispiel zeigt, wie VBA Makros aus dem Dokument gelesen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Makros schreiben oder ändern

Mit Aspose.Words können Benutzer VBA Makros ändern.

Das folgende Codebeispiel zeigt, wie VBA Makros mit der Eigenschaft [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/) geändert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## VBA-Projekt klonen

Mit Aspose.Words ist es auch möglich, VBA Projekte zu klonen.

Das folgende Codebeispiel zeigt, wie Sie das VBA -Projekt mithilfe der [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) -Eigenschaft klonen, die eine Kopie des vorhandenen Projekts erstellt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## VBA-Modul klonen

Sie können bei Bedarf auch VBA -Module klonen.

Das folgende Codebeispiel zeigt, wie Sie das Modul VBA mithilfe der Eigenschaft [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) klonen, mit der eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
