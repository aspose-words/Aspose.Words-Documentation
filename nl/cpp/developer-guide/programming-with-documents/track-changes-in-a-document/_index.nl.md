---
title: Wijzigingen in een Document bijhouden in C++
second_title: Aspose.Words voor C++
articleTitle: Wijzigingen in een Document bijhouden
linktitle: Wijzigingen in een Document bijhouden
description: "Houd wijzigingen in inhoud en opmaak bij die door u of anderen zijn aangebracht met behulp van C++. Krijg toegang tot afzonderlijke revisies in een document en pas verschillende eigenschappen toe."
type: docs
weight: 270
url: /nl/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

Met de functionaliteit van track changes, ook wel reviewing genoemd, kunt u wijzigingen in inhoud en opmaak door u of andere gebruikers bijhouden. Deze functie Wijzigingen bijhouden met Aspose.Words ondersteunt wijzigingen bijhouden in Microsoft Word. Met deze functionaliteit hebt u toegang tot afzonderlijke revisies in uw document en kunt u verschillende eigenschappen daarop toepassen.

Wanneer u de functie Wijzigingen bijhouden inschakelt, worden alle ingevoegde, verwijderde en gewijzigde elementen van het document visueel gemarkeerd met informatie over wie, wanneer en wat is gewijzigd. Objecten die de informatie bevatten over wat er is gewijzigd, worden "tracking changes"genoemd. Stel bijvoorbeeld dat u een document wilt bekijken en belangrijke wijzigingen wilt aanbrengen – dit kan betekenen dat u herzieningen moet aanbrengen. Mogelijk moet u ook opmerkingen invoegen om enkele wijzigingen te bespreken. Dat is waar het bijhouden van wijzigingen in documenten binnenkomt.

In dit artikel wordt uitgelegd hoe u wijzigingen die door veel beoordelaars in hetzelfde document zijn gemaakt, kunt beheren en bijhouden, evenals de eigenschappen voor het bijhouden van wijzigingen.

{{% alert color="primary" %}}

Merk op dat de commentaarfunctie in Aspose.Words, evenals in Microsoft Word, kan worden gekoppeld aan het bijhouden van wijzigingen. Houd er echter rekening mee dat opmerkingen volledig onafhankelijk zijn van het bijhouden van wijzigingen.

{{% /alert %}}

## Wat Is een revisie

Voordat we ingaan op herzieningen, laten we de Betekenis van herzieningen uitleggen. Een [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) is een wijziging die optreedt in één knooppunt van een document, terwijl een revisiegroep, vertegenwoordigd door de klasse [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), een groep opeenvolgende herzieningen is die voorkomt in veel knooppunten van een document. Revisie is een tool voor het bijhouden van wijzigingen.

Revisies worden gebruikt in de functie Wijzigingen bijhouden en in de functie documenten vergelijken, waar revisies worden weergegeven als gevolg van de vergelijking. Revisies in de functie tracking changes laten dus zien door wie en wat er is gewijzigd.

{{% alert color="primary" %}}

Merk op dat Microsoft Word u niet toestaat om individuele herzieningen te bekijken, maar u alleen toestaat om opeenvolgende herzieningen als één entiteit te bekijken. Maar Aspose.Words Lost deze beperking op met de **RevisionGroup** Klasse.

{{% /alert %}}

Aspose.Words ondersteunt verschillende revisietypen, evenals in Microsoft Word, zoals Invoegen, Verwijderen, FormatChange, StyleDefinitionChange en verplaatsen. Alle revisietypen worden weergegeven met de [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/) opsomming.

{{% alert color="primary" %}}

Merk op dat revisies een resultaat hebben dat vergelijkbaar is met Microsoft Word, maar dat Aspose.Words de opmaak niet detecteert tijdens het bijhouden van wijzigingen.

{{% /alert %}}

## Wijzigingen bijhouden starten en stoppen

Het bewerken van een document telt meestal niet als een revisie totdat u het begint te volgen. Met Aspose.Words kunt u automatisch alle wijzigingen in uw document bijhouden met eenvoudige stappen. U kunt het proces van het bijhouden van wijzigingen eenvoudig starten met de methode [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Als u het proces van het bijhouden van wijzigingen moet stoppen, zodat toekomstige bewerkingen niet als revisies worden beschouwd, moet u de methode [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/) gebruiken.

{{% alert color="primary" %}}

Merk op dat de methode `StartTrackingRevisions` de status van de eigenschap [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) niet wijzigt en de waarde ervan niet gebruikt voor het bijhouden van revisies. Als een knooppunt van de ene locatie naar de andere in het bijgehouden document is verplaatst, worden bovendien verplaatsingsherzieningen gemaakt, inclusief verplaatsingsbereik en verplaatsingsbereik.

{{% /alert %}}

Aan het einde van het proces voor het bijhouden van wijzigingen in uw document kunt u zelfs alle herzieningen accepteren of weigeren om het document terug te brengen naar de oorspronkelijke vorm. Dit kan worden bereikt door de [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) of [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/) methode te gebruiken. Bovendien kunt u elke herziening afzonderlijk accepteren of afwijzen met behulp van de methode [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) of [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Alle wijzigingen worden bijgehouden voor één iteratie vanaf het moment dat u het proces start tot het moment dat u het stopt. De verbinding tussen verschillende iteraties wordt weergegeven als het volgende scenario: U voltooit het trackingproces, brengt vervolgens enkele wijzigingen aan en begint opnieuw met het bijhouden van wijzigingen. In dit scenario worden alle wijzigingen die u niet hebt geaccepteerd of afgewezen, opnieuw weergegeven.

{{% alert color="primary" %}}

Merk op dat de `AcceptAllRevisions` methode vergelijkbaar is met de "alle wijzigingen accepteren" in Microsoft Word.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u kunt werken met het bijhouden van wijzigingen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Het volgende codevoorbeeld laat zien hoe revisies worden gegenereerd wanneer een knooppunt wordt verplaatst binnen een bijgehouden document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Wijzigingen beheren en opslaan als revisies

Met de functie vorige wijzigingen bijhouden kunt u begrijpen welke wijzigingen in uw document zijn aangebracht en wie deze wijzigingen heeft aangebracht. Terwijl u de functie [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) gebruikt, dwingt u wijzigingen in uw document op te slaan als revisies.

Met Aspose.Words kunt u controleren of een document een revisie heeft of niet met behulp van de eigenschap [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Als u de wijzigingen in uw document niet automatisch hoeft bij te houden via de methoden StartTrackRevisions en StopTrackRevisions, kunt u de eigenschap `TrackRevisions` gebruiken om te controleren of de wijzigingen worden bijgehouden tijdens het bewerken van een document in Microsoft Word en worden opgeslagen als revisies.

De functie `TrackRevisions` maakt revisies in plaats van echte DOM wijzigingen. Maar de herzieningen zelf zijn gescheiden. Als u bijvoorbeeld een alinea verwijdert, voert u Aspose.Words uit als een revisie en markeert u deze als verwijdering in plaats van deze te verwijderen.

Bovendien kunt u met Aspose.Words Controleren of een object is ingevoegd, verwijderd of gewijzigd opmaak met behulp van de [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), en [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) eigenschappen.

{{% alert color="primary" %}}

Merk op dat er geen verband is tussen de revisies zelf en de eigenschap `TrackRevisions`. Bovendien kunt u revisies accepteren/weigeren, ongeacht de functie voor het bijhouden van wijzigingen.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe verschillende eigenschappen met revisies kunnen worden toegepast:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
