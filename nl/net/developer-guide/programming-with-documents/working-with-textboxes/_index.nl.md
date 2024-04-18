---
title: Werken met tekstvakken in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met tekstvakken
linktitle: Werken met tekstvakken
description: "Inleiding tot gekoppelde tekstvakken in Aspose.Words voor .NET."
type: docs
weight: 250
url: /nl/net/working-with-textboxes/
---

In Aspose.Words, de [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) klasse wordt gebruikt om aan te geven hoe tekst in een vorm wordt weergegeven. Het onthult een openbaar eigendom genaamd **Parent** om de oudervorm voor het tekstvak te krijgen zodat de klant de gekoppelde [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) van de geassocieerde **TextBox**.

## Een koppeling maken

De **TextBox** klasse levert [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) methode om te controleren of de **TextBox** kan worden gekoppeld aan het doel **Textbox**.

Het volgende voorbeeld van de code laat zien hoe te controleren of de `TextBox` kan worden gekoppeld aan de doeltekstbox:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Tekst controleren Doosvolgorde

Er zijn verschillende manieren om tekst weer te geven in een vorm. De [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) kan het hoofd, midden of staart van een reeks zijn.

Het volgende voorbeeld van code laat zien hoe te controleren of **TextBox** is een hoofd, staart of midden van de reeks:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Een koppeling verbreken

Gebruik van de [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) methode kunt u de link naar de volgende **TextBox**.

Het volgende voorbeeld van code laat zien hoe een link voor een **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
