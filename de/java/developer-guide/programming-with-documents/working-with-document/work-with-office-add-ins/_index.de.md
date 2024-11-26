---
title: Arbeiten mit Office-Add-Ins in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Office-Add-Ins
linktitle: Arbeiten mit Office-Add-Ins
description: "Aspose.Words für Java bietet verschiedene Klassen für die Arbeit mit Office-Add-Ins. Sie können den Aufgabenbereich über die Weberweiterung hinzufügen und die Eigenschaften des Bereichs und der Erweiterung anpassen."
type: docs
weight: 50
url: /de/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Manchmal möchten Sie möglicherweise Zugriff auf Schnittstellensteuerelemente gewähren, die Code zum Ändern von Dokumenten ausführen. Aspose.Words API stellt den `WebExtensions`-Namespace bereit, der verschiedene Klassen zum Anpassen von Elementen und Attributen zuweist, die das XML-Vokabular für die Darstellung von Office-Add-Ins erweitern.

WebExtensions Namespace kann bedingt unterteilt werden in:

* Objekte zum Arbeiten mit dem Aufgabenbereich
* Objekte zum Arbeiten mit Weberweiterungen

## Verwenden von Aufgabenbereichen

Die Aufgabenbereiche sind Oberflächen, die auf der rechten Seite des Fensters in Microsoft Word angezeigt werden. Der Aufgabenbereich ermöglicht Benutzern den Zugriff auf Schnittstellensteuerelemente, mit denen Code zum Ändern von Dokumenten ausgeführt werden kann.

Mit Aspose.Words API können Sie beispielsweise ein Aufgabenbereichs-Add-In hinzufügen und dessen Darstellung anpassen.

## Verwenden von Weberweiterungen

Weberweiterungen sind Tools, die die Funktionen von Office-Anwendungen erweitern und mit Office-Dokumentinhalten interagieren. Weberweiterungen bieten Office-Clients zusätzliche Funktionen zur Verbesserung der Benutzererfahrung.

Aspose.Words bietet die Möglichkeit, Weberweiterungen vom Typ Aufgabenbereich mithilfe der Klassen [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) und [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) hinzuzufügen und die Eigenschaften des Bereichs und der Erweiterung anzupassen.

Das folgende Codebeispiel zeigt, wie Aufgabenbereiche erstellt und zu Aufgabenbereichen der Weberweiterung mit grundlegenden Eigenschaften hinzugefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Verwenden Sie die Eigenschaft [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes), um eine Liste der Add-Ins für den Aufgabenbereich anzuzeigen.

Das folgende Codebeispiel zeigt, wie Sie eine solche Liste von Add-Ins erhalten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

