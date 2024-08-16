---
title: Co je nového?
second_title: Aspose.Words místo Java
articleTitle: Co je nového v Aspose.Words místo Java
linktitle: Co je nového v Aspose.Words místo Java
type: docs
description: "Aspose.Words místo Java denně rozšiřuje a zvyšuje. Na této stránce se můžete dozvědět o obrovských a nejzajímavějších rysech produktu."
weight: 2
url: /cs/java/what-s-new-in-aspose-words-for-java/
---

Tato stránka popisuje nejzajímavější nové Aspose.Words funkce zavedené v nedávných vydáních.

## Aspose.Words for Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 rozšiřuje možnosti pro sestavy, zlepšuje možnosti vykreslování a rozšiřuje některé další možnosti.

Aspose.Words 24.6 vylepšuje možnosti vykreslování, vylepšuje funkce vyhledávání a porovnávání a rozšiřuje několik dalších funkcí.

Aspose.Words 24.7 mění způsob práce s ActiveX, rozšiřuje možnosti vykreslování a také export do formátů Markdown a XLSX.

Aspose.Words 24.8 vylepšuje přizpůsobení grafu přesným ovládáním popisků os, rozšiřuje správu písem, zlepšuje manipulaci se strukturou dokumentů a přidává nové možnosti pro export HTML/XAML, funkčnost PDF, převod dokumentů a digitální podpisy.

### Podporované formáty

Počínaje verzí 24.7 je podporován export do PDF/UA-2, aby byla zajištěna dostupnost pro uživatele se zdravotním postižením.

### Vykreslování a tisk

#### Změny v Charts, Shapes a DrawingML <sup>24.5</sup>

- Bylo implementováno vykreslování efektů DrawingML pro grafiku SVG, které rozšiřuje předchozí funkčnost omezenou na obrázky.
- Přidáním tříd [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) a [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) a vlastnosti [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups) byla zavedena podpora pro vytváření kombinovaných grafů a úpravy vlastností, jako je šířka mezery, překrytí a měřítko bublin v rámci skupin řad.
- Funkce pro manipulaci s efektem SoftEdge tvarů byla implementována přidáním třídy [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Možnost upravovat hodnoty tvarů byla implementována přidáním [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) a [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) veřejné třídy a [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) vlastnost.

#### Změny v grafech, tvarech a kresbě <sup>24.6</sup>

* Možnosti mapování byly vylepšeny. Nyní můžete vytvářet širší škálu grafů, včetně *Stromové mapy*, *Sunbursts*, *Histogramy*, *Pareto* grafy, *Box & Whisker* grafy, *Waterfalls* a *Funnels*. To vám umožní vizualizovat svá data rozmanitějším a informativním způsobem.
* Bylo vylepšeno ovládání barev pro formátování stínů. Přesnější kontrolu nad vzhledem vašich dokumentů získáte přístupem k barvám stínů.
* Zvýšení výkonu pro vykreslování na pozadí bylo vylepšeno. Vykreslování pozadí obsahujících drobné prvky můžete výrazně urychlit díky nativní technologii obkladů.
* Byly přidány realistické přechody pro tvary. Nyní můžete vytvářet tvary DML s nelineárními přechody, napodobujícími vizuální styl aplikace Microsoft Word pro uhlazenější vzhled.

#### Přizpůsobení štítku dat grafu <sup>24.7</sup>

Byla přidána možnost přizpůsobit štítky dat grafu, jako je **Orientace** a **Rotace**.

#### Vlastní styl čísel pro úrovně seznamu <sup>24.7</sup>

Byl přidán setter pro veřejnou vlastnost [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Nyní můžete definovat vlastní styl čísel pro úrovně seznamu.

#### Změny v práci s ActiveX <sup>24.7</sup>

* Vlastnosti objektů ActiveX lze nyní upravovat, což vám dává větší kontrolu nad jejich chováním.
* Byla přidána možnost upravit hodnotu přepínače ovládacího prvku ActiveX pro umožnění dynamické interakce.
* Byla přidána možnost přepnout zaškrtávací políčko ActiveX na "zaškrtnuté" nebo "nezaškrtnuté".

#### Ovládání nad osou grafu Orientace a rotace štítků <sup>24.8</sup>

Pro pohodlnější přizpůsobení grafu byla přidána přesná kontrola nad orientací a rotací štítků os grafu – třída [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) byla rozšířena o nové vlastnosti **Orientation** a **Rotation**.

#### Nahrazení zpětného lomítka znakem jen <sup>24.8</sup>

Zpětně kompatibilní export HTML a XAML pro nahrazení znaku zpětného lomítka znakem Yen byl vylepšen. Aby toho bylo dosaženo, byla do tříd [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) a [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) přidána vlastnost **ReplaceBackslashWithYenSign**.

#### Použití značek SDT jako názvů polí formuláře při exportu do PDF <sup>24.8</sup>

Export PDF s podporou použití značek SDT jako názvů polí formuláře byl vylepšen přidáním nové vlastnosti **UseSdtTagAsFormFieldName** do třídy [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Konverze, načítání a ukládání dokumentů

#### Export odkazů do formátu Markdown <sup>24.7</sup>

Schopnost řídit export odkazů ve formátu Markdown byla přidána prostřednictvím implementace vlastnosti [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Byla představena nová třída **LowCode.Converter**, která poskytuje sadu metod pro převod různých typů dokumentů pomocí jediného řádku kódu.

### Hledat a porovnat

#### Pokročilé možnosti porovnání <sup>24.6</sup>
Byla přidána možnost zefektivnit pracovní postupy analýzy dat pomocí vylepšené funkce porovnání. To zahrnuje novou možnost [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) a přepracované rozhraní pro pokročilá porovnávání.

### Jiný

* Funkce odstranění prázdných stránek z dokumentu byla implementována přidáním metody [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Možnost kontrolovat přítomnost maker VBA bez načítání dokumentu byla poskytnuta přidáním [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) vlastnictví. <sup>24.5</sup>
* Nyní je podporováno zachování číslování zdrojů při vkládání dokumentu pomocí LINQ Reporting Engine. <sup>24.5</sup>
* Byla přidána nová vlastnost [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – poskytuje přesnější časové razítko pro komentáře, zlepšuje organizaci a sledovatelnost. <sup>24.6</sup>
* LINQ Reporting Engine byl vylepšen. Bylo provedeno selektivní odstranění prázdných odstavců a definice vlastních zpráv pro chybějící členy objektu, což vedlo k čistším a informativnějším zprávám. <sup>24.6</sup>
* Formát data a času je nyní automaticky detekován pro bezproblémový export do formátu XLSX. <sup>24.7</sup>
* Byla přidána veřejná vlastnost [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), která vám umožňuje ověřit, zda je projekt VBA chráněn. <sup>24.7</sup>
* Informace o písmech byly rozšířeny o vlastnost **EmbeddingLicensingRights** přidanou do tříd [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) a [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Pro přesnější práci se strukturou dokumentu byl přidán způsob, jak efektivně vyčistit záhlaví a zápatí oddílů při zachování vodoznaků. Chcete-li vymazat záhlaví a zápatí oddílů, použijte novou veřejnou metodu **ClearHeadersFooters**. <sup>24.8</sup>
* Bylo povoleno digitální podepisování dokumentů XPS pomocí [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) – pro tento účel byla přidána nová vlastnost **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words for Java 24.5 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Další informace o [Aspose.Words for Java 24.6 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Další informace o [Aspose.Words for Java 24.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Další informace o [Aspose.Words for Java 24.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 zlepšuje zkušenosti s managementem barev tahů, zvyšuje OLE objekty a LINQ reporting, stejně jako představuje nové zdroje bibliografie veřejné API.

Aspose.Words 24.2 rozšířené grafy API, řízení stylu a možnosti LINQ. Tato verze Aspose.Words také zavedla možnost specifikovat SvgSaveOptions při vykreslování, pružnější ovládání zatížení Markdown soubory a práce s referenčním textem poznámek pod čarou a poznámek pod čarou.

Aspose.Words 24.3 zavádí nový TIFF Reader/Writer a Emulaci binárních rastrových operací pro WMF metafily. Aspose.Words 24.3 dále rozšiřuje grafy API.

Aspose.Words 24.4 zvyšuje ukládání formátů, některé možnosti vykreslování a zlepšuje práci s digitálními podpisy.

### Podporované formáty <sup>24.4</sup>

Moderní **WebP** formát obrázku je nyní podporován v Aspose.Words. Nyní můžete číst a vkládat WebP obrázky do dokumentů, stejně jako uložit obrázky v WebP formát.

### Renderování a tisk

#### Ovládání barev tahu <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) třída byla rozšířena o soubor nových veřejných nemovitostí souvisejících s řízením barvy zdvihu: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) a [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) a [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Grafy kresleníML API Rozšíření <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** pokračuje v rozšiřování.

#### Vložit písma Vyhlášení v@font-face Rules <sup>24.4</sup>

Přidána možnost vložit písma deklarovaná v @font-face pravidla do výsledného dokumentu definice písma byla zavedena přidáním nového [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) majetek.

#### Práce s formátováním záře a reflexe <sup>24.4</sup>

Byla implementována schopnost pracovat s formátováním světla a odrazu pro kreslící objekt.

### Načítání a ukládání dokumentů

#### Zadejte SvgSaveOptions Během předávání <sup>24.2</sup>

Schopnost určit [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) během renderování bylo přidáno pomocí [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) a [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metody.

#### Zachovat prázdné linky při načítání Markdown soubory <sup>24.2</sup>

Schopnost zachovat prázdné linky při nakládání Markdown byly přidány soubory.

#### Nový TIFF čtečka / autor <sup>24.3</sup>

Nový TIFF čtečka / spisovatel pro Aspose.Words místo .NET Standard, .NET 6 a později byl vyvinut. Aspose.Words místo .NET 24.3 dodal podporu pro čtení TIFF obrázků s JPEG a Old JPEG kompresní typy, a také výrazně zlepšila kvalitu čtecích a zápis operací.

### Ostatní

* Schopnost změnit text `TextBox` Kontrola OLE byla zavedena přidáním nového [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) vlastnictví nového [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) třída. 24.1 <sup>24.1</sup>
* Bibliografie Zdroje veřejnosti API byla provedena přidáním několika nových [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) a [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) třídy a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) počet, jakož i přidáním nového [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) majetek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída. <sup>24.1</sup>
* An API bylo poskytnuto omezení přístupu k členům typu pomocí syntaxe šablony pro systém hlášení LINQ. <sup>24.1</sup>
* Nové veřejné nemovitosti [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), a [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pro vylepšené řízení stylu bylo přidáno do [Style](https://reference.aspose.com/words/net/aspose.words/style/) třída. <sup>24.2</sup>
* Funkce pro získání skutečného textu referenční značky pro poznámky pod čarou a poznámky k ní byla posílena o [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) majetek a [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) metoda. <sup>24.2</sup>
* Slučitelnost s `Word 2016` grafy pro `LINQ Reporting Engine` bylo povoleno. <sup>24.2</sup>
* Impulace binárních rastrových operací pro WMF metafily byla provedena. <sup>24.3</sup>
* Schopnost definovat možnosti podpisu dokumentů v rámci **SaveOptions** byla povolena přidáním nového [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) třída s novými veřejnými členy, stejně jako přidání nových nemovitostí do [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) a [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) třídy. <sup>24.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words Místo Java 24.1 Poznámky k východu](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Více informací o [Aspose.Words Místo Java 24.2 Poznámky k východu.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Více informací o [Aspose.Words Místo Java 24.3 Poznámky k východu.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Více informací o [Aspose.Words Místo Java 24.4 Poznámky k východu.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

{{% /alert %}}

## Aspose.Words místo Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozšiřuje možnosti vykreslování, emulace metafilů a markdown Uložit možnosti.

Aspose.Words 23.10 zlepšuje vykreslování, rozšiřuje možnosti načítání a ukládání dokumentů a umožňuje uživatelům sloučit dokumenty novými způsoby.

Aspose.Words 23.11 zvyšuje práci s revizemi, formátem XLSX a písmy na legendě grafu s dalšími možnostmi.

Aspose.Words 23.12 představuje nové vlastnosti a počty pro práci s PDF dokumenty, podpora WebP obrázky, a aktualizované Bouncy Castle knihovna.

### Renderování a tisk

#### Přizpůsobení titulů seker v kresleníML Grafy <sup>23.9</sup>

Schopnost přizpůsobit názvy os v grafech DrawingML byla zavedena implementací nové veřejné třídy [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) a [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) majetek.

#### Určení vertikální polohy písem v odstavci <sup>23.9</sup>

Nyní je možné definovat vertikální polohu písem v odstavci pomocí nové veřejnosti [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) majetek a nový [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) výčtu.

#### Ovládání barev před zemí <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>

Schopnost získat barvu popředí bez modifikátorů byla přidána do [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) a [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) třídy prostřednictvím **BaseForeColor** majetek.

#### Rozšíření funkčnosti grafů <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>

Funkce [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), a [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) třídy byly rozšířeny o nové metody a vlastnosti.

#### Automaticky nastavte a nastavte obrázek do tvaru <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>

Jednoduchý způsob automatického nastavení a uložení obrazu do určitého tvaru byl poskytnut prostřednictvím nového [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) metoda.

#### Výchozí formátování písma pro kreslení ML Údaje o legendách grafu <sup>23.11</sup>

Schopnost určit výchozí formátování písma pro legendární záznamy grafů DrawingML byla přidána prostřednictvím **Font** majetek. Tato funkce usnadňuje efektivnější a konzistentnější vzhled grafových prvků a zlepšuje estetiku celého dokumentu.

#### Upřesnit rozložení stránky při otevření PDF v čtečce <sup>23.12</sup>

Schopnost určit rozložení stránky, která má být použita při otevření dokumentu v PDF čtečce byla přidána zavedením nového [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) majetek [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) třída a zavedení nového [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) výčtu.

### Načítání a ukládání dokumentů

#### Zadání názvu složky pro vytvoření URI obrázků v Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) třída byla rozšířena o včetně [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) vlastnost, která umožňuje určit název složky použité pro sestavení obrázku URI napsané do Markdown dokument.

#### Snížit PDF Velikost výstupu <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>

Různé PDF vykreslování optimalizace pro snížení velikosti výstupu při využití [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) byla provedena nastavení.

#### Poznejte hypertextové odkazy při načítání TXT dokumentů <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>

Funkce rozpoznat hypertextové odkazy při načítání TXT dokumentů byla implementována přidáním nového [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) majetek.

### Ostatní

- Metafile vykreslování emulace pro stanovení velikosti rastrizace byla provedena, zejména pro šířku WMF pera a EMF kosmetického pera šířky pera. Abychom toho dosáhli, **ScaleWmfFontsToMetafileSize** nemovitost byla nahrazena [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) majetek a [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) majetek byl přidán. <sup>23.9</sup>
- V současné poloze kurzoru byla zavedena zjednodušená metoda pro vložení jednoho dokumentu do jiného dokumentu [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metoda. <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>
- Možnost přístupu a úpravy styl vlastnosti byla přidána zavedením nového [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) majetek. <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>
- Do metod byl přidán obecný parametr typu [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) třída. <sup>S obsahem válců převyšujícím 1500 cm3, avšak nepřesahujícím 1500 cm3</sup>
- Způsob kontroly, kdy by měla být některá revize přijata/odmítnuta či nikoli, byl proveden pomocí [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) a [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) metody. Toto vylepšení poskytuje uživatelům lepší kontrolu nad procesem revize. <sup>23.11</sup>
- Schopnost zapsat všechny části dokumentu na stejný pracovní list XLSX byla poskytnuta prostřednictvím nového [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) typ výčtu a nový [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) majetek. <sup>23.11</sup>
- Podpora pro WebP byl představen obrázek. Upozorňujeme, že tato funkce je dostupná pouze pro .NetStandart a .NET6+ verze. <sup>23.12</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words Místo Java 23.9 Poznámky k východu](/words/java/aspose-words-for-java-23-9-release-notes/).

Více informací o [Aspose.Words Místo Java 23.10 Poznámky k východu](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Více informací o [Aspose.Words Místo Java 23.11 Poznámky k východu](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Více informací o [Aspose.Words Místo Java 23.12 Poznámky k východu](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words místo Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 zvyšuje schopnost pracovat s daty řady grafů a schopnost pracovat s dokumenty ODT, jakož i zlepšit hlavičky/nohy a jejich textové obaly.

Aspose.Words 23.6 rozšiřuje možnosti renderování, přidává nový exportní formát, zlepšuje LINQ reporting a LowCode nářadí.

Aspose.Words 23.7 zvyšuje možnosti podávání zpráv, přidává nový exportní formát a zavádí změny v práci s tabulkami a digitálními podpisy.

Aspose.Words 23.8 rozšiřuje možnosti různých formátů, zlepšuje vykreslování a přidává nové možnosti pro práci s poli

### Podporované formáty

* Počínaje verzí 23.6, lze uložit dokument ve formátu XLSX. Nyní můžete převést své dokumenty do formátu Excel. <sup>23.6</sup>

* Počínaje verzí 23.7, lze uložit stránku dokumentu nebo tvar ve formátu EPS. <sup>23.7</sup>

* ### New Format Funkce

  - Byla zavedena funkce pro automatické generování obsahu (TOC) dokumentů MOBI. <sup>23.8</sup>
  - The [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) Konstruktor byl rozšířen o [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Byla provedena úprava vertikálního textu pro EMF metafily. <sup>23.8</sup>

### Renderování

#### Získat a upravit Údaje ze série grafů <sup>23.5</sup>

Funkce pro získání a úpravu dat ze série grafů byla poskytnuta přidáním:

- nové třídy: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nové typy enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Podpora pokročilé typografie <sup>23.6</sup>

Byla přidána podpora pokročilé typografie ve WMF, EMF a EMF+ renderování.

#### Barevný obsah na stránce <sup>23.6</sup>

Veřejný majetek [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), bylo přidáno uvedení, zda je stránka barevná nebo ne.

#### Formátování znaků grafu <sup>23.6</sup>

Byla implementována schopnost nastavit formátování vyplnění, zdvihu a callout pro popisky grafů.

### Mail Merge a podávání zpráv

#### Dynamické HTML vkládání pro LINQ Reporting Engine <sup>23.6</sup>

Byl přidán nový způsob dynamického HTML vložení pro LINQ Reporting Engine.

#### Mustache Podpora značek <sup>23.7</sup>

Mustache Tags jsou nyní podporovány v [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) a [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) metody.

#### Template LINQ Reporting Engine Syntax Updates <sup>23.7</sup>

Syntaxe šablony LINQ Reporting Engine nyní podporuje `ElementAt` a ElementAtOrDefault metody rozšíření.

#### Upřesnění velikosti renderovaných obrázků <sup>23.8</sup>

Nový veřejný majetek **ImageSize** pro upřesnění velikosti vykreslených obrázků v pixelu byla zavedena.

#### Zachovat Whitespace pro JSON smyčcové hodnoty LINQ <sup>23.8</sup>

Do LINQ Reporting Engine byla přidána možnost zachovat Whitespace pro hodnoty řetězce JSON.

### LowCode <sup>23.6</sup>

Nový LowCode byly přidány metody pro sloučení různých typů dokumentů do jednoho výstupního dokumentu.

### Ostatní

- Byla zavedena podpora pro textové balení hlaviček/noh. <sup>23.5</sup>
- Schopnost odstranit digitální podpisy z dokumentů ODT byla přidána prostřednictvím [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) metoda. <sup>23.5</sup>
- Veřejný majetek [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) získat základní a rubínový text fonetického průvodce [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) bylo přidáno. <sup>23.5</sup>
- Schopnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte byla přidána zavedením nového [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) majetek. <sup>23.7</sup>
- The [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) a [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) třídy byly rozšířeny o nové členy veřejné správy [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), a [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Byla přidána podpora CITATION a BIBLIOGRAFIE. <sup>23.8</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words Místo Java 23.5 Poznámky k východu](/words/java/aspose-words-for-java-23-5-release-notes/).

Více informací o [Aspose.Words Místo Java 23.6 Poznámky k východu](/words/java/aspose-words-for-java-23-6-release-notes/).

Více informací o [Aspose.Words Místo Java 23.7 Poznámky k východu](/words/java/aspose-words-for-java-23-7-release-notes/).

Více informací o [Aspose.Words Místo Java 23.8 Poznámky k východu](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 zlepšuje výkon rastrové emulace provozu a zvyšuje kvalitu exportu a zobrazování dokumentů.

Aspose.Words 23.2 zavádí uložení dokumentů ve formátu MOBI, zlepšuje vykreslování grafů a provádí významné změny v detailech vzhledu dokumentu.

Aspose.Words 23.3 zvyšuje import a úsporu dokumentů s novými vlastnostmi a také zlepšuje kvalitu práce s pozadím a barvami popředí a radiálním gradientem.

Aspose.Words 23.4 zlepšuje výpočet některých parametrů a umístění tabulky a okolního textu.

### Zlepšení výkonnosti

#### Emulace rastrových operací <sup>23.1</sup>

Výkon a kvalita emulace rastrových operací s metafily byly významně zlepšeny.

### Podporované formáty

#### Vývoz do MOBI <sup>23.2</sup>

Počínaje verzí 23.2, je možné uložit dokument ve formátu MOBI (také nazývaný ČLR, AZW AZZ) Amazon Kindle vlastní formát souboru e-knihy). Nyní můžete nejen načíst dokumenty MOBI, ale také exportovat své soubory do formátu MOBI.

### Renderování

#### Práce se Shading Téma Barvy <sup>23.1</sup>

Schopnost pracovat s tematikou stínování barev byla provedena.

#### Podpora R-čtvercového koeficientu v DML grafech <sup>23.1</sup>

Podpora R-čtvercového koeficientu v DML mapových trendových etiketách při renderování byla přidána.

#### Vylepšení grafu <sup>23.2</sup>

Od 23.2 se grafové vykreslování výrazně zlepšilo.

#### Pozadí a přední kontrola barev <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) třída byla rozšířena o soubor nových veřejných vlastností souvisejících s pozadím a barvami popředí: **ForeThemeColor** a **BackThemeColor**, **ForeTintAndShade** a **BackTintAndShade**.

#### Radiální radiátory s `SkiaSharp` Indián Shader <sup>23.3</sup>

Renderování radiálních gradientů `SkiaSharp` nativní odstín pro .NET Standard bylo provedeno.

#### Vzdálenost mezi tabulkou a okolním textem <sup>23.4</sup>

Schopnost nastavit vzdálenost mezi tabulkou a okolním textem byla přidána zavedením nových vlastností do [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) třída: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), a [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Načítání a ukládání dokumentů

#### Generovat `TOC` pro AZW3 Dokumenty <sup>23.1</sup>

Schopnost generovat `TOC` (obsah) pro dokumenty AZW3 bylo přidáno pomocí [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) majetek.

#### Exportovat položky seznamu do Markdown <sup>23.1</sup>

Způsob kontroly vývozu položek seznamu do Markdown formát byl poskytnut přidáním [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) majetek [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) třída.

#### Dokument ušetří oznámení o pokroku <sup>23.3</sup>

Byla provedena úspora oznámení pokroku pro MOBI a AZW3.

#### Věta a přizpůsobení slov <sup>23.3</sup>

Možnost určit, zda je při importu dokumentu automaticky upravena věta a slovní odstup, byla přidána zavedením **AdjustSentenceAndWordSpacing** majetek.

### Ostatní

- Možnost určit nastavení odstupu znaků dokumentu byla přidána prostřednictvím [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) provádění majetku <sup>23.2</sup>
- Způsob, jak poučovat Aspose.Words zda zahrnout textboxy, poznámky pod čarou a poznámky ke komentářům do statistiky počtu slov bylo poskytnuto přidáním [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) majetek <sup>23.2</sup>
- Nová možnost pro styl dokumentu, která umožňuje určit, zda je styl automaticky nastaven na základě příslušné hodnoty, byla zavedena prostřednictvím [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) majetek <sup>23.2</sup>
- Schopnost určit, zda [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) je fonetická příručka byla přidána pomocí **IsPhoneticGuide** majetek <sup>23.4</sup>
- Jednoduchý způsob práce se sériemi a osami kombo grafů byl realizován zavedením **ChartAxisCollection** třída a přidání **Chart.Axes** majetek <sup>23.4</sup>
- byly přidány nové veřejné vlastnosti spojené s tvarem relativního umístění a velikosti [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) třída <sup>23.4</sup>
- Přesnost a výkon výpočtu jasu barev pro automatické rozlišení barev textu byl vylepšen v souladu s nejnovějšími verzemi Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words Místo Java 23.1 Poznámky k východu](/words/java/aspose-words-for-java-23-1-release-notes/).

Více informací o [Aspose.Words Místo Java 23.2 Poznámky k východu](/words/java/aspose-words-for-java-23-2-release-notes/).

Více informací o [Aspose.Words Místo Java 23.3 Poznámky k východu](/words/java/aspose-words-for-java-23-3-release-notes/).

Více informací o [Aspose.Words Místo Java 23.4 Poznámky k východu](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words místo Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 rozšiřuje možnosti načítání a ukládání dokumentů a zlepšení interakce s některými dalšími možnostmi.

Aspose.Words 22.10 zlepšuje vyhledávání a výměnu možností, zvyšuje OLE objekty a rozšiřuje funkci seznamu.

Aspose.Words 22.11 rozšiřuje svou funkčnost o nové možnosti pro pohodlnější práci s již známými objekty: poli, tisk, OLE a strukturované známky dokumentů.

Aspose.Words 22.12 zvyšuje možnosti aranžování a zavádí možnosti práce s maržemi při načítání / ukládání dokumentu.

### Zlepšení výkonnosti <sup>22.12</sup>

Byla zavedena optimalizace, která výrazně snižuje hloubku grafického stavu hnízdění při zobrazování do PDF, aby byla zachována shoda specifikace.

### Renderování a tisk

#### Tisk nebarvený Stránky na tiskárně barev <sup>22.11</sup>

Vlastní barevný/šedý tisk režim byl implementován přidáním nového **GrayscaleAuto** hodnota [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) výčtu.

Nová vlastnost tisku umožňuje uživatelům kontrolovat, jak jsou vytištěny nebarevné stránky, pokud zařízení podporuje barevný tisk. Tato funkce může být užitečná, pokud uživatelé chtějí automaticky tisknout nebarevné stránky pouze pomocí šedého tiskového režimu.

#### Nové vlastnosti pro úpravu hranic <sup>22.12</sup>

Nové veřejné vlastnictví [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) a [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) byly představeny.

#### Linear Trendline Formule pro kresleníML Rendering <sup>22.12</sup>

Bylo implementováno vykreslování lineárního trendového vzorce pro grafy DrawingML.

#### Nastavení Font Fallback pro Google Noto Písma <sup>22.12</sup>

Předdefinované nastavení zálohování písma pro Google Noto byla aktualizována písma.

### Načítání a ukládání dokumentů

#### Cache hlavička nebo zápatí tvary ke snížení velikosti PDF <sup>22.9</sup>

Schopnost cache hlavičky / tvary nohy pro snížení velikosti výstupního PDF souboru byla provedena přidáním nového [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) majetek.

#### Automatická detekce čísel při načtení dokumentu <sup>22.9</sup>

Schopnost určit [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) majetek při načítání textu byl realizován prostřednictvím rozšíření [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) třída.

#### Upřesnění konkrétního Typ marže <sup>22.12</sup>

Schopnost určit konkrétní [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) typ pro daný oddíl byl implementován.

### Hledat a porovnat <sup>O tloušťce převyšující 0,35 mm</sup>

Schopnost ignorovat [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) při hledání a nahrazení možností byla provedena přidáním nového [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) majetek [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) třída.

### Ostatní

- Byla přidána nová funkce pro získání FieldEQ jako OfficeMath. <sup>22.9</sup>
- Vytvoření strukturovaných značek dokumentů Group typ na úrovni řádku byl povolen. <sup>22.9</sup>
- OLE objekty a ovládací prvky jsou nyní považovány za metafilní obrázky při konverzi dokumentu na HTML. <sup>O tloušťce převyšující 0,35 mm</sup>
- Nová funkce pro kontrolu, že konkrétní seznam byl vytvořen ze stejné šablony jako srovnávací seznam byl doplněn zavedením nového [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) metoda do [List](https://reference.aspose.com/words/java/com.aspose.words/list/) třída. <sup>O tloušťce převyšující 0,35 mm</sup>
- Schopnost vytvářet nové strukturované značky dokumentů [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) byl přidán typ. <sup>22.11</sup>
- Byla poskytnuta schopnost sledovat průběh aktualizace pole. <sup>22.11</sup>
- Nový. **EmbedAttachments** byla zavedena vlastnost, která umožňuje uživatelům vložit OLE přílohy ze zdrojového dokumentu do výstupního PDF dokumentu. <sup>22.11</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words Místo Java 22.9 Poznámky k východu](/words/java/aspose-words-for-java-22-9-release-notes/).

Více informací o [Aspose.Words Místo Java 22.10 Poznámky k východu](/words/java/aspose-words-for-java-22-10-release-notes/).

Více informací o [Aspose.Words Místo Java 22.11 Poznámky k východu](/words/java/aspose-words-for-java-22-11-release-notes/).

Více informací o [Aspose.Words Místo Java 22.12 Poznámky k východu](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Viz také

{{% alert color="primary" %}}

Tato stránka obsahuje nejnovější zprávy za poslední 2 roky. Podrobnosti o dřívějších verzích viz [Poznámky k vyvedení '](/words/java/release-notes/) stránky v příslušných oddílech.

{{% /alert %}}
