---
title: Documenten invoegen en toevoegen
second_title: Aspose.Words voor Python via .NET
articleTitle: Documenten invoegen en toevoegen
linktitle: Documenten invoegen en toevoegen
description: "Documenten combineren in één: een document invoegen of toevoegen aan een nieuw of bestaand document met behulp van vinden en vervangen, merge-veld, bladwijzer, of gewoon aan het document eindigen in Python."
type: docs
weight: 80
url: /nl/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Soms is het nodig om meerdere documenten te combineren in een. U kunt dit handmatig of u kunt gebruiken Aspose.Words functie invoegen of toevoegen.

Met de invoegoperatie kunt u de inhoud van eerder aangemaakte documenten in een nieuwe of bestaande invoegen.

Met de functie toevoegen kunt u een document alleen aan het einde van een ander document toevoegen.

Dit artikel legt uit hoe je een document op verschillende manieren invoegt of toevoegt aan een ander en beschrijft de gemeenschappelijke eigenschappen die je kunt toepassen tijdens het invoegen of toevoegen van documenten.

## Document invoegen

Zoals hierboven vermeld, in Aspose.Words een document wordt weergegeven als een boom van knooppunten, en de werking van het invoegen van een document in een ander document is het kopiëren van knooppunten van de eerste documentboom naar de tweede.

U kunt documenten op verschillende locaties op verschillende manieren invoegen. U kunt bijvoorbeeld een document invoegen via een vervangende bewerking, een merge-veld tijdens een merge-operatie of via een bladwijzer.

U kunt ook de [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) of [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) methode, die lijkt op het invoegen van een document in Microsoft Word, om een heel document in te voegen op de huidige cursorpositie zonder eerdere import.

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **_document invoegen** methode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **invoegen_document_inline** methode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

De volgende subsecties beschrijven de opties waarin u het ene document in een ander kunt invoegen.

### Een document invoegen bij bladwijzer

U kunt een tekstbestand importeren in een document en het direct invoegen na een bladwijzer die u in het document hebt gedefinieerd. Om dit te doen, maak een paragraaf met bladwijzers waar u wilt dat het document wordt ingevoegd.

Het volgende coderingsvoorbeeld laat zien hoe je de inhoud van het ene document in een bladwijzer in een ander document invoegt:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Merk op dat de bladwijzer niet meerdere alinea's of tekst moet omsluiten die u wilt dat ze verschijnen in uw uiteindelijke resulterende document.

{{% /alert %}}

## Een document toevoegen

U kunt een use case hebben waarin u extra pagina's moet opnemen van een document tot het einde van een bestaand document. Om dit te doen, moet je gewoon de [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) methode om een document aan het einde van een ander document toe te voegen.

{{% alert color="primary" %}}

Merk op dat [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) is een nodeniveau methode binnen een document. U kunt bijvoorbeeld een alinea maken, formatteren eigenschappen instellen, en vervolgens toevoegen als een kind aan het lichaam met behulp van de [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) methode.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document toevoegt aan het einde van een ander document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Knoppen handmatig importeren en invoegen

Aspose.Words Hiermee kunt u documenten automatisch invoegen en toevoegen zonder eerdere importvereisten. Echter, als u een specifieke node van uw document moet invoegen of toevoegen, zoals een sectie of een paragraaf, dan moet u eerst deze node handmatig importeren.

Wanneer u een sectie of paragraaf moet invoegen of toevoegen aan een andere paragraaf, moet u in wezen de knooppunten van de eerste document node boom importeren in de tweede met behulp van de [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) methode. Na het importeren van uw knooppunten, moet u de [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) ' [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) methode om een nieuwe knoop in te voegen na/voor het referentieknooppunt. Hiermee kunt u het invoegproces aanpassen door knooppunten uit een document te importeren en het op bepaalde posities in te voegen.

U kunt ook de [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) methode om een nieuw gespecificeerd knooppunt toe te voegen aan het einde van de lijst van kindknooppunten, bijvoorbeeld als u inhoud wilt toevoegen op paragraafniveau in plaats van op sectieniveau.

Het volgende voorbeeld van code laat zien hoe u handmatig knooppunten importeren en invoegen na een specifieke knooppunt met behulp van de [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) methode:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

De import maakt een nieuwe node aan die een kopie is van de originele node en geschikt is voor invoeging in het bestemmingsdocument.

{{% /alert %}}

Inhoud wordt per sectie in het document van bestemming geïmporteerd, wat betekent dat instellingen, zoals pagina-instellingen en headers of voetteksten, behouden blijven tijdens import. Het is ook handig om op te merken dat u formatteringsinstellingen kunt definiëren wanneer u een document invoegt of toevoegt om aan te geven hoe twee documenten worden samengevoegd.

## Gemeenschappelijke eigenschappen voor invoegen en toevoegen van documenten

Beide [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) en [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) methoden accepteren [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) als inputparameters. De [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) kunt u controleren hoe documentopmaak wordt samengevoegd wanneer u inhoud importeren van het ene document in het andere door het selecteren van verschillende indelingsmodi zoals [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), en [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). De [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) stelt u in staat om verschillende opties te selecteren, zoals [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), en [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words stelt u in staat om de visualisatie van een resulterend document aan te passen wanneer twee documenten samen worden toegevoegd in een invoeg- of voegbewerking door gebruik te maken van de [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). De [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) eigenschap bevat alle eigenschappen van een sectie zoals [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), en anderen. De meest voorkomende use case is het instellen van de [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) eigenschap om te bepalen of de toegevoegde inhoud op dezelfde pagina zal verschijnen of in een nieuwe zal splitsen.

{{% alert color="primary" %}}

Merk op dat de [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) niet bepalen hoe twee documenten samen worden ingevoegd/toegevoegd. Ze laten je alleen toe om het uiterlijk van je resultaatdocument te veranderen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe het ene document aan het andere kan worden toegevoegd, terwijl de inhoud niet over twee pagina's kan worden gesplitst:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
