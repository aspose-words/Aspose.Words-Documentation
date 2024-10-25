---
title: Arbeiten mit Office-Add-Ins in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Office-Add-Ins
linktitle: Arbeiten mit Office-Add-Ins
description: "Aspose.Words für C++ bietet verschiedene Klassen für die Arbeit mit Office-Add-Ins. Sie können den Aufgabenbereich über die Weberweiterung hinzufügen und die Eigenschaften des Bereichs und der Erweiterung anpassen."
type: docs
weight: 50
url: /de/cpp/work-with-office-add-ins/
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

Aspose.Words bietet die Möglichkeit, Weberweiterungen vom Typ Aufgabenbereich mithilfe der Klassen [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) und [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/) hinzuzufügen und die Eigenschaften des Bereichs und der Erweiterung anzupassen.

Das folgende Codebeispiel zeigt, wie Aufgabenbereiche erstellt und zu Aufgabenbereichen der Weberweiterung mit grundlegenden Eigenschaften hinzugefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Verwenden Sie die Eigenschaft [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/), um eine Liste der Add-Ins für den Aufgabenbereich anzuzeigen.

Das folgende Codebeispiel zeigt, wie Sie eine solche Liste von Add-Ins erhalten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
