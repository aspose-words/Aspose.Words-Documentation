---
title: Werken met opmerkingen in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met opmerkingen
linktitle: Werken met opmerkingen
description: "Werken met opmerkingen met behulp van Java."
type: docs
weight: 260
url: /nl/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online annotaties verwijderen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words stelt gebruikers in staat om te werken met opmerkingen Aspose.Words worden vertegenwoordigd door de [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) Klasse. Gebruik ook de [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) klassen om het gebied van de tekst te specificeren dat moet worden geassocieerd met een commentaar.

## Een opmerking toevoegen

Aspose.Words kunt u opmerkingen toevoegen op verschillende manieren:

1. Gebruik van de [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) klasse
2. Gebruik van de [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) klassen

Het volgende voorbeeld van code laat zien hoe u een commentaar toe te voegen aan een paragraaf met behulp van de **Comment** klasse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Het volgende voorbeeld van code laat zien hoe je een commentaar toevoegt aan een alinea met behulp van een tekstgebied en de **CommentRangeStart** en **CommentRangeEnd** klassen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Opmerkingen uitpakken of verwijderen

Commentaar gebruiken in een Word-document (naast Track Changes) is een veelvoorkomende praktijk bij het bekijken van documenten, vooral wanneer er meerdere beoordelaars zijn. Er kunnen situaties zijn waar het enige wat je nodig hebt van een document is de opmerkingen. Stel dat u een lijst van review bevindingen wilt genereren, of misschien hebt u alle nuttige informatie uit het document verzameld en wilt u gewoon onnodige opmerkingen verwijderen. U kunt de opmerkingen van een bepaalde beoordelaar bekijken of verwijderen.

In deze steekproef zullen we enkele eenvoudige methoden bekijken om zowel informatie uit de commentaren in een document te verzamelen als om opmerkingen uit een document te verwijderen. In het bijzonder zullen we onderzoeken hoe:

- Haal alle opmerkingen uit een document of alleen die van een bepaalde auteur.
- Verwijder alle opmerkingen van een document of alleen van een bepaalde auteur.

### Hoe om opmerkingen uit te pakken of te verwijderen

De code in dit monster is vrij eenvoudig en alle methoden zijn gebaseerd op dezelfde benadering. Een commentaar in een Word-document wordt weergegeven door een `Comment` object in de Aspose.Words document object model. Voor het verzamelen van alle opmerkingen in een document gebruik de [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) methode met de eerste parameter ingesteld op `NodeType.Comment`. Zorg ervoor dat de tweede parameter van de **getChildNodes** methode is ingesteld op true: dit dwingt de **getChildNodes** te selecteren uit alle kindknooppunten recursief, in plaats van alleen het verzamelen van de directe kinderen.

Om te illustreren hoe commentaar uit een document te halen en te verwijderen, zullen we door de volgende stappen gaan:

1. Een Word-document openen met de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasse
1. Krijg alle commentaren uit het document in een verzameling
1. Om opmerkingen te maken:
   1. Ga door de verzameling met behulp van de voor de exploitant
   1. Uitpakken en lijst van de auteur naam, datum en tijd en tekst van alle commentaren
   1. Uitpakken en lijst van de auteur naam, datum en tijd en tekst van de opmerkingen geschreven door een specifieke auteur, in dit geval, de auteur
1. Opmerkingen verwijderen:
   1. Ga achteruit door de verzameling met behulp van de voor de exploitant
   1. Reacties verwijderen
1. Bewaar de wijzigingen.

We gaan het volgende Word-document gebruiken voor deze oefening:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Zoals u kunt zien, bevat het een aantal opmerkingen van twee auteurs met de initialen "pm

### Hoe alle opmerkingen uitpakken

De [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) methode is zeer nuttig en u kunt het gebruiken elke keer als je nodig hebt om een lijst van document knooppunten van elk type te krijgen. De resulterende collectie maakt geen directe overhead omdat de knooppunten worden geselecteerd in deze collectie alleen wanneer u opsomt of toegang items in het.

Het volgende voorbeeld van code laat zien hoe de auteur naam, datum&tijd en tekst van alle commentaren in het document te halen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Hoe om opmerkingen van een gespecificeerde auteur uit te pakken

Nadat u hebt gekozen Comment nodes in een verzameling, alles wat je hoeft te doen is het extraheren van de informatie die u nodig hebt. In dit voorbeeld worden de initialen van de auteur, datum, tijd en de platte tekst van het commentaar gecombineerd tot één tekenreeks; je zou kunnen kiezen om het op een andere manier op te slaan.

De overbelaste methode die de Comments van een bepaalde auteur haalt is bijna hetzelfde, het controleert alleen de auteur naam voordat het toevoegen van de info in de array.

Het volgende voorbeeld van de code laat zien hoe de auteur naam, datum&tijd en tekst van de commentaren door de opgegeven auteur te extraheren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Hoe te verwijderen Reacties

Als u alle opmerkingen verwijdert, is het niet nodig om door de collectie te verwijderen opmerkingen een voor een; u kunt verwijderen door te bellen [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) over de verzameling opmerkingen.

Het volgende voorbeeld van code laat zien hoe alle opmerkingen in het document te verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Wanneer u selectief opmerkingen te verwijderen, wordt het proces meer vergelijkbaar met de code die we gebruikt voor commentaar extractie.

Het volgende voorbeeld van code laat zien hoe commentaar van de opgegeven auteur te verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Het belangrijkste punt om hier te benadrukken is het gebruik van de voor de exploitant. In tegenstelling tot de eenvoudige extractie, hier wilt u een reactie te verwijderen. Een geschikte truc is om de collectie achteruit te itereren van de laatste reactie naar de eerste. De reden hiervoor als je vanaf het einde begint en achteruit gaat, blijft de index van de voorgaande items ongewijzigd, en je kunt terugwerken naar het eerste item in de collectie.

Het volgende voorbeeld van code toont de methoden voor de extractie en verwijdering van opmerkingen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Bij de lancering toont het monster de volgende resultaten. In de eerste plaats worden alle opmerkingen van alle auteurs opgesomd, daarna worden alleen opmerkingen van de geselecteerde auteur opgesomd. Tot slot, de code verwijderen van alle opmerkingen.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Het uitvoer Word-document heeft nu opmerkingen verwijderd:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Hoe tekst te verwijderen tussen reactieRangeStart en reactieRangeEnd

Gebruik Aspose.Words kunt u ook opmerkingen verwijderen tussen de reactieRangeStart en reactieRangeEnd knooppunten.

Het volgende voorbeeld van code laat zien hoe tekst te verwijderen tussen CommentRangeStart en CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Reactie toevoegen of verwijderen

De [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) methode voegt een antwoord op dit commentaar. Houd er rekening mee dat vanwege de bestaande beperkingen van het MS Office slechts één (1) niveau van antwoorden is toegestaan in het document. Een uitzondering op het type InvalidOperationException zal worden verhoogd als deze methode wordt aangeroepen op de bestaande reactie.

U kunt de [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) methode om het opgegeven antwoord op dit commentaar te verwijderen.

De volgende code voorbeeld laat zien hoe u een antwoord toe te voegen aan een reactie en verwijder een commentaar antwoord:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Antwoord lezen

Aspose.Words steun om het antwoord van een reactie te lezen. De [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) object geeft een verzameling van de [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objecten die onmiddellijk kinderen zijn van de gespecificeerde opmerking.

De volgende code voorbeeld laat zien hoe te itereren door een reactie antwoorden en opgelost ze:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
