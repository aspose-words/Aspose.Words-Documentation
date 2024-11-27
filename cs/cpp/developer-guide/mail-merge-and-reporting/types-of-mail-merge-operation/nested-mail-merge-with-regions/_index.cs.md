---
title: Vnořené Mail Merge s regiony v C++
second_title: Aspose.Words pro C++
articleTitle: Vnořené Mail Merge s regiony
linktitle: Vnořené Mail Merge s regiony
type: docs
description: "Proveďte operaci Mail Merge s vnořenými oblastmi pomocí C++. Vnořené sloučení je funkce, která umožňuje sloučit hierarchická data ze zdroje dat do šablony sloučení."
keywords: "mail merge with nested regions c++"
weight: 30
url: /cs/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

V některých scénářích možná budete muset použít vnořené Mail Merge s regiony. Vnořené sloučení je funkce, která umožňuje sloučit hierarchická data ze zdroje dat do šablony sloučení a snadno naplnit dokument. Hierarchická data jsou v zásadě reprezentována jako sada datových položek a hierarchické vztahy popisují, jak jsou datové položky vzájemně propojeny (jedna položka dat je rodičem jiné).

Aspose.Words umožňuje provádět operaci Mail Merge s vnořenými oblastmi. Tuto funkci můžete použít, pokud máte zdroj dat, který je uspořádán do stromové struktury a chcete provést operaci Mail Merge k naplnění šablony hierarchickými daty.

{{% alert color="primary" %}}

Vnořené Mail Merge je relevantní pouze při provádění Mail Merge s regiony.

{{% /alert %}}

## Co je vnořené Mail Merge

Oblast Mail Merge se nazývá vnořená, pokud máte dvě nebo více oblastí Mail Merge, kde jedna z nich je uvnitř druhé v hierarchické podobě. Všimněte si, že každá oblast obsahuje data z jedné tabulky.

Nejběžnějším příkladem vnořeného Mail Merge je objednávka, která obsahuje několik položek, kde je třeba propojit mnoho datových tabulek a prezentovat informace v šabloně.

Obrázek níže ukazuje dvě vnořené oblasti, kde oblast *Order* Mail Merge je rodičem oblasti *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Jak zpracovat Mail Merge s vnořenými oblastmi

Data, která mají být sloučena do šablony, mohou pocházet z různých zdrojů, zejména relačních databází nebo XML dokumentů. V našem příkladu použijeme [SQLite](https://www.sqlite.org/index.html) databáze pro uložení našich dat a jejich načtení s implementací vlastního zdroje dat.

Obrázek níže ukazuje, jak budou data z tabulky *Order* předaná vnořeným regionům sloučení propojena s tabulkou *Item* a také výstup generovaný během operace sloučení.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Jak můžete vidět z výstupního dokumentu, Každá objednávka z tabulky **Order** je vložena do šablony sloučení se všemi souvisejícími položkami objednávky z tabulky **Item**. Další objednávka bude vložena spolu s jejich položkami, dokud nebudou uvedeny všechny objednávky a položky. Pořadí vnoření Mail Merge s regiony v šabloně musí odpovídat datovým vztahům mezi tabulkami ve zdroji dat.

## Jak vytvořit datové relace z vlastního zdroje dat

Implementujte rozhraní [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) a vytvořte vztahy ve struktuře rodič-dítě vlastního zdroje dat. Použijte metodu [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) k vrácení příslušných podřízených dat aktuálního nadřazeného záznamu.

Následující příklad kódu ukazuje, jak vygenerovat fakturu pomocí vnořeného Mail Merge s regiony z [SQLite](https://www.sqlite.org/index.html) databáze s [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
