---
title: Werken met bladwijzers in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met bladwijzers
linktitle: Werken met bladwijzers
description: "Begrijpen van bladwijzer concepten en hoe bladwijzer kan worden gebruikt in uw programma met behulp van C#."
type: docs
weight: 180
url: /nl/net/working-with-bookmarks/
---

Bladwijzers identificeren in een Microsoft Word documenteer de locaties of fragmenten die u noemt en identificeert voor toekomstige referentie. U kunt bijvoorbeeld een bladwijzer gebruiken om tekst te identificeren die u later wilt herzien. In plaats van door het document te schuiven om de tekst te lokaliseren, kunt u naar het bladwijzervenster gaan.

De acties die kunnen worden uitgevoerd met bladwijzers met behulp van Aspose.Words zijn dezelfde als degenen die u kunt uitvoeren met behulp van Microsoft Word. U kunt een nieuwe bladwijzer invoegen, verwijderen, verplaatsen naar een bladwijzer, een bladwijzernaam krijgen of instellen, tekst insluiten of instellen.

## Bladwijzer invoegen

Gebruik [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) en [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) om een bladwijzer aan te maken door het begin en het einde ervan te markeren. Vergeet niet dezelfde bladwijzernaam aan beide methoden door te geven. Bladwijzers in een document kunnen elk bereik overlappen. Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

{{% alert color="primary" %}}

Alle witte spaties in de bladwijzers werden vervangen door onderstrepingen. Deze beperking kwam van Microsoft Word formaten, aangezien bladwijzers in Word-formaten zoals DOCX of DOC geen witte spaties kunnen hebben. Echter, PDF staat dergelijke bladwijzers. Dus nu, als je bladwijzers moet gebruiken in PDF of XPS schetsen, je kunt ze gebruiken met witte ruimtes.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een nieuwe bladwijzer aanmaakt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Bladwijzers verkrijgen

Soms is het noodzakelijk om een bladwijzercollectie te verkrijgen om te itereren via bladwijzers of voor andere doeleinden. Gebruik de [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) eigenschap blootgesteld door een document knooppunt dat een [Range](https://reference.aspose.com/words/net/aspose.words/range/) object dat het gedeelte van het document in deze node vertegenwoordigt. Gebruik dit object om een [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) en gebruik dan de collectie indexer om een specifieke bladwijzer te krijgen.

Het volgende voorbeeld van code laat zien hoe u bladwijzers kunt verkrijgen uit een bladwijzercollectie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Het volgende voorbeeld van code laat zien hoe u een bladwijzernaam en -tekst kunt verkrijgen of instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een tabel bladwijzer kunt maken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Als u de naam van een bladwijzer verandert in een naam die al bestaat in het document, zal er geen fout worden gegenereerd en alleen de eerste bladwijzer wordt opgeslagen wanneer u het document opslaat.

Merk op dat sommige bladwijzers in het document worden toegewezen aan formuliervelden. Door naar zo'n bladwijzer te gaan en tekst in te voegen wordt de tekst in het formulierveld ingevoerd. Hoewel dit het formulierveld niet ongeldig maakt, zal de ingevoegde tekst niet zichtbaar zijn omdat het deel wordt van de veldcode.

Het volgende voorbeeld van code laat zien hoe je de kolommen van de bladwijzertabel kunt benaderen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Naar een bladwijzer verplaatsen

Als je rijke inhoud (niet alleen gewone tekst) in een bladwijzer moet invoegen, moet je deze gebruiken [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) om de cursor naar de bladwijzer te verplaatsen en vervolgens te gebruiken [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) methoden en eigenschappen om inhoud in te voegen.

## Bladwijzerinhoud tonen

De gehele bladwijzer (*met inbegrip van de bladwijzer*) kan worden ingekapseld in het ware deel van de `IF` veld gebruiken Aspose.Words. Het kan zo zijn dat de `IF` veld bevat een geneste Samenvoegveld in de expressie (*Links van Operator*) en afhankelijk van de waarde van Samenvoegveld, de `IF` veld toont of verbergt de inhoud van bladwijzer in Word Document.

Het volgende codevoorbeeld laat zien hoe bladwijzers getoond/verbergen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
