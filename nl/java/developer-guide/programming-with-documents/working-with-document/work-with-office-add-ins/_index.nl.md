---
title: Werken met Office Add-ins in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Office-invoegtoepassingen
linktitle: Werken met Office-invoegtoepassingen
description: "Aspose.Words voor Java biedt verschillende klassen voor het werken met Office Add-ins. U kunt Taakpaneel toevoegen via webextensie en de paneel- en uitbreidingseigenschappen aanpassen."
type: docs
weight: 50
url: /nl/java/work-with-office-add-ins/
---

Soms wilt u misschien toegang geven tot interface controls die code uitvoeren om documenten te wijzigen. Aspose.Words API levert de `WebExtensions` namespace, die verschillende klassen verleent om elementen en attributen uit te breiden met de XML-vocabulaire voor het vertegenwoordigen van Office Add-ins.

WebExtensions namespace kan voorwaardelijk worden onderverdeeld in:

* Objecten voor het werken met het taakpaneel
* Objecten voor het werken met webextensies

## Taakvensters gebruiken

De taakvensters zijn interfaceoppervlakken die aan de rechterkant van het venster worden weergegeven Microsoft Word. Taakpaneel stelt gebruikers in staat om toegang te krijgen tot interface controles die code kunnen uitvoeren om documenten te wijzigen.

Bijvoorbeeld, met behulp van Aspose.Words API, u kunt een taakpaneel toevoegen en zijn uiterlijk aanpassen.

## Webextensies gebruiken

Webextensies zijn tools die de mogelijkheden van Office applicaties uitbreiden en interactie hebben met Office document content. Webextensies bieden extra functionaliteit voor Office-klanten voor het verbeteren van de gebruikerservaring.

Aspose.Words biedt de mogelijkheid om webextensies van het taakpaneel type met behulp van de [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) en [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) klassen, en kunt u ook aanpassen van het paneel en uitbreiding eigenschappen.

Het volgende voorbeeld van code laat zien hoe taakvensters te maken en toe te voegen aan webextensie taakvensters met basiseigenschappen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Gebruik de [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) eigendom.

Het volgende voorbeeld van code laat zien hoe je een dergelijke lijst van add-ins krijgt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

