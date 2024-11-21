---
title: Werken met Office Add-ins in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Office-invoegtoepassingen
linktitle: Werken met Office-invoegtoepassingen
description: "Aspose.Words voor .NET biedt verschillende klassen voor het werken met Office Add-ins gebruiken C#. U kunt Taakpaneel toevoegen via webextensie en de paneel- en uitbreidingseigenschappen aanpassen."
type: docs
weight: 50
url: /nl/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Soms wilt u misschien toegang geven tot interface controls die code uitvoeren om documenten te wijzigen. Aspose.Words API levert de `WebExtensions` namespace, die verschillende klassen verleent om elementen en attributen uit te breiden met de XML-vocabulaire voor het vertegenwoordigen van Office Add-ins.

WebExtensions namespace kan voorwaardelijk worden onderverdeeld in:

* Objecten voor het werken met het taakpaneel
* Objecten voor het werken met webextensies

## Taakvensters gebruiken

Het taakpaneel is interfaceoppervlakken die aan de rechterkant van het venster worden weergegeven in Microsoft Word. Taakpaneel stelt gebruikers in staat om toegang te krijgen tot interface controles die code kunnen uitvoeren om documenten te wijzigen.

Bijvoorbeeld, gebruik Aspose.Words API, U kunt een taakpaneel toevoegen en het uiterlijk aanpassen.

## Webextensies gebruiken

Webextensies zijn tools die de mogelijkheden van Office-toepassingen uitbreiden en interactie hebben met Office-documentinhoud. Webextensies bieden extra functionaliteit voor Office-klanten voor het verbeteren van de gebruikerservaring.

Aspose.Words biedt de mogelijkheid om webextensies van het taakpaneel type met behulp van de [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) en [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) klassen, en kunt u ook aanpassen van het paneel en uitbreiding eigenschappen.

Het volgende voorbeeld van code laat zien hoe taakvensters te maken en toe te voegen aan webextensie taakvensters met basiseigenschappen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Gebruik de [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) eigendom.

Het volgende voorbeeld van code laat zien hoe je een dergelijke lijst van add-ins krijgt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
