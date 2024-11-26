---
title: Tabelcellen samenvoegen
second_title: Aspose.Words voor Python via .NET
articleTitle: Tabelcellen samenvoegen
linktitle: Tabelcellen samenvoegen
description: "Hoe tabelcellen samenvoegen in Python. Controleer of cellen in een tabel zijn samengevoegd met behulp van Python."
type: docs
weight: 40
url: /nl/python-net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Soms vereisen bepaalde rijen in een tabel een kop of grote blokken tekst die de volledige breedte van de tabel innemen. Voor het juiste ontwerp van de tabel, kan de gebruiker meerdere tabelcellen in één samenvoegen. Aspose.Words ondersteunt samengevoegde cellen bij het werken met alle invoerformaten, waaronder het importeren van HTML-inhoud.

## Hoe tabelcellen samenvoegen

In Aspose.Words, samengevoegde cellen worden vertegenwoordigd door de volgende eigenschappen van de [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) klasse:

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) die beschrijft of de cel deel uitmaakt van een horizontale samenvoeging van cellen
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) die beschrijft of de cel deel uitmaakt van een verticale samenvoeging van cellen

De waarden van deze eigenschappen bepalen het samenvoeggedrag van cellen:

- De eerste cel in een reeks samengevoegde cellen zal hebben [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Elke vervolgens samengevoegde cellen zal hebben [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Een cel die niet is samengevoegd zal hebben [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Soms, bij het laden van bestaande documentcellen in een tabel, zullen ze samengevoegd verschijnen. Echter, het kan eigenlijk een lange cel zijn, soms Microsoft Word exporteert samengevoegde cellen op deze manier. Dit kan verwarrend zijn als je met individuele cellen probeert te werken, maar er lijkt geen specifiek patroon te zijn als dit gebeurt.

{{% /alert %}}

## Controleer of de cel is samengevoegd

Om te controleren of een cel deel uitmaakt van een opeenvolging van samengevoegde cellen, controleren we gewoon de **HorizontalMerge** en **VerticalMerge** eigenschappen.

Het volgende voorbeeld van code laat zien hoe het horizontale en verticale cel merge type af te drukken:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Tabelcellen samenvoegen bij gebruik van DocumentBuilder

Het samenvoegen van cellen in een tabel gemaakt met de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), je moet het juiste mergetype instellen voor elke cel waar de merge wordt verwacht **CellMerge.First** en dan **CellMerge.Previous**.

Ook moet je onthouden om de merge instelling voor die cellen waar geen merge nodig is te wissen **CellMerge.None**. Als dit niet gebeurt, worden alle cellen in de tabel samengevoegd.

Het volgende voorbeeld van code laat zien hoe je een tabel maakt met twee rijen waar de cellen in de eerste rij horizontaal worden samengevoegd:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Het volgende voorbeeld van code laat zien hoe je een tabel met twee kolommen aanmaakt waar de cellen in de eerste kolom verticaal zijn samengevoegd:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Tabelcellen samenvoegen in andere gevallen

In andere situaties waar de **DocumentBuilder** wordt niet gebruikt, zoals in een bestaande tabel, het samenvoegen van cellen op de vorige manier kan niet zo gemakkelijk zijn. In plaats daarvan kunnen we de basisbewerkingen die betrokken zijn bij het toepassen van merge eigenschappen op cellen in een methode die de taak veel gemakkelijker maakt. Deze methode is vergelijkbaar met de Merge automatiseringsmethode, die wordt opgeroepen om een reeks cellen in een tabel samen te voegen.

De onderstaande code zal de tabelcellen samenvoegen in het opgegeven bereik, beginnend bij de gegeven cel en eindigend bij de eindcel. In dit geval kan het bereik meerdere rijen of kolommen omvatten:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Het volgende voorbeeld van code laat zien hoe je een reeks cellen tussen twee gespecificeerde cellen kunt samenvoegen:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Afhankelijk van de versie van het Framework dat u gebruikt, kunt u deze methode verfijnen door er een extensiemethode van te maken. In dit geval kunt u deze methode direct op een cel te mergen een reeks cellen, zoals `cell1.Merge(cell2)`.

## Omzetten naar horizontaal Samengevoegde cellen

Soms is het niet mogelijk om te detecteren welke cellen worden samengevoegd omdat sommige nieuwere versies van Microsoft Word de mergevlaggen niet meer gebruiken wanneer cellen horizontaal worden samengevoegd. Maar voor situaties waarin cellen worden samengevoegd in een cel horizontaal door hun breedte met behulp van merge vlaggen, Aspose.Words levert de `ConvertToHorizontallyMergedCells` methode om cellen te converteren. Deze methode transformeert eenvoudigweg de tabel en voegt zo nodig nieuwe cellen toe.

Het volgende voorbeeld van code toont de bovenstaande methode in werking:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
