---
title: Documentbewerking beperken in C++
second_title: Aspose.Words voor C++
articleTitle: Documentbewerking Beperken
linktitle: Documentbewerking Beperken
description: "Beperk het bewerken van een document door een beperkingstype in te stellen met C++. U kunt ook bescherming verwijderen en onbeperkte bewerkbare gebieden maken."
type: docs
weight: 30
url: /nl/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Soms moet u de mogelijkheid om een document te bewerken beperken en alleen bepaalde acties ermee toestaan. Dit kan handig zijn om te voorkomen dat andere mensen gevoelige en vertrouwelijke informatie in uw document bewerken.

Met Aspose.Words kunt u het bewerken van een document beperken door een beperkingstype in te stellen. Daarnaast kunt u met Aspose.Words ook schrijfbeveiligingsinstellingen opgeven voor een document.

In dit artikel wordt uitgelegd hoe u Aspose.Words kunt gebruiken om een beperkingstype te selecteren, hoe u bescherming kunt toevoegen of verwijderen en hoe u onbeperkte bewerkbare gebieden kunt maken.

## Selecteer Het Type Bewerkingsbeperking

Met Aspose.Words kunt u bepalen hoe u de inhoud beperkt met behulp van de parameter [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) opsomming. Hiermee kunt u een exact type bescherming selecteren, zoals de volgende:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Alle typen zijn beveiligd met een wachtwoord en als dit wachtwoord niet correct wordt ingevoerd, kan een gebruiker de inhoud van uw document niet legaal wijzigen. Als uw document dus aan u wordt geretourneerd zonder dat u het vereiste wachtwoord hoeft op te geven, is dit een teken dat er iets mis is.

Als u geen wachtwoord hebt ingesteld bij het kiezen van het beveiligingstype, kunnen andere gebruikers de bescherming van uw document gewoon negeren.

{{% alert color="primary" %}}

Merk op dat het wachtwoord dat wordt ingesteld slechts een eigenschap in een document is die kan worden verwijderd als de documenteigenschappen worden geopend. Bijgevolg is een dergelijk wachtwoord geen garantie voor de veiligheid van het document. De methode [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) laat precies dat zien.

{{% /alert %}}

## Documentbeveiliging Toevoegen

Het toevoegen van bescherming aan uw document is een eenvoudig proces, omdat u alleen een van de beveiligingsmethoden in deze sectie hoeft toe te passen.

Met Aspose.Words kunt u uw documenten beschermen tegen wijzigingen met behulp van de methode [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Deze methode is geen beveiligingsfunctie en versleutelt een document niet.

{{% alert color="primary" %}}

In Microsoft Word kunt u het bewerken op een vergelijkbare manier beperken door beide:

* Bewerken Beperken (Bestand → Info → Document Beschermen)
* Alternatieve functie - " Bewerken beperken "(herzien → beschermen → bewerken beperken)

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u wachtwoordbeveiliging aan uw document kunt toevoegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Het volgende codevoorbeeld laat zien hoe u het bewerken in een document kunt beperken, zodat alleen bewerken in formuliervelden mogelijk is:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Documentbeveiliging Verwijderen

Met Aspose.Words kunt u de bescherming van een document verwijderen met eenvoudige en directe documentaanpassing. U kunt de documentbeveiliging verwijderen zonder het werkelijke wachtwoord te kennen of het juiste wachtwoord opgeven om het document te ontgrendelen met behulp van de methode [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Beide manieren van verwijderen hebben geen verschil.

Het volgende codevoorbeeld laat zien hoe u bescherming uit uw document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Onbeperkte Bewerkbare Regio ' S Opgeven

U kunt het bewerken van uw document beperken en tegelijkertijd wijzigingen in geselecteerde delen ervan toestaan. Iedereen die uw document opent, heeft dus toegang tot deze onbeperkte delen en kan wijzigingen aanbrengen in de inhoud.

Met Aspose.Words kunt u de delen markeren die in uw document kunnen worden gewijzigd met behulp van de methoden [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) en [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Het volgende codevoorbeeld laat zien hoe u het hele document als alleen-lezen kunt markeren en bewerkbare gebieden erin kunt opgeven:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

U kunt ook verschillende beperkingen voor het bewerken van documenten voor verschillende secties kiezen.

Het volgende codevoorbeeld toont hoe u een beperking voor het hele document toevoegt en vervolgens de beperking voor een van de secties verwijdert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
