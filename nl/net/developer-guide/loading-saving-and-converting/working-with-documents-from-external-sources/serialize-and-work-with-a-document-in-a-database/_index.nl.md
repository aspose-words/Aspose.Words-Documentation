---
title: Document in een database serieren
second_title: Aspose.Words voor .NET
articleTitle: Seriëler maken en werken met een document in een database
linktitle: Seriëler maken en werken met een document in een database
description: "Een document omzetten in een byte-array voor werk met dit document in een database met behulp van C#. U kunt een document van en naar de database opslaan en ophalen."
type: docs
weight: 10
url: /nl/net/serialize-and-work-with-a-document-in-a-database/
---

Een van de taken die je nodig hebt om gedaan te krijgen wanneer het werken met documenten is opslaan en ophalen **Document** objecten van en naar een database. Dit zou bijvoorbeeld nodig zijn als u een type content management systeem zou implementeren. Alle vorige versies van documenten moeten in het databasesysteem worden opgeslagen. De mogelijkheid om documenten op te slaan in de database is ook zeer nuttig wanneer uw applicatie biedt een web-based service.

Aspose.Words biedt een mogelijkheid om een document om te zetten in een byte array voor verdere werkzaamheden met dit document in een database.

## Een document omzetten naar Byte Array

Om een document op te slaan in een database of om een document voor transmissie over het hele web voor te bereiden, is het vaak noodzakelijk om het document serialiseren om een bytearray te verkrijgen.

Serialiseren van een [Document](https://reference.aspose.com/words/net/aspose.words/document/) object in Aspose.Words:

1. Bewaar het voor een **MemoryStream** met de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) methode overbelasting van de **Document** Klasse.
1. Bel de **ToArray** methode, die een reeks bytes die het document in bytevorm.

De stappen hierboven kunnen dan worden omgekeerd om de bytes terug te laden in een **Document** object.

{{% alert color="primary" %}}

Het geselecteerde opslagformaat is belangrijk om ervoor te zorgen dat de hoogste betrouwbaarheid behouden blijft bij het opslaan en opnieuw laden in de **Document** object. Om deze reden wordt voorgesteld om een reeks OOXML bestandsformaten te gebruiken.

{{% /alert %}}

Het voorbeeld hieronder laat zien hoe een serialize **Document** object om een byte array te verkrijgen, en dan hoe de byte array unserialize om een **Document** object opnieuw:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Een document opslaan, lezen en verwijderen in een database

Deze sectie laat zien hoe een document in een database kan worden opgeslagen en vervolgens weer in een `Document` object om ermee te werken. Voor eenvoud is de bestandsnaam de sleutel die gebruikt wordt om documenten op te slaan en op te halen uit de database. De database bevat twee kolommen. De eerste kolom wordt opgeslagen als string en wordt gebruikt om documenten te identificeren. De tweede kolom wordt opgeslagen als een `BLOB` object dat het document object opslaat in de bytevorm.

Het volgende voorbeeld van code laat zien hoe je een verbinding met een database kunt opzetten en commando's kunt uitvoeren:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

In dit voorbeeld gebruiken wij de Microsoft Toegang tot .mdb-database om een Aspose.Words document.

{{% /alert %}}

Het volgende voorbeeld van de code laat zien hoe je een document in de database opslaat, dan hetzelfde document opnieuw leest en uiteindelijk de record met het document uit de database verwijdert:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Een document opslaan in een database

Om een document op te slaan in een database zet dit document om in een reeks bytes, zoals beschreven aan het begin van dit artikel. Sla dan deze byte-array op in een databaseveld.

Het volgende voorbeeld van code laat zien hoe je een document opslaat in de gespecificeerde database:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Specificeer commandoString, wat een SQL expressie is die al het werk doet:

- Om een document op te slaan in de database, wordt het commando "INSERT INWEN" gebruikt en wordt een tabel opgegeven, samen met de waarden van twee recordvelden "FileName en FileContent." Om extra parameters te vermijden, wordt de bestandsnaam van de **Document** Bezwaar tegen zichzelf. De `FileContent` veldwaarde wordt toegewezen bytes uit de geheugenstroom, die een binaire weergave van het opgeslagen document bevat.
- De resterende regel van code voert het commando uit dat de Aspose.Words document in de database.

### Een document uit een database ophalen

Om een document uit de database op te halen, selecteert u de record die de documentgegevens bevat als een reeks bytes. Laad dan de byte array van de record in **MemoryStream** en een **Document** object dat het document van de **MemoryStream**.

Het volgende voorbeeld van code laat zien hoe u een document kunt ophalen en retourneren uit de opgegeven database met behulp van de bestandsnaam als sleutel om dit document op te halen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Het SQL-commando "ZELECT * VANAF" wordt gebruikt om de juiste record op te halen op basis van de bestandsnaam.

{{% /alert %}}

### Een document uit een database verwijderen

Om een document uit de database te verwijderen, gebruik de juiste SQL commando zonder enige manipulaties op de **Document** object.

Het volgende voorbeeld van code laat zien hoe een document uit de database te verwijderen, met behulp van de bestandsnaam om de record op te halen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
