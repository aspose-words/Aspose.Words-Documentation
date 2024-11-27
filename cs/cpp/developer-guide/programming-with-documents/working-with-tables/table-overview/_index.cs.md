---
title: Přehled Tabulky
second_title: Aspose.Words pro C++
articleTitle: Přehled Tabulky
linktitle: Přehled Tabulky
description: "Práce s tabulkami a jejich komponenty, jako jsou buňky, řádky, sloupce v Aspose.Words pro C++. Jak pracovat s tabulkami v C++."
type: docs
weight: 10
url: /cs/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words je knihovna tříd určená pro zpracování dokumentů na straně serveru v různých formátech - PDF, HTML, různých formátech Microsoft Word a dalších-a podporuje tabulky následujícími způsoby:

* tabulky v dokumentu jsou zachovány během otevření / uložení a konverzí
* je možné upravit tabulku, obsah a jeho formátování a poté exportovat změny do souboru ve formátu, který podporuje tabulky

V tomto článku se dozvíme více o struktuře tabulky, buňkách, řádcích a sloupcích podporovaných Aspose.Words a podrobnostech práce s takovými tabulkami.

## Struktura Tabulky

Jak již bylo zmíněno, tabulka se skládá z takových prvků jako **Cell**, **Row** a **Column**. Jedná se o koncepty, které jsou společné pro všechny tabulky obecně, bez ohledu na formát dokumentu.

Toto je běžný příklad tabulky nalezené v dokumentu Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Uzly Tabulky

Tabulka z libovolného dokumentu načteného do Aspose.Words je importována jako **Table node**. Stůl lze nalézt jako dítě:

- hlavní text
- vložený příběh, jako je komentář nebo poznámka pod čarou
- buňky, když je tabulka vnořena do jiné tabulky

{{% alert color="primary" %}}

Všimněte si, že tabulky lze vnořit do jiných tabulek do libovolné hloubky.

{{% /alert %}}

### Obsah Tabulky

Uzel tabulky neobsahuje žádný skutečný obsah-místo toho je to kontejner pro další takové uzly, které tvoří obsah:

- **Table** obsahuje mnoho **Row** uzlů. Tabulka obsahuje všechny obvyklé prvky uzlu, což vám umožňuje volně pohybovat, upravovat a odebírat tabulku v dokumentu.
- **Row** představuje jeden řádek tabulky a obsahuje mnoho uzlů **Cell**. Kromě toho **Row** poskytuje prvky, které definují způsob zobrazení řádku, jako je výška a zarovnání.
- **Cell** je to, co obsahuje skutečný obsah viditelný v tabulce a skládá se z **Paragraph** a dalších uzlů na úrovni bloku. Buňky mohou navíc obsahovat vnořené tabulky.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Strukturu uzlů tabulky v dokumentu můžete zkontrolovat pomocí **DocumentExplorer**.

{{% /alert %}}

### Prázdný odstavec za tabulkou

Obrázek výše ukazuje, že dokument obsahuje tabulku několika řádků, která se zase skládá ze dvou buněk. Každá ze dvou buněk obsahuje odstavec, což je kontejner pro formátovaný text buňky.

Je také třeba poznamenat, že oddělení dvou po sobě jdoucích tabulek v dokumentu vyžaduje alespoň jeden prázdný odstavec za tabulkou. Bez takového odstavce by se po sobě jdoucí tabulky spojily do jedné. Toto chování je identické v obou Microsoft Word a Aspose.Words.

V Aspose.Words jsou všechny třídy a vlastnosti související s tabulkami obsaženy v oboru názvů [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Vidět

* [Aspose.Words Model Objektu Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Logické úrovně uzlů v dokumentu](/words/cpp/logical-levels-of-nodes-in-a-document/)
