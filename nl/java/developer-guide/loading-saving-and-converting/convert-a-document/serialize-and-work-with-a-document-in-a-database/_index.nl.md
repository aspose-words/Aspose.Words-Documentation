---
title: Seriëler maken en werken met een document in een database
second_title: Aspose.Words voor Java
articleTitle: Seriëler maken en werken met een document in een database
linktitle: Seriëler maken en werken met een document in een database
description: "Een document omzetten in een byte-array voor werk met dit document in een database. U kunt een document van en naar de database opslaan en ophalen met behulp van Java."
type: docs
weight: 40
url: /nl/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Een van de taken die je nodig hebt om gedaan te krijgen wanneer het werken met documenten is opslaan en ophalen **Document** objecten van en naar een database. Dit zou bijvoorbeeld nodig zijn als u een type content management systeem zou implementeren. Alle vorige versies van documenten moeten in het databasesysteem worden opgeslagen. De mogelijkheid om documenten op te slaan in de database is ook zeer nuttig wanneer uw applicatie biedt een web-based service.

Aspose.Words biedt een mogelijkheid om een document om te zetten in een byte-array voor verdere werkzaamheden met dit document in een database.

## Een document omzetten naar Byte Array

Om een document op te slaan in een database of om een document voor transmissie over het hele web te maken, is het vaak noodzakelijk om het document te serialiseren om een bytearray te verkrijgen.

Serialiseren van een [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) object in Aspose.Words:

1. Bewaar het in een **MemoryStream** de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) methode overbelasting van de **Document** Klasse.
1. Bel de **ToArray** methode, die een reeks bytes die het document in bytevorm.

De stappen hierboven kunnen dan worden omgekeerd om de bytes terug te laden in een **Document** object.

{{% alert color="primary" %}}

Het geselecteerde opslagformaat is belangrijk om ervoor te zorgen dat de hoogste trouw behouden blijft bij het opslaan en herladen in de **Document** object. Om deze reden wordt voorgesteld om een reeks OOXML bestandsformaten te gebruiken.

{{% /alert %}}

Het voorbeeld hieronder laat zien hoe een serialize **Document** object om een byte array te verkrijgen, en dan hoe de byte array unserialize om een **Document** object opnieuw:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Een document opslaan, lezen en verwijderen in een database

Deze sectie laat zien hoe je een document opslaat in een database en laad het dan terug in een `Document` object om ermee te werken. Voor eenvoud is de bestandsnaam de sleutel die gebruikt wordt om documenten op te slaan en op te halen uit de database. De database bevat twee kolommen. De eerste kolom wordt opgeslagen als een tekenreeks en wordt gebruikt om documenten te identificeren. De tweede kolom wordt opgeslagen als een `BLOB` object dat het documentobject opslaat in de bytevorm.

Het volgende voorbeeld van code laat zien hoe u een verbinding met een database kunt opzetten en commando's kunt uitvoeren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In dit voorbeeld gebruiken we de MySQL database om een Aspose.Words document.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document in de database opslaat, dan hetzelfde document opnieuw leest, en tenslotte het record dat het document bevat uit de database verwijdert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Een document opslaan in een database

Om een document op te slaan in een database converteert u dit document naar een reeks bytes, zoals beschreven aan het begin van dit artikel. Sla dan deze byte-array op in een databaseveld.

Het volgende voorbeeld van code laat zien hoe u een document in de gespecificeerde database kunt opslaan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Geef commandoString op, wat een SQL-expressie is die al het werk doet:

- Om een document op te slaan in de database, wordt het commando "INSERT INNU" gebruikt en een tabel gespecificeerd, samen met de waarden van twee recordvelden "FileName and FileContent." Om extra parameters te vermijden, wordt de bestandsnaam van de **Document** Bezwaar tegen zichzelf. De `FileContent` veldwaarde wordt toegewezen bytes uit de geheugenstroom, die een binaire weergave van het opgeslagen document bevat.
- De resterende regel van code voert het commando uit dat de Aspose.Words document in de database.

### Een document uit een database ophalen

Om een document uit de database op te halen, selecteert u de record die de documentgegevens bevat als een reeks bytes. Dan laad de byte array van de record in **MemoryStream** en een **Document** object dat het document van de **MemoryStream**.

Het volgende voorbeeld van code laat zien hoe u een document uit de opgegeven database kunt ophalen en retourneren met behulp van de bestandsnaam als sleutel om dit document op te halen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Het SQL-commando "ZELECT * FROM

{{% /alert %}}

### Een document uit een database verwijderen

Om een document uit de database te verwijderen, gebruik de juiste SQL commando zonder enige manipulaties op de **Document** object.

Het volgende voorbeeld van code laat zien hoe een document uit de database te verwijderen, met behulp van de bestandsnaam om de record op te halen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
