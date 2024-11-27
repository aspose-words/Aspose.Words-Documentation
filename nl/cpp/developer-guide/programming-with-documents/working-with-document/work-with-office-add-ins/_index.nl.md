---
title: Werken met Office-invoegtoepassingen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Office-invoegtoepassingen
linktitle: Werken met Office-invoegtoepassingen
description: "Aspose.Words voor C++ biedt verschillende klassen voor het werken met Office-invoegtoepassingen. U kunt taakvenster toevoegen via webextensie en de eigenschappen van het paneel en de extensie aanpassen."
type: docs
weight: 50
url: /nl/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Soms wilt u misschien toegang geven tot interfacecontroles die code uitvoeren om documenten te wijzigen. Aspose.Words API biedt de `WebExtensions` naamruimte, die verschillende klassen toestaat om elementen en attributen aan te passen die de XML woordenschat uitbreiden voor het weergeven van Office-invoegtoepassingen.

WebExtensions naamruimte kan voorwaardelijk worden verdeeld in:

* Objecten voor het werken met het taakvenster
* Objecten voor het werken met web extensies

## Taakvensters Gebruiken

De taakvensters zijn interfaceoppervlakken die aan de rechterkant van het venster in Microsoft Word worden weergegeven. Met taakvenster kunnen gebruikers toegang krijgen tot interfacecontroles die code kunnen uitvoeren om documenten te wijzigen.

Met behulp van Aspose.Words API kunt u bijvoorbeeld een invoegtoepassing voor het taakvenster toevoegen en de weergave ervan aanpassen.

## Web Extensies Gebruiken

Web-extensies zijn hulpmiddelen die de mogelijkheden van Office-toepassingen uitbreiden en interactie hebben met de inhoud van Office-documenten. Web-extensies bieden extra functionaliteit voor Office-clients voor het verbeteren van de gebruikerservaring.

Aspose.Words biedt de mogelijkheid om Webextensies van het taakvenster toe te voegen met behulp van de klassen [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) en [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), en stelt u ook in staat om de eigenschappen van het paneel en de extensie aan te passen.

Het volgende codevoorbeeld laat zien hoe taakvensters te maken en toe te voegen aan web extension taakvensters met basiseigenschappen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Gebruik de eigenschap [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/) om een lijst met invoegtoepassingen in het taakvenster weer te geven.

Het volgende codevoorbeeld laat zien hoe u een dergelijke lijst met invoegtoepassingen kunt krijgen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
