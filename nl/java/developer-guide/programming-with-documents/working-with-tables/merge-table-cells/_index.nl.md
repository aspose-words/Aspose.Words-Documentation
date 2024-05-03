---
title: Tabelcellen samenvoegen in Java
second_title: Aspose.Words voor Java
articleTitle: Tabelcellen samenvoegen
linktitle: Tabelcellen samenvoegen
description: "Hoe tabelcellen samenvoegen in Java. Controleer of cellen in een tabel zijn samengevoegd met behulp van Java."
type: docs
weight: 40
url: /nl/java/working-with-merged-cells/
---

Soms vereisen bepaalde rijen in een tabel een kop of grote blokken tekst die de volledige breedte van de tabel innemen. Voor het juiste ontwerp van de tabel, kan de gebruiker meerdere tabelcellen samenvoegen in een. Aspose.Words ondersteunt samengevoegde cellen bij het werken met alle invoerformaten, inclusief het importeren van HTML-inhoud.

## Hoe tabelcellen samenvoegen

In Aspose.Words, samengevoegde cellen worden vertegenwoordigd door de volgende eigenschappen van de [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) klasse:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) die beschrijft of de cel deel uitmaakt van een horizontale samenvoeging van cellen
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) die beschrijft of de cel deel uitmaakt van een verticale samenvoeging van cellen

De waarden van deze eigenschappen bepalen het samenvoeggedrag van cellen:

- De eerste cel in een reeks samengevoegde cellen zal hebben [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Elke later samengevoegde cellen zal hebben [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Een cel die niet is samengevoegd zal hebben [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Soms, bij het laden van bestaande documentcellen in een tabel, zullen ze samengevoegd verschijnen. Echter, het kan eigenlijk een lange cel zijn, soms Microsoft Word exporteert samengevoegde cellen op deze manier. Dit kan verwarrend zijn als je met individuele cellen probeert te werken, maar er lijkt geen bepaald patroon te zijn als dit gebeurt.

{{% /alert %}}

## Controleren of een cel is samengevoegd

Om te controleren of een cel deel uitmaakt van een opeenvolging van samengevoegde cellen, controleren we gewoon de **HorizontalMerge** en **VerticalMerge** eigenschappen.

Het volgende voorbeeld van code laat zien hoe het horizontale en verticale cel merge type af te drukken:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Tabelcellen samenvoegen bij gebruik van DocumentBuilder

Het samenvoegen van cellen in een tabel gemaakt met de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), u moet het juiste mergetype instellen voor elke cel waar de merge wordt verwacht **CellMerge.First** en dan **CellMerge.Previous**.

Ook moet je onthouden om de merge instelling voor die cellen waar geen merge nodig is te wissen **CellMerge.None**. Als dit niet gebeurt, worden alle cellen in de tabel samengevoegd.

Het volgende voorbeeld van code laat zien hoe je een tabel maakt met twee rijen waar de cellen in de eerste rij horizontaal worden samengevoegd:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Het volgende voorbeeld van code laat zien hoe je een tabel met twee kolommen aanmaakt waarbij de cellen in de eerste kolom verticaal zijn samengevoegd:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Tabelcellen samenvoegen in andere gevallen

In andere situaties **DocumentBuilder** wordt niet gebruikt, zoals in een bestaande tabel, het samenvoegen van cellen op de vorige manier kan niet zo gemakkelijk zijn. In plaats daarvan kunnen we de basisbewerkingen die betrokken zijn bij het toepassen van merge eigenschappen op cellen in een methode die de taak veel gemakkelijker maakt. Deze methode is vergelijkbaar met de Samenvoeg automatiseringsmethode, die wordt opgeroepen om een reeks cellen in een tabel samen te voegen.

De onderstaande code zal de tabelcellen samenvoegen in het opgegeven bereik, beginnend bij de gegeven cel en eindigend bij de eindcel. In dit geval kan het bereik meerdere rijen of kolommen omvatten:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Het volgende voorbeeld van code laat zien hoe een bereik van cellen te samenvoegen tussen twee gespecificeerde cellen:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Verticale en horizontale samengevoegde cellen in HTML-tabel

Zoals gezegd in vorige artikelen, een tabel in Microsoft Word is een reeks onafhankelijke rijen. Elke rij heeft een reeks cellen die onafhankelijk zijn van de cellen van andere rijen. In de Microsoft Word tabel is er geen object als een. .. .. .. .. 1e kolom. .. de set van de 1e cellen van elke rij in de tabel. Dit stelt gebruikers in staat om een tabel waarin, bijvoorbeeld, de 1e rij bestaat uit twee cellen 2cm en 1cm, en de 2e rij bestaat uit twee verschillende cellen 1cm en 2cm breed. En Aspose.Words steunt dit concept van tabellen.

Een tabel in HTML heeft een wezenlijk andere structuur: elke rij heeft hetzelfde aantal cellen en (het is belangrijk voor de taak) elke cel heeft de breedte van de overeenkomstige kolom, hetzelfde voor alle cellen in één kolom. Dus als **HorizontalMerge** en **VerticalMerge** retour een onjuiste waarde, gebruik het volgende code voorbeeld:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Omzetten naar horizontaal Samengevoegde cellen

Soms is het niet mogelijk om te detecteren welke cellen worden samengevoegd omdat sommige nieuwere versies van Microsoft Word de mergevlaggen niet langer gebruiken wanneer cellen horizontaal worden samengevoegd. Maar voor situaties waarin cellen worden samengevoegd in een cel horizontaal door hun breedte met behulp van merge vlaggen, Aspose.Words levert de `ConvertToHorizontallyMergedCells` methode om cellen te converteren. Deze methode transformeert simpelweg de tabel en voegt zo nodig nieuwe cellen toe.

Het volgende voorbeeld van de code toont de bovenstaande methode in werking:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
