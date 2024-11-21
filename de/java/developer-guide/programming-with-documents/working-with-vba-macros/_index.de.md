---
title: Arbeiten mit VBA Macros in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit VBA Macros
linktitle: Arbeiten mit VBA Macros
description: "Arbeiten mit Dokument VBA-Projekten mit Java."
type: docs
weight: 410
url: /de/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic für Anwendungen (VBA) für Microsoft Word ist eine einfache, aber leistungsstarke Programmiersprache, die verwendet werden kann, um die Funktionalität zu erweitern. Aspose.Words API bietet drei Klassen, um Zugang zum VBA-Projektquellencode zu erhalten:

- Die [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) Klasse bietet Zugang zu den VBA-Projektinformationen
- Die [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) class gibt die Sammlung von VBA-Projektmodulen zurück
- Die [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) class bietet Zugang zum VBA-Projektmodul

## Ein VBA-Projekt erstellen

Aspose.Words API bietet [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) Eigentum, um VbaProject in das Dokument zu bekommen oder einzustellen.

Das folgende Codebeispiel zeigt, wie man ein VBA-Projekt und VBA-Modul zusammen mit Grundeigenschaften z. Name und Typ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Lesen Sie Macros

Aspose.Words bietet auch Benutzern die Möglichkeit, VBA-Makros zu lesen.

Das folgende Codebeispiel zeigt, wie VBA Macros aus dem Dokument gelesen werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Macros ändern

Verwendung Aspose.Words, Benutzer können VBA-Makros modifizieren.

Das folgende Codebeispiel zeigt, wie VBA Macros mit der [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Projekt

Mit Aspose.Words es ist auch möglich, VBA-Projekte zu klonen.

Das folgende Codebeispiel zeigt, wie man das VBA-Projekt mit dem [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) Eigentum, das eine Kopie des bestehenden Projekts erstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA Modul

Bei Bedarf können Sie auch VBA-Module klonen.

Das folgende Codebeispiel zeigt, wie man das VBA-Modul mit dem [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) Eigentum, das eine Kopie des bestehenden Projekts erstellt

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
