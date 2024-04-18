---
title: Een document alleen lezen openen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document alleen-lezen openen
linktitle: Een document alleen-lezen openen
description: "Maak uw document alleen-lezen zodat de inhoud kan worden gekopieerd of gelezen, maar niet gewijzigd met behulp van Python."
type: docs
weight: 10
url: /nl/python-net/open-a-document-read-only/
---

Soms heb je een document dat een review nodig heeft, maar je wilt niet dat beoordelaars willekeurig je inhoud wijzigen. Aspose.Words kunt u de toestemming van uw document alleen-lezen, zodat de inhoud kan worden gekopieerd of gelezen, maar niet gewijzigd. Dit voorkomt dat inhoud wordt verwijderd of toegevoegd aan uw document.

{{% alert color="primary" %}}

Het toepassen van de alleen-lezen optie op uw document voorkomt niet dat iemand een nieuwe kopie ervan maakt en het met een andere naam opslaat.

{{% /alert %}}

Dit artikel legt uit hoe een document alleen-lezen.

## Een document alleen-lezen maken

Aspose.Words heeft de publieke klasse [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) die schrijfbeveiliginginstellingen voor een document specificeert. U maakt geen instanties van deze klasse direct aan.

Schrijfbeveiliging laat zien of de auteur heeft aanbevolen een document te openen als alleen-lezen en/of een wachtwoord nodig heeft om het document te wijzigen.

Aspose.Words kunt u een document alleen-lezen te beperken bewerken door het gebruik van de [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) de [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) methode.

{{% alert color="primary" %}}

In Microsoft Word, U kunt een alleen-lezen document op dezelfde manier maken met behulp van beide:

* "Always Open Read-Only" (File → Info → Protect Document)
* "Wachtwoord te wijzigen" (Opslaan als → Hulpmiddelen → Algemene Opties → Wachtwoord)

{{% /alert %}}

{{% alert color="primary" %}}

Gebruikers kunnen ook het bewerken van documenten beperken door te selecteren [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) als [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), maar dit is een andere functie die biedt meer geavanceerde beschermingsmogelijkheden. Er is een dergelijke functie in Microsoft Word, Het wordt uitgevoerd in Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) wordt in detail beschreven in een van de volgende artikelen:

{{% /alert %}}

De [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eigenschap is wachtwoord-beveiligd, dus als u geen wachtwoord voor het toepassen van de [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eigendom, dan andere gebruikers kunnen gewoon het document te openen alsof het onbeschermd. U krijgt toegang tot de instellingen voor documentbeveiliging en stelt een wachtwoord voor schrijfbeveiliging in via de [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) methode.

{{% alert color="primary" %}}

Merk op dat het wachtwoord dat ingesteld wordt slechts een eigenschap is in een document dat verwijderd kan worden als de documenteneigenschappen geopend worden. Een dergelijk wachtwoord is dus geen garantie voor de documentbeveiliging.

{{% /alert %}}

Als u moet controleren of een document een wachtwoord voor schrijfbescherming heeft dat het van het bewerken beperkt, kunt u de [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) eigendom.

Het volgende voorbeeld van code laat zien hoe een document alleen-lezen:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Alleen-lezen beperkingen verwijderen

Als u niet wilt dat een gebruiker uw document te openen als alleen-lezen, kunt u gewoon de [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eigendom aan `False` of selecteren [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) als [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Het volgende voorbeeld van code laat zien hoe u alleen-lezen toegang voor een document kunt verwijderen:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
