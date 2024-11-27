---
title: Werken met Hyperlinks in C++
second_title: Aspose.Words voor C++
articleTitle: Hyperlinks toevoegen of wijzigen
linktitle: Hyperlinks toevoegen of wijzigen
description: "Een hyperlink toevoegen aan uw document met Aspose.Words voor C++."
type: docs
weight: 180
url: /nl/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Een hyperlink in Microsoft Word documenten is het `HYPERLINK` veld. In Aspose.Words worden hyperlinks geïmplementeerd via de [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) - Klasse.

## Een Hyperlink invoegen

Gebruik de methode [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) om een hyperlink in het document in te voegen. Deze methode accepteert drie parameters:

1. Tekst van de link die in het document moet worden weergegeven
2. Bestemming koppelen (URL of een naam van een bladwijzer in het document)
3. Booleaanse parameter die waar zou moeten zijn als `URL` een naam is van een bladwijzer in het document

De **InsertHyperlink** methode voegt altijd apostrofen toe aan het begin en het einde van de URL.

{{% alert color="primary" %}}

Merk op dat u de lettertypeopmaak voor de hyperlink-weergavetekst expliciet moet opgeven met behulp van de eigenschap `Font`.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een hyperlink invoegt in een document met [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Hyperlinks vervangen of wijzigen

Hyperlink in Microsoft Word documenten is een veld. Een veld in een Word - document is een complexe structuur die bestaat uit meerdere knooppunten, waaronder veldstart, veldcode, veldscheiding, veldresultaat en veldeinde. Velden kunnen worden genest, rijke inhoud bevatten en meerdere alinea ' s of secties in een document omvatten.

De klasse `FieldHyperlink` implementeert het veld `HYPERLINK`.

Het volgende codevoorbeeld toont hoe u alle hyperlinks in Word document kunt vinden en hun `URL` en weergavenaam kunt wijzigen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
