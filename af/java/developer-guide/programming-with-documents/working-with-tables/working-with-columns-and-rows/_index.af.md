---
title: Werk Met Kolomme en Rye in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Kolomme en Rye
linktitle: Werk Met Kolomme en Rye
description: "Werk met dele van'n tabel rye, kolomme en selle met behulp van Java. Spesifiseer Kopry Java."
type: docs
weight: 30
url: /af/java/working-with-columns-and-rows/
---

Vir meer beheer oor hoe tabelle werk, leer hoe om kolomme en rye te manipuleer.

## Vind Die Tabel Element Indeks

Kolomme, rye en selle word bestuur deur toegang tot die geselekteerde dokument node deur sy indeks. Die vind van die indeks van enige knoop behels die versameling van alle kind nodes van die element tipe van die ouer knoop, en dan die gebruik van die [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) metode om die indeks van die gewenste knoop in die versameling te vind.

### Vind Die Indeks van'n Tabel in'n Dokument

Soms moet jy dalk veranderinge aan'n spesifieke tabel in'n dokument aanbring. Om dit te doen, kan jy na'n tabel verwys deur sy indeks.

Die volgende kode voorbeeld toon hoe om die indeks van'n tabel in'n dokument te haal:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Vind Die Indeks Van'n Ry in'n Tabel

Net so sal jy dalk veranderinge aan'n spesifieke ry in'n geselekteerde tabel moet aanbring. Om dit te doen, kan jy ook na'n ry deur sy indeks verwys.

Die volgende kode voorbeeld toon hoe om die indeks van'n ry in'n tabel te haal:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Vind Die Indeks Van'n Sel In'n Ry

Ten slotte moet jy dalk veranderinge aan'n spesifieke sel aanbring, en jy kan dit ook deur selindeks doen.

Die volgende kode voorbeeld toon hoe om die indeks van'n sel in'n ry te haal:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Werk Met Kolomme

In die Aspose.Words Dokument Voorwerp Model (DOM), die [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) node bestaan uit [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nodes en dan [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nodes. So, in die `Document` Voorwerp Model van Aspose.Words, soos in Word dokumente, is daar geen konsep van'n kolom.

Deur ontwerp is die tabel rye in Microsoft Word en Aspose.Words heeltemal onafhanklik, en die basiese eienskappe en bedrywighede is slegs in die rye en selle van die tabel vervat. Dit gee tabelle die vermoë om'n paar interessante eienskappe:

- Elke tabel ry kan'n heeltemal ander aantal selle
- Vertikaal kan die selle van elke ry verskillende breedtes hê
- Dit is moontlik om tabelle met verskillende ry formate en aantal selle saam te voeg

![work-with-columns-aspose-words-java](working-with-columns-and-rows-1.png)

Enige operasies wat op kolomme uitgevoer word, is eintlik "kortpaaie" wat die operasie uitvoer deur ry selle kollektief te verander op so'n manier dat dit lyk asof hulle op kolomme toegepas word. Dit is, jy kan bedrywighede op kolomme uit te voer deur eenvoudig iterating oor dieselfde tabel ry sel indeks.

Die volgende kode voorbeeld vereenvoudig sulke bedrywighede deur die bewys van'n fasade klas wat die selle wat'n "kolom" van'n tabel vorm versamel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Die volgende kode voorbeeld toon hoe om'n leë kolom in'n tabel in te voeg:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Die volgende kode voorbeeld toon hoe om'n kolom van'n tabel in'n dokument te verwyder:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Spesifiseer Rye as Kopryne

U kan kies om die eerste ry in die tabel as Die Kopry slegs op die eerste bladsy of op elke bladsy te herhaal as die tabel in verskeie verdeel is. In Aspose.Words kan jy die Kopry Op elke bladsy herhaal deur die [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) eienskap te gebruik.

U kan ook verskeie kopreëls merk as sulke rye een na die ander aan die begin van die tabel geleë is. Om dit te doen, moet jy die **HeadingFormat** eienskappe op hierdie rye toepas.

{{% alert color="primary" %}}

Let daarop dat Kop Rye nie werk in geneste tabelle. Dit wil sê, as jy'n tafel in'n ander tafel het, sal hierdie instelling geen effek hê nie. Dit is'n beperking van Microsoft Word wat dit nie toelaat nie, nie Aspose.Words nie.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n tabel wat Kop Rye wat herhaal op daaropvolgende bladsye sluit bou:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Hou Tabelle en Rye Van Breek Oor Bladsye {#keep-tables-and-rows-from-breaking-across-pages}

Daar is tye wanneer die inhoud van'n tabel nie oor bladsye verdeel moet word nie. Byvoorbeeld, as'n titel bo'n tabel is, moet die titel en tabel altyd saam op dieselfde bladsy gehou word om die regte voorkoms te behou.

Daar is twee afsonderlike tegnieke wat nuttig is om hierdie funksie te bereik:

- `Allow row break across pages`, wat toegepas word op tabel rye
- `Keep with next`, wat toegepas word op paragrawe in tabel selle

By verstek is bogenoemde eiendomme gedeaktiveer.

<img src="keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Hou'n Ry Van Breek Oor Bladsye {#keep-a-row-from-breaking-across-pages}

Dit behels die beperking van inhoud binne die selle van'n ry om oor'n bladsy verdeel te word. In Microsoft Word, kan dit gevind word onder Tabel Eienskappe as die opsie "Laat ry om te breek oor bladsye". In Aspose.Words word dit gevind onder die [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) voorwerp van a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) as die eienskap [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Die volgende kode voorbeeld toon hoe om breek rye oor bladsye vir elke ry in'n tabel uit te skakel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Hou'n Tabel Van Breek Oor Bladsye {#keep-a-table-from-breaking-across-pages}

Om te keer dat die tabel oor bladsye verdeel, moet ons spesifiseer dat ons wil hê dat die inhoud wat in die tabel vervat is, saam moet bly.

Om dit te doen, gebruik Aspose.Words 'n metode, wat gebruikers toelaat om'n tabel te kies en die [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parameter in staat te stel om waar te wees vir elke paragraaf binne die tabel selle. Die uitsondering is die laaste paragraaf in die tabel, wat op vals gestel moet word.

<img src="keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Die volgende kode voorbeeld toon hoe om'n tabel te stel om saam te bly op dieselfde bladsy:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}