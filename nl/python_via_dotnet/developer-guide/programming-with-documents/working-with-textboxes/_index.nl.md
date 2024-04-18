---
title: Werken met tekstvakken in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met tekstvakken
linktitle: Werken met tekstvakken
description: "Werk met tekstvakken in een document met Python."
type: docs
weight: 250
url: /nl/python-net/working-with-textboxes/
---

In Aspose.Words, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) klasse wordt gebruikt om aan te geven hoe een tekst in een vorm wordt weergegeven. Het biedt een openbare eigendom genoemd als [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) om de oudervorm van het tekstvak te krijgen zodat de klant de koppeling kan vinden [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) van verbonden [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Een koppeling maken

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) klasse levert [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) methode om te controleren of de [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) kan worden gekoppeld aan de doeltekstvak.

Het volgende voorbeeld van de code laat zien hoe te controleren of de `TextBox` kan worden gekoppeld aan de doeltekstbox:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Tekst controleren Doosvolgorde

Er zijn verschillende manieren om tekst weer te geven in een vorm. De [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) kan het hoofd, midden of staart van een reeks zijn.

Het volgende voorbeeld van code laat zien hoe te controleren of **TextBox** is een hoofd, staart of midden van de reeks:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Een koppeling verbreken

Gebruik van de [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) methode kunt u de link naar de volgende **TextBox**.

Het volgende voorbeeld van code laat zien hoe een link voor een **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
