---
title: Vnořené Mail Merge s regiony v C#
second_title: Aspose.Words pro .NET
articleTitle: Vnořené Mail Merge s regiony
linktitle: Vnořené Mail Merge s regiony
type: docs
description: "Proveďte operaci Mail Merge s vnořenými oblastmi pomocí C#. Vnořené sloučení je funkce, která umožňuje sloučit hierarchická data ze zdroje dat do šablony sloučení."
keywords: "mail merge with nested regions c#"
weight: 10
url: /cs/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

V některých scénářích možná budete muset použít vnořené Mail Merge s regiony. Vnořené sloučení je funkce, která umožňuje sloučit hierarchická data ze zdroje dat do šablony sloučení a snadno naplnit dokument. Hierarchická data jsou v zásadě reprezentována jako sada datových položek a hierarchické vztahy popisují, jak jsou datové položky vzájemně propojeny (jedna položka dat je rodičem jiné).

Aspose.Words umožňuje provést operaci Mail Merge s vnořenými oblastmi. Tuto funkci můžete použít, pokud máte zdroj dat, který je uspořádán do stromové struktury a chcete provést operaci Mail Merge k naplnění šablony hierarchickými daty.

{{% alert color="primary" %}}

Vnořené Mail Merge je relevantní pouze při provádění Mail Merge s regiony.

{{% /alert %}}

## Co je vnořené Mail Merge

Oblast Mail Merge se nazývá vnořená, pokud máte dvě nebo více oblastí Mail Merge, kde jedna z nich je uvnitř druhé v hierarchické podobě. Všimněte si, že každá oblast obsahuje data z jedné tabulky.

Nejběžnějším příkladem vnořeného Mail Merge je objednávka, která obsahuje více položek, kde je třeba propojit více datových tabulek a prezentovat informace v šabloně.

Obrázek níže ukazuje dvě vnořené oblasti, kde oblast *Order* Mail Merge je rodičem oblasti *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Jak zpracovat Mail Merge s vnořenými oblastmi

Data, která mají být sloučena do šablony, mohou pocházet z různých zdrojů, zejména relačních databází nebo XML dokumentů. V našem příkladu použijeme soubor XML k uložení našich dat a jejich načtení přímo do **DataSet**.

Aspose.Words umožňuje zpracovávat Mail Merge s vnořenými oblastmi pomocí datových vztahů uvedených v **DataSet**. Když objekt **DataSet** načte XML, použije buď poskytnuté schéma, nebo jej odvodí ze struktury samotného XML, aby toho dosáhl. Z této struktury vytváří v případě potřeby vztahy mezi tabulkami.

Obrázek níže ukazuje, jak budou data z tabulky *Order* předaná vnořeným regionům sloučení propojena s tabulkou *Item* a také výstup generovaný během operace sloučení.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Jak můžete vidět z výstupního dokumentu, Každá objednávka z tabulky **Order** je vložena do šablony sloučení se všemi souvisejícími položkami objednávky z tabulky **Item**. Další objednávka bude vložena spolu s jejich položkami, dokud nebudou uvedeny všechny objednávky a položky. Pořadí vnoření Mail Merge s regiony v šabloně musí odpovídat datovým vztahům mezi tabulkami ve zdroji dat.

Následující příklad kódu ukazuje, jak vygenerovat fakturu pomocí vnořeného Mail Merge s regiony:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Implementaci nastavení datových relací můžete zkontrolovat ručně z [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Jak nastavit datové vztahy ve vnořených Mail Merge s regiony

Chcete-li správně spustit vnořený Mail Merge s oblastmi, musíte nastavit všechny datové vztahy ve struktuře rodič-dítě. Přeskočení tohoto důležitého kroku může vést k selhání při provádění vnořeného Mail Merge s regiony.

Při načítání dat pro vnořený Mail Merge ze souboru XML metodou **ReadXml** se automaticky vytvoří vztahy podle struktury dokumentu XML. Musíte se však ujistit, že byly vytvořeny správné vztahy.

Pokud Mail Merge nefunguje podle očekávání, možná budete muset restrukturalizovat soubor XML nebo explicitně vytvořit vztahy mezi objekty DataTable v DataSet.

`DataSet`, který má související datové tabulky, použije objekt **DataRelation** k reprezentaci vztahu rodič-dítě mezi tabulkami.

Následující příklad kódu ukazuje, jak vytvořit `DataRelation` mezi tabulkou zákazníka a tabulkou objednávky pomocí objektu `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Jak vytvořit datové relace z vlastního zdroje dat

Implementujte rozhraní [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) a vytvořte vztahy ve struktuře rodič-dítě vlastního zdroje dat. Použijte metodu [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) k vrácení příslušných podřízených dat aktuálního nadřazeného záznamu.

Následující příklad ukazuje, jak vytvořit datové relace pomocí **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
