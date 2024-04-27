---
title: Werken met VBA Macros in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met VBA Macros
linktitle: Werken met VBA Macros
description: "Werken met document VBA projecten gebruiken Java."
type: docs
weight: 410
url: /nl/java/working-with-vba-macros/
---

Visual Basic voor aanvragen voor Microsoft Word is een eenvoudige maar krachtige programmeertaal die gebruikt kan worden om de functionaliteit uit te breiden. Aspose.Words API biedt drie klassen om toegang te krijgen tot de VBA project broncode:

- De [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) klasse biedt toegang tot de VBA projectinformatie
- De [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) klasse geeft de verzameling van VBA projectmodules terug
- De [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) klasse biedt toegang tot de VBA project module

## Een VBA-project aanmaken

Aspose.Words API levert de [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) eigenschap om VbaProject in het document te krijgen of in te stellen.

Het volgende voorbeeld van code laat zien hoe je een VBA project en VBA Module maakt samen met basiseigenschappen zoals. Naam en type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Macro's lezen

Aspose.Words biedt gebruikers ook de mogelijkheid om VBA macro's te lezen.

Het volgende voorbeeld van code laat zien hoe je VBA Macros uit het document leest:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Macro's wijzigen

Gebruik Aspose.Words, gebruikers kunnen VBA macro's wijzigen.

Het volgende voorbeeld van code laat zien hoe VBA Macros te wijzigen met behulp van de [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Kloon VBA Project

Met Aspose.Words Het is ook mogelijk om VBA-projecten te klonen.

Het volgende voorbeeld van code laat zien hoe je het VBA Project met behulp van de [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) eigenschap die een kopie van het bestaande project aanmaakt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Kloon VBA Module

U kunt ook VBA modules klonen indien nodig.

Het volgende voorbeeld van code toont hoe de VBA Module te klonen met behulp van de [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) eigenschap die een kopie maakt van het bestaande project

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
