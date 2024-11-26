---
title: Gebruik DocumentBuilder Om'n Dokument Maklik Te Verander
second_title: Aspose.Words vir C++
articleTitle: Gebruik DocumentBuilder Om'n Dokument Maklik Te Verander
linktitle: Gebruik DocumentBuilder Om'n Dokument Maklik Te Verander
type: docs
description: "Gebruik die dokumentbouer om'n dokument maklik in C++ te verander."
weight: 190
url: /af/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Spesifiseer Formatering

### Skrif Tipe Formatering

Huidige lettertipe formatering word verteenwoordig deur'n `Font` voorwerp wat deur die `DocumentBuilder.Font` eienskap teruggestuur word. Die `Font` klas bevat'n wye verskeidenheid van die lettertipe eienskappe moontlik in Microsoft Word. Hieronder voorbeeld toon hoe om lettertipe formatering stel.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Paragraaf Formatering

Huidige paragraaf formatering word verteenwoordig deur'n `ParagraphFormat` voorwerp wat teruggestuur word deur die `DocumentBuilder.ParagraphFormat` eienskap. Hierdie voorwerp bevat verskeie paragraaf formatering eienskappe beskikbaar in Microsoft Word. U kan die paragraafformatering maklik terugstel Na standaard Na Normale styl, links in lyn, geen inkeping, geen spasiëring, geen grense en geen skadu deur `ParagraphFormat.ClearFormatting` te skakel. Hieronder voorbeeld toon hoe om paragraaf formatering stel.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Werk Met Asiatiese Tipografie

#### Pas Outomaties Spasie tussen Asiatiese en latynse teks, Syfers Aan

As jy'n sjabloon ontwerp met Beide Oos-Asiatiese en latynse teks, en jy wil die voorkoms van die vorm sjabloon verbeter deur die spasies tussen beide tipes teks te beheer, kan jy jou vorm sjabloon instel om outomaties die spasies tussen hierdie twee tipes teks aan te pas. Jy kan AddSpaceBetweenFarEastAndAlpha en AddSpaceBetweenFarEastAndDigit eienskappe van ParagraphFormat klas gebruik om dit te bereik.

Die volgende kode voorbeeld wys hoe om `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` en `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` eienskappe te gebruik.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Verander Asiatiese Paragraafspasiëring en Inkeping

Die volgende kode voorbeeld demonstreer hoe Om Asiatiese paragraaf spasiëring en inkrimpings te verander.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Stel Lyn Breek Opsies

Asiatiese Tipografie-oortjie van die `Paragraph` eienskappe dialoog in MS Word het lynbreekgroep. Die opsies van hierdie groep kan ingestel word met behulp van FarEastLineBreakControl, WordWrap, HangingPunctuation eienskappe van ParagraphFormat klas. Weeslow code voorbeeld toon hoe om hierdie eienskappe te gebruik.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Selformatering

Selformatering word gebruik tydens die bou van'n tafel. Dit word voorgestel deur'n `CellFormat` voorwerp wat deur die `DocumentBuilder.CellFormat` eienskap teruggestuur word. CellFormat bevat verskeie tabel sel eienskappe soos breedte of vertikale belyning. Hieronder voorbeeld toon hoe om'n tabel wat'n enkele geformateerde sel bevat skep.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Ry Formatering

Huidige ry formatering word bepaal deur'n `RowFormat` voorwerp wat teruggestuur word deur die `DocumentBuilder.RowFormat` eienskap. Die voorwerp bevat inligting oor alle tabel ry formatering. Hieronder voorbeeld toon hoe om'n tabel wat'n enkele sel bevat te skep en ry formatering toe te pas.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Lys Opmaak

Aspose.Words laat die maklike skepping van lyste toe deur lysformatering toe te pas. DocumentBuilder verskaf die `DocumentBuilder.ListFormat` eienskap wat'n `ListFormat` voorwerp terugkeer. Hierdie voorwerp het verskeie metodes om'n lys te begin en te beëindig en om die inkeping te verhoog/verminder. Daar is twee algemene tipes lyste in Microsoft Word: met kolletjies en genommer.

- Om'n lys met kolletjies te begin, bel `ListFormat.ApplyBulletDefault`.
- Om'n genommerde lys te begin, bel `ListFormat.ApplyNumberDefault`.

Die koeël of nommer en formatering word by die huidige paragraaf gevoeg en alle verdere paragrawe word geskep met behulp van **DocumentBuilder** totdat `ListFormat.RemoveNumbers` geroep word om die formatering van die lys met kolletjies te stop. In Word-dokumente kan lyste uit tot nege vlakke bestaan. Lys opmaak vir elke vlak spesifiseer watter koeël of nommer gebruik word, links inkeping, spasie tussen die koeël en teks ens.

- Om die lysvlak van die huidige paragraaf met een vlak te verhoog, bel `ListFormat.ListIndent`.
- Om die lys vlak van die huidige paragraaf te verminder deur een vlak, bel `ListFormat.ListOutdent`.

Die metodes verander die lys vlak en pas die formatering eienskappe van die nuwe vlak.

{{% alert color="primary" %}}

U kan ook die `ListFormat.ListLevelNumber` - eienskap gebruik om die lysvlak vir die paragraaf te kry of in te stel. Die lys vlakke is genommer 0 tot 8.

{{% /alert %}}

Hieronder voorbeeld toon hoe om'n multilevel lys te bou.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Bladsy Opstelling en Afdeling Formatering

Bladsy opstel en afdeling eienskappe is ingesluit in die `PageSetup` voorwerp wat teruggestuur word deur die `DocumentBuilder.PageSetup` eiendom. Die voorwerp bevat al die bladsy opstel eienskappe van'n afdeling (links marge, onderste marge, papier grootte, en so aan) as eienskappe. Hieronder voorbeeld toon hoe om sulke eienskappe soos bladsy grootte en oriëntasie vir die huidige afdeling stel.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Die Toepassing Van'n Styl

Sommige formatering voorwerpe soos Lettertipe of ParagraphFormat ondersteun style. 'n enkele ingeboude of gebruiker gedefinieerde styl word verteenwoordig deur'n `Style` voorwerp wat die ooreenstemmende styl eienskappe soos naam, basis styl, lettertipe en paragraaf formatering van die styl, en so aan bevat.

Verder, 'n **Style** voorwerp bied die `Style.StyleIdentifier` eienskap wat'n locale-onafhanklike styl identifiseerder verteenwoordig deur'n **Style.StyleIdentifier** opsomming waarde terugkeer. Die punt is dat die name van ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur'n stylidentifiseerder te gebruik, kan jy die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die Microsoft Word ingeboude style soos Normale, Kop 1, Kop 2 ens. Alle gebruiker-gedefinieerde style word die **StyleIdentifier.User value** toegeken. Hieronder voorbeeld toon hoe om'n paragraaf styl toe te pas.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Grense en Skadu

Grense word verteenwoordig deur die BorderCollection. Dit is'n versameling Van Grens voorwerpe wat verkry word deur indeks of deur grens tipe. Grens tipe word verteenwoordig deur die `BorderType` opsomming. Sommige waardes van die opsomming is van toepassing op verskeie of slegs een dokument element. Byvoorbeeld, `BorderType.Bottom` is van toepassing op'n paragraaf of tabel sel terwyl `BorderType.DiagonalDown` spesifiseer die diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense bereik deur die eiendomswaardes te kombineer. Daarbenewens, beide **BorderCollection** en **Border** voorwerpe toelaat dat jy hierdie waardes te herstel na verstek deur die roeping van die `Border.ClearFormatting` metode. Let daarop dat wanneer grens eienskappe is teruggestel na standaard waardes, die grens is onsigbaar. Die `Shading` klas bevat skadu eienskappe vir dokument elemente. U kan die gewenste skadu-tekstuur en die kleure wat op die agtergrond en voorgrond van die element toegepas word, instel.

Die skadu tekstuur is ingestel met'n `TextureIndex` opsomming waarde wat die toepassing van verskeie patrone op die **Shading** voorwerp toelaat. Byvoorbeeld, om'n agtergrond kleur vir'n dokument element stel, gebruik die `TextureIndex.TextureSolid` waarde en stel die voorgrond skadu kleur soos toepaslik. Hieronder voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Snap Na Rooster

Aspose.Words bied twee eienskappe `ParagraphFormat.SnapToGrid` en `Font.SnapToGrid` om te kry en stel paragraaf eienskap snap om rooster.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Beweeg Die Wyser

### Bespeur Die Huidige Wyserposisie

Jy kan enige tyd kry waar die bouer se wyser tans geposisioneer is. Die `DocumentBuilder.CurrentNode` eiendom gee terug die node wat tans gekies in hierdie bouer. Die knoop is'n direkte kind van'n paragraaf. Enige insetselbewerkings wat u met `DocumentBuilder` uitvoer, sal voor die `DocumentBuilder.CurrentNode` invoeg. Wanneer die huidige paragraaf is leeg of die wyser is geposisioneer net voor die einde van die paragraaf, `DocumentBuilder.CurrentNode` gee null.

Jy kan ook die `DocumentBuilder.CurrentParagraph` eienskap gebruik, wat die paragraaf kry wat tans in hierdie **DocumentBuilder** gekies is. Hieronder voorbeeld toon hoe om toegang tot die huidige node in'n dokument bouer. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Beweeg Na Enige Nodus (Paragrawe en Hul Kinders)

As jy'n dokumentvoorwerpknooppunt het, wat'n paragraaf of'n direkte kind van'n paragraaf is, kan jy die bouer se wyser na hierdie knoop wys. Gebruik die `DocumentBuilder.MoveTo` metode om dit uit te voer. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na'n gespesifiseerde knoop. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Skuif Na Die Dokument Begin / Einde

As jy na die begin van die dokument moet skuif, bel `DocumentBuilder.MoveToDocumentStart`. As jy na die einde van die dokument moet skuif, bel `DocumentBuilder.MoveToDocumentEnd`. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na die begin of einde van'n dokument. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Beweeg na'n Afdeling

As jy met'n dokument werk wat verskeie afdelings bevat, kan jy na'n verlangde afdeling beweeg met `DocumentBuilder.MoveToSection`. Hierdie metode beweeg die wyser na die begin van'n gespesifiseerde afdeling en aanvaar die indeks van die vereiste afdeling. Wanneer die afdeling indeks is groter as of gelyk aan 0, dit spesifiseer'n indeks van die begin van die dokument met 0 wat die eerste afdeling. Wanneer die afdeling indeks is minder as 0, dit spesifiseer'n indeks van die einde van die dokument met -1 die laaste afdeling. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde afdeling. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Beweeg na'n Koptekst / Voetskrif

Wanneer jy'n paar data in'n kop of voetskrif moet plaas, moet jy eers daarheen beweeg met `DocumentBuilder.MoveToHeaderFooter`. Die metode aanvaar'n HeaderFooterType opsomming waarde wat die tipe kop of voetskrif identifiseer waarheen die wyser verskuif moet word. As jy opskrifte en voetskrifte wil skep wat vir die eerste bladsy verskil, moet jy die `PageSetup.DifferentFirstPageHeaderFooter` eienskap op **true** stel. As jy opskrifte en voetskrifte wil skep wat verskil vir ewe en onewe bladsye, moet jy `PageSetup.OddAndEvenPagesHeaderFooter` op **true** stel.

As u na die hoofverhaal moet terugkeer, gebruik **DocumentBuilder.MoveToSection** om uit die koptekst of voetskrif te beweeg. Hieronder voorbeeld skep koptekste en voetskrifte in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Beweeg Na'n Paragraaf

Gebruik `DocumentBuilder.MoveToParagraph` om die wyser na'n verlangde paragraaf in die huidige afdeling te skuif. Jy moet twee parameters aan hierdie metode slaag: paragraphIndex (die indeks van die paragraaf om na te beweeg) en characterIndex (die indeks van die karakter binne die paragraaf).

Die navigasie word uitgevoer binne die huidige storie van die huidige afdeling. Dit wil sê, as jy die wyser na die primêre kop van die eerste afdeling verskuif het, spesifiseer paragraphIndex die indeks van die paragraaf binne daardie kop van daardie afdeling.

Wanneer paragraphIndex groter of gelyk is aan 0, spesifiseer dit'n indeks vanaf die begin van die afdeling met 0 as die eerste paragraaf. Wanneer paragraphIndex kleiner is as 0, spesifiseer dit'n indeks aan die einde van die afdeling met -1 as die laaste paragraaf.

Die karakter indeks kan tans slegs gespesifiseer word as 0 om te skuif na die begin van die paragraaf of -1 om te skuif na die einde van die paragraaf. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde paragraaf. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Beweeg Na'n Tabel Sel

Gebruik `DocumentBuilder.MoveToCell` as u die wyser na'n tabelsel in die huidige afdeling moet skuif. Hierdie metode aanvaar vier parameters:

- tableIndex - die indeks van die tabel om na te beweeg.
- rowIndex - die indeks van die ry in die tabel.
- columnIndex - die indeks van die kolom in die tabel.
- characterIndex - die indeks van die karakter binne die sel.

Die navigasie word uitgevoer binne die huidige storie van die huidige afdeling. Vir die indeksparameters, wanneer indeks groter is as of gelyk is aan 0, spesifiseer dit'n indeks van die begin af met 0 as die eerste element. Wanneer indeks kleiner is as 0, spesifiseer dit'n indeks van die einde af met -1 as die laaste element.

Let ook daarop dat characterIndex tans slegs 0 kan spesifiseer om na die begin van die sel te beweeg of -1 om na die einde van die sel te beweeg. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na die gespesifiseerde tabel sel. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Skuif Na'n Boekmerk

Boekmerke word dikwels gebruik om spesifieke plekke in die dokument te merk waar nuwe elemente ingevoeg moet word. Om na'n boekmerk te beweeg, gebruik `DocumentBuilder.MoveToBookmark`. Hierdie metode het twee oorladings. Die eenvoudigste aanvaar niks anders as die naam van die boekmerk waar die wyser verskuif moet word nie. Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na'n boekmerk. Jy kan sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Hierdie oorlading beweeg die wyser na'n posisie net na die begin van die boekmerk met die gespesifiseerde naam. Nog'n oorlading `DocumentBuilder.MoveToBookmark` beweeg die wyser na'n boekmerk met groter presisie. Dit aanvaar twee addisionele booleaanse parameters:

- isStart bepaal of die wyser na die begin of na die einde van die boekmerk geskuif moet word.
- isAfter bepaal of die wyser na die begin-of eindposisie van die boekmerk geskuif moet word, of om die wyser na die begin-of eindposisie van die boekmerk te skuif.

Hieronder voorbeeld toon hoe om'n wyser posisie te skuif na net na die boekmerk einde.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Die vergelyking vir beide metodes is nie hooflettergevoelig nie.

Die invoeging van nuwe teks op hierdie manier vervang nie die bestaande teks van die boekmerk nie. Let daarop dat sommige boekmerke in die dokument aan vormvelde toegeken word. As jy na so'n boekmerk beweeg en teks daar invoeg, word die teks in die vormveldkode ingevoeg. Alhoewel dit nie die vormveld ongeldig sal maak nie, sal die ingevoegde teks nie sigbaar wees nie omdat dit deel word van die veldkode.

## Hoe Om Te Skakel Tussen Maateenhede

Die meeste van die voorwerp eienskappe wat in die Aspose.Words API wat'n paar meting (breedte/hoogte, marges en verskeie afstande) verteenwoordig aanvaar waardes in punte (1 duim is gelyk aan 72 punte). Soms is dit nie gerieflik nie, so daar is die `ConvertUtil` klas wat helper funksies bied om tussen verskillende meet eenhede te omskep. Dit laat toe om duim in punte, punte in duim, pixels in punte en punte in pixels om te skakel. Wanneer pixels omgeskakel word na punte en omgekeerd, kan dit uitgevoer word by 96 dpi (punte per duim) resolusies of by die gespesifiseerde dpi resolusie.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
