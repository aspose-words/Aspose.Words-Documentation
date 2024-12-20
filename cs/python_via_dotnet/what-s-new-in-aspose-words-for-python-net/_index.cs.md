---
title: Co je nového?
second_title: Aspose.Words místo Python via .NET
articleTitle: Co je nového v Aspose.Words místo Python via .NET
linktitle: Co je nového v Aspose.Words místo Python via .NET
type: docs
description: "Aspose.Words místo Python via .NET denně rozšiřuje a zvyšuje. Na této stránce se můžete dozvědět o obrovských a nejzajímavějších rysech produktu."
weight: 10
url: /cs/python-net/what-s-new-in-aspose-words-for-python-net/
timestamp: 2024-11-18-12-56-02
---

Tato stránka popisuje nejzajímavější nový Aspose.Words funkce zavedené v nedávných vydáních.

## Aspose.Words pro Python přes .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 zavádí vkládání tvarů skupiny a vkládání StructuredDocumentTag prostřednictvím DocumentBuilderu, vylepšuje vykreslování radiálních grafů pomocí gradací, zlepšuje digitální podpisy s podporou XAdES-EPES, přidává rozpoznávání podtržení Markdown a poskytuje přístup k oddělovačům poznámek pod čarou/vysvětlivky.

Aspose.Words 24.10 zavádí vylepšenou podporu ovládacích prvků ActiveX s vytvářením CommandButton, nové ovládání viditelnosti tvarů, možnost seskupovat tvary, vylepšený export Markdown pro tabulky, formátování grafů pro koláčové a prstencové grafy, lepší manipulaci s kódováním Big5 a podporu zastaralých tchajwanských písem.

Aspose.Words 24.11 představuje souhrn dokumentů poháněný AI, vylepšené možnosti Vykreslování, vylepšený přístup k vlastnostem dokumentu a titulky ovládacích prvků ActiveX.

### AI - poháněné funkce <sup>24.11</sup>

Podpora sumarizace dokumentů pomocí generativních jazykových modelů **OpenAI** a **Google** byla integrována přidáním jmenného prostoru [Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/) s jeho veřejnými členy.

### Vykreslování a tisk

#### Promoce na radiálních grafech <sup>24.9</sup>

Bylo implementováno vykreslování stupnice na radiálních mapách.

#### Ovládací prvky ActiveX CommandButton <sup>24.10</sup>

Schopnost vytvářet ovládací prvky ActiveX CommandButton byla zavedena přidáním nové veřejné metody [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) a nové veřejné třídy [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/).

#### Kontrola viditelnosti tvaru <sup>24.10</sup>

Byla přidána nová veřejná vlastnost [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) pro ovládání viditelnosti tvarů.

#### Změny v koláčových a prstencových grafech <sup>24.10</sup>

K formátování výsečových a prstencových grafů bylo přidáno několik nových veřejných vlastností.

#### Řízení Vykreslování PDF výběrový formulář ohraničení polí <sup>24.11</sup>

Byla implementována nová možnost pro řízení Vykreslování okrajů polí PDF výběrového formuláře přidáním nové veřejné volby [render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/).

#### Získejte a nastavte kódy formátu pro data grafu <sup>24.11</sup>

Schopnost získat a nastavit kódy formátu pro data grafu byla přidána implementací vlastnosti [format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/) do tříd [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/) a [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/).

#### Vykreslení Histogramových grafů s přihrádkami a štítky <sup>24.11</sup>

Vykreslování grafu histogramu bylo vylepšeno umožněním zadaného počtu přihrádek a štítků.

### Konverze, načítání a ukládání dokumentů

#### Při načítání souborů Markdown podtrhněte formátování <sup>24.9</sup>

Možnost rozpoznat podtržené formátování při načítání dokumentů Markdown byla začleněna přidáním nové veřejné vlastnosti [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

#### Export tabulek jako HTML při ukládání do Markdown <sup>24.10</sup>

Možnost exportovat tabulky jako HTML při ukládání dokumentů do formátu Markdown byla implementována přidáním nové veřejné vlastnosti [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) a výčtu [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/).

#### Export PDF s aktualizovanou logickou strukturou <sup>24.11</sup>

Export PDF byl vylepšen zahrnutím vlastností názvu tabulky jako názvů prvků logické struktury PDF.

### Digitální podpisy

#### Podepisujte dokumenty pomocí XAdES-EPES <sup>24.9</sup>

Schopnost podepisovat dokumenty pomocí podpisů XML-DSig na úrovni XAdES-EPES byla zavedena přidáním nové veřejné vlastnosti [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) a nového veřejného výčtu [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Jiné

* Ke skupinovým tvarům byla přidána nová veřejná metoda [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/). <sup>24.9</sup>
* Byla přidána nová veřejná metoda [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) pro vkládání **StructuredDocumentTags** do dokumentu. <sup>24.9</sup>
* Veřejný přístup k oddělovačům poznámek pod čarou/vysvětlivky byl poskytnut přidáním několika veřejných tříd a vlastností. <sup>24.9</sup>
* Přidáním metody [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist) byla zavedena možnost seskupovat jednotlivé tvary, seskupovat tvary a přímo seskupovat tvary i tvary skupin. <sup>24.10</sup>
* Bylo vylepšeno zpracování kódování Big5 pro tabulky cmap TrueType. <sup>24.10</sup>
* Byla vylepšena podpora zastaralých tchajwanských písem. <sup>24.10</sup>
* Pro přístup k rozšířeným vlastnostem dokumentu byly do třídy [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/) přidány vlastnosti pouze pro čtení. <sup>24.11</sup>
* Nastavení titulků pro ovládací prvky ActiveX bylo povoleno přidáním nového veřejného nastavovače do vlastnosti [Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.9 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.10 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/).

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.11 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words pro Python prostřednictvím .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 rozšiřuje možnosti pro sestavy, zlepšuje možnosti vykreslování a rozšiřuje některé další možnosti.

Aspose.Words 24.6 vylepšuje možnosti vykreslování, vylepšuje funkce vyhledávání a porovnávání a rozšiřuje několik dalších funkcí.

Aspose.Words 24.7 mění způsob práce s ActiveX, rozšiřuje možnosti vykreslování a také export do formátů Markdown a XLSX.

Aspose.Words 24.8 vylepšuje přizpůsobení grafu přesným ovládáním popisků os, rozšiřuje správu písem, zlepšuje manipulaci se strukturou dokumentů a přidává nové možnosti pro export HTML/XAML, funkčnost PDF, převod dokumentů a digitální podpisy.

### Podporované formáty

Počínaje verzí 24.7 je podporován export do PDF/UA-2, aby byla zajištěna dostupnost pro uživatele se zdravotním postižením.

### Vykreslování a tisk

#### Změny v Charts, Shapes a DrawingML <sup>24.5</sup>

* Bylo implementováno vykreslování efektů DrawingML pro grafiku SVG, které rozšiřuje předchozí funkčnost omezenou na obrázky.
* Přidáním tříd [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) a [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) a vlastnosti [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) byla zavedena podpora pro vytváření kombinovaných grafů a úpravy vlastností, jako je šířka mezery, překrytí a měřítko bublin v rámci skupin řad.
* Funkce pro manipulaci s efektem SoftEdge tvarů byla implementována přidáním třídy [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Možnost úpravy hodnot tvarů byla implementována přidáním **AdjustmentCollection** a **Adjustment** veřejné třídy a [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) vlastnictví.

#### Změny v grafech, tvarech a kresbě <sup>24.6</sup>

* Možnosti mapování byly vylepšeny. Nyní můžete vytvářet širší škálu grafů, včetně *Stromové mapy*, *Sunbursts*, *Histogramy*, *Pareto* grafy, *Box & Whisker* grafy, *Waterfalls* a *Funnels*. To vám umožní vizualizovat svá data rozmanitějším a informativním způsobem.
* Bylo vylepšeno ovládání barev pro formátování stínů. Přesnější kontrolu nad vzhledem vašich dokumentů získáte přístupem k barvám stínů.
* Zvýšení výkonu pro vykreslování na pozadí bylo vylepšeno. Vykreslování pozadí obsahujících drobné prvky můžete výrazně urychlit díky nativní technologii obkladů.
* Byly přidány realistické přechody pro tvary. Nyní můžete vytvářet tvary DML s nelineárními přechody, napodobujícími vizuální styl aplikace Microsoft Word pro uhlazenější vzhled.

#### Přizpůsobení štítku dat grafu <sup>24.7</sup>

Byla přidána možnost přizpůsobit štítky dat grafu, jako je **Orientace** a **Rotace**.

#### Vlastní styl čísel pro úrovně seznamu <sup>24.7</sup>

Byl přidán setter pro veřejnou vlastnost [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Nyní můžete definovat vlastní styl čísel pro úrovně seznamu.

#### Změny v práci s ActiveX <sup>24.7</sup>

* Vlastnosti objektů ActiveX lze nyní upravovat, což vám dává větší kontrolu nad jejich chováním.
* Byla přidána možnost upravit hodnotu přepínače ovládacího prvku ActiveX pro umožnění dynamické interakce.
* Byla přidána možnost přepnout zaškrtávací políčko ActiveX na "zaškrtnuté" nebo "nezaškrtnuté".

#### Ovládání nad osou grafu Orientace a rotace štítků <sup>24.8</sup>

Pro pohodlnější přizpůsobení grafu byla přidána přesná kontrola nad orientací a rotací štítků os grafu – třída [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) byla rozšířena o nové vlastnosti [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) a [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Nahrazení zpětného lomítka znakem jen <sup>24.8</sup>

Zpětně kompatibilní export HTML a XAML pro nahrazení znaku zpětného lomítka znakem Yen byl vylepšen. Aby toho bylo dosaženo, byla do tříd [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) a [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) přidána vlastnost **replace_backslash_with_yen_sign**.

#### Použití značek SDT jako názvů polí formuláře při exportu do PDF <sup>24.8</sup>

Export PDF s podporou použití značek SDT jako názvů polí formuláře byl vylepšen přidáním nové vlastnosti [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) do třídy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Konverze, načítání a ukládání dokumentů

#### Export odkazů do formátu Markdown <sup>24.7</sup>

Schopnost řídit export odkazů ve formátu Markdown byla přidána prostřednictvím implementace vlastnosti [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Byla představena nová třída [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), která poskytuje sadu metod pro převod různých typů dokumentů pomocí jediného řádku kódu.

### Hledat a porovnat

#### Pokročilé možnosti porovnání <sup>24.6</sup>
Byla přidána možnost zefektivnit pracovní postupy analýzy dat pomocí vylepšené funkce porovnání. To zahrnuje novou možnost  [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) a přepracované rozhraní pro pokročilá porovnávání.

### Jiný

* Funkce odstranění prázdných stránek z dokumentu byla implementována přidáním metody [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Možnost kontrolovat přítomnost maker VBA bez načítání dokumentu byla poskytnuta přidáním vlastnosti [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Nyní je podporováno zachování číslování zdrojů při vkládání dokumentu pomocí LINQ Reporting Engine. <sup>24.5</sup>
* Byla přidána nová vlastnost [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – poskytuje přesnější časové razítko pro komentáře, zlepšuje organizaci a sledovatelnost. <sup>24.6</sup>
* LINQ Reporting Engine byl vylepšen. Bylo provedeno selektivní odstranění prázdných odstavců a definice vlastních zpráv pro chybějící členy objektu, což vedlo k čistším a informativnějším zprávám. <sup>24.6</sup>
* Formát data a času je nyní automaticky detekován pro bezproblémový export do formátu XLSX. <sup>24.7</sup>
* Byla přidána veřejná vlastnost [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), která vám umožňuje ověřit, zda je projekt VBA chráněn. <sup>24.7</sup>
* Informace o písmech byly rozšířeny o vlastnost **embedding_licensing_rights** přidanou do tříd [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) a [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Pro přesnější práci se strukturou dokumentu byl přidán způsob, jak efektivně vyčistit záhlaví a zápatí oddílů při zachování vodoznaků. Chcete-li vymazat záhlaví a zápatí oddílů, použijte novou veřejnou metodu [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Bylo povoleno digitální podepisování dokumentů XPS pomocí [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) – pro tento účel byla přidána nová vlastnost [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.5 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.6 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.7 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Další informace o [Aspose.Words pro Python prostřednictvím .NET 24.8 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 zlepšuje zkušenosti s řízením barev zdvihu, zvyšuje OLE objekty a přináší nový `Bibliography Sources` veřejný API.

Aspose.Words 24.2 rozšířených grafů API a řízení stylu. Tato verze Aspose.Words také představil schopnost určit SvgSaveOptions při vykreslování, pružnější ovládání zatížení Markdown soubory a práce s referenčním textem pro poznámky pod čarou a poznámky pod čarou.

Aspose.Words 24.3 zavádí nový TIFF Reader/Writer a Emulaci binárních rastrových operací pro WMF metafily. Aspose.Words 24.3 i nadále rozšiřuje grafy API.

Aspose.Words 24.4 zvyšuje ukládání formátů, některé možnosti vykreslování a zlepšuje práci s digitálními podpisy.

### Podporované formáty <sup>24.4</sup>

Moderní **WebP** formát obrázku je nyní podporován v Aspose.Words místo .NET Framework 4.6.2 a vyšší. Nyní můžete číst a vkládat WebP obrázky do dokumentů, stejně jako uložit obrázky v WebP formát.

Vezměte prosím na vědomí, že WebP je v současné době k dispozici pouze v .NET Standard a .NET Framework V4.6.2.

### Renderování a tisk

#### Kontrola barev tahu <sup>24.1</sup>

• [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) třída byla rozšířena o soubor nových veřejných nemovitostí souvisejících s řízením barvy zdvihu: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) a [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) a [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Grafy kresleníML API Rozšíření <sup>24.2 / 24.3 / 24.4</sup>

• **DrawingML Charts API** i nadále se rozšiřuje.

#### Vložit písma Vyhlášení v@font-face Rules <sup>24.4</sup>

Přidána možnost vložit písma deklarovaná v @font-face pravidla do výsledného dokumentu definice písma byla zavedena přidáním nového [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) majetek.

#### Práce s formátováním záře a reflexe <sup>24.4</sup>

Byla implementována schopnost pracovat s formátováním světla a odrazu pro kreslící objekt.

### Načítání a ukládání dokumentů

#### Zadejte SvgSaveOptions Během renderování <sup>24.2</sup>

Schopnost určit [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) během vykreslení bylo přidáno pomocí [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) a [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) metody.

#### Zachovat prázdné linky při načítání Markdown soubory <sup>24.2</sup>

Schopnost zachovat prázdné linky při nakládání Markdown byly přidány soubory.

#### Nový TIFF čtečka / autor <sup>24.3</sup>

Nový TIFF čtečka / spisovatel pro Aspose.Words byl vyvinut. Aspose.Words místo .NET 24.3 dodal podporu pro čtení TIFF obrázků s JPEG a Old JPEG kompresní typy, a také výrazně zlepšil kvalitu čtecích a zápis operací.

### Ostatní

* Schopnost změnit text `TextBox` Kontrola OLE byla zavedena přidáním nového **Text** vlastnictví nového **TextBoxControl** třída. <sup>24.1</sup>
* Bibliografie Zdroje veřejnosti API byla provedena přidáním nového jmenného prostoru [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) s novými třídami a výčty, a přidáním nové [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) majetek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída. <sup>24.1</sup>
* Nové veřejné nemovitosti [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), a [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) pro vylepšené řízení stylu byly přidány do [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) třída. <sup>24.2</sup>
* Funkce pro získání skutečného textu referenční značky pro poznámky pod čarou a poznámky k ní byla posílena o [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) majetek a [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) metoda. <sup>24.2</sup>
* Impulace binárních rastrových operací pro WMF metafily byla provedena. <sup>24.3</sup>
* Schopnost definovat možnosti podpisu dokumentů v rámci **SaveOptions** byla povolena přidáním nového [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) třída s novými veřejnými členy, stejně jako přidání nových nemovitostí do [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) a [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) třídy. <sup>24.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo Python via .NET 24.1 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 24.2 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 24.3 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 24.4 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words místo Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozšiřuje možnosti vykreslování, emulace metafilů a markdown Uložit možnosti.

Aspose.Words 23.10 zlepšuje vykreslování, rozšiřuje možnosti načítání a ukládání dokumentů a umožňuje uživatelům sloučit dokumenty novými způsoby.

Aspose.Words 23.11 zvyšuje práci s revizemi, formátem XLSX a písmy na legendě grafu s dalšími možnostmi.

Aspose.Words 23.12 představuje nové vlastnosti a výčty pro práci s PDF a OOXML dokumenty, stejně jako podporu pro WebP obrázky.

### Renderování a tisk

#### Přizpůsobení titulů seker v kresleníML Grafy <sup>23.9</sup>

Schopnost přizpůsobit názvy os v grafech DrawingML byla zavedena implementací nové veřejné třídy [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) a [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) majetek.

####  Určení vertikální polohy písem v odstavci <sup>23.9</sup>

Nyní je možné definovat vertikální polohu písem v odstavci pomocí nové veřejnosti [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) majetek a nový [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) výčtu.

#### Ovládání barev před zemí <sup>Ostatní, o tloušťce</sup>

Schopnost získat barvu popředí bez modifikátorů byla přidána do [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) a [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) třídy prostřednictvím **BaseForeColor** majetek.

#### Rozšíření funkčnosti grafů <sup>Ostatní, o tloušťce</sup>

Funkce [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), a [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) třídy byly rozšířeny o nové metody a vlastnosti.

#### Automaticky nastavit a nastavit obrázek do tvaru <sup>Ostatní, o tloušťce</sup>

Jednoduchý způsob automatického nastavení a uložení obrazu do určitého tvaru byl poskytnut prostřednictvím nového [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) metoda.

#### Výchozí formátování písma pro kreslení ML Údaje o legendách grafu <sup>23.11</sup>

Schopnost určit výchozí formátování písma pro legendární záznamy grafů DrawingML byla přidána prostřednictvím [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) majetek. Tato funkce usnadňuje efektivnější a konzistentnější vzhled grafových prvků, zlepšuje celkovou estetiku dokumentu.

#### Upřesnit rozložení stránky při otevření PDF v čtečce <sup>23.12</sup>

Možnost určit rozložení stránky, která má být použita při otevření dokumentu v PDF čtečce byla přidána zavedením nového [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) majetek [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) třída a zavedení nového [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) výčtu.

### Načítání a ukládání dokumentů

#### Zadání názvu složky pro vytvoření URI obrázků v Markdown <sup>23.9</sup>

• [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) třída byla rozšířena o včetně [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) vlastnost, která umožňuje určit název složky použité pro sestavení obrázku URI napsané do Markdown dokument.

#### Snížit PDF Velikost výstupu <sup>Ostatní, o tloušťce</sup>

Různé PDF vykreslování optimalizace pro snížení velikosti výstupu při využití [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) byla provedena nastavení.

#### Poznejte hypertextové odkazy při načítání TXT dokumentů <sup>Ostatní, o tloušťce</sup>

Funkce rozpoznat hypertextové odkazy při načítání TXT dokumentů byla implementována přidáním nového [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) majetek.

### Ostatní

- Metafile vykreslování emulace pro stanovení velikosti rastrizace byla provedena, zejména pro šířku WMF pera a EMF kosmetické pero šířky. Abychom toho dosáhli, **ScaleWmfFontsToMetafileSize** nemovitost byla nahrazena [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) majetek a [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) byl přidán majetek. <sup>23.9</sup>
- V současné poloze kurzoru byla zavedena zjednodušená metoda pro vložení jednoho dokumentu do jiného dokumentu [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) metoda. <sup>Ostatní, o tloušťce</sup>
- Možnost přístupu a modifikace vlastností stylu byla přidána zavedením nového [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) majetek. <sup>Ostatní, o tloušťce</sup>
- Do metod byl přidán obecný parametr typu [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) třída. <sup>Ostatní, o tloušťce</sup>
- Schopnost zapsat všechny části dokumentu na stejný pracovní list XLSX byla poskytnuta prostřednictvím nového [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) typ výčtu a nový [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) majetek. <sup>23.11</sup>
* Způsob, jak kontrolovat, jak budou použita rozšíření formátu ZIP64 pro OOXML dokumenty, byl implementován prostřednictvím nové vlastnosti Zip64Mode `OoxmlSaveOptions` třída a nový Zip64Mode počet. <sup>23.12</sup>
* Podpora pro WebP byl představen obrázek. Upozorňujeme, že tato funkce je dostupná pouze pro .NetStandart a .NET6+ verze. <sup>23.12</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo Python via .NET 23.9 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.10 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.11 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Více informací o [Aspose.Words místo .NET 23.12 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words místo Python via .NET 23.5; 23.6; 23.7; 23.8

Aspose.Words 23.5 zvyšuje schopnost pracovat s daty ze série grafů a schopnost pracovat s dokumenty ODT, jakož i zlepšit hlavičky/nohy a jejich textové obaly.

Aspose.Words 23.6 rozšiřuje možnosti renderování, přidává nový exportní formát, zlepšuje LINQ reporting a LowCode nářadí.

Aspose.Words 23.7 zvyšuje možnosti podávání zpráv, přidává nový formát exportu a zavádí změny v práci s tabulkami a digitálními podpisy.

Aspose.Words 23.8 rozšiřuje možnosti různých formátů, zlepšuje vykreslování a přidává nové možnosti pro práci s poli

### Podporované formáty

* Počínaje verzí 23.6, lze uložit dokument ve formátu XLSX. Nyní můžete převést své dokumenty do formátu Excel. <sup>23.6</sup>

* Začínáme verzí 23.7, lze uložit stránku dokumentu nebo tvar ve formátu EPS. <sup>23.7</sup>

### Funkce nového formátu

- Byla zavedena funkce pro automatické generování obsahu (TOC) dokumentů MOBI. <sup>23.8</sup>
- The [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) Konstruktor byl rozšířen o [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Byla provedena úprava vertikálního textu pro EMF metafily. <sup>23.8</sup>

### Renderování

#### Získat a upravit Údaje ze série grafů <sup>23.5</sup>

Funkce pro získání a úpravu dat ze série grafů byla poskytnuta přidáním:

- nové třídy: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- nové typy enum: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Podpora pokročilé typografie <sup>23.6</sup>

Byla přidána podpora pokročilé typografie v provedení WMF, EMF a EMF+.

#### Barevný obsah na stránce <sup>23.6</sup>

Veřejný majetek [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), bylo přidáno uvedení, zda je stránka barevná nebo ne.

#### Formátování znaků grafu <sup>23.6</sup>

Byla implementována schopnost nastavit formátování vyplňování, zdvihu a calloutu pro popisky grafů.

### Mail Merge a podávání zpráv

#### Dynamic HTML Vložení pro LINQ Reporting Engine <sup>23.6</sup>

Byl přidán nový způsob dynamického HTML vložení pro LINQ Reporting Engine.

#### Mustache Podpora značek <sup>23.7</sup>

Mustache Tagy jsou nyní podporovány v [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) a [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) metody.

#### Upřesnění velikosti renderovaných obrázků <sup>23.8</sup>

Nový veřejný majetek [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) pro upřesnění velikosti vykreslených obrázků v pixelu byla zavedena.

#### Zachovat Whitespace pro JSON smyčcové hodnoty LINQ <sup>23.8</sup>

Do LINQ Reporting Engine byla přidána možnost zachovat Whitespace pro hodnoty řetězce JSON.

### LowCode <sup>23.6</sup>

Nový LowCode byly přidány metody pro sloučení různých typů dokumentů do jediného výstupního dokumentu.

### Ostatní

- Byla zavedena podpora pro textové balení hlaviček/noh. <sup>23.5</sup>
- Schopnost odstranit digitální podpisy z dokumentů ODT byla přidána prostřednictvím [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) metoda. <sup>23.5</sup>
- Veřejný majetek [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) získat základní a rubínový text fonetického průvodce [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bylo přidáno. <sup>23.5</sup>
- Schopnost získat hodnotu digitálního podpisu z digitálně podepsaného dokumentu jako pole byte byla přidána zavedením nového [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) majetek. <sup>23.7</sup>
- The [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) třídy byly rozšířeny o nové členy veřejné správy [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), a [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo Python via .NET 23.5 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.6 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.7 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.8 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words místo Python via .NET 23.1, 23.2, 23.3, 23.4

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

• [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) třída byla rozšířena o soubor nových veřejných nemovitostí souvisejících s pozadím a barvy popředí: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) a [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) a [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Radiální radiátory s `SkiaSharp` Indián Shader <sup>23.3</sup>

Renderování radiálních gradientů `SkiaSharp` nativní odstín pro .NET Standard bylo provedeno.

#### Vzdálenost mezi tabulkou a okolním textem <sup>23.4</sup>

Schopnost nastavit vzdálenost mezi tabulkou a okolním textem byla přidána zavedením nových vlastností do [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) třída: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), a [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Načítání a ukládání dokumentů

#### Generovat `TOC` pro AZW3 Dokumenty <sup>23.1</sup>

Schopnost generovat `TOC` (obsah) pro dokumenty AZW3 bylo přidáno pomocí **epub_navigation_map_level** majetek.

#### Exportovat položky seznamu do Markdown <sup>23.1</sup>

Způsob kontroly vývozu položek seznamu do Markdown formát byl poskytnut přidáním [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) majetek [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) třída.

#### Dokument šetří oznámení o pokroku <sup>23.3</sup>

Byla provedena úspora oznámení o pokroku pro formáty MOBI a AZW3.

#### Věta a přizpůsobení slov <sup>23.3</sup>

Možnost určit, zda při importu dokumentu automaticky upravit věty a rozestup slov byla přidána zavedením [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) majetek.

### Ostatní

- Schopnost určit nastavení odstupu znaků dokumentu byla přidána prostřednictvím [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) provádění majetku <sup>23.2</sup>
- Způsob, jak poučovat Aspose.Words zda zahrnout textboxy, poznámky pod čarou a poznámky ke slovům statistiky počítání bylo poskytnuto přidáním [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) majetek <sup>23.2</sup>
- Nová volba pro styl dokumentu, která umožňuje určit, zda je styl automaticky nastaven na základě příslušné hodnoty, byla zavedena prostřednictvím [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) majetek <sup>23.2</sup>
- Schopnost určit, zda [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) je fonetická příručka byla přidána pomocí [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) majetek <sup>23.4</sup>
- Jednoduchý způsob práce se sériemi a osami kombo grafů byl realizován zavedením [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) třída a přidání [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) majetek <sup>23.4</sup>
- Nové veřejné vlastnosti spojené s tvarem relativní polohy a velikosti byly přidány do [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída <sup>23.4</sup>
- Přesnost a výkon výpočtu jasu barev pro automatické rozlišení barev textu byl vylepšen v souladu s nejnovějšími verzemi Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Více informací o [Aspose.Words místo Python via .NET 23.1 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.2 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.3 Poznámky k vydání](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Více informací o [Aspose.Words místo Python via .NET 23.4 Poznámky k vydání](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Viz také

{{% alert color="primary" %}}

Tato stránka obsahuje nejnovější zprávy o vydání za poslední 2 roky. Podrobnosti o dřívějších vydáních viz [Poznámky k vydání '](https://releases.aspose.com/words/python/release-notes/) stránky v příslušných oddílech.

{{% /alert %}}
