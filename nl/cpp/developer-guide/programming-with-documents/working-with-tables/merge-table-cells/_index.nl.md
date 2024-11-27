---
title: Tabelcellen samenvoegen in C++
second_title: Aspose.Words voor C++
articleTitle: Tabelcellen Samenvoegen
linktitle: Tabelcellen Samenvoegen
description: "Tabelcellen samenvoegen in C++. Controleer of cellen in een tabel zijn samengevoegd met C++."
type: docs
weight: 40
url: /nl/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Soms vereisen bepaalde rijen in een tabel een kop of grote tekstblokken die de volledige breedte van de tabel in beslag nemen. Voor een goed ontwerp van de tabel kan de gebruiker meerdere tabelcellen samenvoegen tot één. Aspose.Words ondersteunt samengevoegde cellen bij het werken met alle Invoerindelingen, inclusief het importeren van HTML - Inhoud.

## Hoe tabelcellen samenvoegen

In Aspose.Words worden samengevoegde cellen weergegeven door de volgende eigenschappen van de klasse [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) beschrijft of de cel deel uitmaakt van een horizontale samenvoeging van cellen
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) beschrijft of de cel deel uitmaakt van een verticale samenvoeging van cellen

De waarden van deze eigenschappen bepalen het samenvoeggedrag van cellen:

- De eerste cel in een reeks samengevoegde cellen heeft [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Alle vervolgens samengevoegde cellen hebben [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Een cel die niet is samengevoegd heeft [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Bij het laden van bestaande documentcellen in een tabel worden ze soms samengevoegd weergegeven. Het kan echter één lange cel zijn-soms exporteert Microsoft Word samengevoegde cellen op deze manier. Dit kan verwarrend zijn bij het proberen om met individuele cellen te werken, maar er lijkt geen bepaald patroon te zijn over wanneer dit gebeurt.

{{% /alert %}}

## Controleer of de cel is samengevoegd

Om te controleren of een cel deel uitmaakt van een reeks samengevoegde cellen, controleren we eenvoudig de eigenschappen **HorizontalMerge** en **VerticalMerge**.

Het volgende codevoorbeeld laat zien hoe u het type horizontale en verticale cel samenvoegen kunt afdrukken:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Samengevoegde cellen in een tabel {#merge-cells-in-a-table}

Als u cellen wilt samenvoegen in een tabel die met [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) is gemaakt, moet u het juiste samenvoegtype instellen voor elke cel waar de samenvoeging wordt verwacht – eerst **CellMerge.First** en vervolgens **CellMerge.Previous**.

Vergeet ook niet om de samenvoeginstelling te wissen voor cellen waar geen samenvoeging vereist is – dit kan gedaan worden door de eerste niet-samenvoegcel in te stellen op **CellMerge.None**. Als dit niet gebeurt, worden alle cellen in de tabel samengevoegd.

Het volgende codevoorbeeld laat zien hoe u een tabel maakt met twee rijen waarin de cellen in de eerste rij horizontaal worden samengevoegd:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Het volgende codevoorbeeld laat zien hoe u een tabel met twee kolommen maakt waarin de cellen in de eerste kolom verticaal worden samengevoegd:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Tabelcellen samenvoegen in andere gevallen

In andere situaties waarin de **DocumentBuilder** niet wordt gebruikt, zoals in een bestaande tabel, is het samenvoegen van cellen op de vorige manier mogelijk niet zo eenvoudig. In plaats daarvan kunnen we de basisbewerkingen die betrokken zijn bij het toepassen van merge-eigenschappen op cellen verpakken in een methode die de taak veel gemakkelijker maakt. Deze methode is vergelijkbaar met de Merge automation-methode, die wordt opgeroepen om een reeks cellen in een tabel samen te voegen.

De onderstaande code zal de tabelcellen in het opgegeven bereik samenvoegen, beginnend bij de gegeven cel en eindigend bij de eindcel. In dit geval kan het bereik meerdere rijen of kolommen omvatten:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Het volgende codevoorbeeld laat zien hoe een bereik van cellen tussen twee opgegeven cellen kan worden samengevoegd:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Afhankelijk van de versie van het Framework dat u gebruikt, kunt u deze methode verfijnen door er een extensiemethode van te maken. In dit geval kunt u deze methode rechtstreeks op een cel aanroepen om een celbereik samen te voegen, zoals `cell1.Merge(cell2)`.

## Verticale en horizontale samengevoegde cellen in een tabel {#vertical-and-Horizontal-merged-cells-in-the-table}

Zoals we in eerdere artikelen hebben gezegd, is een tabel in Microsoft Word een verzameling onafhankelijke rijen. Elke rij heeft een set cellen die onafhankelijk zijn van de cellen van andere rijen. In de tabel Microsoft Word is er dus geen object als een "kolom", en "1e kolom" is iets als "de verzameling van de 1e cellen van elke rij in de tabel". Hierdoor kunnen gebruikers een tabel hebben waarin bijvoorbeeld de 1e rij bestaat uit twee cellen – 2cm en 1cm, en de 2e rij bestaat uit twee verschillende cellen – 1cm en 2cm breed. En Aspose.Words ondersteunt dit concept van tabellen.

Een tabel in HTML heeft een wezenlijk andere structuur: elke rij heeft hetzelfde aantal cellen en (het is belangrijk voor de taak) elke cel heeft de breedte van de overeenkomstige kolom, hetzelfde voor alle cellen in één kolom. Dus als **HorizontalMerge** en **VerticalMerge** een onjuiste waarde retourneren, gebruik dan het volgende codevoorbeeld:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Converteren naar horizontaal samengevoegde cellen {#convert-to-horizontally-merged-cells}

Soms is het niet mogelijk om te detecteren welke cellen zijn samengevoegd omdat sommige nieuwere versies van Microsoft Word de samenvoegvlaggen niet meer gebruiken wanneer cellen horizontaal worden samengevoegd. Maar voor situaties waarin cellen horizontaal worden samengevoegd in een cel door hun breedte met behulp van samenvoegvlaggen, biedt Aspose.Words de `ConvertToHorizontallyMergedCells` methode om cellen te converteren. Deze methode transformeert eenvoudig de tabel en voegt nieuwe cellen toe als dat nodig is.

Het volgende codevoorbeeld toont de bovenstaande methode in werking:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
