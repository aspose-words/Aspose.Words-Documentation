---
title: Een document splitsen in Java
second_title: Aspose.Words voor Java
articleTitle: Een document splitsen
linktitle: Een document splitsen
description: "Aspose.Words voor Java biedt u een efficiënte manier om een document te splitsen in meerdere documenten door middel van rubrieken of secties, evenals pagina's of paginabereiken."
type: docs
weight: 90
url: /nl/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* of *split een document* is het proces van het breken van een groot document in een groter aantal kleinere bestanden. Er zijn verschillende redenen om een bestand te splitsen. Je hebt bijvoorbeeld alleen enkele pagina's nodig uit een specifiek document en niet de hele. Of om redenen van privacy, u wilt alleen delen sommige delen van een document met anderen. Met de splitsingsfunctie kunt u alleen de vereiste delen van het document krijgen en de nodige acties met ze doen, bijvoorbeeld om op te merken, op te slaan of te verzenden.

Aspose.Words biedt u een efficiënte manier om een document te splitsen in meerdere documenten per rubriek of sectie. U kunt ook een document splitsen per pagina of per paginabereik. Beide splitsingsopties worden in dit artikel beschreven.

Een document splitsen in kleinere bestanden met behulp van Aspose.Words, u deze stappen moet volgen:

1. Het document laden in elk ondersteund formaat.
1. Splits het document.
1. Sla de uitvoerdocumenten op.

Nadat u een document heeft gesplitst, kunt u alle uitvoerdocumenten openen die zullen beginnen met de vereiste pagina's, tekst, enz.

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online document splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Een document splitsen met verschillende criteria {#split-a-document-using-different-criteria}

Aspose.Words kunt u EPUB of HTML documenten te splitsen in hoofdstukken volgens verschillende criteria. In het proces worden de stijl en lay-out van het brondocument bewaard voor de uitvoerdocumenten.

U kunt criteria specificeren met behulp van de [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) Samenvatting. Dus je kunt een document verdelen in hoofdstukken met behulp van een van de volgende criteria of meerdere criteria combineren:

- rubriek paragraaf,
- sectiebreuk,
- kolombreuk;
- Page break.

Bij het opslaan van de uitvoer naar HTML, Aspose.Words sla elk hoofdstuk op als een apart HTML-bestand. Als gevolg hiervan zal het document worden opgesplitst in meerdere HTML-bestanden. Bij het opslaan van de uitvoer naar EPUB, Aspose.Words sla het resultaat op in één EPUB-bestand, ongeacht de `DocumentSplitCriteria` waarde die je gebruikte. Het gebruik van DocumentSplitCriteria voor EPUB-documenten heeft dus alleen gevolgen voor het uiterlijk van hun inhoud in lezerstoepassingen: inhoud zal worden onderverdeeld in hoofdstukken en het document zal niet langer continu verschijnen.

{{% alert color="primary" %}}

U kunt geen document splitsen met behulp van de [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) eigenschap bij het opslaan naar MHTML formaat.

{{% /alert %}}

In dit hoofdstuk worden slechts enkele van de mogelijke splitsingscriteria overwogen.

### Een document splitsen op kop {#split-a-document-by-headings}

Om een document in hoofdstukken per rubriek te splitsen, gebruik de **HeadingParagraph** waarde van de **DocumentSplitCriteria** eigendom.

Als u een document moet splitsen naar een specifiek niveau van de alinea's, zoals de rubrieken 1, 2 en 3, gebruik dan ook de [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) eigendom. De uitvoer zal worden gedeeld door alinea's die zijn geformatteerd met het gespecificeerde koersniveau.

Het volgende voorbeeld van code laat zien hoe je een document in kleinere delen kunt splitsen door middel van een rubriek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Let op: voor deze criteria, Aspose.Words ondersteunt alleen opslaan naar HTML-formaat bij splitsen.

Bij het opslaan naar EPUB wordt het document niet in meerdere bestanden gesplitst en zal er slechts één uitvoerbestand zijn.

### Een document splitsen op secties {#split-a-document-by-sections}

Aspose.Words kunt u ook sectie pauzes gebruiken om documenten te splitsen en opslaan in HTML. Gebruik hiervoor **SectionBreak** als de **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Er is een andere manier om het brondocument op te splitsen in meerdere uitvoerdocumenten, en u kunt elk uitvoerformaat kiezen ondersteund door Aspose.Words.

Het volgende voorbeeld van de code laat zien hoe een document in kleinere delen te splitsen door sectie pauzes (zonder gebruik te maken van de `DocumentSplitCriteria` eigenschap):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Splitsen op pagina's {#splitting-by-pages}

U kunt ook een documentpagina splitsen per pagina, per paginabereik, of beginnen met de opgegeven paginanummers. In dat geval [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) methode kan het werk doen.

Deze sectie beschrijft verschillende gebruiksgevallen van het delen van documenten door pagina's met behulp van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasse en de **ExtractPages** methode.

{{% alert color="primary" %}}

U kunt elke [Onderwijsdocumentformaten](/words/nl/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Door de vele nuances verschijnen terwijl het aantal pagina's, een volledige match met de Microsoft Word lay-out is nogal een ingewikkelde taak. Afhankelijk van de complexiteit van het document kunnen er daarom kleine verschillen zijn in de resulterende documentindeling van het oorspronkelijke document.

{{% /alert %}}

### Een documentpagina splitsen op pagina {#split-a-document-page-by-page}

Aspose.Words stelt u in staat om een pagina met meerdere pagina's per pagina te splitsen.

Het volgende voorbeeld van code laat zien hoe een document te verdelen en elke pagina op te slaan als een apart document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Een document splitsen op paginabereiken {#split-a-document-by-page-ranges}

Aspose.Words laat het splitsen van een document met meerdere pagina's toe per paginabereik. U kunt één bestand splitsen in meerdere bestanden met verschillende paginabereiken of gewoon één bereik selecteren en alleen dit deel van het brondocument opslaan. Merk op dat u het paginabereik kunt kiezen volgens het maximale en minimale paginanummer van een document.

Het volgende voorbeeld van code laat zien hoe je een document in kleinere delen kunt splitsen per paginabereik met specifieke start- en eindindexen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Terugbeloptie om een document op te slaan {#callback-option-for-saving-a-document}

U kunt de [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) eigenschap om te controleren hoe Aspose.Words slaat documenten op wanneer dit document wordt geëxporteerd naar HTML-formaat. Met deze eigenschap kunt u uitvoerbestanden hernoemen of zelfs omleiden naar aangepaste streams.

Houd er rekening mee dat deze callback niet handig is bij het opslaan naar EPUB omdat alle uitvoerdelen in één container moeten worden opgeslagen. Dus, stream redirection wordt niet ondersteund, en het effect van hernoemen is niet zichtbaar omdat bestanden worden hernoemd in de container.

## Het splitsen van document samenvoegen met een ander document {#merge-the-split-document-with-another-file}

Aspose.Words stelt u in staat om het uitvoer gesplitst document te mergen met een ander document om een nieuw document te vormen. Dit kan document merging genoemd worden.

Het volgende voorbeeld van code laat zien hoe een split document moet worden samengevoegd met een ander document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
