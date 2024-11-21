---
title: Werken met bladwijzers in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met bladwijzers
linktitle: Werken met bladwijzers
description: "Hoe bladwijzers invoegen, verkrijgen, verplaatsen, tonen of verbergen met behulp van Python."
type: docs
weight: 180
url: /nl/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Bladwijzers identificeren in een Microsoft Word documenteer de locaties of fragmenten die u noemt en identificeert voor toekomstige referentie. U kunt bijvoorbeeld een bladwijzer gebruiken om tekst te identificeren die u later wilt herzien. In plaats van door het document te schuiven om de tekst te lokaliseren, kunt u naar het bladwijzervenster gaan.

De acties die kunnen worden uitgevoerd met bladwijzers met behulp van Aspose.Words zijn dezelfde als degenen die u kunt uitvoeren met behulp van Microsoft Word. U kunt een nieuwe bladwijzer invoegen, verwijderen, verplaatsen naar een bladwijzer, een bladwijzernaam krijgen of instellen, tekst insluiten of instellen. Met Aspose.Words, kunt u ook bladwijzers in rapporten of documenten gebruiken om sommige gegevens in de bladwijzer in te voegen of speciale opmaak van de inhoud ervan toe te passen. U kunt ook bladwijzers gebruiken om tekst op te halen van een bepaalde locatie in uw document.

## Bladwijzer invoegen

Gebruik [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) en [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) om een bladwijzer aan te maken door het begin en het einde ervan te markeren. Vergeet niet dezelfde bladwijzernaam aan beide methoden door te geven. Bladwijzers in een document kunnen elk bereik overlappen. Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

{{% alert color="primary" %}}

Alle witte spaties in de bladwijzers werden vervangen door onderstrepingen. Deze beperking kwam van MS Word-formaten, omdat bladwijzers in MS Word-formaten, zoals DOCX of DOC, geen witte spaties kunnen hebben. Echter, PDF staat dergelijke bladwijzers. Dus nu, als je bladwijzers moet gebruiken in PDF of XPS schetsen, je kunt ze gebruiken met witte ruimtes.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een nieuwe bladwijzer aanmaakt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Bladwijzers verkrijgen

Soms is het noodzakelijk om een bladwijzercollectie te verkrijgen om te itereren via bladwijzers of voor andere doeleinden. Gebruik de [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) eigenschap blootgesteld door een document knooppunt dat een [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object dat het gedeelte van het document in deze node vertegenwoordigt. Gebruik dit object om een [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) en gebruik dan de collectie indexer om een specifieke bladwijzer te krijgen.

{{% alert color="primary" %}}

U kunt het sample bestand van deze voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u bladwijzers kunt verkrijgen uit een bladwijzercollectie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Het volgende voorbeeld van code laat zien hoe u een bladwijzernaam en -tekst kunt verkrijgen of instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Het volgende codevoorbeeld laat zien hoe u een tabel bladwijzer kunt maken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Als u de naam van een bladwijzer verandert in een naam die al bestaat in het document, zal er geen fout worden gegenereerd en alleen de eerste bladwijzer wordt opgeslagen wanneer u het document opslaat.

Merk op dat sommige bladwijzers in het document worden toegewezen aan formuliervelden. Door naar zo'n bladwijzer te gaan en tekst in te voegen wordt de tekst in het formulierveld ingevoerd. Hoewel dit het formulierveld niet ongeldig maakt, zal de ingevoegde tekst niet zichtbaar zijn omdat het deel wordt van de veldcode.

Het volgende voorbeeld van code laat zien hoe je de kolommen van de bladwijzertabel kunt benaderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Naar een bladwijzer verplaatsen

Als je rijke inhoud (niet alleen gewone tekst) in een bladwijzer moet invoegen, moet je deze gebruiken [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) om de cursor naar de bladwijzer te verplaatsen en vervolgens te gebruiken [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) methoden en eigenschappen om inhoud in te voegen.

## Bladwijzerinhoud tonen

De gehele bladwijzer (*met inbegrip van de bladwijzer*) kan worden ingekapseld in het ware deel van de `IF` veld gebruiken Aspose.Words. Het kan zo zijn dat de `IF` veld bevat een geneste Samenvoegveld in de expressie (*Links van Operator*) en afhankelijk van de waarde van Samenvoegveld, de `IF` veld toont of verbergt de inhoud van bladwijzer in Word Document.

Het volgende codevoorbeeld laat zien hoe bladwijzers getoond/verbergen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
