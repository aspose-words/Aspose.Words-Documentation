---
title: Pokročilé funkce Mail Merge v C++
second_title: Aspose.Words pro C++
articleTitle: Pokročilé Funkce Mail Merge
linktitle: Pokročilé Funkce Mail Merge
type: docs
description: "Aspose.Words pro C++ poskytuje některé pokročilé funkce Mail Merge, které vám umožňují provádět další přizpůsobení Mail Merge. Například získání informací o struktuře šablony, nastavení pravidel, vyčištění po operaci Mail Merge a další."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /cs/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words poskytuje některé další vlastnosti a metody Mail Merge, které vám umožňují provádět další přizpůsobení procesu Mail Merge buď v jednoduchém Mail Merge nebo Mail Merge s regiony.

Pokročilé funkce Mail Merge zahrnují mimo jiné získávání informací o struktuře šablon před provedením operace Mail Merge, nastavení pravidel pro operaci Mail Merge a čištění během operace Mail Merge. Tento článek se bude zabývat pouze několika vlastnostmi a příklady, které vám ukážou, jak používat pokročilé funkce.

## Nastavení pravidel pro operace Mail Merge

Přidání pravidel do šablony vám umožní zefektivnit a zpružnit proces pracovního postupu. Pomocí pravidel Mail Merge můžete nastavit obsah, který lze rychle změnit, a vyhnout se nutnosti generovat více dokumentů.

Aspose.Words umožňuje přizpůsobit Mail Merge na základě pravidel, která se spustí při provádění Mail Merge operace a řízení sloučení informací. Například když vytvoříte e-mail nebo dopis, který pošlete všem svým zákazníkům. Můžete nastavit pravidlo tak, aby písmeno mohlo obsahovat různá data na základě různých hodnot v určitých polích zdroje dat.

Podívejte se na některá pravidla Mail Merge, která můžete implementovat.

### Implementujte další pole pro sloučení datových záznamů v aktuálním dokumentu

Pole [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) můžete implementovat a sloučit další datový záznam do aktuálního výsledného sloučeného dokumentu namísto spuštění nového sloučeného dokumentu. Používá se k zobrazení více záznamů v jednom dokumentu.

### Implementujte pole NextIf a SkipIf pro porovnání dvou výrazů

Můžete použít buď [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) pole nebo [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) pole, pokud chcete porovnat dva výrazy ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) výrazy) některými [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words sloučí další datový záznam do aktuálního dokumentu sloučení a všechna pole sloučení v šabloně, která jsou za polem *NextIf*, budou nahrazena hodnotami z dalšího datového záznamu, nikoli z aktuálního datového záznamu. | Aspose.Words sloučí další datový záznam do nového dokumentu sloučení. |
| `SkipIf` | Aspose.Words zruší aktuální dokument sloučení, přesune se na další datový záznam ve zdroji dat a spustí nový dokument sloučení. | Aspose.Words bude pokračovat v aktuálním dokumentu sloučení. |

## Získejte Informace O Struktuře Šablony

Aspose.Words umožňuje shromažďovat různé informace v šabloně pomocí mnoha metod. Například možná budete muset získat názvy některých slučovacích polí nebo hierarchii oblastí v šabloně. Nyní vysvětlíme možné varianty, jak získat nějaké konkrétní informace z vaší šablony.

### Získat Názvy Polí Sloučení

Můžete narazit na scénář, kdy budete chtít sloučit data se sloučenými poli, která jsou vytvořena jinými, a v tomto případě si nebudete jisti přesnými názvy polí sloučení. Chcete-li tedy dosáhnout účelu Mail Merge, musíte nejprve přečíst a zobrazit názvy všech polí sloučení. Aspose.Words umožňuje získat kolekci názvů polí sloučení pomocí metody [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Následující příklad kódu ukazuje, jak získat názvy všech polí sloučení v šabloně:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Získejte Informace O Slučovacích Regionech

Můžete mít scénář, ve kterém chcete pochopit, jak je vaše šablona strukturována prostřednictvím zadaných oblastí sloučení. Pomocí některých metod můžete shromáždit všechny potřebné informace o oblastech sloučení nebo získat hierarchii oblastí sloučení v šabloně, například metodu [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Můžete použít vlastnosti a metody třídy [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).Následující příklad kódu ukazuje, jak získat hierarchii slučovacích regionů:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Přidat Mapovaná Pole

Aspose.Words umožňuje automaticky mapovat názvy polí ve zdroji dat a názvy polí Mail Merge v šabloně pomocí vlastnosti [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Pokud máte například v šabloně název pole s názvem " Příjmení "a ve zdroji dat máte název pole" příjmení "nebo jinou variantu, například" Last_Name "nebo" LastName", pak se pole ve zdroji dat automaticky namapuje na odpovídající mapované pole. Pokud má být šablona sloučení sloučena s mnoha zdroji dat, mapovaná pole znemožňují opětovné zadávání polí do šablony, aby bylo možné souhlasit s názvy polí v databázi.

Následující příklad kódu ukazuje, jak přidat mapované pole pomocí metody [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/), když pole sloučení v šabloně a datové pole ve zdroji dat mají různé názvy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
