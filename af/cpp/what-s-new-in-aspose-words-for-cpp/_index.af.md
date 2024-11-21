---
title: Wat is nuut
second_title: Aspose.Words vir C++
articleTitle: Wat is nuut in Aspose.Words vir C++
linktitle: Wat is nuut in Aspose.Words vir C++
type: docs
description: "Aspose.Words vir C++ brei en verbeter daagliks. Op hierdie bladsy kan jy leer oor die groot en interessantste kenmerke van die produk."
weight: 2
url: /af/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Hierdie bladsy beskryf die interessantste nuwe Aspose.Words funksies wat in onlangse vrystellings bekendgestel is.

## Aspose.Words vir C++ 24.9

Aspose.Words 24.9 stel group shape invoeging en StructuredDocumentTag invoeging via DocumentBuilder, verbeter radiale grafiek weergawe met grade, verbeter digitale handtekeninge met XAdES-EPES ondersteuning, voeg Markdown onderstreep erkenning, en bied toegang tot voetnoot/endnoot skeiers.

### Rendering En Drukwerk

#### Grade Op Radiale Kaarte

Die lewering van grade op radiale kaarte is geïmplementeer.

### Omskakeling, Laai En Stoor Van Dokumente

#### Onderstreep Formatering wanneer Markdown Lêers Gelaai Word

Die opsie om onderstreepte opmaak te herken wanneer Markdown dokumente gelaai word, is opgeneem deur'n nuwe openbare eiendom [ImportUnderlineFormatting]() by te voeg.

### Digitale Handtekeninge

#### Teken Dokumente met XAdES-EPES

Die vermoë om dokumente te onderteken met XAdES-EPES vlak XML-DSig handtekeninge is introduce deur die toevoeging van'n nuwe openbare eiendom [XmlDsigLevel]() en'n nuwe openbare opsomming [XmlDsigLevel]().

### Ander

* 'n nuwe openbare metode [InsertGroupShape]() is by group shapes gevoeg.
* 'n nuwe openbare metode [InsertStructuredDocumentTag]() is bygevoeg om **StructuredDocumentTags** in'n dokument in te voeg.
* Openbare toegang tot voetnoot/eindnoot skeiers is verskaf deur die toevoeging van'n paar openbare klasse en eiendomme.

{{% alert color="primary" %}}

Leer meer oor [Aspose.Words vir C++ 24.9 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words vir C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 brei opsies vir samestellings uit, verbeter weergawevermoëns en brei'n paar ander opsies uit.

Aspose.Words 24.6 verbeter weergawe opsies, verbeter soek en vergelyk funksionaliteit, en brei verskeie ander funksies uit.

Aspose.Words 24.7 verander hoe jy met ActiveX werk, brei weergawes uit, sowel as uitvoer na Markdown en XLSX formate.

### Ondersteunde Formate

Vanaf weergawe 24.7 word uitvoer na PDF/UA-2 ondersteun om toeganklikheid vir gebruikers met gestremdhede te verseker.

### Rendering En Drukwerk

#### Veranderinge In Kaarte, Vorms en Tekeningml <sup>24.5</sup>

- DrawingML effekte weergawe vir SVG grafiese, die uitbreiding van vorige funksionaliteit beperk tot beelde, is geïmplementeer.
- Ondersteuning vir die skep van kombinasie kaarte en die aanpassing van eienskappe soos gaping breedte, oorvleueling, en borrel skaal binne reeks groepe is bekendgestel deur die toevoeging van die **ChartSeriesGroup** en **ChartSeriesGroupCollection** klasse en die **SeriesGroups** eiendom.
- Funksionaliteit om die SoftEdge effek van vorms te manipuleer is geïmplementeer deur die **SoftEdgeFormat** klas by te voeg.
- Die vermoë om aan te pas waardes van vorms is geïmplementeer deur die toevoeging van die **AdjustmentCollection** en **Adjustment** openbare klasse en **Adjustments** eiendom.

#### Veranderinge In Kaarte, Vorms en Tekeninge <sup>24.6</sup>

- Grafiese vermoëns is verbeter. Jy kan nou'n groter verskeidenheid kaarte skep, insluitend *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* kaarte, *Box & Whisker* kaarte, *Waterfalls*, en *Funnels*. Dit laat jou toe om jou data op'n meer diverse en insiggewende manier te visualiseer.
- Kleurbeheer vir skadu-opmaak is verbeter. U kan meer presiese beheer oor die voorkoms van u dokumente verkry deur toegang tot skadu-kleure te verkry.
- Prestasieverbetering vir agtergrondweergawe is verbeter. U kan die weergawe van agtergronde wat klein elemente bevat aansienlik versnel danksy inheemse teëltegnologie.
- Realistiese gradiënte vir vorms is bygevoeg. Jy kan nou DML vorms met nie-lineêre gradiënte skep, wat die visuele styl van Microsoft Word naboots vir'n meer gepoleerde voorkoms.

#### Grafiek Data Etiket Aanpassing <sup>24.7</sup>

Die vermoë om grafiek data etikette soos **Orientation** en **Rotation** aan te pas is bygevoeg.

#### Pasgemaakte Nommerstyling vir Lysvlakke <sup>24.7</sup>

'n stel vir die openbare eiendom [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) is bygevoeg. U kan nou'n pasgemaakte nommerstilering vir lysvlakke definieer.

#### Veranderinge in Die werk Met ActiveX <sup>24.7</sup>

- Die eienskappe van ActiveX voorwerpe kan nou verander word, gee jou meer beheer oor hul gedrag.
- Die vermoë om die waarde van die Radio knoppie ActiveX beheer te verander om dinamiese interaksie in staat te stel is bygevoeg.
- Die vermoë om'n ActiveX-boks te skakel na "gekontroleer" of "ongekontroleerd" is bygevoeg.

### Laai En Stoor Dokumente

#### Uitvoer Van Skakels na Markdown Formaat <sup>24.7</sup>

Die vermoë om die uitvoer van skakels in Markdown formaat te beheer is bygevoeg deur die implementering van die [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) eiendom.

### Soek en Vergelyk

#### Gevorderde Vergelykingsopsies <sup>24.6</sup>

Die vermoë om data-analise werkstrome te stroomlyn met verbeterde vergelyking funksionaliteit is bygevoeg. Dit sluit'n nuwe **IgnoreStoreItemId** opsie en'n herontwerpte koppelvlak vir gevorderde vergelykings in.

### Ander

- Die funksie om leë bladsye uit'n dokument te verwyder is geïmplementeer deur die [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) metode by te voeg. <sup>24.5</sup>
- Die vermoë om te kyk vir die teenwoordigheid van VBA makros sonder om'n dokument te laai is verskaf deur die toevoeging van die **HasMacros** eienskap. <sup>24.5</sup>
- 'n nuwe **DateTimeUtc** eienskap is bygevoeg - dit bied'n meer presiese tydstempel vir kommentaar, die verbetering van organisasie en naspeurbaarheid. <sup>24.6</sup>
- Die datum tyd formaat is nou outomaties opgespoor vir naatlose uitvoer na XLSX formaat. <sup>24.7</sup>
- Die openbare eiendom [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), wat jou toelaat om te verifieer of'n VBA projek beskerm word, is bygevoeg. <sup>24.7</sup>

{{% alert color="primary" %}}

Leer meer oor [Aspose.Words vir C++ 24.5 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Leer meer oor [Aspose.Words vir C++ 24.6 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Leer meer oor [Aspose.Words vir C++ 24.7 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words vir C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbeter die ervaring rondom die bestuur van stroke kleure, verbeter OLE voorwerpe, sowel as stel'n nuwe Bibliografie Bronne publiek API.

Aspose.Words 24.2 uitgebreide Kaarte API en stylbestuur. Hierdie weergawe van Aspose.Words het ook die vermoë om SvgSaveOptions tydens weergawe te spesifiseer, meer buigsame beheer laai Markdown lêers, en werk met verwysing teks vir voetnotas en eindnotas.

Aspose.Words 24.3 stel Emulasie van binêre raster operasies vir WMF meta lêers en ook voortgaan om die Kaarte API uit te brei.

Aspose.Words 24.4 verbeter sommige weergawe opsies, sowel as verbeter werk met digitale handtekeninge.

### Rendering En Drukwerk

#### Stroke Kleur Beheer <sup>24.1</sup>

Die [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) klas is uitgebrei met'n stel van nuwe openbare eienskappe wat verband hou met die bestuur van beroerte kleure: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Teken Ml Kaarte API Uitbreiding <sup>24.2 / 24.3 / 24.4</sup>

Die **DrawingML Charts API** word steeds uitgebrei.

#### Insluit Lettertipes Verklaar in @font-face Reëls <sup>24.4</sup>

Bygevoeg'n vermoë om lettertipes verklaar in @font-face reëls in die gevolglike dokument se lettertipe definisies is ingestel deur die toevoeging van'n nuwe [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) eiendom.

#### Werk Met Gloei en Refleksie Formatering <sup>24.4</sup>

Die vermoë om te werk met gloei en refleksie formatering vir'n tekening voorwerp is geïmplementeer.

### Laai En Stoor Dokumente

#### Spesifiseer SvgSaveOptions Tydens Lewering <sup>24.2</sup>

Die vermoë om [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) tydens weergawe te spesifiseer is bygevoeg met behulp van die [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) en [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metodes.

#### Bewaar Leë Lyne wanneer lêers Markdown Gelaai Word <sup>24.2</sup>

Die vermoë om leë lyne te bewaar wanneer Markdown lêers gelaai word, is bygevoeg.

### Ander

- Die vermoë om die teks van die `TextBox` OLE beheer te verander is ingestel deur die toevoeging van'n nuwe **Text** eienskap om die nuwe **TextBoxControl** klas. <sup>24.1</sup>
- Die Bibliografie Sources public API is geïmplementeer deur die toevoeging van'n nuwe naamruimte [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) met sy nuwe klasse en opsommings, en deur die toevoeging van'n nuwe [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) eienskap aan die [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klas. <sup>24.1</sup>
- Nuwe openbare eiendomme [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/), en [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) vir verbeterde stylbestuur is by die [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) klas gevoeg. <sup>24.2</sup>
- Die funksie om die werklike verwysingsmerk teks vir voetnotas en eindnotas te haal is verbeter met die [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) eienskap en die [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) metode. <sup>24.2</sup>
- Emulasie van binêre raster operasies vir WMF metafiles is geïmplementeer. <sup>24.3</sup>
- Die vermoë om handtekening opsies vir dokumente binne **SaveOptions** te definieer is in staat gestel deur die toevoeging van'n nuwe **DigitalSignatureDetails** klas met nuwe openbare lede, sowel as die toevoeging van nuwe eienskappe aan die [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) en [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) klasse. <sup>24.4</sup>

{{% alert color="primary" %}}

Leer meer oor [Aspose.Words vir C++ 24.1 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Leer meer oor [Aspose.Words vir C++ 24.2 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Leer meer oor [Aspose.Words vir C++ 24.3 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Leer meer oor [Aspose.Words vir C++ 24.4 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words vir C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 brei weergawe opsies, metafile weergawe emulasie, en markdown stoor opsies.

Aspose.Words 23.10 verbeter weergawe, brei opsies uit vir die laai en stoor van dokumente, en laat gebruikers toe om dokumente op nuwe maniere saam te voeg.

Aspose.Words 23.11 verbeter die werk met hersienings, XLSX formaat en lettertipes op grafieklegende met bykomende opsies.

Aspose.Words 23.12 stel nuwe eienskappe en opsommings bekend vir die werk met PDF en OOXML dokumente, sowel as ondersteuning vir WebP beelde.

### Rendering En Drukwerk

#### Aanpassing Van Asse Titels In DrawingML Kaarte <sup>23.9</sup>

Die vermoë om axis titels in DrawingML kaarte aan te pas is bekendgestel deur die implementering van'n nuwe openbare klas **ChartAxisTitle** en [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) eiendom.

#### Bepaling van Die Vertikale Posisie van Lettertipes binne'n Paragraaf <sup>23.9</sup>

Dit is nou moontlik om die vertikale posisie van lettertipes binne'n paragraaf te definieer deur die nuwe openbare [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) eienskap en die nuwe [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) opsomming te gebruik.

#### Voorgrond Kleur Beheer <sup>23.10</sup>

Die vermoë om die voorgrond kleur te haal sonder veranderlikes is bygevoeg om die [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) en [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) klasse via die **BaseForeColor** eiendom.

#### Uitbreiding Van Die Funksionaliteit Van Kaarte <sup>23.10</sup>

Die funksionaliteit van die [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/), en [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) klasse is uitgebrei met nuwe metodes en eienskappe.

#### Pas'n Prent outomaties aan en Pas dit In'n Vorm <sup>23.10</sup>

'n eenvoudige manier om'n beeld outomaties in'n spesifieke vorm aan te pas en te pas, is deur die nuwe [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) metode voorsien.

#### Verstek Skrif Tipe Formatering Vir DrawingML Grafiek Legende Inskrywings <sup>23.11</sup>

Die vermoë om standaard lettertipe opmaak vir legend inskrywings van DrawingML kaarte spesifiseer is bygevoeg via die [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) eiendom. Hierdie kenmerk vergemaklik'n meer gestroomlynde en konsekwente voorkoms vir kaartelemente, wat die algehele dokumentestetika verbeter.

#### Spesifiseer Bladsyuitleg wanneer PDF In Reader Oopgemaak Word <sup>23.12</sup>

Die vermoë om die bladsy uitleg te spesifiseer wat gebruik moet word wanneer'n dokument in'n PDF leser oopgemaak word, is bygevoeg deur die bekendstelling van'n nuwe **PageLayout** eienskap aan die [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) klas en die bekendstelling van'n nuwe **PdfPageLayout** opsomming.

### Laai En Stoor Dokumente

#### Spesifiseer'n Gidsnaam Om Beeld URIs In MarkdownTe Bou <sup>23.9</sup>

Die [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) klas is uitgebrei deur die [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) eienskap, wat toelaat om die naam van die gids wat gebruik word om beeld URIs geskryf in die Markdown dokument te bou spesifiseer.

#### Verminder PDF Uitset Grootte <sup>23.10</sup>

Verskeie PDF vertoon optimalisaties om uitset grootte te verminder wanneer die gebruik van [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) instellings geïmplementeer is.

#### Herken Hiperskakels wanneer TXT Dokumente Gelaai Word <sup>23.10</sup>

Die funksie om hiperskakels te herken wanneer TXT dokumente gelaai word, is geïmplementeer deur'n nuwe [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) eienskap by te voeg.

### Ander

- Metafile rendering emulasie om rasterisering grootte te bepaal is geïmplementeer, spesifiek vir WMF pen breedte en EMF kosmetiese pen breedte. Om dit te bereik, is die **ScaleWmfFontsToMetafileSize** eienskap vervang met die [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) eienskap en die [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) eienskap is bygevoeg. <sup>23.9</sup>
* 'n vereenvoudigde metode vir die invoeging van een dokument in'n ander dokument by die huidige wyser posisie is ingestel met behulp van die [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) metode. <sup>23.10</sup>
* Die vermoë om toegang tot en styl eienskappe te verander is bygevoeg deur die bekendstelling van die nuwe [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) eiendom. <sup>23.10</sup>
* 'n generiese tipe parameter is bygevoeg om die metodes van die [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) klas. <sup>23.10</sup>
* 'n manier om te beheer wanneer'n sekere hersiening aanvaar/verwerp moet word of nie, is geïmplementeer deur die [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) en [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) metodes te gebruik. Hierdie verbetering gee gebruikers fyner beheer oor die hersiening proses. <sup>23.11</sup>
* Die vermoë om alle afdelings van'n dokument op dieselfde XLSX werkblad te skryf is verskaf deur die nuwe [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) opsomming tipe en die nuwe [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) eienskap. <sup>23.11</sup>
* 'n manier om te beheer hoe ZIP64 formaat uitbreidings gebruik sal word vir OOXML dokumente is geïmplementeer deur die nuwe Zip64Mode eienskap van die `OoxmlSaveOptions` klas en die nuwe Zip64Mode opsomming. <sup>23.12</sup>
* Ondersteuning vir WebP beeld is ingestel. Let asseblief daarop dat hierdie funksie slegs beskikbaar is vir.NetStandart en .NET6 + weergawes. <sup>23.12</sup>

{{% alert color="primary" %}}

Leer meer oor [Aspose.Words vir C++ 23.9 Vrystelling Notas](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Leer meer oor [Aspose.Words vir C++ 23.10 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Leer meer oor [Aspose.Words vir C++ 23.11 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Leer meer oor [Aspose.Words vir C++ 23.12 Vrystelling Notas](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Sien Ook

{{% alert color="primary" %}}

Hierdie bladsy bevat die jongste nuus oor die afgelope 2 jaar. Vir besonderhede oor vorige vrystellings, sien die [Vrystelling Notas](/words/cpp/release-notes/) bladsye in die relevante afdelings.

{{% /alert %}}
