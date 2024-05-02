---
title: Werk met documenteigenschappen in Java
second_title: Aspose.Words voor Java
articleTitle: Met documenteigenschappen werken
linktitle: Met documenteigenschappen werken
description: "Aspose.Words voor Java laat het opslaan van nuttige informatie over uw document, zoals API en versienummer of goedgekeurd Date, in ingebouwde of aangepaste document eigenschappen."
type: docs
weight: 10
url: /nl/java/work-with-document-properties/
---

Documenteigenschappen kunnen nuttige informatie over uw document opslaan. Deze eigenschappen kunnen in twee groepen worden onderverdeeld:

* Systeem of ingebouwde die waarden bevatten zoals document titel, auteur naam, document statistieken, en anderen.
* Gebruiker-gedefinieerd of aangepast, verstrekt als naam-waarde paren waar de gebruiker zowel de naam als de waarde kan definiëren.

Het is nuttig om te weten dat informatie over API en versienummer wordt direct naar uitvoerdocumenten geschreven. Bijvoorbeeld, bij het omzetten van een document naar PDF, Aspose.Words vult het veld "Toepassing" in met "Aspose.Words", en het "PDF Producer" veld met "Aspose.Words voor Java YY.M.N," waar *YY.M.N* is de versie van Aspose.Words gebruikt voor conversie. Voor meer details, zie [Generator van producntnaam opgenomen in uitvoerdocumenten](/words/nl/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Merk op dat u **kan niet sturen** Aspose.Words deze informatie uit uitvoerdocumenten te wijzigen of te verwijderen.

{{% /alert %}}

## Toegangs-documenteigenschappen

Toegang tot document eigenschappen in Aspose.Words gebruik:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) om ingebouwde eigenschappen te verkrijgen.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) om aangepaste eigenschappen te verkrijgen.

**BuiltInDocumentProperties** en **CustomDocumentProperties** zijn collecties van [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) objecten. Deze objecten kunnen worden verkregen via de indexer eigenschap door naam of index.

**BuiltInDocumentProperties** biedt bovendien toegang tot documenteneigenschappen door middel van een reeks ingevoerde eigenschappen die terugkeerwaarden van het juiste type. **CustomDocumentProperties** stelt u in staat om documenteigenschappen toe te voegen of te verwijderen uit een document.

De [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) klasse kunt u de naam, waarde en het type van een document-eigenschap te krijgen. [Value]https://reference.aspone.com/words/java/com.aspone.words/documentproperty#Value) geeft een object terug, maar er is een blik methode waarin u de waarde van de eigenschap kunt omzetten naar een specifiek type. Nadat u krijgt om te weten welk type de woning is, kunt u gebruik maken van een van de {0} methoden, zoals {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) en **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), de waarde van het passende type te verkrijgen.

Het volgende voorbeeld van code laat zien hoe u alle ingebouwde en aangepaste eigenschappen in een document opsomt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, u kunt toegang krijgen tot documenten met behulp van het menu "Bestand" → Eigenschappen.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Documenteigenschappen toevoegen of verwijderen

U kunt geen ingebouwde documenteigenschappen toevoegen of verwijderen met behulp van Aspose.Words. U kunt alleen hun waarden wijzigen of bijwerken.

Aangepaste documenteigenschappen toevoegen met Aspose.Words, gebruik [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) methode, waarbij de nieuwe eigendomsnaam en de waarde van het passende type worden vermeld. De methode geeft de nieuw aangemaakte **DocumentProperty** object.

Om aangepaste eigenschappen te verwijderen, gebruik de [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) methode, het doorgeven van de eigenschap naam te verwijderen, of de [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) methode om de eigenschap per index te verwijderen. U kunt ook alle eigenschappen verwijderen met behulp van de [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) methode.

De volgende codevoorbeeld controleert of een aangepaste eigenschap met een bepaalde naam bestaat in een document en voegt een paar meer aangepaste document eigenschappen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe een aangepaste documenteigenschap te verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Ingebouwde documenteigenschappen bijwerken

Aspose.Words niet automatisch document eigenschappen bijwerken, als Microsoft Word doet met een aantal eigenschappen, maar biedt een methode om een aantal statistische ingebouwde document eigenschappen bij te werken. Bel de [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) methode om de volgende eigenschappen opnieuw te berekenen en bij te werken:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Een nieuwe aangepaste eigenschap aanmaken gekoppeld aan inhoud

Aspose.Words levert de [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) methode om een nieuwe aangepaste documenteigenschap gekoppeld aan inhoud aan te maken. Deze eigenschap geeft het nieuw aangemaakte object terug of nul als de [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) is ongeldig.

Het volgende voorbeeld van code laat zien hoe u een link naar een aangepaste eigenschap kunt configureren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Documentvariabelen ophalen

U kunt een verzameling van documentvariabelen met behulp van de [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) eigendom. Variabele namen en waarden zijn strings.

Het volgende voorbeeld van code laat zien hoe je documentvariabelen opsomt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Persoonlijke gegevens uit document verwijderen

Als u een Word-document wilt delen met andere mensen, kunt u persoonlijke informatie zoals auteur naam en bedrijf verwijderen. Gebruik hiervoor de [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) eigenschap om de vlag aan te geven Microsoft Word verwijdert alle gebruikersinformatie uit opmerkingen, herzieningen en document eigenschappen bij het opslaan van het document.

{{% alert color="primary" %}}

Het instellen van deze optie verwijdert geen persoonlijke informatie tijdens het verwerken van een document in Aspose.Words en heeft alleen invloed op de Microsoft Word Gedrag.

{{% /alert %}}
