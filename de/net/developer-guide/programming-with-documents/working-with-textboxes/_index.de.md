---
title: Arbeiten mit TextBoxen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit TextBoxen
linktitle: Arbeiten mit TextBoxen
description: "Einführung in die Funktion verknüpfter Textfelder in Aspose.Words für .NET."
type: docs
weight: 250
url: /de/net/working-with-textboxes/
---

In Aspose.Words wird die [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/)-Klasse verwendet, um anzugeben, wie Text innerhalb einer Form angezeigt wird. Es stellt eine öffentliche Eigenschaft namens **Parent** bereit, um die übergeordnete Form für das Textfeld abzurufen, sodass der Kunde das verknüpfte [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) im zugehörigen **TextBox** finden kann.

## Einen Link erstellen

Die **TextBox**-Klasse stellt die [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/)-Methode bereit, um zu prüfen, ob das **TextBox** mit dem Ziel-**Textbox** verknüpft werden kann.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob das `TextBox` mit der Zieltextbox verknüpft werden kann:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Überprüfen Sie die TextBox-Sequenz

Es gibt verschiedene Möglichkeiten, Text in einer Form anzuzeigen. Der [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) kann der Kopf, die Mitte oder das Ende einer Sequenz sein.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob **TextBox** ein Head, Tail oder Middle der Sequenz ist:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Einen Link brechen

Mit der [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/)-Methode können Sie die Verknüpfung zum nächsten **TextBox** unterbrechen.

Das folgende Codebeispiel zeigt, wie man einen Link für ein **TextBox** unterbricht:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
