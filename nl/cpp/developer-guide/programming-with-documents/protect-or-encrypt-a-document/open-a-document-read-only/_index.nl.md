---
title: Een Document alleen-lezen openen in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document alleen-lezen openen
linktitle: Een Document alleen-lezen openen
description: "Maak uw document alleen-lezen zodat de inhoud kan worden gekopieerd of gelezen, maar niet gewijzigd."
type: docs
weight: 10
url: /nl/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Soms hebt u een document dat een beoordeling nodig heeft, maar u wilt niet dat reviewers uw inhoud willekeurig wijzigen. Met Aspose.Words kunt u de machtiging van uw document alleen-lezen maken, zodat de inhoud kan worden gekopieerd of gelezen, maar niet kan worden gewijzigd. Dit voorkomt dat inhoud wordt verwijderd of toegevoegd aan uw document.

{{% alert color="primary" %}}

Het toepassen van de optie Alleen-lezen op uw document voorkomt niet dat iemand een nieuwe kopie ervan maakt en deze met een andere naam opslaat.

{{% /alert %}}

In dit artikel wordt uitgelegd hoe u een document alleen-lezen kunt maken.

## Een Document alleen-lezen maken

Aspose.Words heeft de openbare klasse [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) die schrijfbeveiligingsinstellingen voor een document specificeert. U maakt geen exemplaren van deze klasse rechtstreeks aan.

Schrijfbeveiliging geeft aan of de auteur heeft aanbevolen een document als alleen-lezen te openen en/of een wachtwoord te vereisen om het document te wijzigen.

Met Aspose.Words kunt u een document alleen-lezen maken om het bewerken te beperken met behulp van de eigenschap [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) en de methode [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

In Microsoft Word kunt u op een vergelijkbare manier een alleen-lezen document maken met beide:

* "Altijd Alleen-Lezen Openen" (Bestand → Info → Document Beschermen)
* "Password to modify "(opslaan als → Tools → Algemene opties → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Gebruikers kunnen ook het bewerken van documenten beperken door [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) te selecteren als **ReadOnly**, maar dit is een andere functie die meer geavanceerde beveiligingsmogelijkheden biedt. Er is een dergelijke functie in Microsoft Word, respectievelijk, het is geïmplementeerd in Aspose.Words.

**ProtectionType**

{{% /alert %}}

De eigenschap **ReadOnlyRecommended** is beveiligd met een wachtwoord, dus als u geen wachtwoord instelt voordat u de eigenschap **ReadOnlyRecommended** toepast, kunnen andere gebruikers het document eenvoudig openen alsof het onbeschermd is. U opent de instellingen voor documentbeveiliging en stelt een wachtwoord voor schrijfbeveiliging in via de methode **SetPassword**.

{{% alert color="primary" %}}

Merk op dat het wachtwoord dat wordt ingesteld slechts een eigenschap in een document is die kan worden verwijderd als de documenteigenschappen worden geopend. Bijgevolg is een dergelijk wachtwoord geen garantie voor de veiligheid van het document.

{{% /alert %}}

Als u wilt controleren of een document een schrijfbeveiligingswachtwoord heeft dat het bewerken ervan beperkt, kunt u de eigenschap [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/) gebruiken.

Het volgende codevoorbeeld laat zien hoe u een document alleen-lezen kunt maken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Verwijder Alleen-Lezen Beperking

Als u niet wilt dat een gebruiker uw document opent als alleen-lezen, kunt u eenvoudig de eigenschap **ReadOnlyRecommened** instellen op *false* of **ProtectionType** selecteren als **NoProtection**.

Het volgende codevoorbeeld toont hoe u alleen-lezen toegang voor een document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
