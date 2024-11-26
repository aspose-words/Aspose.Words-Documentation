---
title: Werken met bladwijzers in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Bookmarks
linktitle: Werken met Bookmarks
description: "Inzicht in bladwijzerconcepten en hoe bladwijzer kan worden gebruikt in uw programma met behulp van C++."
type: docs
weight: 180
url: /nl/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Bladwijzers geven in een Microsoft Word document de locaties of fragmenten aan die u een naam geeft en identificeert voor toekomstige referentie. U kunt bijvoorbeeld een bladwijzer gebruiken om tekst te identificeren die u later wilt herzien. In plaats van door het document te scrollen om de tekst te vinden, kunt u er naartoe gaan via het dialoogvenster Bladwijzer.

De acties die kunnen worden uitgevoerd met bladwijzers met behulp van Aspose.Words zijn dezelfde als de acties die u kunt uitvoeren met behulp van Microsoft Word. U kunt een nieuwe bladwijzer invoegen, verwijderen, naar een bladwijzer verplaatsen, een bladwijzernaam ophalen of instellen, tekst ophalen of instellen die erin is ingesloten. Met Aspose.Words kunt u bladwijzers in rapporten of documenten ook gebruiken om bepaalde gegevens in de bladwijzer in te voegen of speciale opmaak toe te passen op de inhoud ervan. U kunt ook bladwijzers gebruiken om tekst op te halen van een bepaalde locatie in uw document.

## Een bladwijzer invoegen

Gebruik [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) en [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) om een bladwijzer te maken door het begin en het einde te markeren. Vergeet niet om dezelfde bladwijzernaam door te geven aan beide methoden. Bladwijzers in een document kunnen elk bereik overlappen en overspannen. Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

Het volgende codevoorbeeld laat zien hoe u een nieuwe bladwijzer maakt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Bladwijzers Verkrijgen

Soms is het nodig om een bladwijzercollectie te verkrijgen om door middel van bladwijzers of voor andere doeleinden te herhalen. Gebruik de Eigenschap [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) die wordt weergegeven door een documentknooppunt dat een [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) - object retourneert dat het gedeelte van het document in dit knooppunt vertegenwoordigt. Gebruik dit object om een [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) op te halen en gebruik vervolgens de collectieindex om een specifieke bladwijzer op te halen.

Het volgende codevoorbeeld laat zien hoe u bladwijzers uit een bladwijzercollectie kunt verkrijgen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u de naam en tekst van een bladwijzer kunt ophalen of instellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u een tabel als bladwijzer kunt gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Als u de naam van een bladwijzer wijzigt in een naam die al in het document bestaat, wordt er geen fout gegenereerd en wordt alleen de eerste bladwijzer opgeslagen wanneer u het document opslaat.

{{% alert color="primary" %}}

Merk op dat sommige bladwijzers in het document zijn toegewezen aan formuliervelden. Als u naar een dergelijke bladwijzer gaat en daar tekst invoegt, wordt de tekst in de formulierveldcode ingevoegd. Hoewel dit het formulierveld niet ongeldig maakt, is de ingevoegde tekst niet zichtbaar omdat deze deel uitmaakt van de veldcode.

{{% /alert %}}

## Naar een bladwijzer gaan

Als u rijke inhoud (niet alleen platte tekst) in een bladwijzer wilt invoegen, moet u [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) gebruiken om de cursor naar de bladwijzer te verplaatsen en vervolgens de [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) Methoden en eigenschappen gebruiken om inhoud in te voegen.

## Toon Bladwijzerinhoud Verbergen

De gehele bladwijzer (*including the bookmarked content*) kan ingekapseld worden in het ware deel van het `IF` veld met behulp van Aspose.Words. Het kan zo zijn dat het veld `IF` een genest samenvoegveld bevat in de expressie (*Left of Operator*) en afhankelijk van de waarde van het samenvoegveld, toont of verbergt het veld `IF` de inhoud van bladwijzer in Word Document.

Het volgende codevoorbeeld laat zien hoe bladwijzers te tonen / verbergen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
