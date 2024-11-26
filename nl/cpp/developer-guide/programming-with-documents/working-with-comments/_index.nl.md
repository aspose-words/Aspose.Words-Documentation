---
title: Werken met opmerkingen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Comments
linktitle: Werken met Comments
description: "Werken met opmerkingen met behulp van C++."
type: docs
weight: 260
url: /nl/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Online proberen**

U kunt deze functionaliteit proberen met onze [Gratis online annotaties verwijderen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words stelt gebruikers in staat om met opmerkingen te werken – opmerkingen in een document in Aspose.Words worden weergegeven door de [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) - klasse. Gebruik ook de klassen [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) om het tekstgebied op te geven dat aan een opmerking moet worden gekoppeld.

## Een opmerking toevoegen

Met Aspose.Words kunt u op verschillende manieren opmerkingen toevoegen:

1. De [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) - Klasse gebruiken
2. De klassen [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) gebruiken

Het volgende codevoorbeeld laat zien hoe u een opmerking toevoegt aan een alinea met behulp van de **Comment** - Klasse:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u een opmerking toevoegt aan een alinea met behulp van een tekstgebied en de klassen **CommentRangeStart** en **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Opmerkingen uitpakken of verwijderen

Het gebruik van opmerkingen in een Word document (naast het bijhouden van wijzigingen) is een gangbare praktijk bij het beoordelen van documenten, vooral wanneer er meerdere reviewers zijn. Er kunnen situaties zijn waarin het enige wat je nodig hebt van een document de opmerkingen zijn. Stel dat u een lijst met beoordelingsresultaten wilt genereren, of misschien hebt u alle nuttige informatie uit het document verzameld en wilt u gewoon onnodige opmerkingen verwijderen. Misschien wilt u de opmerkingen van een bepaalde reviewer bekijken of verwijderen.

In dit voorbeeld gaan we kijken naar enkele eenvoudige methoden voor het verzamelen van informatie uit de opmerkingen in een document en voor het verwijderen van opmerkingen uit een document. In het bijzonder behandelen we hoe:

- Haal alle opmerkingen uit een document of alleen die van een bepaalde auteur.
- Verwijder alle opmerkingen uit een document of alleen van een bepaalde auteur.

### Hoe opmerkingen uitpakken of verwijderen

De code in dit voorbeeld is eigenlijk vrij eenvoudig en alle methoden zijn gebaseerd op dezelfde aanpak. Een opmerking in een Word document wordt weergegeven door een [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) object in het Aspose.Words document object model. Als u alle opmerkingen in een document wilt verzamelen, gebruikt u de methode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) met de eerste parameter ingesteld op [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Zorg ervoor dat de tweede parameter van de **GetChildNodes** Methode is ingesteld op true: dit dwingt de **GetChildNodes** om recursief te selecteren uit alle kindknooppunten, in plaats van alleen de directe kinderen te verzamelen.

Om te illustreren hoe u opmerkingen uit een document kunt extraheren en verwijderen, doorlopen we de volgende stappen:

1. Een Word - document openen met de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) - Klasse
1. Alle opmerkingen uit het document opnemen in een verzameling
1. Om opmerkingen te extraheren:
   1. Ga door de collectie met behulp van de foreach operator
   1. Uittreksel en een lijst van de auteur naam, datum & tijd en tekst van alle opmerkingen
   1. Uittreksel en een lijst van de auteur naam, datum & tijd en tekst van opmerkingen geschreven door een specifieke auteur, in dit geval, de auteur 'ks'
1. Opmerkingen verwijderen:
   1. Ga terug door de collectie met behulp van de voor de operator
   1. Reacties verwijderen
1. De wijzigingen opslaan

### Hoe alle opmerkingen te extraheren

De methode **GetChildNodes** is erg handig en u kunt deze elke keer gebruiken als u een lijst met documentknooppunten van elk type nodig hebt. De resulterende verzameling maakt geen directe overhead omdat de knooppunten alleen in deze verzameling worden geselecteerd wanneer u items in deze verzameling opnoemt of opent.

Het volgende codevoorbeeld laat zien hoe u de auteursnaam, datum en tijd en tekst van alle opmerkingen in het document kunt extraheren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Hoe opmerkingen van een bepaalde auteur te extraheren

Nadat u Commentaarknooppunten in een verzameling hebt geselecteerd, hoeft u alleen maar de informatie te extraheren die u nodig hebt. In dit voorbeeld worden de initialen van de auteur, datum, tijd en de platte tekst van de opmerking gecombineerd tot één tekenreeks; u kunt ervoor kiezen om deze op een andere manier op te slaan.

De overbelaste methode die de opmerkingen van een bepaalde auteur extraheert, is bijna hetzelfde, het controleert alleen de naam van de auteur voordat de informatie in de array wordt toegevoegd.

Het volgende codevoorbeeld laat zien hoe u de auteursnaam, datum en tijd en tekst van de opmerkingen van de opgegeven auteur kunt extraheren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Hoe te verwijderen opmerkingen

Als u alle opmerkingen verwijdert, hoeft u niet één voor één door de verzameling te bladeren om opmerkingen te verwijderen; U kunt ze verwijderen door `NodeCollection.Clear` op te roepen in de verzameling opmerkingen.

Het volgende codevoorbeeld laat zien hoe u alle opmerkingen in het document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Wanneer u opmerkingen selectief moet verwijderen, lijkt het proces meer op de code die we hebben gebruikt voor het extraheren van opmerkingen.

Het volgende codevoorbeeld laat zien hoe u opmerkingen van de opgegeven auteur kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Het belangrijkste punt om hier te benadrukken is het gebruik van de for-operator. In tegenstelling tot de eenvoudige extractie, wilt u hier een opmerking verwijderen. Een geschikte truc is om de verzameling achteruit te herhalen van de laatste opmerking naar de eerste. De reden hiervoor als u vanaf het einde begint en achteruit gaat, blijft de index van de voorgaande items ongewijzigd en kunt u terugwerken naar het eerste item in de collectie.

Het volgende codevoorbeeld toont de methoden voor het extraheren en verwijderen van opmerkingen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Een Opmerking verwijderen tussen CommentRangeStart en CommentRangeEnd

Met behulp van Aspose.Words kunt u ook opmerkingen verwijderen tussen de knooppunten **CommentRangeStart** en **CommentRangeEnd**.

Het volgende codevoorbeeld laat zien hoe u tekst tussen **CommentRangeStart** en **CommentRangeEnd**verwijdert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Reactie toevoegen en verwijderen

De methode [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) voegt een antwoord toe aan deze opmerking. Houd er rekening mee dat vanwege de bestaande Microsoft office-beperkingen slechts 1 niveau van antwoorden in het document is toegestaan. Een uitzondering van het type *InvalidOperationException* zal worden gemaakt als deze methode wordt aangeroepen op de bestaande reactie.

U kunt de methode [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) gebruiken om het opgegeven antwoord op deze opmerking te verwijderen.

Het volgende codevoorbeeld laat zien hoe u een antwoord aan een opmerking kunt toevoegen en het antwoord van een opmerking kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Lees reactie Reactie

De eigenschap [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) retourneert een verzameling van de **Comment** objecten die directe kinderen zijn van de opgegeven opmerking.

Het volgende codevoorbeeld laat zien hoe u de antwoorden van een opmerking kunt herhalen en oplossen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
