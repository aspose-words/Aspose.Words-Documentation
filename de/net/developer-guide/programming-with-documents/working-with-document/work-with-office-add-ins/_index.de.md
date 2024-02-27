---
title: Arbeiten Sie mit Office-Add-Ins in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit Office-Add-Ins
linktitle: Arbeiten Sie mit Office-Add-Ins
description: "Aspose.Words für .NET bietet verschiedene Klassen für die Arbeit mit Office-Add-Ins mithilfe von C#. Sie können den Aufgabenbereich über eine Weberweiterung hinzufügen und die Bereichs- und Erweiterungseigenschaften anpassen."
type: docs
weight: 50
url: /de/net/work-with-office-add-ins/
---

Manchmal möchten Sie möglicherweise Zugriff auf Schnittstellensteuerelemente gewähren, die Code zum Ändern von Dokumenten ausführen. Aspose.Words API stellt den `WebExtensions`-Namespace bereit, der verschiedene Klassen zum Anpassen von Elementen und Attributen gewährt, die das XML-Vokabular zur Darstellung von Office-Add-Ins erweitern.

Der WebExtensions-Namespace kann bedingt unterteilt werden in:

* Objekte zum Arbeiten mit dem Aufgabenbereich
* Objekte für die Arbeit mit Weberweiterungen

## Verwenden von Aufgabenbereichen

Die Aufgabenbereiche sind Schnittstellenoberflächen, die in Microsoft Word auf der rechten Seite des Fensters angezeigt werden. Der Aufgabenbereich ermöglicht Benutzern den Zugriff auf Schnittstellensteuerelemente, mit denen Code zum Ändern von Dokumenten ausgeführt werden kann.

Mit Aspose.Words API können Sie beispielsweise ein Aufgabenbereich-Add-In hinzufügen und dessen Erscheinungsbild anpassen.

## Verwenden von Weberweiterungen

Weberweiterungen sind Tools, die die Funktionen von Office-Anwendungen erweitern und mit Office-Dokumentinhalten interagieren. Weberweiterungen bieten Office-Clients zusätzliche Funktionen zur Verbesserung der Benutzererfahrung.

Aspose.Words bietet die Möglichkeit, Weberweiterungen vom Typ "Aufgabenbereich" mithilfe der [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/)- und [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/)-Klassen hinzuzufügen und ermöglicht Ihnen außerdem die Anpassung der Bereichs- und Erweiterungseigenschaften.

Das folgende Codebeispiel zeigt, wie Sie Aufgabenbereiche erstellen und zu Aufgabenbereichen der Weberweiterung mit grundlegenden Eigenschaften hinzufügen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Um eine Liste der Aufgabenbereich-Add-Ins anzuzeigen, verwenden Sie die [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie man eine solche Liste von Add-Ins erhält:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
