---
title: Převést na formát pevné stránky v Java
second_title: Aspose.Words místo Java
articleTitle: Převod na formát pevné stránky
linktitle: Převod na formát pevné stránky
description: "Aspose.Words místo Java implementuje svůj vlastní page layout motor, který mu umožní vyrábět všechny pevné formáty stránek, jako je PDF, XPS, a různé formáty obrázků."
type: docs
weight: 10
url: /cs/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementuje svůj vlastní motor rozložení stránek. Před tím, než se dostaneme do jeho specifikací, stojí za to nejprve diskutovat o dokumentu na vysoké úrovni. Při přemýšlení o dokumentu si uživatelé obvykle představí řadu papírových listů obsahujících slova, obrázky, tabulky a grafy. Dokumenty mohou být různé typy, jako je text, tabulky, diapozitivy, CAD výkresy, diagramy, a proto mohou mít v podstatě různé rozvržení. Většina aplikací umožňuje posílat dokumenty do tiskárny; to je doba, kdy si uživatel může skutečně prohlédnout konečný zamýšlený vzhled dokumentu.

## Zobrazení dokumentu v různých aplikacích

Různé aplikace prohlížení nebo publikování dokumentů umožňují uživatelům otevřít (Adobe Acrobat, XPS Prohlížeč), a někdy editovat (Adobe InDesign) dokumenty konkrétních formátů. Tyto aplikace obvykle vytvářejí tzv. "pevné stránky" formát dokumentů. Tento formát dokumentu přesně popisuje, kde je obsah dokumentu umístěn na každé stránce. Vnitřní, PDF nebo XPS formát obsahuje popis každé stránky, jakož i návody k kreslení s uvedením rozložení obsahu na stránce. To je podobné formátům obrázků, které popisují, kde je obsah uveden buď v rastrové nebo vektorové formě.

Naproti tomu některé aplikace editující text nepodporuje prohlížení stránek dokumentů. Například, Microsoft Notepad podporuje jen velmi málo funkcí, kromě pouhého zobrazení, editace a tisku textu. Důležité je, že tyto aplikace nemohou zobrazovat stránky dokumentu ani uživateli sdělit, kolik z nich by bylo vytištěno, pouze aby mohly zobrazit obsah dokumentu. Dokument lze uložit ve formátu prostého textu a lze jej otevřít mnoha dalšími aplikacemi. Pomocí aplikace, která umožňuje prohlížení binárního obsahu libovolného souboru, lze vidět, co je uloženo v dokumentovém souboru.

O něco sofistikovanější aplikace editace textu, jako například Microsoft WordPad, uložit dokument v Rich Text Format (RTF), který podporuje více formátování funkcí, jako je vložení obrázků, formátování znaků, odstavce okraje a rozestupy. Formát RTF však také obsahuje pouze obsah dokumentů a nemá žádné informace o stránkách.

Microsoft Word je nejpokročilejší aplikace editace textu v Windows Dnes. Formátuje soubory ve formátu DOCX, který popisuje obsah dokumentu flexibilně a rozsáhle, což umožňuje uživatelům určit velikost stránky, orientaci pro sekci dokumentu, a je WYSIWYG aplikace dokonce zobrazovat stránky dokumentů na obrazovce. Nicméně stále neexistují žádné informace o tom, jak je obsah dokumentu zobrazen na stránkách dostupných v dokumentu. Dokumentový soubor popisuje pouze samotný obsah a vztah dokumentů se k sobě navzájem, spolu s některými geometrickými omezeními. V důsledku toho před uvedením dokumentu, Microsoft Word Spočítá to samo. Tohle je místo, kde přichází do hry rozložení stránky.

## Co je rozložení stránky

Zobrazení záložky dokumentu je datová struktura popisující, kde se konkrétní objekt nachází na stránkách pro všechny objekty dokumentu. Kromě toho, protože objekty mají vlastnosti, které ovlivňují jejich vzhled, jako je velikost písma, stínování nebo kreslení efektů, je třeba nejen vědět, kde objekt je, ale také jaká oblast (y) stránky zabírá, a zda bude platit pro více stránek tak, aby ostatní objekty nepřekrývají stejnou oblast (y).

Aspose.Words implementuje funkci uspořádání stránek interně umožňující její výrobu všech pevných formátů stránek, jako je PDF, XPS, a různé formáty obrázků. Bez rozvržení stránky by informace uložené v souboru s pevným dokumentem nebyly k dispozici a všechny tyto formáty by nebyly podporovány.

Vztah mezi dokumentem a rozložením stránky je poměrně jednoduchý. Zatímco dokument popisuje obsah, odpovídající rozložení stránky popisuje geometrii tohoto obsahu. Všimněte si, že uspořádání stránky nemůže existovat bez dokumentu, protože by neexistoval žádný obsah pro výpočet geometrie, ale dokument může existovat bez rozložení stránky. Například když je dokument DOCX přeměněn na dokument RTF, je obvykle zbytečné znát geometrii, protože žádný formát jej neukládá.

## Vytvoření rozložení stránky

Vytvoření rozložení stránky může být nákladný postup, jak z hlediska rychlosti a paměti. To je způsobeno několika důvody:

- Dokument může mít velké množství obsahu, které může být třeba zobrazovat na tisících stran. Geometrie každého objektu na každé stránce by musela být popsána, konzumovat zdroje paměti.
- Dokument může mít mnoho pravidel, která omezují geometrii. Může být vynaložen značný výpočetní čas, který zajistí splnění všech omezení
- Některé prvky dokumentu, například, `NUMPAGES` pole, vytvořit rekurzivní závislosti pro budoucí hodnoty nemovitostí, které nejsou k dispozici v době výpočtu. To vede k opakujícím se výpočtům a sečte ve výpočetním čase.

Z výše uvedených důvodů Aspose.Words vytvoří rozložení stránky pouze tehdy, je-li to nutné. Typickým důvodem by pro to byla žádost o podání stránek dokumentů nebo o získání hodnoty pole, která závisí na informacích dostupných v rozvržení stránky. Méně zřejmým důvodem by mohlo být export dokumentu do HTML. I když HTML není formát pevné stránky a nepopisuje geometrii objektů obsahu, stále podporuje obrázky. Tyto obrazy mohou být ve formě tvarů vytvořených v Microsoft Word s textem uvnitř nich. Například graf s etikety os lze exportovat do HTML jako obrázek, ale než to bude možné udělat Aspose.Words musí tento obrázek vykreslit, a proto musí vědět, kde je štítek zobrazen. Viz graf níže:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Negeometrická Vlastnosti

Kromě manipulace s geometrickými informacemi je za počítání barev a hraničních stylů zodpovědný i rozložení stránky. In Microsoft Word, barva textu může být specifikována jako automatická, což znamená, že výběr barev by měl být založen na stínovací barvě buňky nebo odstavce, nebo na základě barvy stránky, kde se objeví text.

Dispozice stránky počítá, kde se objeví text a jaký obsah za ním bude vykreslován, což umožňuje výpočet barev. Existují i další specifické výpočty provedené rozložením stránky. Například vodorovná hranice v tabulce závisí na tom, zda řádek tabulky je poslední ve sloupci textu a zda je rozdělen přes sloupce. Pokud je řádek ve sloupci poslední, použije se dolní hranice místo vodorovné.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words, uživatel může požádat o vytvoření nového uspořádání stránky, nebo aktualizovat existující. Obojí může být provedeno [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) metoda poskytnutá [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída. Pokud uspořádání stránky neexistuje, ale je to potřeba (například při exportu dokumentu do pevného formátu), Aspose.Words automaticky volá tuto metodu. Pokud však již existuje rozložení stránky, Aspose.Words použije stávající, aby se zabránilo spotřebě zdrojů nezbytných k jeho aktualizaci. V tomto případě musí uživatel zavolat `UpdatePageLayout` metoda, aby bylo zajištěno, že rozložení stránky je aktuální s modelem dokumentu.

### Dynamická struktura

Proces vytváření rozložení stránek zahrnuje následující kroky:

- *Conversion* Vyjmenovávání obsahu modelu dokumentu a příprava odpovídajících objektů rozvržení.
- *Build* Aranžování objektů pro zobrazení obsahu dokumentu na stránkách.
- *Reflow* Aktualizace uspořádání objektů za účelem splnění geometrie omezení.
- *Projekce rozvržení objektů do pevné prezentace stránky a dokončování barevné informace*.
- *Building and reflowing of shape content* *Požadovaný krok, pokud dokument obsahuje tvary s vnořeným textovým obsahem.

Všimněte si, že rozložení stránky je dynamická struktura, která může být částečně přestavěna. To je zapotřebí zejména tehdy, není-li možné vypočítat hodnoty pole bez přestavby struktury rozložení dokumentu. Pole může odkazovat na umístění objektu na stránce a zároveň je na stránce vykreslena samotná hodnota pole, která ovlivňuje umístění referenčního objektu. Rozložení stránky nelze postavit v jednom kroku, protože hodnoty pole nemusí být v okamžiku umístění na stránce ještě k dispozici.

Uvažujte o typickém scénáři, kdy `NUMPAGES` pole se objeví v zápatí první stránky v dokumentu. Hodnota tohoto pole je celkový počet stran. Pro umístění pole na stránce by měla být známa jeho hodnota. Pokud se v současné době staví pouze první stránka, není dosud znám celkový počet stránek. V tomto případě musí rozložení stránky použít výchozí hodnotu a později se vrátit do tohoto pole a změnit svou hodnotu podle skutečných výpočtů. Změna hodnoty pole však může mít vliv na obsah jiného dokumentu na stránce a nakonec způsobí, že bude připojena nová stránka nebo bude odstraněna stávající stránka, čímž se vypočtená hodnota zastaralá. Tento problém lze vyřešit tak, že je možné aktualizovat stávající rozložení stránky.

Při vytváření rozvržení je také možné nastavit [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) vlastnosti, které ovlivňují výstup dokumentu na stránkách.

## Uložení formátu na pevné stránky

Po vytvoření rozložení stránky a výpočtu geometrie objektů a jejich umístění na stránce lze dokument uložit ve formátu pevné stránky podporovaném Aspose.Words. Při ukládání dokumentů do formátů pevných stránek lze použít možnosti vykreslování společné pro všechny tyto formáty. Umožňují kontrolu:

- Počet a rozsah stránek obsažených ve výstupním dokumentu ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progress of page-by-page document saving ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Soubor znaků, které se používají pro vykreslování čísel ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Metafilový přehrávač ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Další podrobnosti viz [Zachazení Windows Metafily](/words/cs/java/handling-windows-metafiles/) článek.
- Míra kvality pro rekompresní JPEG obrázky, jejichž hodnota se může mírně lišit, v závislosti na zvoleném formátu uložení ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimalizace vektorové grafiky v Aspose.Words výstup ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Možnosti grafiky při ukládání do formátů Tiff, Png, Bmp, Jpeg ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Uložení dokumentu v šedém měřítku ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Přepínání mezi vykreslováním tvarů DrawingML a zpětnými tvary ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Přepínání mezi režimy vykreslování efektů DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Následující příklad ukazuje, jak uložit dokument do formátu JPEG pomocí `Save` metoda a možnosti renderování:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
