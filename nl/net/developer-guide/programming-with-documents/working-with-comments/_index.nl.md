---
title: Werken met opmerkingen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met opmerkingen
linktitle: Werken met opmerkingen
description: "Werken met commentaar met behulp van C#."
type: docs
weight: 260
url: /nl/net/working-with-comments/
---

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online annotaties verwijderen](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words stelt gebruikers in staat om te werken met opmerkingen Aspose.Words worden vertegenwoordigd door de [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) Klasse. Gebruik ook de [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) klassen om het gebied van de tekst te specificeren dat moet worden geassocieerd met een commentaar.

## Commentaar toevoegen

Aspose.Words kunt u opmerkingen toevoegen op verschillende manieren:

1. Gebruik van de [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) klasse
2. Gebruik van de [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) klassen

Het volgende voorbeeld van code laat zien hoe u een commentaar toe te voegen aan een paragraaf met behulp van de **Comment** klasse:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een commentaar toe te voegen aan een paragraaf met behulp van een gebied van tekst en de **CommentRangeStart** en **CommentRangeEnd** klassen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Opmerkingen uitpakken of verwijderen

Comments gebruiken in een Word-document (naast Track Changes) is een veelvoorkomende praktijk bij het bekijken van documenten, vooral wanneer er meerdere beoordelaars zijn. Er kunnen situaties zijn waarin het enige wat je nodig hebt van een document is de opmerkingen. Stel dat u een lijst van review bevindingen wilt genereren, of misschien hebt u alle nuttige informatie uit het document verzameld en wilt u gewoon onnodige opmerkingen verwijderen. U kunt de opmerkingen van een bepaalde beoordelaar bekijken of verwijderen.

In dit voorbeeld zullen we enkele eenvoudige methoden bekijken om zowel informatie uit de commentaren in een document te verzamelen als om opmerkingen uit een document te verwijderen. Specifiek zullen we bespreken hoe:

- Haal alle opmerkingen uit een document of alleen die van een bepaalde auteur
- Verwijder alle opmerkingen van een document of alleen van een bepaalde auteur

### Hoe uitpakken of verwijderen van opmerkingen

De code in dit monster is eigenlijk vrij eenvoudig en alle methoden zijn gebaseerd op dezelfde aanpak. Een commentaar in een Word-document wordt weergegeven door een [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) object in de Aspose.Words document object model. Voor het verzamelen van alle opmerkingen in een document gebruik de [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) methode met de eerste parameter ingesteld op [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Zorg dat de tweede parameter van de **GetChildNodes** methode is ingesteld op true: dit dwingt de **GetChildNodes** te selecteren uit alle kindknooppunten recursief, in plaats van alleen het verzamelen van de directe kinderen.

Om te illustreren hoe opmerkingen uit een document te halen en te verwijderen, zullen we door de volgende stappen gaan:

1. Een Word-document openen met de [Document](https://reference.aspose.com/words/net/aspose.words/document/) klasse
2. Krijg alle commentaren uit het document in een verzameling
3. Om opmerkingen te maken:
   1. Ga door de verzameling met behulp van de voorelk exploitant
   2. Uitpakken en lijst van de auteur naam, datum en tijd en tekst van alle commentaren
   3. Uitpakken en lijst van de auteur naam, datum en tijd en tekst van de opmerkingen geschreven door een specifieke auteur, in dit geval de auteur
4. Opmerkingen verwijderen:
   1. Ga achteruit door de collectie met behulp van de voor operator
   2. Reacties verwijderen
5. Wijzigingen opslaan

### Hoe alle opmerkingen uitpakken

De **GetChildNodes** methode is zeer nuttig en je kunt het gebruiken elke keer dat je nodig hebt om een lijst van document knooppunten van elk type te krijgen. De resulterende collectie creëert geen directe overhead omdat de knooppunten alleen in deze collectie worden geselecteerd wanneer u items opsomt of er toegang toe heeft.

Het volgende voorbeeld van code laat zien hoe de naam, datum en tijd van de auteur en de tekst van alle commentaren in het document te extraheren:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Commentaar van een bepaalde auteur uitpakken

Nadat u hebt geselecteerd **Comment** knooppunten in een verzameling, alles wat je hoeft te doen is het extraheren van de informatie die je nodig hebt. In deze sample worden auteursletters, datum, tijd en de platte tekst van het commentaar gecombineerd tot één tekenreeks; je kunt ervoor kiezen om het op een andere manier op te slaan.

De overbelaste methode die de Comments haalt van een bepaalde auteur is bijna hetzelfde, het controleert gewoon de auteur naam voordat het toevoegen van de info in de array.

Het volgende voorbeeld van code laat zien hoe de auteur naam, datum&tijd en tekst van de opmerkingen door de opgegeven auteur te halen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Hoe te verwijderen Reacties

Als u alle opmerkingen verwijdert, is het niet nodig om door de collectie te verwijderen opmerkingen een voor een. U kunt ze verwijderen door de [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) methode voor de verzameling van opmerkingen.

Het volgende voorbeeld van code laat zien hoe alle opmerkingen in het document te verwijderen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Wanneer u selectief opmerkingen moet verwijderen, wordt het proces meer vergelijkbaar met de code die we gebruikt voor commentaar extractie.

Het volgende voorbeeld van code laat zien hoe commentaar van de opgegeven auteur te verwijderen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Het belangrijkste punt om hier te benadrukken is het gebruik van de voor de exploitant. In tegenstelling tot de eenvoudige extractie, hier wilt u een reactie te verwijderen. Een geschikte truc is om de collectie achteruit te itereren van de laatste reactie naar de eerste. De reden hiervoor als je vanaf het einde begint en achteruit gaat, blijft de index van de voorgaande items ongewijzigd, en je kunt terugwerken naar het eerste item in de collectie.

De volgende code voorbeeld toont de methoden voor de opmerkingen extractie en verwijdering:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Hoe verwijder ik een reactie tussen reactieRangeStart en reactieRangeEnd

Gebruik Aspose.Words u kunt ook verwijderen opmerkingen tussen de **CommentRangeStart** en **CommentRangeEnd** knooppunten.

Het volgende voorbeeld van code toont hoe tekst te verwijderen tussen **CommentRangeStart** en **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Reactie toevoegen of verwijderen

De [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) methode voegt een antwoord op dit commentaar. Houd er rekening mee dat vanwege de bestaande Microsoft Office beperkingen slechts 1 niveau van antwoorden is toegestaan in het document. Een uitzondering op het type *InvalidOperationException* zal worden verhoogd als deze methode wordt aangeroepen op de bestaande reactie.

U kunt de [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) methode om het opgegeven antwoord op deze opmerking te verwijderen.

Het volgende voorbeeld van code laat zien hoe u een antwoord toe te voegen aan commentaar en verwijderen commentaar antwoord:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Reageren op commentaar lezen

De [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) object geeft een verzameling van de [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) objecten die direct kinderen zijn van het gespecificeerde commentaar.

Het volgende voorbeeld van code laat zien hoe te itereren door een reactie antwoorden en ze opgelost:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
