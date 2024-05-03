---
title: Werken met bladwijzers in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met bladwijzers
linktitle: Werken met bladwijzers
description: "Begrijpen van bladwijzer concepten en hoe bladwijzer kan worden gebruikt in uw programma met behulp van Java."
type: docs
weight: 180
url: /nl/java/working-with-bookmarks/
---

Bladwijzers identificeren in een Microsoft Word documenteer de locaties of fragmenten die u noemt en identificeert voor toekomstige referentie. U kunt bijvoorbeeld een bladwijzer gebruiken om tekst te identificeren die u later wilt herzien. In plaats van door het document te schuiven om de tekst te lokaliseren, kunt u naar het bladwijzervenster gaan.

Met Aspose.Words, u bladwijzers kunt gebruiken in rapporten of documenten om bepaalde gegevens in de bladwijzer in te voegen of speciale opmaak toe te passen op de inhoud ervan. U kunt ook bladwijzers gebruiken om tekst op te halen van een bepaalde locatie in uw document.

De acties die kunnen worden uitgevoerd met bladwijzers met behulp van Aspose.Words zijn dezelfde als degenen die u kunt uitvoeren met behulp van Microsoft Word. U kunt een nieuwe bladwijzer invoegen, verwijderen, verplaatsen naar een bladwijzer, een bladwijzernaam krijgen of instellen, tekst insluiten of instellen.

## Bladwijzer invoegen

Gebruik [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) en [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) om een bladwijzer aan te maken door het begin en einde ervan te markeren. Vergeet niet dezelfde bladwijzernaam aan beide methoden door te geven. Bladwijzers in een document kunnen elkaar overlappen en elk bereik bestrijken. Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

{{% alert color="primary" %}}

Alle witte spaties in de bladwijzers werden vervangen door onderstrepingen. Deze beperking kwam van MS Word-formaten, omdat bladwijzers in MS Word-formaten, zoals DOCX of DOC, geen witte spaties kunnen hebben. Echter, PDF staat dergelijke bladwijzers. Dus nu, als je bladwijzers moet gebruiken in PDF, XPS of SWF contouren, u kunt ze gebruiken met witte spaties.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe je een nieuwe bladwijzer aanmaakt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Bladwijzers verkrijgen

Soms is het noodzakelijk om een bladwijzercollectie te verkrijgen om te itereren via bladwijzers of voor andere doeleinden. Gebruik de **Node.getRange** eigenschap blootgesteld door een document knooppunt dat een **Range** object dat het gedeelte van het document in deze knoop vertegenwoordigt. Gebruik dit object om een **BookmarkCollection** en gebruik dan de collectie indexer om een specifieke bladwijzer te krijgen.

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van de volgende voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u bladwijzers kunt verkrijgen uit een bladwijzercollectie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Het volgende voorbeeld van code laat zien hoe je een bladwijzer naam en tekst kunt krijgen of instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Het volgende voorbeeld van code laat zien hoe je een tabel bladwijzer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Als u de naam van een bladwijzer wijzigt in een naam die al bestaat in het document, zal er geen fout worden gegenereerd en alleen de eerste bladwijzer wordt opgeslagen wanneer u het document opslaat.

Merk op dat sommige bladwijzers in het document worden toegewezen aan formuliervelden. Door naar zo'n bladwijzer te gaan en tekst in te voegen wordt de tekst in het formulierveld ingevoerd. Hoewel dit het formulierveld niet ongeldig maakt, zal de ingevoegde tekst niet zichtbaar zijn omdat het deel wordt van de veldcode.

Het volgende voorbeeld van code laat zien hoe je de kolommen van de bladwijzertabel kunt benaderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Naar een bladwijzer verplaatsen

Als u rijke inhoud (niet alleen gewone tekst) in een bladwijzer moet invoegen, moet u [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) om de cursor naar de bladwijzer te verplaatsen en vervolgens te gebruiken **DocumentBuilder** methoden en eigenschappen om inhoud in te voegen.

## Bladwijzerinhoud tonen

De gehele bladwijzer (*met inbegrip van de bladwijzerinhoud*) kan worden ingekapseld in het ware deel van de `IF` veld gebruiken Aspose.Words. Het kan zo zijn dat de `IF` veld bevat een geneste Samenvoegveld in de expressie (*Links van Operator*) en afhankelijk van de waarde van Samenvoegveld, de `IF` veld toont of verbergt de inhoud van bladwijzer in Word Document.

Het volgende voorbeeld van code laat zien hoe je bladwijzers kunt tonen/verbergen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
