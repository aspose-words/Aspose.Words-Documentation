---
title: Arbeiten mit Office Add-Ins Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Office Add-ins
linktitle: Arbeiten mit Office Add-ins
description: "Aspose.Words für Java bietet verschiedene Klassen für die Zusammenarbeit mit Office Add-ins. Sie können Task Pane über Web-Erweiterung hinzufügen und den Bereich und die Erweiterung Eigenschaften anpassen."
type: docs
weight: 50
url: /de/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Manchmal möchten Sie möglicherweise Zugriff auf Schnittstellenkontrollen, die Code ausführen, um Dokumente zu ändern. Aspose.Words API bietet `WebExtensions` namespace, der verschiedene Klassen zur Anpassung von Elementen und Attributen gewährt, die das XML-Vokabular für die Darstellung von Office Add-Ins erweitern.

WebExtensions Namespace kann bedingt in:

* Objekte zur Arbeit mit dem Aufgabenbereich
* Objekte für die Arbeit mit Web-Erweiterungen

## Verwendung von Aufgabenfeldern

Die Aufgabenfelder sind Schnittstellenflächen, die auf der rechten Seite des Fensters in Microsoft Word. Task-Bereich ermöglicht Benutzern Zugriff auf Schnittstellensteuerungen, die Code ausführen können, um Dokumente zu ändern.

Zum Beispiel mit Aspose.Words API, Sie können ein Task-Bereich hinzufügen und sein Aussehen anpassen.

## Verwendung von Weberweiterungen

Web Extensions sind Tools, die die Funktionen von Office-Anwendungen erweitern und mit den Inhalten von Office-Dokumenten interagieren. Web Extensions bieten zusätzliche Funktionalität für Office-Clients zur Verbesserung der Benutzererfahrung.

Aspose.Words bietet die Möglichkeit, Web Extensions des Task Pane-Typs mit der [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) und [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) Klassen, und auch können Sie den Bereich und Erweiterung Eigenschaften anpassen.

Das folgende Codebeispiel zeigt, wie Aufgabenfelder erstellt werden und Web-Erweiterung Aufgabenfelder mit Grundeigenschaften hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Um eine Liste der Task-Bereich Add-Ins zu sehen, verwenden Sie die [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) Eigentum.

Das folgende Codebeispiel zeigt, wie man eine solche Liste von Add-Ins erhält:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

