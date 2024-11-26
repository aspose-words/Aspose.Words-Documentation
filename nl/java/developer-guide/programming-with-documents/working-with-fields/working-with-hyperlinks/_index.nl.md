---
title: Werken met Hyperlinks in Java
second_title: Aspose.Words voor Java
articleTitle: Hyperlinks toevoegen of wijzigen
linktitle: Hyperlinks toevoegen of wijzigen
description: "Hoe voeg ik een hyperlink toe aan uw document met behulp van Java."
type: docs
weight: 50
url: /nl/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Een hyperlink in Microsoft Word documenten is de `HYPERLINK` veld. In Aspose.Words, hyperlinks worden geïmplementeerd via de [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasse.

## Een hyperlink invoegen

Gebruik de [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) methode om een hyperlink in het document in te voegen. Deze methode accepteert drie parameters:

1. Tekst van de te tonen verwijzing in het document
2. Koppelingsdoel (URL of een naam van een bladwijzer in het document)
3. Booleaanse parameter die moet worden true indien `URL` is een naam van een bladwijzer in een document

De **InsertHyperlink** methode voegt altijd apostrofes toe aan het begin en einde van de URL

{{% alert color="primary" %}}

Merk op dat u lettertypeopmaak voor de tekst van het hyperlinkscherm expliciet moet opgeven met behulp van de `Font` eigendom.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een hyperlink in een document invoegt met behulp van [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Hyperlinks vervangen of wijzigen

Hyperlink in Microsoft Word documenten is een veld. Een veld in een Word-document, zoals we eerder zeiden, is een complexe structuur bestaande uit meerdere knooppunten die veldstart, veldcode, veldscheiding, veldresultaat en veldeinde omvatten. Velden kunnen worden genest, rijke inhoud bevatten en meerdere alinea's of secties in een document omvatten.

Om hyperlinks te vervangen of te wijzigen, is het nodig om de hyperlinks in het document te vinden en ofwel hun tekst, URL's of beide te vervangen.

Het volgende voorbeeld van code laat zien hoe u alle hyperlinks in Word document kunt vinden en verandert hun `URL` en vertoningsnaam:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
