---
title: Werken met TextBoxes in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met TextBoxes
linktitle: Werken met TextBoxes
description: "Inleiding tot gekoppelde tekstvakken functie in Aspose.Words voor C++."
type: docs
weight: 250
url: /nl/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words wordt de klasse [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) gebruikt om aan te geven hoe tekst in een vorm wordt weergegeven. Het toont een openbare eigenschap met de naam **Parent** om de bovenliggende vorm voor het tekstvak te krijgen, zodat de klant de gekoppelde [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) van de gekoppelde **TextBox** kan vinden.

## Maak Een Link

De **TextBox** klasse biedt [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) methode om te controleren of de **TextBox** gekoppeld kan worden aan het doel **Textbox**.

Het volgende codevoorbeeld toont hoe te controleren of de `TextBox` kan worden gekoppeld aan het doel tekstvak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## TextBox Volgorde Controleren

Er zijn verschillende manieren om tekst in een vorm weer te geven. De [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) kan het hoofd, het midden of de staart van een reeks zijn.

Het volgende codevoorbeeld laat zien hoe u kunt controleren of **TextBox** een kop, staart of midden van de reeks is:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Een Link verbreken

Met de methode [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) kunt u de koppeling naar de volgende **TextBox** verbreken.

Het volgende codevoorbeeld laat zien hoe u een koppeling voor een **TextBox**kunt verbreken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
