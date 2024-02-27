---
title: Arbeiten Sie mit Office-Add-Ins in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten Sie mit Office-Add-Ins
linktitle: Arbeiten Sie mit Office-Add-Ins
description: "Aspose.Words für Python via .NET bietet verschiedene Klassen für die Arbeit mit Office-Add-Ins. Sie können den Aufgabenbereich über eine Weberweiterung hinzufügen und die Bereichs- und Erweiterungseigenschaften anpassen."
type: docs
weight: 50
url: /de/python-net/work-with-office-add-ins/
---

Manchmal möchten Sie möglicherweise Zugriff auf Schnittstellensteuerelemente gewähren, die Code zum Ändern von Dokumenten ausführen. Aspose.Words API stellt das [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/)-Modul bereit, das verschiedene Klassen zum Anpassen von Elementen und Attributen bereitstellt, die das XML-Vokabular zur Darstellung von Office-Add-Ins erweitern.

Der WebExtensions-Namespace kann bedingt unterteilt werden in:

* Objekte zum Arbeiten mit dem Aufgabenbereich
* Objekte für die Arbeit mit Weberweiterungen

## Verwenden von Aufgabenbereichen

Die Aufgabenbereiche sind Schnittstellenoberflächen, die in Microsoft Word auf der rechten Seite des Fensters angezeigt werden. Der Aufgabenbereich ermöglicht Benutzern den Zugriff auf Schnittstellensteuerelemente, mit denen Code zum Ändern von Dokumenten ausgeführt werden kann.

Mit Aspose.Words API können Sie beispielsweise ein Aufgabenbereich-Add-In hinzufügen und dessen Erscheinungsbild anpassen.

## Verwenden von Weberweiterungen

Weberweiterungen sind Tools, die die Funktionen von Office-Anwendungen erweitern und mit Office-Dokumentinhalten interagieren. Weberweiterungen bieten Office-Clients zusätzliche Funktionen zur Verbesserung der Benutzererfahrung.

Aspose.Words bietet die Möglichkeit, Weberweiterungen vom Typ "Aufgabenbereich" mithilfe der [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/)- und [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/)-Klassen hinzuzufügen und ermöglicht Ihnen außerdem die Anpassung der Bereichs- und Erweiterungseigenschaften.

Das folgende Codebeispiel zeigt, wie Sie Aufgabenbereiche erstellen und zu Aufgabenbereichen der Weberweiterung mit grundlegenden Eigenschaften hinzufügen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Um eine Liste der Aufgabenbereich-Add-Ins anzuzeigen, verwenden Sie die [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie man eine solche Liste von Add-Ins erhält:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
