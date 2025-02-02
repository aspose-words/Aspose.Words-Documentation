---
title: Přehled tabulky
second_title: Aspose.Words místo Python
articleTitle: Přehled tabulky
linktitle: Přehled tabulky
description: "Práce s stoly a jejich komponenty, jako jsou buňky, řádky, sloupce v Aspose.Words místo Python. Jak pracovat s tabulkami v Python."
type: docs
weight: 10
url: /cs/python-net/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words je třídní knihovna určená pro zpracování dokumentů na straně serveru v různých formátech Microsoft Word formáty a další

* tabulky v dokumentu jsou zachovány během otevřené/uložení a konverze
* je možné upravit tabulku, obsah a formátování a pak exportovat změny do souboru ve formátu, který podporuje tabulky

V tomto článku se dozvíme více o struktuře tabulky, buňkách, řádcích a sloupcích podporovaných Aspose.Words, a detaily práce s takovými stoly.

## Struktura tabulky

Jak již bylo uvedeno, tabulka se skládá z takových prvků jako **Cell**, **Row** a **Column**. Jedná se o pojmy, které jsou společné pro všechny tabulky obecně, bez ohledu na formát dokumentu.

To je společný příklad tabulky nalezené v Microsoft Word doklad:

![tables-overview-aspose-words-python-1](/words/python-net/table-overview/tables-overview-1.png)

### Stolní uzel

Tabulka z každého dokumentu nahraného do Aspose.Words je dovážen jako **Uzel tabulky**. Stůl lze nalézt jako dítě:

- hlavní text
- inline příběh jako komentář nebo poznámka pod čarou
- buňky, když je stůl vnořen do jiného stolu

{{% alert color="primary" %}}

Všimněte si, že stoly mohou být vnořeny do jiných stolů do jakékoliv hloubky.

{{% /alert %}}

### Obsah tabulky

Tabulka uzel neobsahuje žádný skutečný obsah místo, je to kontejner pro jiné takové uzly, které tvoří obsah:

- **Table** obsahuje mnoho **Row** uzly. Tabulka poskytuje všechny obvyklé prvky nódu, které vám umožní volně se pohybovat, upravovat a odstranit tabulku v dokumentu.
- **Row** představuje jeden řádek tabulky a obsahuje mnoho **Cell** uzly. Kromě toho **Row** poskytuje prvky, které definují, jak je řádek zobrazen, například výšku a zarovnání.
- **Cell** obsahuje true obsah viditelný v tabulce a skládá se z **Paragraph** a další blokové uzly. Navíc buňky mohou obsahovat vnořené stoly.

![tables-overview-aspose-words-python-2](/words/python-net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Struktura uzel tabulky můžete zkontrolovat v dokumentu pomocí **DocumentExplorer**.

{{% /alert %}}

### Prázdný odstavec za tabulkou

Obrázek výše ukazuje, že dokument obsahuje tabulku několika řádků, která se pak skládá ze dvou buněk. Každá ze dvou buněk obsahuje odstavec, který je nádobou pro formátovaný text buňky.

Je také třeba poznamenat, že oddělení dvou po sobě jdoucích tabulek v dokumentu vyžaduje alespoň jeden prázdný odstavec za tabulkou. Bez takového odstavce by se po sobě jdoucí tabulky spojily do jedné. Toto chování je stejné v obou Microsoft Word a Aspose.Words.

In Aspose.Words, všechny třídy a vlastnosti týkající se tabulek jsou obsaženy v [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/) Modul.

## Viz také

* [Aspose.Words Document Object Model (DOM)](/words/cs/python-net/aspose-words-document-object-model/)
* [Logické úrovně uzlů v dokumentu](/words/cs/python-net/logical-levels-of-nodes-in-a-document/)
