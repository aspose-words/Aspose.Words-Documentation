---
title: Werken met Hyperlinks
second_title: Aspose.Words voor Python via .NET
articleTitle: Hyperlinks toevoegen of wijzigen
linktitle: Hyperlinks toevoegen of wijzigen
description: "Een hyperlink toevoegen, vervangen of wijzigen in een document met behulp van Python."
type: docs
weight: 50
url: /nl/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Een hyperlink in Microsoft Word documenten is de `HYPERLINK` veld. In Aspose.Words, hyperlinks worden geïmplementeerd via de [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) Klasse.

## Hyperlink invoegen

Gebruik de [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) methode om een hyperlink in het document in te voegen. Deze methode accepteert drie parameters:

1. Tekst van de te tonen link in het document
2. Koppelingsdoel (URL of een naam van een bladwijzer in het document)
3. Booleaanse parameter die moet worden true indien `URL` is een naam van een bladwijzer in een document

De **InsertHyperlink** methode voegt altijd apostrofes toe aan het begin en einde van de URL.

{{% alert color="primary" %}}

Merk op dat u lettertype formatteren voor de hyperlink display tekst expliciet met behulp van de `Font` eigendom.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een hyperlink in een document invoegt met behulp van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Hyperlinks vervangen of wijzigen

Hyperlink in Microsoft Word documenten is een veld. Een veld in een Word-document is een complexe structuur bestaande uit meerdere knooppunten die veldstart, veldcode, veldafscheider, veldresultaat en veldeinde omvatten. Velden kunnen worden genest, rijke inhoud bevatten en meerdere alinea's of secties in een document omvatten

Om hyperlinks te vervangen of te wijzigen, is het nodig om de hyperlinks in het document te vinden en ofwel hun tekst, URL's, of beide te vervangen.

Het volgende voorbeeld van code laat zien hoe je alle hyperlinks in Word document kunt vinden en verandert hun `URL` en vertoningsnaam:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
