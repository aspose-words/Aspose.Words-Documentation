---
title: Een Document splitsen in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document splitsen
linktitle: Een Document splitsen
description: "Splits een document in meerdere bestanden met behulp van C++. Gebruik de functie splitsen om een document effectief te splitsen op koppen of secties, maar ook op pagina ' s of paginabereiken."
type: docs
weight: 90
url: /nl/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* of *split a document* is het proces waarbij een groot document wordt opgesplitst in een groter aantal kleinere bestanden. Er zijn verschillende redenen om een bestand te splitsen. U hebt bijvoorbeeld slechts enkele pagina ' s van een specifiek document nodig en niet het hele document. Of om privacyredenen wilt u slechts enkele delen van een document met anderen delen. Met de splitsingsfunctie kunt u alleen de vereiste delen van het document ophalen en de nodige acties uitvoeren, bijvoorbeeld om op te merken, op te slaan of te verzenden.

Aspose.Words biedt u een efficiënte manier om een document op te splitsen in meerdere documenten per kop of sectie. U kunt een document ook splitsen op pagina ' s of op paginabereiken. Beide splitsingsopties worden in dit artikel beschreven.

Als u een document wilt splitsen in kleinere bestanden met Aspose.Words, moet u deze stappen volgen:

1. Laad het document in een ondersteunde indeling.
1. Deel het document.
1. Sla de uitvoerdocumenten op.

Nadat u een document hebt gesplitst, kunt u alle uitvoerdocumenten openen die beginnen met de vereiste pagina ' s, tekst, enz.

{{% alert color="primary" %}}

**Online proberen**

U kunt deze functionaliteit proberen met onze [Gratis online document splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Een Document splitsen met verschillende Criteria {#split-a-document-using-different-criteria}

Met Aspose.Words kunt u EPUB of HTML documenten opsplitsen in hoofdstukken volgens verschillende criteria. In het proces worden de stijl en lay-out van het brondocument behouden voor de uitvoerdocumenten.

U kunt criteria opgeven met behulp van de [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) - opsomming. U kunt een document dus in hoofdstukken verdelen met behulp van een van de volgende criteria of meer dan één criterium combineren:

- paragraaf kop,
- sectie-einde,
- kolomonderbreking,
- pagina-einde.

Bij het opslaan van de uitvoer naar HTML, slaat Aspose.Words elk afzonderlijk hoofdstuk op als een afzonderlijk HTML bestand. Als gevolg hiervan wordt het document opgesplitst in meerdere HTML bestanden. Bij het opslaan van de uitvoer naar EPUB, slaat Aspose.Words het resultaat op in een enkel EPUB bestand, ongeacht de `DocumentSplitCriteria` waarde die u hebt gebruikt. Het gebruik van DocumentSplitCriteria voor EPUB documenten heeft dus alleen invloed op de weergave van hun inhoud in lezersapplicaties: de inhoud wordt verdeeld in hoofdstukken en het document wordt niet langer continu weergegeven.

{{% alert color="primary" %}}

U kunt een document niet splitsen met de eigenschap [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) wanneer u het opslaat in de indeling MHTML.

{{% /alert %}}

In dit deel behandelen we slechts enkele van de mogelijke gesplitste criteria.

### Een Document splitsen in secties {#split-a-document-by-sections}

Aspose.Words stelt u ook in staat om sectie-einden te gebruiken om documenten te splitsen en op te slaan in HTML. Gebruik hiervoor **SectionBreak** als **DocumentSplitCriteria**:

Het volgende codevoorbeeld laat zien hoe u een document in kleinere delen kunt splitsen door sectie-einden (zonder de eigenschap `DocumentSplitCriteria` te gebruiken):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Opgesplitst naar pagina ' s {#splitting-by-pages}

U kunt een document ook splitsen op pagina, op paginabereiken of beginnen met de opgegeven paginanummers. In dat geval kan de methode [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) het werk doen.

In dit gedeelte worden verschillende gebruiksgevallen beschreven van het verdelen van documenten per pagina met behulp van de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) - klasse en de **ExtractPages** - methode.

{{% alert color="primary" %}}

U kunt elke [output formaat ondersteund door Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Vanwege de vele nuances die verschijnen bij het verminderen van het aantal pagina ' s, is een volledige overeenkomst met de Microsoft Word lay-out een vrij ingewikkelde taak. Daarom kunnen er, afhankelijk van de complexiteit van het document, kleine verschillen zijn in de resulterende documentindeling ten opzichte van het oorspronkelijke document.

{{% /alert %}}

### Een Document pagina voor pagina {#split-a-document-page-by-page}splitsen

Met Aspose.Words kunt u een document met meerdere pagina ' s pagina voor pagina splitsen.

Het volgende codevoorbeeld laat zien hoe u een document verdeelt en elke pagina als een afzonderlijk document opslaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Een Document splitsen op paginabereiken {#split-a-document-by-page-ranges}

Aspose.Words maakt het mogelijk om een document met meerdere pagina ' s te splitsen op paginabereiken. U kunt één bestand splitsen in meerdere bestanden met verschillende paginabereiken of gewoon één bereik selecteren en alleen dit deel van het brondocument opslaan. U kunt het paginabereik kiezen op basis van het maximale en minimale paginanummer van een document.

Het volgende codevoorbeeld laat zien hoe u een document in kleinere delen kunt splitsen op basis van paginabereik met specifieke begin-en eindindexen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Het gesplitste Document samenvoegen met een ander Document {#merge-the-split-document-with-another-file}

Met Aspose.Words kunt u het output split document samenvoegen met een ander document om een nieuw document te vormen. Dit kan document samenvoegen worden genoemd.

Het volgende codevoorbeeld laat zien hoe u een gesplitst document samenvoegt met een ander document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
