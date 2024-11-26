---
title: Navigatie met cursor in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Navigatie met cursor
linktitle: Navigatie met cursor
description: "Navigeren tussen verschillende knooppunten in een document zoals een alinea, bladwijzer of een specifiek karakter met behulp van Python."
type: docs
weight: 10
url: /nl/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Tijdens het werken met een document, zelfs als het een korte of lange, moet u navigeren door uw document. Navigatie met een virtuele cursor is de mogelijkheid om te navigeren tussen verschillende knooppunten in een document.

Binnen een kort document is bewegen in een document eenvoudig omdat je het invoegpunt kunt verplaatsen, zelfs door de pijltjestoetsen van het toetsenbord te gebruiken of door op de muis te klikken om het invoegpunt te lokaliseren waar je maar wilt. Maar als je eenmaal een groot document met veel pagina's hebt, zullen deze basistechnieken onvoldoende zijn.

Dit artikel legt uit hoe je in een document kunt bewegen en navigeren met een virtuele cursor naar verschillende delen ervan.

## Huidige cursorpositie wordt gedetecteerd

Voordat u het proces van het navigeren door uw document start, moet u de knoop die momenteel is geselecteerd krijgen. U kunt de exacte positie van de cursor op een geselecteerde knooppunt door gebruik te maken van de [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) eigendom. Bovendien, in plaats van het huidige knooppunt te krijgen, kunt u de huidige geselecteerde paragraaf of de huidige geselecteerde sectie door middel van de [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) en [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) eigenschappen.

Alle invoegacties die u uitvoert met behulp van de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vóór de [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Wanneer de huidige paragraaf leeg is of de cursor vlak voor het einde van de paragraaf is geplaatst, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) Geeft geen terug.

## Navigatiemethoden in een document

Wanneer u tekst bewerkt, is het belangrijk om te weten hoe u uw document kunt navigeren en waar u precies moet bewegen. Aspose.Words kunt u bewegen in een document en navigeren naar de verschillende secties en delen Microsoft Word naar een pagina gaan of naar een Word-document gaan zonder te scrollen.

De belangrijkste methode is om de cursor positie te verplaatsen naar een specifieke knooppunt in uw document, kunt u dit bereiken met behulp van de [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) methode.

Het volgende voorbeeld van code laat zien hoe u de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) naar verschillende knooppunten in een document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Maar naast de basis [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) methode, zijn er meer specifieke.

### Navigeren naar begin of einde van een document

U kunt naar het begin of het einde van uw document met behulp van de [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) en [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) methoden.

Het volgende voorbeeld van code laat zien hoe je de cursorpositie naar het begin of het einde van een document verplaatst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigeren met bladwijzers

U kunt een plek markeren die u wilt vinden en opnieuw gemakkelijk verplaatsen. U kunt zoveel bladwijzers in uw document plaatsen als u wilt, en er vervolgens doorheen navigeren door de bladwijzers met unieke namen te identificeren. U kunt naar een bladwijzer verplaatsen met behulp van de [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) methode.

De volgende codevoorbeelden laten zien hoe je een cursorpositie naar een bladwijzer verplaatst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Naar tabelcellen navigeren

U kunt verplaatsen naar een tabel cel door gebruik te maken van de [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) methode. Met deze methode kunt u uw cursor in elke cel in een specifieke tabel navigeren. Daarnaast kunt u een index opgeven om de cursor naar elke positie of opgegeven teken in een cel binnen de [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) methode.

Het volgende voorbeeld van code laat zien hoe je een cursorpositie naar een bepaalde tabelcel verplaatst:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigeren naar een veld

U kunt verplaatsen naar een specifiek veld in uw document met behulp van de [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) methode. Daarnaast kun je naar een specifiek merge veld verhuizen door gebruik te maken van de [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) methode.

Het volgende voorbeeld van code laat zien hoe u de documentbouwer naar een specifiek veld kunt verplaatsen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigeren naar een kop- of voettekst

U kunt verplaatsen naar het begin van een header of voettekst door gebruik te maken van de [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) methode

Het volgende voorbeeld van code laat zien hoe documentbouwer naar een documentkoptekst of -voettekst verplaatst moet worden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigeren naar een afdeling of paragraaf

U kunt naar een specifieke sectie of paragraaf door gebruik te maken van de [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) of [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) methoden. Daarnaast kunt u een index opgeven om de cursor te verplaatsen naar elke positie of een gespecificeerd teken in een alinea binnen de [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) methode.

Het volgende voorbeeld van een code laat zien hoe je naar een specifieke sectie en een specifieke paragraaf in een document kunt gaan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
