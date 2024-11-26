---
title: Arbeiten mit VBA Makros in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit VBA Makros
linktitle: Arbeiten mit VBA Makros
description: "Arbeiten mit Dokument VBA -Projekten mit Java."
type: docs
weight: 410
url: /de/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic für Anwendungen (VBA) für Microsoft Word ist eine einfache, aber leistungsstarke Programmiersprache, mit der die Funktionalität erweitert werden kann. Aspose.Words API bietet drei Klassen, um Zugriff auf den Quellcode des VBA -Projekts zu erhalten:

- Die [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/)-Klasse bietet Zugriff auf die VBA-Projektinformationen
- Die [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) -Klasse gibt die Sammlung von VBA -Projektmodulen zurück
- Die [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) -Klasse bietet Zugriff auf das VBA-Projektmodul

## Erstellen Sie ein VBA-Projekt

Aspose.Words API stellt die [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject)-Eigenschaft bereit, um VbaProject im Dokument abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie Sie ein VBA -Projekt und ein VBA -Modul zusammen mit grundlegenden Eigenschaften, z. B. Name und Typ, erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Makros lesen

Aspose.Words bietet Benutzern auch die Möglichkeit, VBA Makros zu lesen.

Das folgende Codebeispiel zeigt, wie VBA Makros aus dem Dokument gelesen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Makros ändern

Mit Aspose.Words können Benutzer VBA Makros ändern.

Das folgende Codebeispiel zeigt, wie VBA Makros mit der Eigenschaft [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) geändert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## VBA-Projekt klonen

Mit Aspose.Words ist es auch möglich, VBA Projekte zu klonen.

Das folgende Codebeispiel zeigt, wie das VBA-Projekt mithilfe der [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone)-Eigenschaft geklont wird, wodurch eine Kopie des vorhandenen Projekts erstellt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## VBA-Modul klonen

Sie können bei Bedarf auch VBA -Module klonen.

Das folgende Codebeispiel zeigt, wie das Modul VBA mithilfe der Eigenschaft [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) geklont wird, wodurch eine Kopie des vorhandenen Projekts erstellt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
