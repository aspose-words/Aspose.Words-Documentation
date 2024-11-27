---
title: Vytvoření rozvržení stránky v C++
second_title: Aspose.Words pro C++
articleTitle: Vytvoření rozvržení stránky
linktitle: Vytvoření rozvržení stránky
description: "Vytvoření rozvržení stránky může být nákladný postup. Aspose.Words vytvoří rozvržení stránky pouze v případě, že je to nutné: vykreslit stránky dokumentu, získat hodnotu pole, exportovat dokument do HTML atd."
type: docs
weight: 10
url: /cs/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Vytvoření rozvržení stránky může být nákladný postup, a to jak z hlediska rychlosti, tak paměti. To je způsobeno několika důvody:

- Dokument může mít velké množství obsahu, který může být nutné zobrazit na tisících stránek. Geometrie každého objektu na každé stránce by musela být popsána, což by spotřebovávalo paměťové prostředky.
- Dokument může mít mnoho pravidel, což omezuje geometrii. Může být vynaložen značný výpočetní čas, který zajistí splnění každého omezení.
- Některé funkce dokumentu, například pole `NUMPAGES`, vytvářejí rekurzivní závislosti pro budoucí hodnoty vlastností, které nejsou k dispozici v době výpočtu. To vede k opakujícím se výpočtům a sčítá se výpočetní čas.

Z výše uvedených důvodů Aspose.Words vytvoří rozvržení stránky pouze tehdy, když je to nutné. Typickým důvodem by byl požadavek na vykreslení stránek dokumentu nebo na získání hodnoty pole, která závisí na informacích dostupných v rozvržení stránky. Méně zřejmým důvodem může být export dokumentu do HTML. I když HTML není formát s pevnou stránkou a nepopisuje geometrii objektů obsahu, stále podporuje obrázky. Takové obrázky mohou být ve formě tvarů vytvořených v Microsoft Word s textem uvnitř nich. Například graf s popisky os lze exportovat do HTML jako obrázek, ale než to bude možné, Aspose.Words musí tento obrázek vykreslit, a proto potřebuje vědět, kde má štítek Zobrazit. Viz příklad grafu níže:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Ne-Geometrické Vlastnosti

Kromě zpracování geometrických informací je rozvržení stránky také zodpovědné za výpočet barev a stylů ohraničení. V Microsoft Word lze barvu textu zadat jako automatickou, což znamená, že výběr barvy by měl být založen na barvě stínování buňky nebo odstavce nebo na barvě stránky, kde se text objeví.

Rozvržení stránky počítá, kde se text objeví a jaký obsah bude vykreslen za ním, což umožňuje výpočet barev. Existují další specifické výpočty prováděné rozložením stránky. Například horizontální ohraničení v tabulce závisí na tom, zda je řádek tabulky Poslední ve sloupci textu a zda je rozdělen mezi sloupce. Pokud je řádek vykreslen jako poslední ve sloupci, použije se spodní okraj namísto vodorovného.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

V Aspose.Words může uživatel požádat, zda má vytvořit nové rozvržení stránky nebo aktualizovat stávající. Oba mohou být provedeny metodou [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), poskytovanou třídou [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Pokud rozvržení stránky neexistuje, ale je to potřeba (například když je dokument exportován do formátu s pevnou stránkou), Aspose.Words tuto metodu automaticky zavolá. Pokud však rozvržení stránky již existuje, Aspose.Words použije stávající, aby se zabránilo spotřebě zdrojů nezbytných k jeho aktualizaci. V tomto případě musí uživatel zavolat metodu `UpdatePageLayout`, aby se zajistilo, že rozvržení stránky je aktuální s modelem dokumentu.

## Dynamická Struktura

Proces vytváření rozvržení stránky se skládá z následujících kroků:

- *Conversion* - výčet obsahu modelu dokumentu a příprava odpovídajících objektů rozvržení.
- *Build* - uspořádání objektů rozvržení tak, aby představovaly obsah dokumentu na stránkách.
- *Reflow* - aktualizace uspořádání objektů pro splnění geometrických omezení.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - požadovaný krok, pokud dokument obsahuje tvary s vnořeným textovým obsahem.

Všimněte si, že rozvržení stránky je dynamická struktura, kterou lze částečně přestavět. To je zvláště nutné, když není možné vypočítat hodnoty polí bez přestavby struktury rozvržení dokumentu. Pole může odkazovat na umístění objektu na stránce a současně je na stránce vykreslena i samotná hodnota pole, což ovlivňuje umístění odkazovaného objektu. Rozložení stránky nelze vytvořit najednou, protože hodnoty polí nemusí být v době umístění na stránce ještě k dispozici.

Zvažte typický scénář, když se pole `NUMPAGES` objeví v zápatí první stránky dokumentu. Hodnota tohoto pole je celkový počet stránek. Chcete-li umístit pole na stránku, měla by být známa jeho hodnota. Pokud se právě vytváří pouze první stránka, celkový počet stránek ještě není znám. V tomto případě musí rozvržení stránky použít výchozí hodnotu a později se vrátit do tohoto pole a změnit jeho hodnotu podle skutečných výpočtů. Změna hodnoty pole však může ovlivnit jiný obsah dokumentu na stránce a nakonec způsobit připojení nové stránky nebo odebrání existující stránky, čímž bude vypočítaná hodnota zastaralá. Tento problém lze vyřešit umožněním aktualizace stávajícího rozvržení stránky.

Při vytváření rozvržení je také možné nastavit vlastnosti [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/), které ovlivňují výstup dokumentu na stránkách.
