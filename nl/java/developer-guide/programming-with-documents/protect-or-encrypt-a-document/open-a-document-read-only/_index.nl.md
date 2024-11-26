---
title: Document alleen lezen in Java
second_title: Aspose.Words voor Java
articleTitle: Een document alleen-lezen openen
linktitle: Een document alleen-lezen openen
description: "Maak uw document alleen-lezen zodat de inhoud kan worden gekopieerd of gelezen, maar niet gewijzigd met behulp van Java."
type: docs
weight: 10
url: /nl/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Soms heb je een document dat een review nodig heeft, maar je wilt niet dat beoordelaars willekeurig je inhoud wijzigen. Aspose.Words kunt u de toestemming van uw document alleen-lezen zodat de inhoud kan worden gekopieerd of gelezen, maar niet gewijzigd. Dit voorkomt dat inhoud wordt verwijderd of toegevoegd aan uw document.

{{% alert color="primary" %}}

Het toepassen van de optie alleen-lezen op uw document voorkomt niet dat iemand een nieuwe kopie ervan maakt en het met een andere naam opslaat.

{{% /alert %}}

In dit artikel wordt uitgelegd hoe een document alleen-lezen kan worden gemaakt.

## Maak een document alleen-lezen

Aspose.Words heeft de publieke klasse [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) die schrijfbeveiliginginstellingen voor een document specificeert. U maakt geen instanties van deze klasse direct aan.

Schrijfbescherming laat zien of de auteur heeft aanbevolen een document te openen als alleen-lezen en/of een wachtwoord nodig heeft om het document te wijzigen.

Aspose.Words kunt u een document alleen-lezen om te beperken bewerken door het gebruik van de [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) de [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) methode.

{{% alert color="primary" %}}

In Microsoft Word, U kunt een alleen-lezen document op dezelfde manier maken met behulp van beide:

* Open altijd alleen-lezen
* "Wachtwoord te wijzigen" (Opslaan als → Hulpmiddelen → Algemene Opties → Wachtwoord)

{{% /alert %}}

{{% alert color="primary" %}}

Gebruikers kunnen ook het bewerken van documenten beperken door te selecteren [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) als **ReadOnly**, maar dit is een andere functie die biedt meer geavanceerde beschermingsmogelijkheden. Er is een dergelijke functie in Microsoft Word, Het wordt uitgevoerd in Aspose.Words.

**ProtectionType** zal in detail worden beschreven in een van de volgende artikelen:

{{% /alert %}}

De **ReadOnlyRecommended** eigenschap is wachtwoord-beveiligd, dus als u geen wachtwoord voor het toepassen van de **ReadOnlyRecommended** eigendom, dan andere gebruikers kunnen gewoon het document te openen alsof het onbeschermd. U krijgt toegang tot de instellingen voor documentbeveiliging en stelt een wachtwoord voor schrijfbeveiliging in via de **SetPassword** methode.

{{% alert color="primary" %}}

Merk op dat het ingestelde wachtwoord slechts een eigenschap is in een document dat verwijderd kan worden als de eigenschappen van het document geopend worden. Een dergelijk wachtwoord is dus geen garantie voor de documentbeveiliging.

{{% /alert %}}

Als u moet controleren of een document een wachtwoord voor schrijfbescherming heeft dat het van het bewerken beperkt, kunt u de [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) eigendom.

Het volgende voorbeeld van code laat zien hoe een document alleen-lezen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Alleen-lezen beperking verwijderen

Als u niet wilt dat een gebruiker uw document te openen als alleen-lezen, kunt u gewoon de **ReadOnlyRecommened** eigendom aan *false* of selecteren **ProtectionType** als **NoProtection**.

Het volgende voorbeeld van code laat zien hoe u alleen-lezen toegang voor een document kunt verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
