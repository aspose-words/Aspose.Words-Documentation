---
title: Wijzigingen in een document in C#
second_title: Aspose.Words voor .NET
articleTitle: Wijzigingen in een document volgen
linktitle: Wijzigingen in een document volgen
description: "Wijzigingen in inhoud en formattering volgen die door u of anderen met behulp van C#. Toegang tot individuele herzieningen in een document en verschillende eigenschappen toepassen op hen."
type: docs
weight: 270
url: /nl/net/track-changes-in-a-document/
---

De functionaliteit van track wijzigingen, ook bekend als review, stelt u in staat om wijzigingen in inhoud en formattering die door u of andere gebruikers. Deze track verandert functie met Aspose.Words ondersteunt track wijzigingen in Microsoft Word. Met deze functionaliteit heeft u toegang tot individuele revisies in uw document en past u verschillende eigenschappen toe.

Wanneer u de functie track changes inschakelt, zullen alle ingevoegde, verwijderde en gewijzigde elementen van het document visueel gemarkeerd worden met informatie over wie, wanneer en wat er veranderd is. Objecten die de informatie over wat werd veranderd dragen worden genoemd Ga er bijvoorbeeld van uit dat u een document wilt bekijken en belangrijke wijzigingen wilt aanbrengen, dit kan betekenen dat u revisies moet maken. Ook kunt u opmerkingen invoegen om enkele van de wijzigingen te bespreken. Dat is waar veranderingen in documenten worden opgespoord.

In dit artikel wordt uitgelegd hoe u veranderingen kunt beheren en bijhouden die door veel recensies zijn gemaakt op hetzelfde document, evenals de eigenschappen voor het bijhouden van wijzigingen.

{{% alert color="primary" %}}

Merk op dat de commentaar functie in Aspose.Words, evenals in Microsoft Word, kan worden geassocieerd met tracking wijzigingen. Vergeet echter niet dat opmerkingen volledig onafhankelijk zijn van het volgen van veranderingen.

{{% /alert %}}

## Wat is een herziening?

Voordat je in revisies gaat duiken, laat je de betekenis van revisies uitleggen. A [revision](https://reference.aspose.com/words/net/aspose.words/revision/) is een verandering die zich voordoet in een knooppunt van een document terwijl een revisiegroep, vertegenwoordigd door de [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) klasse, is een groep van opeenvolgende herzieningen die voorkomen in veel knooppunten van een document. Revisie is een hulpmiddel om veranderingen te volgen.

Revisies worden gebruikt in de tracking wijzigingen functie en binnen de vergelijking documenten functie, waar herzieningen verschijnen als gevolg van vergelijking. Dus, revisies binnen de tracking veranderingen functie tonen door wie en wat werd veranderd.

{{% alert color="primary" %}}

Merk op dat Microsoft Word laat u niet toe individuele herzieningen te bekijken, het geeft u alleen de mogelijkheid om sequentiële herzieningen als één entiteit te zien. Maar Aspose.Words lost deze beperking op met de **RevisionGroup** Klasse.

{{% /alert %}}

Aspose.Words ondersteunt verschillende revisietypes, evenals in Microsoft Word, zoals invoegen, verwijderen, formaat Wijzigen, StyleDefinition Verandering, en bewegen. Alle revisietypen zijn vertegenwoordigd met de [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/) Lijst.

{{% alert color="primary" %}}

Merk op dat herzieningen een resultaat hebben dat vergelijkbaar is met Microsoft Word maar Aspose.Words formatteren niet detecteren tijdens het volgen van wijzigingen.

{{% /alert %}}

## Wijzigingen starten en stoppen met volgen

Een document bewerken telt meestal niet als een revisie totdat u het begint te volgen. Aspose.Words Hiermee kunt u automatisch alle wijzigingen in uw document volgen met eenvoudige stappen. U kunt het proces van het volgen van wijzigingen eenvoudig beginnen met behulp van de [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) methode. Als u het proces van het bijhouden van wijzigingen moet stoppen, zodat toekomstige bewerkingen niet worden beschouwd als herzieningen, moet u de [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) methode.

{{% alert color="primary" %}}

Merk op dat de `StartTrackingRevisions` methode verandert de status van de [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) eigenschap en gebruikt de waarde ervan niet voor het doel van revisie tracking. Bovendien, als een knooppunt is verplaatst van de ene locatie naar de andere in het tracked document, dan zullen revisies worden gemaakt, inclusief move-from en move-to range.

{{% /alert %}}

Aan het einde van het proces van trackingwijzigingen in uw document, kunt u zelfs alle herzieningen accepteren of weigeren om het document terug te draaien naar zijn oorspronkelijke vorm. Dit kan worden bereikt door [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) of [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) methode. Bovendien kunt u elke herziening afzonderlijk accepteren of verwerpen door gebruik te maken van de [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) of [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) methode.

Alle veranderingen zullen gevolgd worden voor één iteratie vanaf het moment dat je het proces start tot het moment dat je het stopt. De verbinding tussen verschillende iteraties wordt weergegeven als het volgende scenario: je maakt het trackingproces af, maakt vervolgens enkele wijzigingen aan en start opnieuw met het volgen van wijzigingen. Met dit scenario worden alle wijzigingen die je niet hebt geaccepteerd of afgewezen weer weergegeven.

{{% alert color="primary" %}}

Merk op dat de `AcceptAllRevisions` methode is vergelijkbaar met de Microsoft Word.

{{% /alert %}}

Het volgende code voorbeeld laat zien hoe te werken met tracking wijzigingen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Het volgende codevoorbeeld laat zien hoe revisies worden gegenereerd wanneer een knooppunt wordt verplaatst binnen een traced document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Wijzigingen beheren en opslaan als herzieningen

Met de vorige tracking wijzigingen functie, kunt u begrijpen welke wijzigingen zijn gemaakt in uw document en wie deze wijzigingen heeft gemaakt. Terwijl met de [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) functie, u dwingt wijzigingen in uw document te worden opgeslagen als revisies.

Aspose.Words kunt u controleren of een document een revisie heeft of niet met behulp van de [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) eigendom. Als u de wijzigingen in uw document niet automatisch hoeft te volgen via de StartTrackRevisions en StopTrackRevisions methoden, dan kunt u de `TrackRevisions` eigenschap om te controleren of de wijzigingen worden gevolgd tijdens het bewerken van een document in Microsoft Word en opgeslagen als herzieningen.

De `TrackRevisions` feature maakt revisies in plaats van echt DOM veranderingen. Maar de herzieningen zelf zijn apart. Bijvoorbeeld, Als u een alinea verwijdert, Aspose.Words maken het als een herziening, markeren als verwijdering, in plaats van verwijderen.

Bovendien, Aspose.Words kunt u controleren of een object is ingevoegd, verwijderd of gewijzigd formatteren met behulp van de [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/), en [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) eigenschappen.

{{% alert color="primary" %}}

Merk op dat er geen verband is tussen de herzieningen zelf en de `TrackRevisions` eigendom. Daarnaast kunt u revisies accepteren/verwerpen, ongeacht de functie trackingwijzigingen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe verschillende eigenschappen met herzieningen kunnen worden toegepast:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
