---
title: Co je nového?
second_title: Aspose.Words místo .NET
articleTitle: Co je nového v Aspose.Words místo .NET
linktitle: Co je nového v Aspose.Words místo .NET
type: docs
description: "Aspose.Words místo .NET denně rozšiřuje a zvyšuje. Na této stránce se můžete dozvědět o obrovských a nejzajímavějších rysech produktu."
weight: 10
url: /cs/net/what-s-new-in-aspose-words-for-net/
---

Tato stránka popisuje nejzajímavější nový Aspose.Words funkce zavedené v nedávných vydáních.

## Aspose.Words pro .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 rozšiřuje možnosti pro sestavy, zlepšuje možnosti vykreslování a rozšiřuje některé další možnosti.

Aspose.Words 24.6 vylepšuje možnosti vykreslování, vylepšuje funkce vyhledávání a porovnávání a rozšiřuje několik dalších funkcí.

Aspose.Words 24.7 mění způsob práce s ActiveX, rozšiřuje možnosti vykreslování a také export do formátů Markdown a XLSX.

Aspose.Words 24.8 vylepšuje přizpůsobení grafu přesným ovládáním popisků os, rozšiřuje správu písem, zlepšuje manipulaci se strukturou dokumentů a přidává nové možnosti pro export HTML/XAML, funkčnost PDF, převod dokumentů a digitální podpisy.

### Podporované formáty

Počínaje verzí 24.7 je podporován export do PDF/UA-2, aby byla zajištěna dostupnost pro uživatele se zdravotním postižením.

### Platformy <sup>24.5</sup>

Sestavení .NET 7.0/8.0 byla zahrnuta do balíčku NuGet Aspose.Words.

### Vykreslování a tisk

#### Změny v Charts, Shapes a DrawingML <sup>24.5</sup>

* Bylo implementováno vykreslování efektů DrawingML pro grafiku SVG, které rozšiřuje předchozí funkčnost omezenou na obrázky.
* Přidáním tříd [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) a [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) a vlastnosti [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) byla zavedena podpora pro vytváření kombinovaných grafů a úpravy vlastností, jako je šířka mezery, překrytí a měřítko bublin v rámci skupin řad.
* Funkce pro manipulaci s efektem SoftEdge tvarů byla implementována přidáním třídy [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* Možnost úpravy hodnot tvarů byla implementována přidáním [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) a [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) veřejné třídy a [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) vlastnictví.

#### Změny v grafech, tvarech a kresbě <sup>24.6</sup>

* Možnosti mapování byly vylepšeny. Nyní můžete vytvářet širší škálu grafů, včetně *Stromové mapy*, *Sunbursts*, *Histogramy*, *Pareto* grafy, *Box & Whisker* grafy, *Waterfalls* a *Funnels*. To vám umožní vizualizovat svá data rozmanitějším a informativním způsobem.
* Bylo vylepšeno ovládání barev pro formátování stínů. Přesnější kontrolu nad vzhledem vašich dokumentů získáte přístupem k barvám stínů.
* Zvýšení výkonu pro vykreslování na pozadí bylo vylepšeno. Vykreslování pozadí obsahujících drobné prvky můžete výrazně urychlit díky nativní technologii obkladů.
* Byly přidány realistické přechody pro tvary. Nyní můžete vytvářet tvary DML s nelineárními přechody, napodobujícími vizuální styl aplikace Microsoft Word pro uhlazenější vzhled.

#### Přizpůsobení štítku dat grafu <sup>24.7</sup>

Byla přidána možnost přizpůsobit štítky dat grafu, jako je **Orientace** a **Rotace**.

#### Vlastní styl čísel pro úrovně seznamu <sup>24.7</sup>

Byl přidán setter pro veřejnou vlastnost [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Nyní můžete definovat vlastní styl čísel pro úrovně seznamu.

#### Změny v práci s ActiveX <sup>24.7</sup>

* Vlastnosti objektů ActiveX lze nyní upravovat, což vám dává větší kontrolu nad jejich chováním.
* Byla přidána možnost upravit hodnotu přepínače ovládacího prvku ActiveX pro umožnění dynamické interakce.
* Byla přidána možnost přepnout zaškrtávací políčko ActiveX na "zaškrtnuté" nebo "nezaškrtnuté".

#### Ovládání nad osou grafu Orientace a rotace štítků <sup>24.8</sup>

Byla přidána přesná kontrola nad orientací a rotací štítků os grafu pro pohodlnější přizpůsobení grafu – [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) třída byla rozšířena o nové [Orientace](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) a [Rotace](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Nahrazení zpětného lomítka znakem jen <sup>24.8</sup>

Zpětně kompatibilní export HTML a XAML pro nahrazení znaku zpětného lomítka znakem Yen byl vylepšen. Aby toho bylo dosaženo, byla vlastnost **ReplaceBackslashWithYenSign** přidána do [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) a [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Použití značek SDT jako názvů polí formuláře při exportu do PDF <sup>24.8</sup>

Export PDF s podporou použití značek SDT jako názvů polí formuláře byl vylepšen přidáním nové vlastnosti [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) do třídy [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Konverze, načítání a ukládání dokumentů

#### Export odkazů do formátu Markdown <sup>24.7</sup>

Schopnost řídit export odkazů ve formátu Markdown byla přidána prostřednictvím implementace vlastnosti [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Nová třída [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), navržená tak, aby poskytovala sadu metod pro převod různých typů dokumentů pomocí jediného řádku kód, byl zaveden.

### Hledat a porovnat

#### Pokročilé možnosti porovnání <sup>24.6</sup>
Byla přidána možnost zefektivnit pracovní postupy analýzy dat pomocí vylepšené funkce porovnání. To zahrnuje novou možnost [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) a přepracované rozhraní pro pokročilá porovnávání.

### Jiný

* Funkce odstranění prázdných stránek z dokumentu byla implementována přidáním metody [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Možnost kontrolovat přítomnost maker VBA bez načítání dokumentu byla poskytnuta přidáním vlastnosti [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Nyní je podporováno zachování číslování zdrojů při vkládání dokumentu pomocí LINQ Reporting Engine. <sup>24.5</sup>
* Byla přidána nová vlastnost [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) – poskytuje přesnější časové razítko pro komentáře, zlepšuje organizaci a sledovatelnost. <sup>24.6</sup>
* LINQ Reporting Engine byl vylepšen. Bylo provedeno selektivní odstranění prázdných odstavců a definice vlastních zpráv pro chybějící členy objektu, což vedlo k čistším a informativnějším zprávám. <sup>24.6</sup>
* Formát data a času je nyní automaticky detekován pro bezproblémový export do formátu XLSX. <sup>24.7</sup>
* Byla přidána veřejná vlastnost [IsProtected] (https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), která vám umožňuje ověřit, zda je projekt VBA chráněn. <sup>24.7</sup>
* Informace o písmech byly rozšířeny o vlastnost **EmbeddingLicensingRights** přidanou do [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) a [PhysicalFontInfo](https://reference .aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Pro přesnější práci se strukturou dokumentu byl přidán způsob, jak efektivně vyčistit záhlaví a zápatí oddílů při zachování vodoznaků. Chcete-li vymazat záhlaví a zápatí sekcí, použijte novou veřejnou metodu [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Bylo povoleno digitální podepisování dokumentů XPS pomocí [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) – nová vlastnost [DigitalSignatureDetails](https://reference Pro tento účel byl přidán soubor .aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/). <sup>24.8</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words for .NET 24.5 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Další informace o [Aspose.Words for .NET 24.6 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Další informace o [Aspose.Words for .NET 24.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Další informace o [Aspose.Words for .NET 24.8 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 zlepšuje zkušenosti s managementem barev zdvihu, zvyšuje OLE objekty a LINQ reporting, stejně jako představuje nový `Bibliography Sources` veřejný API.

Aspose.Words 24.2 rozšířených grafů API, řízení stylu a možnosti LINQ. Tato verze Aspose.Words také představil schopnost určit SvgSaveOptions při vykreslování, pružnější ovládání zatížení Markdown soubory a práce s referenčním textem pro poznámky pod čarou a poznámky pod čarou.

Aspose.Words 24.3 zavádí nový TIFF Reader/Writer a Emulaci binárních rastrových operací pro WMF metafily. Aspose.Words 24.3 i nadále rozšiřuje grafy API.

Aspose.Words 24.4 zvyšuje ukládání formátů, některé možnosti vykreslování a zlepšuje práci s digitálními podpisy.

### Podporované formáty <sup>24.4</sup>

Moderní **WebP** formát obrázku je nyní podporován v Aspose.Words místo .NET Framework 4.6.2 a vyšší. Nyní můžete číst a vkládat WebP obrázky do dokumentů, stejně jako uložit obrázky v WebP formát.

Vezměte prosím na vědomí, že WebP je v současné době k dispozici pouze v .NET Standard a .NET Framework V4.6.2.

### Renderování a tisk

#### Kontrola barev tahu <sup>24.1</sup>

• [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) třída byla rozšířena o soubor nových veřejných nemovitostí souvisejících s řízením barvy zdvihu: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) a [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) a [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Grafy kresleníML API Rozšíření <sup>24.2 / 24.3 / 24.4</sup>

• **DrawingML Charts API** i nadále se rozšiřuje.

#### Vložit písma Vyhlášení v@font-face Rules <sup>24.4</sup>

Přidána možnost vložit písma deklarovaná v @font-face pravidla do výsledného dokumentu definice písma byla zavedena přidáním nového [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) majetek.

#### Práce s formátováním záře a reflexe <sup>24.4</sup>

Byla implementována schopnost pracovat s formátováním světla a odrazu pro kreslící objekt.

### Načítání a ukládání dokumentů

#### Zadejte SvgSaveOptions Během renderování <sup>24.2</sup>

Schopnost určit [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) během vykreslení bylo přidáno pomocí [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) a [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) metody.

#### Zachovat prázdné linky při načítání Markdown soubory <sup>24.2</sup>

Schopnost zachovat prázdné linky při nakládání Markdown byly přidány soubory.

#### Nový TIFF čtečka / autor <sup>24.3</sup>

Nový TIFF čtečka / spisovatel pro Aspose.Words místo .NET Standard, .NET 6 a později byl vyvinut. Aspose.Words místo .NET 24.3 dodal podporu pro čtení TIFF obrázků s JPEG a Old JPEG kompresní typy, a také výrazně zlepšil kvalitu čtecích a zápis operací.

### Ostatní

* Schopnost změnit text `TextBox` Kontrola OLE byla zavedena přidáním nového [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) vlastnictví nového [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) třída. <sup>24.1</sup>
* Bibliografie Zdroje veřejnosti API byla provedena přidáním nového jmenného prostoru [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) s novými třídami a výčty, a přidáním nové [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) majetek [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída. <sup>24.1</sup>
* An API omezit přístup k členům typu pomocí syntaxe šablony pro `LINQ Reporting Engine` bylo poskytnuto. <sup>24.1</sup>
* Nové veřejné nemovitosti [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), a [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pro vylepšené řízení stylu byly přidány do [Style](https://reference.aspose.com/words/net/aspose.words/style/) třída. <sup>24.2</sup>
* Funkce pro získání skutečného textu referenční značky pro poznámky pod čarou a poznámky k ní byla posílena o [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) majetek a [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) metoda. <sup>24.2</sup>
* Slučitelnost s `Word 2016` grafy pro `LINQ Reporting Engine` bylo povoleno. <sup>24.2</sup>
* Impulace binárních rastrových operací pro WMF metafily byla provedena. <sup>24.3</sup>
* Schopnost definovat možnosti podpisu dokumentů v rámci **SaveOptions** byla povolena přidáním nového [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) třída s novými veřejnými členy, stejně jako přidání nových nemovitostí do [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) a [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) třídy. <sup>24.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo .NET 24.1 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Více informací o [Aspose.Words místo .NET 24.2 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Více informací o [Aspose.Words místo .NET 24.3 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Více informací o [Aspose.Words místo .NET 24.4 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words místo .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozšiřuje možnosti vykreslování, emulace metafilů a markdown Uložit možnosti.

Aspose.Words 23.10 zlepšuje vykreslování, rozšiřuje možnosti načítání a ukládání dokumentů a umožňuje uživatelům sloučit dokumenty novými způsoby.

Aspose.Words 23.11 zvyšuje práci s revizemi, formátem XLSX a písmy na legendě grafu s dalšími možnostmi.

Aspose.Words 23.12 představuje nové vlastnosti a výčty pro práci s PDF a OOXML dokumenty, stejně jako podporu pro WebP obrázky.

### Renderování a tisk

#### Přizpůsobení titulů seker v kresleníML Grafy <sup>23.9</sup>

Schopnost přizpůsobit názvy os v grafech DrawingML byla zavedena implementací nové veřejné třídy [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) a [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) majetek.

#### Určení vertikální polohy písem v odstavci <sup>23.9</sup>

Nyní je možné definovat vertikální polohu písem v odstavci pomocí nové veřejnosti [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) majetek a nový [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) výčtu.

#### Ovládání barev před zemí <sup>Ostatní, o tloušťce</sup>

Schopnost získat barvu popředí bez modifikátorů byla přidána do [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) a [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) třídy prostřednictvím **BaseForeColor** majetek.

#### Rozšíření funkčnosti grafů <sup>Ostatní, o tloušťce</sup>

Funkce [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), a [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) třídy byly rozšířeny o nové metody a vlastnosti.

#### Automaticky nastavit a nastavit obrázek do tvaru <sup>Ostatní, o tloušťce</sup>

Jednoduchý způsob automatického nastavení a uložení obrazu do určitého tvaru byl poskytnut prostřednictvím nového [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) metoda.

#### Výchozí formátování písma pro kreslení ML Údaje o legendách grafu <sup>23.11</sup>

Schopnost určit výchozí formátování písma pro legendární záznamy grafů DrawingML byla přidána prostřednictvím [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) majetek. Tato funkce usnadňuje efektivnější a konzistentnější vzhled grafových prvků, zlepšuje celkovou estetiku dokumentu.

#### Upřesnit rozložení stránky při otevření PDF v čtečce <sup>23.12</sup>

Možnost určit rozložení stránky, která má být použita při otevření dokumentu v PDF čtečce byla přidána zavedením nového [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) majetek [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) třída a zavedení nového [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) výčtu.

### Načítání a ukládání dokumentů

#### Zadání názvu složky pro vytvoření URI obrázků v Markdown <sup>23.9</sup>

• [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) třída byla rozšířena o včetně [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) vlastnost, která umožňuje určit název složky použité pro sestavení obrázku URI napsané do Markdown dokument.

#### Snížit PDF Velikost výstupu <sup>Ostatní, o tloušťce</sup>

Různé PDF vykreslování optimalizace pro snížení velikosti výstupu při využití [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) byla provedena nastavení.

#### Poznejte hypertextové odkazy při načítání TXT dokumentů <sup>Ostatní, o tloušťce</sup>

Funkce rozpoznat hypertextové odkazy při načítání TXT dokumentů byla implementována přidáním nového [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) majetek.

### Ostatní

* Metafile rendering emulation for determination raasterization size has been implemented, specify for WMF pen width and EMF kosmetic pen width. Abychom toho dosáhli, **ScaleWmfFontsToMetafileSize** nemovitost byla nahrazena [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) majetek a [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) byl přidán majetek. <sup>23.9</sup>
* V současné poloze kurzoru byla zavedena zjednodušená metoda pro vložení jednoho dokumentu do jiného dokumentu [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) metoda. <sup>Ostatní, o tloušťce</sup>
* Možnost přístupu a modifikace vlastností stylu byla přidána zavedením nového [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) majetek. <sup>Ostatní, o tloušťce</sup>
* Do metod byl přidán obecný parametr typu [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) třída. <sup>Ostatní, o tloušťce</sup>
* Způsob kontroly, kdy by měla být některá revize přijata/odmítnuta nebo nebyla provedena pomocí [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) a [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) metody. Toto vylepšení poskytuje uživatelům lepší kontrolu nad procesem revize. <sup>23.11</sup>
* Schopnost zapsat všechny části dokumentu na stejný pracovní list XLSX byla poskytnuta prostřednictvím nového [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) typ výčtu a nový [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) majetek. <sup>23.11</sup>
* Způsob, jak kontrolovat, jak budou použita rozšíření formátu ZIP64 pro OOXML dokumenty, byl implementován prostřednictvím nové vlastnosti Zip64Mode `OoxmlSaveOptions` třída a nový Zip64Mode počet. <sup>23.12</sup>
* Podpora pro WebP byl představen obrázek. Upozorňujeme, že tato funkce je dostupná pouze pro .NetStandart a .NET6+ verze. <sup>23.12</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo .NET 23.9 Poznámky k vydání](/words/net/aspose-words-for-net-23-9-release-notes/).

Více informací o [Aspose.Words místo .NET 23.10 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Více informací o [Aspose.Words místo .NET 23.11 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Více informací o [Aspose.Words místo .NET 23.12 Poznámky k vydání](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words místo .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 zvyšuje schopnost pracovat s daty ze série grafů a schopnost pracovat s dokumenty ODT, jakož i zlepšit hlavičky/nohy a jejich textové obaly.

Aspose.Words 23.6 rozšiřuje možnosti renderování, přidává nový exportní formát, zlepšuje LINQ reporting a LowCode nářadí.

Aspose.Words 23.7 zvyšuje možnosti podávání zpráv, přidává nový formát exportu a zavádí změny v práci s tabulkami a digitálními podpisy.

Aspose.Words 23.8 rozšiřuje možnosti různých formátů, zlepšuje vykreslování a přidává nové možnosti pro práci s poli

### Podporované formáty

* Počínaje verzí 23.6, lze uložit dokument ve formátu XLSX. Nyní můžete převést své dokumenty do formátu Excel. <sup>23.6</sup>
* Začínáme verzí 23.7, lze uložit stránku dokumentu nebo tvar ve formátu EPS. <sup>23.7</sup>

### Funkce nového formátu

* Byla zavedena funkce pro automatické generování obsahu (TOC) dokumentů MOBI. <sup>23.8</sup>
* • [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) Konstruktor byl rozšířen o [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Byla provedena úprava vertikálního textu pro EMF metafily. <sup>23.8</sup>

### Renderování a tisk

#### Získat a upravit Údaje ze série grafů <sup>23.5</sup>

Funkce pro získání a úpravu dat ze série grafů byla poskytnuta přidáním:

* nové třídy: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nové typy enum: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Podpora pokročilé typografie <sup>23.6</sup>

Byla přidána podpora pokročilé typografie v provedení WMF, EMF a EMF+.

#### Barevný obsah na stránce <sup>23.6</sup>

Veřejný majetek [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), bylo přidáno uvedení, zda je stránka barevná nebo ne.

#### Formátování znaků grafu <sup>23.6</sup>

Byla implementována schopnost nastavit formátování vyplňování, zdvihu a calloutu pro popisky grafů.

### Mail Merge a podávání zpráv

#### Dynamic HTML Vložení pro LINQ Reporting Engine <sup>23.6</sup>

Byl přidán nový způsob dynamického HTML vložení pro LINQ Reporting Engine.

#### Mustache Podpora značek <sup>23.7</sup>

Mustache Tagy jsou nyní podporovány v [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) a [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) metody.

#### Šablona LINQ Reporting Engine Syntax aktualizace <sup>23.7</sup>

Syntaxe šablony LINQ Reporting Engine nyní podporuje `ElementAt` a ElementAtOrDefault metody rozšíření.

#### Upřesnění velikosti renderovaných obrázků <sup>23.8</sup>

Nový veřejný majetek [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) pro upřesnění velikosti vykreslených obrázků v pixelu byla zavedena.

#### Zachovat Whitespace pro JSON smyčcové hodnoty LINQ <sup>23.8</sup>

Do LINQ Reporting Engine byla přidána možnost zachovat Whitespace pro hodnoty řetězce JSON.

### LowCode <sup>23.6</sup>

Nový LowCode byly přidány metody pro sloučení různých typů dokumentů do jediného výstupního dokumentu.

### Ostatní

* Byla zavedena podpora pro textové balení v hlavičkách/nožkách. <sup>23.5</sup>
* Schopnost odstranit digitální podpisy z dokumentů ODT byla přidána prostřednictvím [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) metoda. <sup>23.5</sup>
* Veřejný majetek [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) získat základní a rubínový text fonetického průvodce [Run](https://reference.aspose.com/words/net/aspose.words/run/) bylo přidáno. <sup>23.5</sup>
* Schopnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte byla přidána zavedením nového [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) majetek. <sup>23.7</sup>
* • [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) třídy byly rozšířeny o nové členy veřejné správy [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), a [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Byla přidána podpora CITATION a BIBLIOGRAFIE. <sup>23.8</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo .NET 23.5 Poznámky k vydání](/words/net/aspose-words-for-net-23-5-release-notes/).

Více informací o [Aspose.Words místo .NET 23.6 Poznámky k vydání](/words/net/aspose-words-for-net-23-6-release-notes/).

Více informací o [Aspose.Words místo .NET 23.7 Poznámky k vydání](/words/net/aspose-words-for-net-23-7-release-notes/).

Více informací o [Aspose.Words místo .NET 23.8 Poznámky k vydání](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 zlepšuje výkon emulace rastrového provozu a zvyšuje kvalitu exportu a zobrazování dokumentů.

Aspose.Words 23.2 zavádí uložení dokumentů ve formátu MOBI, zlepšuje vykreslování grafu a provádí významné změny v detailech vzhledu dokumentu.

Aspose.Words 23.3 zvyšuje import a úsporu dokumentů s novými vlastnostmi a také zlepšuje kvalitu práce s pozadím a barvami popředí a radiálním gradientem.

Aspose.Words 23.4 zlepšuje výpočet některých parametrů a umístění tabulky a okolního textu.

### Zlepšení výkonnosti

#### Emulace rastrových operací <sup>23.1</sup>

Výkon a kvalita emulace rastrových operací s metafily byly významně zlepšeny.

### Podporované formáty

#### Vývoz do MOBI <sup>23.2</sup>

Počínaje verzí 23.2, je možné uložit dokument ve formátu MOBI (také nazývaný ČLR, AZW ÁZ Amazon Kindle vlastní formát souboru e-knihy). Nyní můžete nejen načíst MOBI dokumenty, ale také exportovat své soubory do formátu MOBI.

### Renderování

#### Práce se Shading Téma Barvy <sup>23.1</sup>

Schopnost pracovat s tematikou stínování barev byla provedena.

#### Podpora R-čtvercového koeficientu v DML grafech <sup>23.1</sup>

Podpora R-čtvercového koeficientu v DML grafových trendových etiketách při renderování byla přidána.

#### Vylepšení grafu <sup>23.2</sup>

Od 23.2 se grafové vykreslování výrazně zlepšilo.

#### Pozadí a přední kontrola barev <sup>23.3</sup>

• [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) třída byla rozšířena o soubor nových veřejných nemovitostí souvisejících s pozadím a barvy popředí: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) a [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) a [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Radiální radiátory s `SkiaSharp` Indián Shader <sup>23.3</sup>

Renderování radiálních gradientů `SkiaSharp` nativní odstín pro .NET Standard bylo provedeno.

#### Vzdálenost mezi tabulkou a okolním textem <sup>23.4</sup>

Schopnost nastavit vzdálenost mezi tabulkou a okolním textem byla přidána zavedením nových vlastností do [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) třída: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), a [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Načítání a ukládání dokumentů

#### Generovat `TOC` pro AZW3 Dokumenty <sup>23.1</sup>

Schopnost generovat `TOC` (obsah) pro dokumenty AZW3 bylo přidáno pomocí [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) majetek.

#### Exportovat položky seznamu do Markdown <sup>23.1</sup>

Způsob kontroly vývozu položek seznamu do Markdown formát byl poskytnut přidáním [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) majetek [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) třída.

#### Dokument šetří oznámení o pokroku <sup>23.3</sup>

Byla provedena úspora oznámení o pokroku pro formáty MOBI a AZW3.

#### Věta a přizpůsobení slov <sup>23.3</sup>

Možnost určit, zda při importu dokumentu automaticky upravit věty a rozestup slov byla přidána zavedením [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) majetek.

### Ostatní

* Schopnost určit nastavení odstupu znaků dokumentu byla přidána prostřednictvím [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) provádění majetku <sup>23.2</sup>
* Způsob, jak poučovat Aspose.Words zda zahrnout textboxy, poznámky pod čarou a poznámky ke slovům statistiky počítání bylo poskytnuto přidáním [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) majetek <sup>23.2</sup>
* Nová volba pro styl dokumentu, která umožňuje určit, zda je styl automaticky nastaven na základě příslušné hodnoty, byla zavedena prostřednictvím [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) majetek <sup>23.2</sup>
* Schopnost určit, zda [Run](https://reference.aspose.com/words/net/aspose.words/run/) je fonetická příručka byla přidána pomocí [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) majetek <sup>23.4</sup>
* Jednoduchý způsob, jak pracovat se sériemi a osami kombo grafy byl realizován zavedením [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) třída a přidání [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) majetek <sup>23.4</sup>
* Nové veřejné vlastnosti spojené s tvarem relativní polohy a velikosti byly přidány do [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třída <sup>23.4</sup>
* Přesnost a výkon výpočtu jasu barev pro automatické rozlišení barev textu byl vylepšen v souladu s nejnovějšími verzemi Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo .NET 23.1 Poznámky k vydání](/words/net/aspose-words-for-net-23-1-release-notes/).

Více informací o [Aspose.Words místo .NET 23.2 Poznámky k vydání](/words/net/aspose-words-for-net-23-2-release-notes/).

Více informací o [Aspose.Words místo .NET 23.3 Poznámky k vydání](/words/net/aspose-words-for-net-23-3-release-notes/).

Více informací o [Aspose.Words místo .NET 23.4 Poznámky k vydání](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words místo .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 rozšiřuje možnosti načítání a ukládání dokumentů a zlepšení interakce s některými dalšími možnostmi.

Aspose.Words 22.10 zlepšuje hledání a výměnu možností, zvyšuje OLE objekty a rozšiřuje funkci seznamu.

Aspose.Words 22.11 rozšiřuje svou funkčnost o nové možnosti pro pohodlnější práci s již známými objekty: poli, tisk, OLE a strukturované dokumentové značky.

Aspose.Words 22.12 zvyšuje možnosti vykreslování a zavádí možnosti práce s okraji při načítání / ukládání dokumentu.

### Zlepšení výkonnosti <sup>22.12</sup>

Byla zavedena optimalizace, která výrazně snižuje hloubku grafického stavu hnízdění při zobrazování do PDF, aby byla zachována shoda specifikace.

### Renderování a tisk

#### Tisk nebarvený Stránky na barevné tiskárně <sup>22.11</sup>

Vlastní barevný/šedý tisk režim byl implementován přidáním nového **GrayscaleAuto** hodnota pro [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) výčtu.

Nová tisková vlastnost umožňuje uživatelům kontrolovat, jak jsou nebarevné stránky vytištěny, pokud zařízení podporuje barevný tisk. Tato funkce může být užitečná, pokud uživatelé chtějí automaticky tisknout nebarevné stránky pouze pomocí šedého tiskového režimu.

#### Nové vlastnosti pro úpravu hranic <sup>22.12</sup>

Nové veřejné vlastnictví [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) a [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) byly představeny.

#### Linear Trendline Formule pro kresleníML Rendering <sup>22.12</sup>

Renderování lineárních trendů pro grafy kresleníML bylo implementováno.

#### Nastavení Font Fallback pro Google Noto Písma <sup>22.12</sup>

Předdefinované nastavení zálohování písma pro Google Noto byla aktualizována písma.

### Načítání a ukládání dokumentů

#### Cache hlavička nebo zápatí tvary ke snížení PDF Velikost <sup>22.9</sup>

Schopnost cache hlavičky / tvary nohy ke snížení velikosti výstupního PDF souboru byla implementována přidáním nového **CacheHeaderFooterShapes** majetek.

#### Automatická detekce čísel při načtení dokumentu <sup>22.9</sup>

Schopnost určit [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) majetek při načítání textu byl realizován prostřednictvím rozšíření [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) třída.

#### Upřesnění konkrétního Typ marže <sup>22.12</sup>

Schopnost určit konkrétní [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) typ pro daný oddíl byl implementován.

### Hledat a porovnat <sup>O tloušťce převyšující 0,2 mm</sup>

Schopnost ignorovat [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) při hledání a nahrazení možností byla provedena přidáním nového [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) majetek [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) třída.

### Ostatní

* Byla přidána nová funkce pro získání FieldEQ jako OfficeMath. <sup>22.9</sup>
* Vytvoření strukturovaných značek dokumentů Group typ na úrovni řádku byl povolen. <sup>22.9</sup>
* OLE objekty a ovládací prvky jsou nyní považovány za metafilní obrázky při konverzi dokumentu na HTML. <sup>O tloušťce převyšující 0,2 mm</sup>
* Nová funkce zkontrolovat, že konkrétní seznam byl vytvořen ze stejné šablony jako srovnávací seznam byl přidán zavedením nového [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) metoda do [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) třída. <sup>O tloušťce převyšující 0,2 mm</sup>
* Schopnost vytvořit nové strukturované značky dokumentů [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) typ byl přidán. <sup>22.11</sup>
* Byla poskytnuta schopnost sledovat průběh aktualizace pole. <sup>22.11</sup>
* Nový **EmbedAttachments** byla zavedena vlastnost, která uživatelům umožňuje vložit OLE přílohy ze zdrojového dokumentu do výstupního PDF dokumentu. <sup>22.11</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo .NET 22.9 Poznámky k vydání](/words/net/aspose-words-for-net-22-9-release-notes/).

Více informací o [Aspose.Words místo .NET 22.10 Poznámky k vydání](/words/net/aspose-words-for-net-22-10-release-notes/).

Více informací o [Aspose.Words místo .NET 22.11 Poznámky k vydání](/words/net/aspose-words-for-net-22-11-release-notes/).

Více informací o [Aspose.Words místo .NET 22.12 Poznámky k vydání](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Viz také

{{% alert color="primary" %}}

Tato stránka obsahuje nejnovější zprávy o vydání za poslední 2 roky. Podrobnosti o dřívějších vydáních viz [Poznámky k vydání '](/words/net/release-notes/) stránky v příslušných oddílech.

{{% /alert %}}