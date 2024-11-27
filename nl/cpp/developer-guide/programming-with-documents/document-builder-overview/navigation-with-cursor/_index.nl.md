---
title: Navigatie met Cursor in C++
second_title: Aspose.Words voor C++
articleTitle: Navigatie met Cursor
linktitle: Navigatie met Cursor
description: "Navigeer tussen verschillende knooppunten in een document, zoals een alinea, bladwijzer of een specifiek teken met behulp van C++."
type: docs
weight: 10
url: /nl/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Tijdens het werken met een document, zelfs als het een kort of lang document is, moet u door uw document navigeren. Navigatie met een virtuele cursor vertegenwoordigt de mogelijkheid om te navigeren tussen verschillende knooppunten in een document.

Binnen een kort document is het verplaatsen in een document eenvoudig, omdat u de invoegpositie kunt verplaatsen, zelfs met behulp van de pijltoetsen van het toetsenbord of door met de muis te klikken om de invoegpositie te vinden waar u maar wilt. Maar als je eenmaal een groot document hebt dat veel pagina ' s heeft, zullen deze basistechnieken onvoldoende zijn.

In dit artikel wordt uitgelegd hoe u zich in een document kunt verplaatsen en met een virtuele cursor naar verschillende delen ervan kunt navigeren.

## Huidige Cursorpositie Detecteren

Voordat u begint met het navigeren door uw document, moet u het knooppunt ophalen dat momenteel is geselecteerd. U kunt de exacte positie van de cursor op een geselecteerd knooppunt krijgen door de eigenschap [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/) te gebruiken. In plaats van het huidige knooppunt te krijgen, kunt u bovendien de momenteel geselecteerde alinea of de momenteel geselecteerde sectie ophalen met behulp van de eigenschappen [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) en [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Alle insert-bewerkingen die u uitvoert met de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) worden ingevoegd vóór de [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Wanneer de huidige alinea leeg is of de cursor vlak voor het einde van de alinea staat, geeft de **CurrentNode** nullptr terug.

## Navigeren in een Document

Wanneer u tekst bewerkt, is het belangrijk om te weten hoe u door uw document moet navigeren en waar u zich precies in het document moet verplaatsen. Met Aspose.Words kunt u zich verplaatsen in een document en naar de verschillende secties en onderdelen navigeren – Dit is vergelijkbaar met de functionaliteit van het navigatiedeelvenster in Microsoft Word om naar een pagina of kop in een Word document te gaan zonder te scrollen.

De belangrijkste methode is om de cursorpositie te kunnen verplaatsen naar een specifiek knooppunt in uw document, u kunt dit bereiken door de methode [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/) te gebruiken.

Het volgende codevoorbeeld laat zien hoe de **DocumentBuilder** naar verschillende knooppunten in een document moet worden verplaatst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Maar naast de basismethode **MoveTo** zijn er meer specifieke.

### Naar het begin of einde van een Document navigeren

U kunt naar het begin of het einde van uw document gaan met de methoden [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) en [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Het volgende codevoorbeeld laat zien hoe u de cursorpositie naar het begin of het einde van een document verplaatst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navigeren Met Bladwijzers

U kunt een plaats markeren die u wilt vinden en er gemakkelijk weer naartoe verhuizen. U kunt zoveel bladwijzers in uw document invoegen als u wilt en er vervolgens doorheen navigeren door de bladwijzers met unieke namen te identificeren. U kunt naar een bladwijzer gaan met de methode [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

De volgende codevoorbeelden laten zien hoe u een cursorpositie naar een bladwijzer verplaatst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Navigeer naar tabelcellen

U kunt naar een tabelcel gaan met de methode [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Met deze methode kunt u met uw cursor naar een cel in een specifieke tabel navigeren. Bovendien kunt u een index opgeven om de cursor naar een willekeurige positie of opgegeven teken in een cel binnen de methode **MoveToCell** te verplaatsen.

Het volgende codevoorbeeld toont hoe u een cursorpositie naar een opgegeven tabelcel verplaatst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Naar een veld navigeren

U kunt naar een specifiek veld in uw document gaan met de methode [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Bovendien kunt u naar een specifiek samenvoegveld gaan met de methode [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Het volgende codevoorbeeld laat zien hoe u de Document builder-cursor naar een specifiek veld verplaatst:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Naar een kop-of voettekst navigeren

U kunt naar het begin van een kop-of voettekst gaan met de methode [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Het volgende codevoorbeeld laat zien hoe u de cursor van document builder verplaatst naar een kop-of voettekst van een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Naar een sectie of alinea navigeren

U kunt naar een specifieke sectie of alinea gaan met behulp van de methoden [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) of [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Bovendien kunt u een index opgeven om de cursor naar een willekeurige positie of een opgegeven teken in een alinea binnen de methode **MoveToParagraph** te verplaatsen.

Het volgende codevoorbeeld toont hoe u naar een specifieke sectie en een specifieke alinea in een document kunt gaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
