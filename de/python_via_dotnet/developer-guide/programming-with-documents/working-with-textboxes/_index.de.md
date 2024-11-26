---
title: Arbeiten mit TextBoxen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit TextBoxen
linktitle: Arbeiten mit TextBoxen
description: "Arbeiten Sie mit Textfeldern in einem Dokument mit Python."
type: docs
weight: 250
url: /de/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words wird die [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)-Klasse verwendet, um anzugeben, wie ein Text in einer Form angezeigt wird. Es stellt eine öffentliche Eigenschaft namens [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) bereit, um die übergeordnete Form für das Textfeld abzurufen, damit der Kunde verknüpfte [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Dateien aus verknüpften [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)-Dateien finden kann.

## Einen Link erstellen

Die [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)-Klasse stellt die [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/)-Methode bereit, um zu prüfen, ob das [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) mit der Ziel-Textbox verknüpft werden kann.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob das `TextBox` mit der Zieltextbox verknüpft werden kann:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Überprüfen Sie die TextBox-Sequenz

Es gibt verschiedene Möglichkeiten, Text in einer Form anzuzeigen. Der [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) kann der Kopf, die Mitte oder das Ende einer Sequenz sein.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob **TextBox** ein Head, Tail oder Middle der Sequenz ist:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Einen Link brechen

Mit der [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/)-Methode können Sie die Verknüpfung zum nächsten **TextBox** unterbrechen.

Das folgende Codebeispiel zeigt, wie man einen Link für ein **TextBox** unterbricht:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
