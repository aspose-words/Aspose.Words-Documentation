---
title: Navigatie met cursor in Java
second_title: Aspose.Words voor Java
articleTitle: Navigatie met cursor
linktitle: Navigatie met cursor
description: "Navigeren tussen verschillende knooppunten binnen een document, zoals een alinea, bladwijzer, of een specifiek karakter met behulp van Java."
type: docs
weight: 5
url: /nl/java/navigation-with-cursor/
---

Tijdens het werken met een document, zelfs als het een korte of lange, moet u navigeren door uw document. Navigatie met een virtuele cursor is de mogelijkheid om tussen verschillende knooppunten in een document te navigeren.

Binnen een kort document is bewegen in een document eenvoudig omdat je het invoegpunt kunt verplaatsen, zelfs met behulp van de pijltjestoetsen van het toetsenbord of door op de muis te klikken om het invoegpunt te vinden waar je maar wilt. Maar als je eenmaal een groot document met veel pagina's hebt, zullen deze basistechnieken onvoldoende zijn.

Dit artikel legt uit hoe je in een document kunt bewegen en navigeren met een virtuele cursor naar verschillende delen ervan.

## Huidige cursorpositie detecteren

Voordat u begint met het proces van het navigeren door uw document, moet u de knoop die momenteel is geselecteerd. U kunt de exacte positie van de cursor op een geselecteerde knooppunt door gebruik te maken van de [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) eigendom. Bovendien kunt u in plaats van de huidige knooppunt, kunt u de huidige geselecteerde paragraaf of de huidige geselecteerde sectie door middel van de [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) en [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) eigenschappen.

Alle invoegacties die u uitvoert met behulp van de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) vóór de [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Wanneer de huidige paragraaf leeg is of de cursor vlak voor het einde van de paragraaf is geplaatst, de **CurrentNode** Geeft nul terug.

## Navigatiemethoden in een document

Wanneer u tekst bewerkt, is het belangrijk om te weten hoe u uw document kunt navigeren en waar u precies moet bewegen. Aspose.Words kunt u bewegen in een document en navigeren naar de verschillende secties en delen. Dit is vergelijkbaar met de functionaliteit van het navigatiepaneel in Microsoft Word naar een pagina gaan of naar een Word-document gaan zonder te scrollen.

De belangrijkste methode is om de positie van de cursor te verplaatsen naar een specifieke knooppunt in uw document, kunt u dit bereiken met behulp van de [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) methode.

Het volgende voorbeeld van code laat zien hoe de **DocumentBuilder** naar verschillende knooppunten in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Maar naast de basis **MoveTo** methode, er zijn meer specifieke.

### Navigeren naar begin of einde van een document

U kunt naar het begin of het einde van uw document met behulp van de [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) en [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) methoden.

Het volgende voorbeeld van code laat zien hoe je de cursorpositie naar het begin of het einde van een document verplaatst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigeren met bladwijzers

U kunt een plek markeren die u wilt vinden en opnieuw gemakkelijk verplaatsen. U kunt zoveel bladwijzers in uw document plaatsen als u wilt, en er vervolgens doorheen navigeren door de bladwijzers met unieke namen te identificeren. U kunt naar een bladwijzer verplaatsen met behulp van de [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) methode.

De volgende codevoorbeelden laten zien hoe je een cursorpositie naar een bladwijzer verplaatst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Naar tabelcellen navigeren

U kunt verplaatsen naar een tabel cel door gebruik te maken van de [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) methode. Met deze methode kunt u uw cursor in elke cel in een specifieke tabel navigeren. Daarnaast kunt u een index opgeven om de cursor naar elke positie of opgegeven teken in een cel binnen de **MoveToCell** methode.

Het volgende voorbeeld van code laat zien hoe je een cursorpositie naar een bepaalde tabelcel verplaatst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigeren naar een veld

U kunt naar een specifiek veld in uw document door gebruik te maken van de [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) methode. Daarnaast kunt u naar een specifiek merge veld door gebruik te maken van de [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) methode.

Het volgende voorbeeld van code laat zien hoe je de documentbouwer naar een specifiek veld kunt verplaatsen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigeren naar een header of footer

U kunt verplaatsen naar het begin van een header of voettekst met behulp van de [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) methode

Het volgende voorbeeld van code laat zien hoe je document builder cursor verplaatsen naar een document header of footer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigeren naar een sectie of paragraaf

U kunt naar een specifieke sectie of paragraaf door gebruik te maken van de [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) of [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) methoden. Daarnaast kunt u een index opgeven om de cursor naar elke positie of een gespecificeerd teken in een alinea binnen de **MoveToParagraph** methode.

Het volgende voorbeeld van de code laat zien hoe je naar een specifieke sectie en een specifieke paragraaf in een document kunt verplaatsen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
