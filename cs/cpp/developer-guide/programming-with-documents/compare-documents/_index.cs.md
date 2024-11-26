---
title: Porovnání dokumentů v C++
second_title: Aspose.Words pro C++
articleTitle: Porovnat Dokumenty
linktitle: Porovnat Dokumenty
type: docs
description: "Porovnejte dva dokumenty v libovolných podporovaných formátech a zobrazuje změny obsahu pomocí C++. Při porovnávání můžete použít pokročilé možnosti."
weight: 60
url: /cs/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porovnávání dokumentů je proces, který identifikuje změny mezi dvěma dokumenty a obsahuje změny jako revize. Tento proces porovnává libovolné dva dokumenty, včetně verzí jednoho konkrétního dokumentu, pak se změny mezi oběma dokumenty zobrazí jako revize v prvním dokumentu.

Metoda srovnání je dosažena porovnáním slov na úrovni znaků nebo na úrovni slov. Pokud slovo obsahuje změnu alespoň jednoho znaku, ve výsledku se rozdíl zobrazí jako změna celého slova, nikoli znaku. Tento proces srovnání je obvyklým úkolem v právním a finančním průmyslu.

Místo ručního hledání rozdílů mezi dokumenty nebo mezi jejich různými verzemi můžete použít Aspose.Words pro porovnávání dokumentů a získávání změn obsahu ve formátování, záhlaví/zápatí, tabulkách a dalších.

Tento článek vysvětluje, jak porovnat dokumenty a jak určit pokročilé vlastnosti porovnání.

{{% alert color="primary" %}}

**Vyzkoušejte online**

Můžete porovnat dva dokumenty online pomocí [Porovnání dokumentů online](https://products.aspose.app/words/comparison) nástroj.

Všimněte si, že metoda porovnání, popsaná níže, se v tomto nástroji používá k zajištění stejných výsledků. Stejné výsledky tedy získáte i pomocí online srovnávacího nástroje nebo pomocí srovnávací metody v Aspose.Words.

{{% /alert %}}

## Omezení a podporované formáty souborů {#limitations-and-supported-file-formats}

Porovnání dokumentů je velmi složitá funkce. Existují různé části kombinace obsahu, které je třeba analyzovat, aby bylo možné rozpoznat všechny rozdíly. Důvodem této složitosti je skutečnost, že Aspose.Words si klade za cíl získat stejné výsledky srovnání jako Microsoft Word srovnávací algoritmus.

Obecným omezením pro dva porovnávané dokumenty je, že před voláním metody porovnání nesmí mít revize, protože toto omezení existuje v Microsoft Word.

{{% alert color="primary" %}}

Všimněte si, že můžete porovnat libovolné dva dokumenty v rámci [podporované formáty souborů](/words/cpp/supported-document-formats/). Můžete porovnávat objekty dokumentu a dokonce je můžete vytvářet od nuly, aniž byste měli jakýkoli konkrétní formát.

{{% /alert %}}

## Porovnání Dvou Dokumentů {#compare-two-documents}

Když porovnáte dokumenty, rozdíly druhého dokumentu od prvního se zobrazí jako revize prvního. Když upravíte dokument, každá úprava bude mít po spuštění metody porovnání vlastní revizi.

Aspose.Words umožňuje identifikovat rozdíly v dokumentech pomocí metody [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – to je podobné funkci Microsoft Word porovnání dokumentů. Umožňuje vám zkontrolovat dokumenty nebo verze dokumentů a najít rozdíly a změny, včetně úprav formátování, jako jsou změny písma, změny mezer, přidání slov a odstavců.

V důsledku srovnání lze dokumenty určit jako stejné nebo nerovné. Termín "rovné" dokumenty znamená, že srovnávací metoda není schopna reprezentovat změny jako revize. To znamená, že text dokumentu i formátování textu jsou stejné. Mezi dokumenty však mohou být i jiné rozdíly. Například Microsoft Word podporuje pouze revize formátu pro styly a nemůžete reprezentovat vkládání/mazání stylů. Dokumenty tedy mohou mít jinou sadu stylů a Metoda **Compare** stále nevytváří žádné revize.

Následující příklad kódu ukazuje, jak zkontrolovat, zda jsou dva dokumenty stejné nebo ne:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Následující příklad kódu ukazuje, jak jednoduše použít metodu `Compare` na dva dokumenty:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Zadejte Pokročilé Možnosti Porovnání {#specify-advanced-comparing-properties}

Existuje mnoho různých vlastností třídy [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/), které můžete použít, když chcete porovnat dokumenty.

Například Aspose.Words umožňuje ignorovat změny provedené během operace porovnávání určitých typů objektů v původním dokumentu. Můžete vybrat příslušnou vlastnost pro typ objektu, například [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), a další tím, že je nastaví na "pravdivé".

Kromě toho Aspose.Words poskytuje vlastnost [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/), pomocí které můžete určit, zda chcete sledovat změny znakem nebo slovem.

Další společnou vlastností je volba, ve kterém dokumentu se zobrazí srovnávací změny. Například dialogové okno " porovnat dokumenty "v Microsoft Word má možnost" zobrazit změny v " - to také ovlivňuje výsledky srovnání. Aspose.Words poskytuje vlastnost [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/), která slouží tomuto účelu.

Následující příklad kódu ukazuje, jak nastavit pokročilé porovnávací vlastnosti:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
