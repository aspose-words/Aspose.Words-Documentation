---
title: Werken met VBA Macros in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met VBA Macros
linktitle: Werken met VBA Macros
description: "Werken met VBA-projecten van document C#."
type: docs
weight: 410
url: /nl/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic voor aanvragen (VBA) voor Microsoft Word is een eenvoudige maar krachtige programmeertaal die gebruikt kan worden om de functionaliteit uit te breiden. Aspose.Words API biedt drie klassen om toegang te krijgen tot de VBA project broncode:

- De [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) klasse biedt toegang tot VBA projectinformatie
- De [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) klasse geeft de verzameling van VBA projectmodules terug
- De [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) klasse biedt toegang tot de VBA project module
- De [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) De opsomming definieert de types van een model in een VBA-project. De module kan een proceduremodule, documentmodule, klassemodule of ontwerpermodule zijn

## Een VBA-project aanmaken

Aspose.Words API levert de [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) eigenschap om VbaProject in het document te krijgen of in te stellen.

Het volgende voorbeeld van code laat zien hoe je een VBA project en VBA Module maakt samen met basiseigenschappen, bijvoorbeeld. Naam en type:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Macro's lezen

Aspose.Words biedt gebruikers ook de mogelijkheid om VBA macro's te lezen.

Het volgende voorbeeld van code laat zien hoe je VBA Macros uit het document leest:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Macro's schrijven of wijzigen

Gebruik Aspose.Words, gebruikers kunnen VBA macro's wijzigen.

Het volgende voorbeeld van code laat zien hoe VBA Macros te wijzigen met behulp van de [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) eigenschap:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Kloon VBA Project

Met Aspose.Words Het is ook mogelijk om VBA-projecten te klonen.

Het volgende voorbeeld van code laat zien hoe het VBA Project te klonen met behulp van de [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) eigenschap die een kopie maakt van het bestaande project:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Kloon VBA Module

U kunt ook VBA modules klonen indien nodig.

Het volgende voorbeeld van code laat zien hoe de VBA Module te klonen met behulp van de [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) eigenschap die een kopie maakt van het bestaande project:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Werken met de VBA Project Referenties

Aspose.Words API levert de [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) klasse om te werken met VBA Project Referenties die een verzameling VBA projectreferenties vertegenwoordigen.

Het volgende voorbeeld van code laat zien hoe een aantal referenties uit de verzameling van referenties uit een VBA-project te verwijderen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
