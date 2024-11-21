---
title: Voeg Tabel Selle saam in C++
second_title: Aspose.Words vir C++
articleTitle: Saamvlans Tabel Selle
linktitle: Saamvlans Tabel Selle
description: "Hoe om tabel selle saam te voeg in C++. Kyk of selle in'n tabel saamgesmelt word met C++."
type: docs
weight: 40
url: /af/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Soms vereis sekere rye in'n tabel'n kop of groot blokke teks wat die volle breedte van die tabel beslaan. Vir behoorlike ontwerp van die tabel, kan die gebruiker verskeie tabel selle saamvoeg in een. Aspose.Words ondersteun saamgesmelte selle wanneer jy met alle invoerformate werk, insluitend die invoer van HTML inhoud.

## Hoe Om Tabel Selle Saam Te Voeg

In Aspose.Words word saamgesmelte selle verteenwoordig deur die volgende eienskappe van die [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) klas:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) wat beskryf of die sel deel is van'n horisontale samesmelting van selle
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) wat beskryf of die sel deel is van'n vertikale samesmelting van selle

Die waardes van hierdie eienskappe bepaal die samesmelting gedrag van selle:

- Die eerste sel in'n reeks saamgesmelte selle sal [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)hê
- Enige latere saamgesmelte selle sal [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)hê
- 'n sel wat nie saamgevoeg is nie, sal [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)hê

{{% alert color="primary" %}}

Soms, wanneer die laai van bestaande dokument selle in'n tabel, sal hulle saamgesmelt verskyn. Dit kan egter eintlik een lang sel wees – soms voer Microsoft Word saamgesmelte selle op hierdie manier uit. Dit kan verwarrend wees wanneer jy met individuele selle probeer werk, maar dit lyk nie of daar enige spesifieke patroon is wanneer dit gebeur nie.

{{% /alert %}}

## Kyk of Sel Saamgesmelt Is

Om te kyk of'n sel deel is van'n reeks saamgesmelte selle, kyk ons eenvoudig na die eienskappe **HorizontalMerge** en **VerticalMerge**.

Die volgende kode voorbeeld toon hoe om die horisontale en vertikale sel samesmelting tipe druk:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Saamgevoegde Selle in'n Tabel {#merge-cells-in-a-table}

Om selle saam te voeg in'n tabel wat met die [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) geskep is, moet jy die toepaslike samesmeltingstipe stel vir elke sel waar die samesmelting verwag word – eers **CellMerge.First** en dan **CellMerge.Previous**.

Jy moet ook onthou om die samesmelting instelling vir die selle waar geen samesmelting nodig is skoon te maak - dit kan gedoen word deur die eerste nie-samesmelting sel te stel om **CellMerge.None**. As dit nie gedoen word nie, sal alle selle in die tabel saamgesmelt word.

Die volgende kode voorbeeld toon hoe om'n tabel met twee rye waar die selle in die eerste ry horisontaal saamgesmelt skep:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Die volgende kode voorbeeld toon hoe om'n twee-kolom tabel te skep waar die selle in die eerste kolom vertikaal saamgesmelt:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Voeg Tabel Selle saam In ander Gevalle

In ander situasies waar die **DocumentBuilder** nie gebruik word nie, soos in'n bestaande tabel, kan die samesmelting van selle op die vorige manier nie so maklik wees nie. In plaas daarvan kan ons die basiese bedrywighede wat betrokke is by die toepassing van samesmelting eienskappe aan selle in'n metode wat die taak baie makliker maak. Hierdie metode is soortgelyk aan die Samesmelting outomatisering metode, wat genoem word om'n reeks selle in'n tabel saam te smelt.

Die kode hieronder sal die tabel selle in die gespesifiseerde reeks saamvoeg, begin by die gegewe sel en eindig by die einde sel. In hierdie geval kan die reeks oor verskeie rye of kolomme strek:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Die volgende kode voorbeeld toon hoe om'n reeks selle tussen twee gespesifiseerde selle saam te smelt:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Afhangende van die Weergawe van die Raamwerk wat jy gebruik, wil jy dalk hierdie metode verfyn deur dit in'n uitbreidingsmetode te verander. In hierdie geval kan jy hierdie metode direk op'n sel noem om'n reeks selle saam te voeg, soos `cell1.Merge(cell2)`.

## Vertikale En Horisontale Saamgevoegde Selle in'n Tabel {#vertical-and-Horizontal-merged-cells-in-the-table}

Soos ons in vorige artikels gesê het, is'n tabel in Microsoft Word 'n stel onafhanklike rye. Elke ry het'n stel selle wat onafhanklik is van die selle van ander rye. In die Microsoft Word tabel is daar dus nie so'n voorwerp soos'n "kolom" nie, en "1st kolom" is iets soos "die versameling van die 1st selle van elke ry in die tabel". Dit laat gebruikers toe om'n tabel te hê waarin byvoorbeeld die 1st ry bestaan uit twee selle 2cm en 1cm, en die 2nd ry bestaan uit twee verskillende selle 1cm en 2cm breed. En Aspose.Words ondersteun hierdie konsep van tabelle.

'n tabel in HTML het'n wesenlik ander struktuur: elke ry het dieselfde aantal selle en (dit is belangrik vir die taak) elke sel het die breedte van die ooreenstemmende kolom, dieselfde vir alle selle in een kolom. So as **HorizontalMerge** en **VerticalMerge** 'n verkeerde waarde terug te keer, gebruik die volgende kode voorbeeld:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Skakel Om Na Horisontaal Saamgesmelte Selle {#convert-to-horizontally-merged-cells}

Soms is dit nie moontlik om te ontdek watter selle saamgesmelt word nie omdat sommige nuwer weergawes van Microsoft Word nie meer die samesmeltingsvlae gebruik wanneer selle horisontaal saamgesmelt word nie. Maar vir situasies waar selle horisontaal in'n sel saamgevoeg word deur hul breedte met behulp van samesmeltingsvlae, bied Aspose.Words die `ConvertToHorizontallyMergedCells` metode om selle te omskep. Hierdie metode verander eenvoudig die tabel en voeg nuwe selle by soos nodig.

Die volgende kode voorbeeld toon die bogenoemde metode in werking:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
