---
title: Tabelcellen samenvoegen in C#
second_title: Aspose.Words voor .NET
articleTitle: Tabelcellen samenvoegen
linktitle: Tabelcellen samenvoegen
description: "Hoe tabelcellen samenvoegen in C#. Controleer of cellen in een tabel zijn samengevoegd met behulp van C#."
type: docs
weight: 40
url: /nl/net/working-with-merged-cells/
---

Soms vereisen bepaalde rijen in een tabel een kop of grote blokken tekst die de volledige breedte van de tabel innemen. Voor het juiste ontwerp van de tabel, kan de gebruiker meerdere tabelcellen in één samenvoegen. Aspose.Words ondersteunt samengevoegde cellen bij het werken met alle invoerformaten, waaronder het importeren van HTML-inhoud.

## Hoe tabelcellen samenvoegen

In Aspose.Words, samengevoegde cellen worden vertegenwoordigd door de volgende eigenschappen van de [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) klasse:

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) die beschrijft of de cel deel uitmaakt van een horizontale samenvoeging van cellen
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) die beschrijft of de cel deel uitmaakt van een verticale samenvoeging van cellen

De waarden van deze eigenschappen bepalen het samenvoeggedrag van cellen:

- De eerste cel in een reeks samengevoegde cellen zal hebben [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Elke vervolgens samengevoegde cellen zal hebben [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Een cel die niet is samengevoegd zal hebben [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Soms, bij het laden van bestaande documentcellen in een tabel, zullen ze samengevoegd verschijnen. Echter, het kan eigenlijk een lange cel zijn, soms Microsoft Word exporteert samengevoegde cellen op deze manier. Dit kan verwarrend zijn als je met individuele cellen probeert te werken, maar er lijkt geen specifiek patroon te zijn als dit gebeurt.

{{% /alert %}}

## Controleer of de cel is samengevoegd

Om te controleren of een cel deel uitmaakt van een opeenvolging van samengevoegde cellen, controleren we gewoon de **HorizontalMerge** en **VerticalMerge** eigenschappen.

Het volgende voorbeeld van code laat zien hoe het horizontale en verticale cel merge type af te drukken:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Tabelcellen samenvoegen bij gebruik van DocumentBuilder

Het samenvoegen van cellen in een tabel gemaakt met de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), je moet het juiste mergetype instellen voor elke cel waar de merge wordt verwacht **CellMerge.First** en dan **CellMerge.Previous**.

Ook moet je onthouden om de merge instelling voor die cellen waar geen merge nodig is te wissen **CellMerge.None**. Als dit niet gebeurt, worden alle cellen in de tabel samengevoegd.

Het volgende voorbeeld van code laat zien hoe je een tabel maakt met twee rijen waar de cellen in de eerste rij horizontaal worden samengevoegd:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een tabel met twee kolommen aanmaakt waar de cellen in de eerste kolom verticaal zijn samengevoegd:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Tabelcellen samenvoegen in andere gevallen

In andere situaties waar de **DocumentBuilder** wordt niet gebruikt, zoals in een bestaande tabel, het samenvoegen van cellen op de vorige manier kan niet zo gemakkelijk zijn. In plaats daarvan kunnen we de basisbewerkingen die betrokken zijn bij het toepassen van merge eigenschappen op cellen in een methode die de taak veel gemakkelijker maakt. Deze methode is vergelijkbaar met de Merge automatiseringsmethode, die wordt opgeroepen om een reeks cellen in een tabel samen te voegen.

De onderstaande code zal de tabelcellen samenvoegen in het opgegeven bereik, beginnend bij de gegeven cel en eindigend bij de eindcel. In dit geval kan het bereik meerdere rijen of kolommen omvatten:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een reeks cellen tussen twee gespecificeerde cellen kunt samenvoegen:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Afhankelijk van de versie van de .NET Framework u gebruikt, kunt u deze methode te verfijnen door het om te zetten in een extensiemethode. In dit geval kunt u deze methode direct op een cel te mergen een reeks cellen, zoals `cell1.Merge(cell2)`.

## Verticale en horizontale samengevoegde cellen in HTML-tabel

Zoals gezegd in vorige artikelen, een tabel in Microsoft Word is een reeks onafhankelijke rijen. Elke rij heeft een reeks cellen die onafhankelijk zijn van de cellen van andere rijen. In de Microsoft Word tabel er is geen object als een. .. .. .. 1e kolom. .. . de set van de 1e cellen van elke rij in de tabel. Hierdoor kunnen gebruikers een tabel hebben waarin bijvoorbeeld de 1e rij bestaat uit twee cellen 2cm en 1cm, en de 2e rij bestaat uit twee verschillende cellen 1cm en 2cm breed. En Aspose.Words steunt dit concept van tabellen.

Een tabel in HTML heeft een wezenlijk andere structuur: elke rij heeft hetzelfde aantal cellen en (het is belangrijk voor de taak) elke cel heeft de breedte van de overeenkomstige kolom, hetzelfde voor alle cellen in één kolom. Dus als **HorizontalMerge** en **VerticalMerge** retour een onjuiste waarde, gebruik het volgende code voorbeeld:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Omzetten naar horizontaal Samengevoegde cellen

Soms is het niet mogelijk om te detecteren welke cellen worden samengevoegd omdat sommige nieuwere versies van Microsoft Word de mergevlaggen niet meer gebruiken wanneer cellen horizontaal worden samengevoegd. Maar voor situaties waarin cellen worden samengevoegd in een cel horizontaal door hun breedte met behulp van merge vlaggen, Aspose.Words levert de `ConvertToHorizontallyMergedCells` methode om cellen te converteren. Deze methode transformeert eenvoudigweg de tabel en voegt zo nodig nieuwe cellen toe.

Het volgende voorbeeld van code toont de bovenstaande methode in werking:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
