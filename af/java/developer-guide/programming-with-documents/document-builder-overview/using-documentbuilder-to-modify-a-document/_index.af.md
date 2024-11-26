---
title: Gebruik DocumentBuilder Om'n Dokument Te Verander
second_title: Aspose.Words vir Java
articleTitle: Gebruik DocumentBuilder Om'n Dokument Te Verander
linktitle: Gebruik DocumentBuilder Om'n Dokument Te Verander
type: docs
description: "Gebruik die dokumentbouer om'n dokument maklik in Java te verander."
weight: 20
url: /af/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Spesifiseer Formatering

### Skrif Tipe Formatering

Huidige lettertipe formatering word verteenwoordig deur'n `Font` voorwerp wat deur die `DocumentBuilder.Font` eienskap teruggestuur word. Die `Font` klas bevat'n wye verskeidenheid van lettertipe eienskappe moontlik in Microsoft Word.

| ![font-formatting-aspose-words-java](documentbuilder-to-modify-document-1.png) |
| :- |
Die volgende kode voorbeeld toon hoe om lettertipe formatering stel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Selformatering

Selformatering word gebruik tydens die bou van'n tafel. Dit word voorgestel deur'n `CellFormat` voorwerp wat deur die `DocumentBuilder.CellFormat` eienskap teruggestuur word. CellFormat bevat verskeie tabel sel eienskappe soos breedte of vertikale belyning.

| ![cell-formatting-aspose-words-java](documentbuilder-to-modify-document-2.png) |
| :- |
Die volgende kode voorbeeld toon hoe om'n tabel wat'n enkele geformateerde sel bevat skep.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Ry Formatering

Huidige ry formatering word bepaal deur'n `RowFormat` voorwerp wat teruggestuur word deur die `DocumentBuilder.RowFormat` eienskap. Die voorwerp bevat inligting oor alle tabel ry formatering.

| ![row-formatting-aspose-words-java](documentbuilder-to-modify-document-3.png) |
| :- |
Die below code voorbeeld wys hoe om'n tabel wat'n enkele sel bevat te skep en ry formatering toe te pas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Lys Opmaak

Aspose.Words laat die maklike skepping van lyste toe deur lysformatering toe te pas. DocumentBuilder verskaf die `DocumentBuilder.ListFormat` eienskap wat'n `ListFormat` voorwerp terugkeer. Hierdie voorwerp het verskeie metodes om'n lys te begin en te beëindig en om die inkeping te verhoog/verminder.

| ![list-fformatting-aspose-words-java](documentbuilder-to-modify-document-4.png) |
| :- |
Daar is twee algemene tipes lyste in Microsoft Word: met kolletjies en genommer.

- Om'n lys met kolletjies te begin, bel [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Om'n genommerde lys te begin, bel [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Die koeël of nommer en formatering word by die huidige paragraaf gevoeg en alle verdere paragrawe word geskep met behulp van **DocumentBuilder** totdat [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) geroep word om die formatering van die lys met kolletjies te stop.

In Word-dokumente kan lyste uit tot nege vlakke bestaan. Lys opmaak vir elke vlak spesifiseer watter koeël of nommer gebruik word, links inkeping, spasie tussen die koeël en teks ens.

- Om die lysvlak van die huidige paragraaf met een vlak te verhoog, bel [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Om die lys vlak van die huidige paragraaf te verminder deur een vlak, bel [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Die metodes verander die lys vlak en pas die formatering eienskappe van die nuwe vlak.

{{% alert color="primary" %}}

U kan ook die [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) - eienskap gebruik om die lysvlak vir die paragraaf te kry of in te stel. Die lys vlakke is genommer 0 tot 8.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n multilevel lys te bou.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Bladsy Opstelling en Afdeling Formatering

Bladsy opstel en afdeling eienskappe is ingesluit in die `PageSetup` voorwerp wat teruggestuur word deur die `DocumentBuilder.PageSetup` eiendom. Die voorwerp bevat al die bladsy opstel eienskappe van'n afdeling (links marge, onderste marge, papier grootte, en so aan) as eienskappe.

| ![section-formatting-aspose-words-java](documentbuilder-to-modify-document-5.png) |
| :- |
Die volgende kode voorbeeld toon hoe om sulke eienskappe soos bladsy grootte en oriëntasie vir die huidige afdeling stel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Die Toepassing Van'n Styl

Sommige formatering voorwerpe soos Lettertipe of ParagraphFormat ondersteun style. 'n enkele ingeboude of gebruiker-gedefinieerde styl word verteenwoordig deur'n `Style` voorwerp wat die ooreenstemmende styl eienskappe soos naam, basis styl, lettertipe en paragraaf formatering van die styl, en so aan bevat.

Verder, 'n **Style** voorwerp bied die [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) eienskap wat'n locale-onafhanklike styl identifiseerder verteenwoordig deur'n **Style.StyleIdentifier** opsomming waarde terugkeer. Die punt is dat die name van ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur'n stylidentifiseerder te gebruik, kan jy die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die Microsoft Word ingeboude style soos Normale, Heading 1, Heading 2 ens. Alle gebruiker-gedefinieerde style word die **StyleIdentifier.User value** toegeken.

| ![apply-style-aspose-words-java](documentbuilder-to-modify-document-6.png) |
| :- |
Die volgende kode voorbeeld toon hoe om'n paragraaf styl toe te pas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Grense en Skadu

Grense word verteenwoordig deur die BorderCollection. Dit is'n versameling Van Grens voorwerpe wat verkry word deur indeks of deur grens tipe. Grens tipe word verteenwoordig deur die `BorderType` opsomming. Sommige waardes van die opsomming is van toepassing op verskeie of slegs een dokument element. Byvoorbeeld, `BorderType.Bottom` is van toepassing op'n paragraaf of tabel sel terwyl `BorderType.DiagonalDown` spesifiseer die diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van die teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense bereik deur eiendomswaardes te kombineer. Daarbenewens, beide **BorderCollection** en **Border** voorwerpe toelaat dat jy hierdie waardes te herstel na verstek deur die roeping van die [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metode. Let daarop dat wanneer grens eienskappe is teruggestel na standaard waardes, die grens is onsigbaar.

| ![set-borders-shading-aspose-words-java](documentbuilder-to-modify-document-7.png) |
| :- |
Die [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klas bevat skadu eienskappe vir dokument elemente. U kan die gewenste skadu-tekstuur en die kleure wat op die agtergrond en voorgrond van die element toegepas word, instel.

Die skadu tekstuur is ingestel met'n [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) enumerasie waarde wat die toepassing van verskeie patrone op die **Shading** voorwerp toelaat. Byvoorbeeld, om'n agtergrond kleur vir'n dokument element stel, gebruik die [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) waarde en stel die voorgrond skadu kleur soos toepaslik.

| ![borders-and-shading-aspose-words-java](documentbuilder-to-modify-document-8.png) |
| :- |
Die onderstaande voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap Na Rooster

Aspose.Words bied twee eienskappe `ParagraphFormat.SnapToGrid` en `Font.SnapToGrid` om te kry en stel paragraaf eienskap snap om rooster.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Beweeg Die Wyser

### Bespeur Die Huidige Wyserposisie

Jy kan enige tyd kry waar die bouer se wyser tans geposisioneer is. Die [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) eiendom gee terug die node wat tans gekies in hierdie bouer. Die knoop is'n direkte kind van'n paragraaf. Enige insetselbewerkings wat u met `DocumentBuilder` uitvoer, sal voor die `DocumentBuilder.CurrentNode` invoeg. Wanneer die huidige paragraaf is leeg of die wyser is geplaas net voor die einde van die paragraaf, `DocumentBuilder.CurrentNode` gee null.

Jy kan ook die [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) eienskap gebruik, wat die paragraaf kry wat tans in hierdie **DocumentBuilder** gekies is. Die below code voorbeeld wys hoe om toegang tot die huidige knoop in'n dokument bouer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Beweeg Na Enige Nodus (Paragrawe en Hul Kinders)

As jy'n dokumentvoorwerpknooppunt het, wat'n paragraaf of'n direkte kind van'n paragraaf is, kan jy die bouer se wyser na hierdie knoop wys. Gebruik die [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metode om dit uit te voer.
Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na'n gespesifiseerde knoop.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Skuif Na Die Dokument Begin / Einde

As jy na die begin van die dokument moet skuif, bel [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). As jy na die einde van die dokument moet skuif, bel [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Beweeg na'n Afdeling

As jy met'n dokument werk wat verskeie afdelings bevat, kan jy na'n verlangde afdeling beweeg met [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Hierdie metode beweeg die wyser na die begin van'n gespesifiseerde afdeling en aanvaar die indeks van die vereiste afdeling. Wanneer die afdeling indeks is groter as of gelyk aan 0, dit spesifiseer'n indeks van die begin van die dokument met 0 wat die eerste afdeling. Wanneer die afdeling indeks is minder as 0, dit spesifiseer'n indeks van die einde van die dokument met -1 die laaste afdeling. Die below code voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde afdeling. Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Beweeg na'n Koptekst / Voetskrif

Wanneer jy'n paar data in'n kop of voetskrif moet plaas, moet jy eers daarheen beweeg met [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).Die metode aanvaar'n HeaderFooterType opsomming waarde wat die tipe kop of voetskrif identifiseer waarheen die wyser verskuif moet word.

As jy opskrifte en voetskrifte wil skep wat vir die eerste bladsy verskil, moet jy die [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) eienskap op **true** stel. As jy opskrifte en voetskrifte wil skep wat verskil vir ewe en onewe bladsye, moet jy [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) op **true** stel.

As u na die hoofverhaal moet terugkeer, gebruik[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) om uit die koptekst of voetskrif te beweeg. Hieronder voorbeeld skep koptekste en voetskrifte in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Beweeg Na'n Paragraaf

Gebruik[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) om die wyser na'n verlangde paragraaf in die huidige afdeling te skuif. Jy moet twee parameters aan hierdie metode slaag: paragraphIndex (die indeks van die paragraaf om na te beweeg) en characterIndex (die indeks van die karakter binne die paragraaf).

Die navigasie word uitgevoer binne die huidige storie van die huidige afdeling. Dit wil sê, as jy die wyser na die primêre kop van die eerste afdeling verskuif het, spesifiseer paragraphIndex die indeks van die paragraaf binne daardie kop van daardie afdeling.

Wanneer paragraphIndex groter of gelyk is aan 0, spesifiseer dit'n indeks vanaf die begin van die afdeling met 0 as die eerste paragraaf. Wanneer paragraphIndex kleiner is as 0, spesifiseer dit'n indeks aan die einde van die afdeling met -1 as die laaste paragraaf. Die karakterindeks kan tans slegs gespesifiseer word as 0 om na die begin van die paragraaf te beweeg of -1 om na die einde van die paragraaf te beweeg. Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde paragraaf. Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Beweeg Na'n Tabel Sel

Gebruik [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) as u die wyser na'n tabelsel in die huidige afdeling moet skuif. Hierdie metode aanvaar vier parameters:

- tableIndex - die indeks van die tabel om na te beweeg.
- rowIndex - die indeks van die ry in die tabel.
- columnIndex - die indeks van die kolom in die tabel.
- characterIndex - die indeks van die karakter binne die sel.

Die navigasie word uitgevoer binne die huidige storie van die huidige afdeling.

Vir die indeksparameters, wanneer die indeks groter is as of gelyk is aan 0, spesifiseer dit'n indeks van die begin af met 0 as die eerste element. Wanneer die indeks kleiner is as 0, spesifiseer dit'n indeks van die einde af met -1 as die laaste element.

Let ook daarop dat characterIndex tans slegs 0 kan spesifiseer om na die begin van die sel te beweeg of -1 om na die einde van die sel te beweeg. Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde tabel sel. Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Skuif Na'n Boekmerk

Boekmerke word dikwels gebruik om spesifieke plekke in die dokument te merk waar nuwe elemente ingevoeg moet word. Om na'n boekmerk te beweeg, gebruik [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Hierdie metode het twee oorladings. Die eenvoudigste aanvaar niks anders as die naam van die boekmerk waar die wyser verskuif moet word nie. Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na'n boekmerk.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Hierdie oorlading beweeg die wyser na'n posisie net na die begin van die boekmerk met die gespesifiseerde naam. Nog'n oorlading [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) beweeg die wyser na'n boekmerk met groter presisie. Dit aanvaar twee addisionele booleaanse parameters:

- isStart bepaal of die wyser na die begin of na die einde van die boekmerk geskuif moet word.
- isAfter bepaal of die wyser na die begin-of eindposisie van die boekmerk geskuif moet word, of om die wyser na die begin-of eindposisie van die boekmerk te skuif.

Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na net na die boekmerk einde.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Die invoeging van nuwe teks op hierdie manier vervang nie die bestaande teks van die boekmerk nie. Let daarop dat sommige boekmerke in die dokument aan vormvelde toegeken word. As jy na so'n boekmerk beweeg en teks daar invoeg, word die teks in die vormveldkode ingevoeg. Alhoewel dit nie die vormveld ongeldig sal maak nie, sal die ingevoegde teks nie sigbaar wees nie omdat dit deel word van die veldkode.

### Beweeg na'n `Merge` Veld

Soms moet jy dalk'n "handleiding" Mail Merge met `DocumentBuilder` uitvoer of'n samesmeltingsveld op'n spesiale manier binne'n Mail Merge gebeurtenishanteerder vul. Dit is wanneer [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) nuttig kan wees. Die metode aanvaar die naam van die samesmelting veld. Dit beweeg die wyser na'n posisie net buite die gespesifiseerde samesmelting veld en verwyder die samesmelting veld. Die volgende kode voorbeeld toon hoe om die wyser te skuif na'n posisie net buite die gespesifiseerde samesmelting veld.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Hoe Om Te Skakel Tussen Maateenhede

Die meeste van die voorwerp eienskappe wat in die Aspose.Words API wat'n paar metings (breedte/hoogte, marges en verskeie afstande) verteenwoordig aanvaar waardes in punte (1 duim is gelyk aan 72 punte). Soms is dit nie gerieflik nie, so daar is die `ConvertUtil` klas wat helper funksies bied om tussen verskillende meet eenhede te omskep. Dit laat toe om duim in punte, punte in duim, pixels in punte en punte in pixels om te skakel. Wanneer pixels omgeskakel word na punte en omgekeerd, kan dit uitgevoer word by 96 dpi (punte per duim) resolusies of by die gespesifiseerde dpi resolusie.

**ConvertUtil**

Die volgende kode voorbeeld toon hoe om bladsy eienskappe in duim spesifiseer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
