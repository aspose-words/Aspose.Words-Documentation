---
title: Převod na formát pevné stránky
second_title: Aspose.Words místo Python via .NET
articleTitle: Převod na formát pevné stránky
linktitle: Převod na formát pevné stránky
description: "Uložit dokumenty do PDF, XPS, HTML, XAML, PostScript a PCL formáty pomocí Python."
type: docs
weight: 10
url: /cs/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementuje svůj vlastní motor rozložení stránek. Před tím, než se dostaneme do jeho specifikací, stojí za to nejprve diskutovat o dokumentu na vysoké úrovni. Při přemýšlení o dokumentu si uživatelé obvykle představí řadu papírových listů obsahujících slova, obrázky, tabulky a grafy. Dokumenty mohou být různé typy, jako je text, tabulky, diapozitivy, CAD výkresy, diagramy, a proto mohou mít v podstatě různé rozvržení. Většina aplikací umožňuje posílat dokumenty do tiskárny; to je doba, kdy uživatel může skutečně zobrazit dokument.

## Zobrazení dokumentu v různých aplikacích

Různé aplikace prohlížení nebo publikování dokumentů umožňují uživatelům otevřít (Adobe Acrobat, XPS Prohlížeč), a někdy editovat (Adobe InDesign) dokumenty konkrétních formátů. Tyto aplikace obvykle vytvářejí tzv. "pevné stránky" formát dokumentů. Tento formát dokumentu přesně popisuje, kde je obsah dokumentu umístěn na každé stránce. Vnitřní, PDF nebo XPS formát obsahuje popis každé stránky, stejně jako návod k čerpání, s uvedením rozložení obsahu na stránce. To je podobné formátům obrázků, které popisují, kde je obsah uveden buď v rastrové nebo vektorové formě.

Naproti tomu některé aplikace editace textu nepodporuje prohlížení stránek dokumentů. Například, Microsoft Notepad podporuje jen velmi málo funkcí, kromě pouhého zobrazení, editace a tisku textu. Důležité je, že tyto aplikace nemohou zobrazovat ani stránky dokumentu, ani sdělit uživateli, kolik z nich by bylo vytištěno, a to pouze pro zobrazení obsahu dokumentu. Dokument lze uložit v jednoduchém textovém formátu a lze jej otevřít mnoha dalšími aplikacemi. Pomocí aplikace, která umožňuje prohlížení binárního obsahu libovolného souboru, lze vidět, co je uloženo v dokumentu souboru, je to jen prostý text, nic jiného v něm není.

O něco sofistikovanější aplikace editace textu, jako například Microsoft WordPad, uložit dokument v Rich Text Format (RTF), který podporuje více formátování funkcí, jako je vložení obrázků, formátování znaků, odstavce okraje a rozestupy. Formát RTF však také obsahuje pouze obsah dokumentů a nemá žádné informace o stránkách.

Microsoft Word je nejpokročilejší aplikace editace textu v Windows Dnes. Formátuje soubory ve formátu DOCX, který popisuje obsah dokumentu flexibilně a rozsáhle, což uživatelům umožňuje určit velikost stránky, orientaci pro sekci dokumentu, a jako WYSIWYG aplikace dokonce zobrazuje stránky dokumentů na obrazovce. Nicméně stále neexistují žádné informace o tom, jak je obsah dokumentu zobrazen na stránkách dostupných v dokumentu. Dokumentový soubor pouze popisuje samotný obsah a vztah dokumentů k sobě navzájem, spolu s některými geometrickými omezeními. V důsledku toho před uvedením dokumentu, Microsoft Word Spočítá to samo. Tady přichází do hry rozložení stránek.

## Co je rozložení stránky

Zobrazení záložky dokumentu je datová struktura, která popisuje, kde se konkrétní objekt nachází na stránkách pro všechny objekty dokumentu. Kromě toho, protože objekty mají vlastnosti, které ovlivňují jejich vzhled, jako je velikost písma, stínování nebo kreslení efekty, je třeba nejen vědět, kde objekt je, ale také jaká plocha(s) stránky, kterou zabírá, a zda bude platit pro více stránek tak, aby ostatní objekty nepřekrývají stejnou plochu(s).

Aspose.Words implementuje funkci uspořádání stránek interně umožňující její výrobu všech pevných formátů stránek, jako je PDF, XPS, a různé formáty obrázků. Bez rozvržení stránek by informace uložené v souboru s pevnou stránkou dokumentu nebyly k dispozici a všechny tyto formáty by nebyly podporovány.

Vztah mezi dokumentem a rozložením stránky je poměrně jednoduchý. Zatímco dokument popisuje obsah, odpovídající rozložení stránky popisuje geometrii tohoto obsahu. Všimněte si, že rozložení stránky nemůže existovat bez dokumentu, protože by neexistoval žádný obsah pro výpočet geometrie, ale dokument může existovat bez rozložení stránky. Například když je dokument DOCX přeměněn na dokument RTF, je obvykle zbytečné znát geometrii, protože ani jeden formát jej neukládá.

## Vytvoření rozložení stránky

Vytvoření rozložení stránky může být nákladný postup, jak z hlediska rychlosti a paměti. To je způsobeno několika důvody:

- Dokument může mít velké množství obsahu, které může být třeba zobrazovat na tisících stran. Geometrie každého objektu na každé stránce by musela být popsána, konzumovat zdroje paměti.
- Dokument může mít mnoho pravidel, což omezuje geometrii. Může být vynaložen značný výpočetní čas, který zajistí splnění všech omezení
- Některé prvky dokumentu, například, `NUMPAGES` pole, vytvořit rekurzivní závislosti pro budoucí hodnoty nemovitostí, které nejsou k dispozici v době výpočtu. To vede k opakujícím se výpočtům a sčítá se ve výpočetním čase.

Z výše uvedených důvodů Aspose.Words vytvoří rozložení stránky pouze tehdy, je-li to nutné. Typickým důvodem by pro to byla žádost o uvedení stránek dokumentů nebo o získání hodnoty pole, která závisí na informacích dostupných v rozvržení stránky. Méně zřejmým důvodem by mohlo být export dokumentu do HTML. I když HTML není formát pevné stránky a nepopisuje geometrii objektů obsahu, stále podporuje obrázky. Tyto obrazy mohou být ve formě tvarů vytvořených v Microsoft Word s textem uvnitř nich. Například graf s etikety os lze exportovat do HTML jako obrázek, ale dříve než to lze udělat Aspose.Words musí tento obrázek vykreslit, a proto musí vědět, kde má být štítek zobrazen. Viz graf níže:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### Negeometrická Vlastnosti

Kromě manipulace s geometrickými informacemi je za výpočet barev a hraničních stylů zodpovědná i úprava stránky. In Microsoft Word, barva textu může být specifikována jako automatická, což znamená, že výběr barev by měl být založen na stínovací barvě buňky nebo odstavce, nebo na základě barvy stránky, kde se objeví text.

Dispozice stránky počítá, kde se objeví text a jaký obsah bude za ním přeložen, což umožní výpočet barev. Existují další specifické výpočty provedené rozložením stránky. Například vodorovná hranice v tabulce závisí na tom, zda řádek tabulky je poslední ve sloupci textu a zda je rozdělen přes sloupce. Pokud je řádek ve sloupci poslední, použije se dolní hranice místo vodorovné.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In <span notrans="<span notrans=" Aspose.Words"=""></span>,? uživatel může požádat o vytvoření nového rozvržení stránky, nebo aktualizovat existující. Obojí může být provedeno [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) metoda podle [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída. Pokud návrh stránky neexistuje, ale je třeba (například při vývozu dokumentu do pevného formátu), Aspose.Words automaticky volá tuto metodu. Pokud však již existuje rozložení stránky, Aspose.Words použije stávající, aby se zabránilo spotřebě zdrojů nezbytných k jeho aktualizaci. V tomto případě musí uživatel zavolat [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) metoda, aby bylo zajištěno, že rozložení stránky je aktuální s modelem dokumentu.

### Dynamická struktura

Proces tvorby rozložení stránek zahrnuje následující kroky:

- *Conversion* Vyjmenovávání obsahu modelu dokumentu a příprava odpovídajících objektů rozvržení.
- *Build* Aranžování objektů pro zobrazení obsahu dokumentu na stránkách.
- *Reflow* Aktualizace uspořádání objektů za účelem splnění geometrie omezení.
- *Projekce rozvržení objektů do pevné prezentace stránky a dokončování barevné informace*.
- *Building and reflowing of shape content* *Požadovaný krok, pokud dokument obsahuje tvary s vnořeným textovým obsahem.

Všimněte si, že rozložení stránky je dynamická struktura, která může být částečně přestavěna. To je potřeba zejména tehdy, není-li možné vypočítat hodnoty polí bez přestavby struktury uspořádání dokumentu. Pole může odkazovat na umístění objektu na stránce a zároveň je na stránce vykreslena samotná hodnota pole, která ovlivňuje umístění referenčního objektu. Rozvržení stránek nemůže být postaveno v jednom kroku, protože hodnoty pole nemusí být v okamžiku umístění na stránce ještě k dispozici.

Vezměme si typický scénář, kdy `NUMPAGES` pole se objeví v zápatí první stránky v dokumentu. Hodnota tohoto pole je celkový počet stran. Pro umístění pole na stránce by měla být známa jeho hodnota. Pokud se v současné době staví pouze první stránka, není dosud znám celkový počet stránek. V tomto případě musí rozložení stránky použít výchozí hodnotu a později se vrátit do tohoto pole a změnit svou hodnotu podle skutečných výpočtů. Změna hodnoty pole však může ovlivnit jiný obsah dokumentu na stránce a v konečném důsledku způsobí, že bude připojena nová stránka nebo bude odstraněna stávající stránka, čímž se vypočtená hodnota zastaralá. Tento problém lze vyřešit tak, že bude možné aktualizovat stávající rozložení stránky.

Při vytváření rozvržení je také možné nastavit [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) vlastnosti, které ovlivňují výstup dokumentu na stránkách.

## Úspora do pevného formátu stránky

Po vytvoření rozvržení stránky a geometrii objektů a jejich umístění na stránce jsou vypočteny, dokument může být uložen ve formátu pevné stránky podporované Aspose.Words. Při ukládání dokumentů do formátů pevných stránek lze použít možnosti vykreslování společné pro všechny tyto formáty. Umožňují kontrolu:

- Počet a rozsah stránek obsažených ve výstupním dokumentu ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Soubor znaků, které se používají pro vykreslování čísel ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Metafile player ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Další podrobnosti viz [Zacházení Windows Metafily](/words/cs/python-net/handling-windows-metafiles/) článek.
- Míra kvality pro rekompresní JPEG obrázky, jejichž hodnota se může mírně lišit, v závislosti na zvoleném formátu uložení ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Optimalizace vektorové grafiky v Aspose.Words výstup ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Možnosti grafiky při ukládání na formáty Tiff, Png, Bmp, Jpeg ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Uložení dokumentu v šedém měřítku ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Přepínání mezi vykreslováním tvarů DrawingML a zpětnými tvary ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Přepínání mezi režimy vykreslování efektů DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

Níže uvedený příklad ukazuje, jak uložit dokument do formátu JPEG pomocí [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda a možnosti renderování:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
