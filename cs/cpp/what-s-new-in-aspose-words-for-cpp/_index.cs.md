---
title: Co je nového
second_title: Aspose.Words pro C++
articleTitle: Co je nového v Aspose.Words pro C++
linktitle: Co je nového v Aspose.Words pro C++
type: docs
description: "Aspose.Words pro C++ rozšiřuje a zvyšuje denně. Na této stránce se můžete dozvědět o obrovských a nejzajímavějších vlastnostech produktu."
weight: 2
url: /cs/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Tato stránka popisuje nejzajímavější nové funkce Aspose.Words představené v posledních verzích.

## Aspose.Words Pro C++ 24.9, 24.10

Aspose.Words 24.9 zavádí group shape vkládání a StructuredDocumentTag vkládání pomocí DocumentBuilder, vylepšuje Vykreslování radiálního grafu s odstupňováním, vylepšuje digitální podpisy s podporou XAdES-EPES, přidává Markdown rozpoznávání podtržení a poskytuje přístup k oddělovačům poznámek pod čarou/vysvětlivek.

Aspose.Words 24.10 zavádí vylepšenou podporu ovládání ActiveX s vytvářením CommandButton, novým ovládáním viditelnosti tvarů, schopností group shapes, vylepšeným exportem Markdown pro tabulky, formátováním grafů pro grafy Pie a Doughnut, lepším zpracováním kódování Big5 a podporou zastaralých tchajwanských písem.

### Vykreslování a tisk

#### Promoce na radiálních grafech <sup>24.9</sup>

Bylo implementováno Vykreslování promocí na radiálních grafech.

#### CommandButton Ovládací Prvky ActiveX <sup>24.10</sup>

Schopnost vytvářet ovládací prvky CommandButton ActiveX byla zavedena přidáním nové veřejné metody [InsertForms2OleControl]() a nové veřejné třídy [Forms2OleControl]().

#### Kontrola Viditelnosti Tvaru <sup>24.10</sup>

Byla přidána nová veřejná vlastnost [Hidden]() pro řízení viditelnosti obrazců.

#### Změny v grafech Pie a Doughnut <sup>24.10</sup>

Do grafů format Pie a Doughnut bylo přidáno několik nových veřejných vlastností.

### Převod, načítání a ukládání dokumentů

#### Při načítání souborů Markdown podtrhněte formátování <sup>24.9</sup>

Možnost rozpoznat formátování podtržení při načítání dokumentů Markdown byla začleněna přidáním nové veřejné vlastnosti [ImportUnderlineFormatting]().

#### Export tabulek jako HTML při ukládání do Markdown <sup>24.10</sup>

Možnost exportovat tabulky jako HTML při ukládání dokumentů do formátu Markdown byla implementována přidáním nové veřejné vlastnosti [ExportAsHtml]() a výčtu [MarkdownExportAsHtml]().

### Digitální Podpisy

#### Podepisujte dokumenty XAdES-EPES <sup>24.9</sup>

Schopnost podepisovat dokumenty s podpisy XAdES-EPES level XML-DSig byla introdused přidáním nového veřejného majetku [XmlDsigLevel]() a nového veřejného výčtu [XmlDsigLevel]().

### Jiný

* Do group shapes byla přidána nová veřejná metoda [InsertGroupShape](). <sup>24.9</sup>
* Byla přidána nová veřejná metoda [InsertStructuredDocumentTag]() pro vložení **StructuredDocumentTags** do dokumentu. <sup>24.9</sup>
* Veřejný přístup k oddělovačům poznámek pod čarou/vysvětlivek byl poskytnut přidáním několika veřejných tříd a vlastností. <sup>24.9</sup>
* Schopnost seskupovat jednotlivé tvary group shapes dohromady a přímo seskupovat oba tvary a group shapes byla zavedena přidáním metody [InsertGroupShape](). <sup>24.10</sup>
* Zpracování kódování Big5 pro TrueType CMAP tabulky bylo vylepšeno. <sup>24.10</sup>
* Byla rozšířena podpora zastaralých tchajwanských písem. <sup>24.10</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words pro C++ 24.9 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Další informace o [Aspose.Words pro C++ 24.10 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words pro C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 rozšiřuje možnosti sestav, zlepšuje možnosti Vykreslování a rozšiřuje některé další možnosti.

Aspose.Words 24.6 vylepšuje možnosti Vykreslování, vylepšuje funkce vyhledávání a porovnávání a rozšiřuje několik dalších funkcí.

Aspose.Words 24.7 mění způsob práce s ActiveX, rozšiřuje možnosti Vykreslování a exportuje do formátů Markdown a XLSX.

### Podporované Formáty

Počínaje verzí 24.7 je podporován export do PDF/UA-2, aby byla zajištěna dostupnost pro uživatele se zdravotním postižením.

### Vykreslování a tisk

#### Změny v grafech, tvarech a DrawingML <sup>24.5</sup>

- DrawingML Vykreslování efektů pro grafiku SVG, Rozšíření předchozí funkce omezené na obrázky, bylo implementováno.
- Podpora pro vytváření kombinovaných grafů a úpravy vlastností, jako je šířka mezery, překrytí a stupnice bublin v rámci skupin sérií, byla zavedena přidáním tříd **ChartSeriesGroup** a **ChartSeriesGroupCollection** a vlastnosti **SeriesGroups**.
- Funkce pro manipulaci s efektem tvarů SoftEdge byla implementována přidáním třídy **SoftEdgeFormat**.
- Možnost upravit upravit hodnoty tvarů byla implementována přidáním veřejných tříd **AdjustmentCollection** a **Adjustment** a vlastnosti **Adjustments**.

#### Změny v grafech, tvarech a kreslení <sup>24.6</sup>

- Byly vylepšeny možnosti mapování. Nyní můžete vytvořit širší škálu grafů, včetně *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* grafy, *Box & Whisker* grafy, *Waterfalls* a *Funnels*. To vám umožní vizualizovat vaše data rozmanitějším a informativnějším způsobem.
- Ovládání barev pro formátování stínů bylo vylepšeno. Přesnější kontrolu nad vzhledem dokumentů můžete získat přístupem k barvám stínů.
- Zvýšení výkonu pro vykreslování pozadí bylo vylepšeno. Díky nativní technologii obkladů můžete výrazně urychlit vykreslování pozadí obsahujících malé prvky.
- Byly přidány realistické přechody pro tvary. Nyní můžete vytvářet DML tvary s nelineárními přechody, napodobující vizuální styl Microsoft Word pro vyleštěnější vzhled.

#### Přizpůsobení Štítku Dat Grafu <sup>24.7</sup>

Byla přidána možnost přizpůsobit štítky dat grafu, jako jsou **Orientation** a **Rotation**.

#### Vlastní styl čísel pro úrovně seznamu <sup>24.7</sup>

Byl přidán setr pro veřejný majetek [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Nyní můžete definovat vlastní styl čísel pro úrovně seznamu.

#### Změny v práci s ActiveX <sup>24.7</sup>

- Vlastnosti objektů ActiveX lze nyní upravit, což vám dává větší kontrolu nad jejich chováním.
- Byla přidána možnost upravit hodnotu přepínače ActiveX control Pro povolení dynamické interakce.
- Byla přidána možnost přepnout ActiveX checkbox na "zaškrtnuto" nebo "nezaškrtnuto".

### Načítání a ukládání dokumentů

#### Export odkazů do formátu Markdown <sup>24.7</sup>

Schopnost řídit export odkazů ve formátu Markdown byla přidána implementací vlastnosti [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Hledat a porovnávat

#### Pokročilé Možnosti Porovnání <sup>24.6</sup>

Byla přidána možnost zefektivnit pracovní postupy analýzy dat s vylepšenou funkcí porovnávání. To zahrnuje novou možnost **IgnoreStoreItemId** a přepracované rozhraní pro pokročilá srovnání.

### Jiný

- Funkce pro odstranění prázdných stránek z dokumentu byla implementována přidáním metody [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Možnost zkontrolovat přítomnost Maker VBA bez načtení dokumentu byla poskytnuta přidáním vlastnosti **HasMacros**. <sup>24.5</sup>
- Byla přidána nová vlastnost **DateTimeUtc** - poskytuje přesnější časové razítko pro Komentáře, zlepšuje organizaci a sledovatelnost. <sup>24.6</sup>
- Formát datetime je nyní automaticky detekován pro bezproblémový export do formátu XLSX. <sup>24.7</sup>
- Byla přidána veřejná vlastnost [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), která umožňuje ověřit, zda je projekt VBA chráněn. <sup>24.7</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words Pro C++ 24.5 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Další informace o [Aspose.Words pro C++ 24.6 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Další informace o [Aspose.Words pro C++ 24.7 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words pro C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 zlepšuje zážitek kolem správy barev tahů, vylepšuje objekty OLE a zavádí novou bibliografii zdroje veřejné API.

Aspose.Words 24.2 rozšířené grafy API a Správa stylů. Tato verze Aspose.Words také zavedla schopnost specifikovat SvgSaveOptions během Vykreslování, flexibilnější ovládání načítání souborů Markdown a práci s referenčním textem pro poznámky pod čarou a vysvětlivky.

Aspose.Words 24.3 zavádí emulaci binárních rastrových operací pro WMF Metafile a také pokračuje v rozšiřování grafů API.

Aspose.Words 24.4 vylepšuje některé možnosti Vykreslování a zlepšuje práci s digitálními podpisy.

### Vykreslování a tisk

#### Ovládání Barev Tahu <sup>24.1</sup>

Třída [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) byla rozšířena o sadu nových veřejných vlastností souvisejících se správou barev tahů: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) a [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) a [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Grafy API Rozšíření <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** se stále rozšiřuje.

#### Vložit písma deklarovaná v pravidlech @font-face <sup>24.4</sup>

Přidána možnost vkládat písma deklarovaná v pravidlech @font-face do definic písem výsledného dokumentu byla zavedena přidáním nové vlastnosti [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Práce s formátováním záře a odrazu <sup>24.4</sup>

Byla implementována schopnost pracovat s formátováním záře a odrazu pro kreslící objekt.

### Načítání a ukládání dokumentů

#### Zadejte SvgSaveOptions Během Vykreslování <sup>24.2</sup>

Schopnost specifikovat [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) během Vykreslování byla přidána pomocí [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) a [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metody.

#### Při načítání souborů Markdown Zachovejte prázdné řádky <sup>24.2</sup>

Byla přidána možnost zachovat prázdné řádky při načítání souborů Markdown.

### Jiný

- Schopnost upravit text ovládacího prvku `TextBox` OLE byla zavedena přidáním nové vlastnosti **Text** do nové třídy **TextBoxControl**. <sup>24.1</sup>
- Bibliografické zdroje veřejné API byly implementovány přidáním nového oboru názvů [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) s novými třídami a výčty a přidáním nové vlastnosti [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) do třídy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Do třídy [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) byly přidány nové veřejné vlastnosti [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) a [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) pro rozšířenou správu stylů. <sup>24.2</sup>
- Funkce pro načtení skutečného textu referenční značky pro poznámky pod čarou a vysvětlivky byla vylepšena vlastností [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) a metodou [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Byla implementována emulace binárních rastrových operací pro metasoubory WMF. <sup>24.3</sup>
- Možnost definovat možnosti podpisu pro dokumenty v rámci **SaveOptions** byla povolena přidáním nové třídy **DigitalSignatureDetails** s novými veřejnými členy a přidáním nových vlastností do tříd [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) a [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words pro C++ 24.1 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Další informace o [Aspose.Words pro C++ 24.2 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Další informace o [Aspose.Words pro C++ 24.3 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Další informace o [Aspose.Words pro C++ 24.4 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words Pro C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozšiřuje možnosti Vykreslování, emulaci Vykreslování metafile a markdown Možnosti uložení.

Aspose.Words 23.10 zlepšuje vykreslování, rozšiřuje možnosti načítání a ukládání dokumentů a umožňuje uživatelům sloučit dokumenty novými způsoby.

Aspose.Words 23.11 vylepšuje práci s revizemi, formátem XLSX a fonty na legendě grafu s dalšími možnostmi.

Aspose.Words 23.12 zavádí nové vlastnosti a výčty pro práci s PDF a OOXML dokumenty, stejně jako podporu pro WebP Obrázky.

### Vykreslování a tisk

#### Přizpůsobení názvů OS v grafech DrawingML <sup>23.9</sup>

Schopnost přizpůsobit názvy os v grafech DrawingML byla zavedena implementací nové veřejné třídy **ChartAxisTitle** a [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) vlastnost.

#### Určení svislé polohy písem v odstavci <sup>23.9</sup>

Nyní je možné definovat svislou polohu písem v odstavci pomocí nové veřejné vlastnosti [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) a Nového výčtu [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Ovládání Barev Popředí <sup>23.10</sup>

Schopnost načíst barvu popředí bez modifikátorů byla přidána do tříd [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) a [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) pomocí Vlastnosti **BaseForeColor**.

#### Rozšíření funkčnosti grafů <sup>23.10</sup>

Funkce tříd [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) a [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) byla rozšířena o nové metody a vlastnosti.

#### Automatické nastavení a přizpůsobení obrázku do tvaru <sup>23.10</sup>

Jednoduchý způsob, jak automaticky upravit a přizpůsobit obrázek do určitého tvaru, byl poskytnut pomocí nové metody [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Výchozí formátování písma pro DrawingML položky legendy grafu <sup>23.11</sup>

Možnost zadat výchozí formátování písma pro položky legendy DrawingML grafů byla přidána pomocí vlastnosti [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Tato funkce usnadňuje efektivnější a konzistentnější vzhled prvků grafu a zlepšuje celkovou estetiku dokumentu.

#### Určete Rozložení stránky při otevírání PDF v Readeru <sup>23.12</sup>

Schopnost určit rozvržení stránky, které se má použít při otevírání dokumentu ve čtečce PDF, byla přidána zavedením nové vlastnosti **PageLayout** do třídy [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) a zavedením nového výčtu **PdfPageLayout**.

### Načítání a ukládání dokumentů

#### Zadání názvu složky pro vytvoření obrázku URIs v Markdown <sup>23.9</sup>

Třída [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) byla rozšířena o vlastnost [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), která umožňuje určit název složky použité ke konstrukci obrazu URIs zapsaného do dokumentu Markdown.

#### Zmenšit Velikost Výstupu PDF <sup>23.10</sup>

Byly implementovány různé optimalizace Vykreslování PDF pro zmenšení velikosti výstupu při použití nastavení [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Rozpoznání hypertextových odkazů při načítání dokumentů TXT <sup>23.10</sup>

Funkce rozpoznání hypertextových odkazů při načítání dokumentů TXT byla implementována přidáním nové vlastnosti [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Jiný

- Byla implementována emulace Metafile rendering pro určení velikosti rasterizace, konkrétně pro WMF šířku pera a EMF šířku kosmetického pera. K dosažení tohoto cíle byla vlastnost **ScaleWmfFontsToMetafileSize** nahrazena vlastností [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) a byla přidána vlastnost [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Byla zavedena zjednodušená metoda pro vložení jednoho dokumentu do jiného dokumentu na aktuální pozici kurzoru pomocí metody [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Možnost přístupu a úpravy vlastností stylu byla přidána zavedením nové vlastnosti [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* K metodám třídy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) byl přidán obecný parametr typu. <sup>23.10</sup>
* Způsob, jak kontrolovat, kdy by měla být určitá revize přijata/odmítnuta nebo ne, byl implementován pomocí metod [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) a [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Toto vylepšení poskytuje uživatelům jemnější kontrolu nad procesem revize. <sup>23.11</sup>
* Možnost zapsat všechny části dokumentu do stejného listu XLSX byla poskytnuta prostřednictvím nového typu výčtu [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) a nové vlastnosti [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Způsob, jak řídit, jak budou rozšíření formátu ZIP64 použita pro dokumenty OOXML, byl implementován prostřednictvím nové vlastnosti Zip64Mode třídy `OoxmlSaveOptions` a Nového výčtu Zip64Mode. <sup>23.12</sup>
* Byla zavedena podpora pro WebP image. Upozorňujeme, že tato funkce je k dispozici pouze pro .NetStandart a .NET6+ verze. <sup>23.12</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words pro C++ 23.9 Poznámky k vydání](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Další informace o [Aspose.Words pro C++ 23.10 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Další informace o [Aspose.Words pro C++ 23.11 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Další informace o [Aspose.Words pro C++ 23.12 Poznámky k vydání](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Vidět

{{% alert color="primary" %}}

Tato stránka obsahuje nejnovější zprávy o vydání za poslední 2 let. Podrobnosti o dřívějších verzích najdete v [Poznámky K Vydání"](/words/cpp/release-notes/) stránky v příslušných sekcích.

{{% /alert %}}
