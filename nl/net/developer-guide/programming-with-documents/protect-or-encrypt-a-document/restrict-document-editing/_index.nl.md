---
title: Document beperken Bewerken C#
second_title: Aspose.Words voor .NET
articleTitle: Document bewerken beperken
linktitle: Document bewerken beperken
description: "Bewerken van een document beperken door een beperkingstype in te stellen C#. Je kunt ook bescherming verwijderen en onbeperkte bewerkbare regio's maken."
type: docs
weight: 30
url: /nl/net/restrict-document-editing/
---

Soms moet je de mogelijkheid om een document te bewerken beperken en alleen bepaalde acties ermee toestaan. Dit kan nuttig zijn om te voorkomen dat andere mensen gevoelige en vertrouwelijke informatie in uw document bewerken.

Aspose.Words kunt u het bewerken van een document beperken door het instellen van een beperkingstype. Bovendien, Aspose.Words kunt u ook schrijfbeveiliging instellen voor een document.

Dit artikel legt uit hoe te gebruiken Aspose.Words om een beperkingstype te selecteren, hoe bescherming toe te voegen of te verwijderen, en hoe onbeperkte bewerkbare regio's te maken.

## Selecteer type bewerkbeperking

Aspose.Words kunt u de manier waarop u de inhoud te beperken met behulp van de [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) Cumulatieparameter. Dit stelt u in staat om een exact type bescherming te selecteren, zoals het volgende:

* Alleen opmerkingen toestaan
* Alleen FormFields toestaan
* Alleen revisies toestaan
* Alleen-lezen
* Geen bescherming

Alle types zijn beveiligd met een wachtwoord, en als dit wachtwoord niet correct wordt ingevoerd, zal een gebruiker niet in staat zijn om de inhoud van uw document wettelijk te wijzigen. Dus, als uw document wordt teruggegeven aan u zonder een vereiste om het nodige wachtwoord te verstrekken, dit is een teken dat er iets mis is.

Als u geen wachtwoord hebt ingesteld bij het kiezen van het beveiligingstype, kunnen andere gebruikers gewoon de bescherming van uw document negeren.

{{% alert color="primary" %}}

Merk op dat het wachtwoord dat ingesteld wordt slechts een eigenschap is in een document dat verwijderd kan worden als de documenteneigenschappen geopend worden. Een dergelijk wachtwoord is dus geen garantie voor de documentbeveiliging. De [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) Dat blijkt uit de methode.

{{% /alert %}}

## Documentbescherming toevoegen

Het toevoegen van bescherming aan uw document is een eenvoudig proces, want alles wat u hoeft te doen is het toepassen van een van de beschermingsmethoden die zijn beschreven in deze sectie.

Aspose.Words kunt u uw documenten te beschermen tegen wijzigingen met behulp van de [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) methode. Deze methode is geen beveiligingsfunctie en versleutelt geen document.

{{% alert color="primary" %}}

In Microsoft Word, u kunt het bewerken op een soortgelijke manier beperken met behulp van beide:

* Bewerken beperken (Bestand → Info → Document beschermen)
* Alternatieve functie

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u wachtwoordbeveiliging toevoegt aan uw document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Het volgende voorbeeld van code laat zien hoe het bewerken in een document te beperken zodat alleen bewerken in vorm velden mogelijk is:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Documentbescherming verwijderen

Aspose.Words Hiermee kunt u de bescherming van een document met eenvoudige en directe documentmodificatie verwijderen. U kunt de documentbeveiliging verwijderen zonder het eigenlijke wachtwoord te kennen of het juiste wachtwoord geven om het document te ontgrendelen met behulp van de [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) methode. Beide manieren verwijderen hebben geen verschil.

Het volgende voorbeeld van code laat zien hoe u bescherming uit uw document verwijdert:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Onbeperkte bewerkbare regio's specificeren

U kunt het bewerken van uw document beperken en tegelijkertijd wijzigingen toestaan in geselecteerde delen ervan. Dus, iedereen die uw document opent zal in staat zijn om toegang te krijgen tot deze onbeperkte onderdelen en wijzigingen aan te brengen in de inhoud.

Aspose.Words kunt u de delen die kunnen worden gewijzigd in uw document markeren met behulp van de [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) en [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) methoden.

Het volgende voorbeeld van code laat zien hoe u het hele document als alleen-lezen markeert en bewerkbare regio's in het document specificeert:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

U kunt ook verschillende beperkingen voor het bewerken van documenten voor verschillende secties kiezen.

Het volgende voorbeeld van code laat zien hoe je een beperking voor het hele document toevoegt, en verwijdert de beperking voor een van de secties:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
