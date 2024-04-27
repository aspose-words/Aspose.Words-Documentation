---
title: Werken met gekoppelde tekstvakken in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met gekoppelde tekstvakken
linktitle: Werken met gekoppelde tekstvakken
description: "Inleiding tot gekoppelde tekstvakken in Aspose.Words voor Java."
type: docs
weight: 250
url: /nl/java/working-with-linked-textboxes/
---

In Aspose.Words, de [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) klasse wordt gebruikt om aan te geven hoe een tekst in een vorm wordt weergegeven. Het biedt een publieke eigenschap genoemd als ouder om de ouder vorm voor het tekstvak om de klant om te vinden gekoppeld [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) van verbonden **TextBox**.

## Een koppeling maken

De **TextBox** klasse geeft de [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) methode om te controleren of de **TextBox** kan worden gekoppeld aan het doel **Textbox**.

Het volgende voorbeeld van code laat zien hoe te controleren of de `TextBox` kan worden gekoppeld aan de doeltekstbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Tekst controleren Doosvolgorde

Er zijn verschillende manieren om tekst in een vorm weer te geven. De [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) kan het hoofd, midden of staart van een reeks zijn.

Het volgende voorbeeld van code laat zien hoe te controleren of **TextBox** is een hoofd, staart of midden van de reeks:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Verbreek een koppeling

Gebruik van de [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) methode kunt u de link naar de volgende **TextBox**.

Het volgende voorbeeld van code laat zien hoe een link voor een **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
