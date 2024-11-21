---
title: Arbeiten mit TextBoxes in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit TextBoxes
linktitle: Arbeiten mit TextBoxes
description: "Einführung in die Funktion verknüpfte Textfelder in Aspose.Words für C++."
type: docs
weight: 250
url: /de/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words wird die Klasse [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) verwendet, um anzugeben, wie Text in einer Form angezeigt wird. Es macht eine öffentliche Eigenschaft mit dem Namen **Parent** verfügbar, um die übergeordnete Form für das Textfeld abzurufen, damit der Kunde die verknüpfte [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) aus der zugehörigen **TextBox** finden kann.

## Erstellen Sie einen Link

Die Klasse **TextBox** stellt die Methode [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) bereit, um zu überprüfen, ob die **TextBox** mit dem Ziel **Textbox** verknüpft werden kann.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob die `TextBox` mit dem Zieltextfeld verknüpft werden kann:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## TextBox-Sequenz prüfen

Es gibt verschiedene Möglichkeiten, Text in einer Form anzuzeigen. Die [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) kann der Kopf, die Mitte oder das Ende einer Sequenz sein.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob **TextBox** ein Kopf, ein Schwanz oder eine Mitte der Sequenz ist:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Einen Link aufheben

Mit der [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) -Methode können Sie die Verknüpfung zur nächsten **TextBox** aufheben.

Das folgende Codebeispiel zeigt, wie eine Verknüpfung für eine **TextBox** unterbrochen wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
