---
title: Porovnat dokumenty v C#
second_title: Aspose.Words místo .NET
articleTitle: Porovnat dokumenty
linktitle: Porovnat dokumenty
description: "Porovnejte dva dokumenty v podporovaných formátech a zobrazí změny obsahu pomocí C#. Můžete použít pokročilé možnosti při porovnání."
type: docs
weight: 60
url: /cs/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porovnání dokumentů je proces, který identifikuje změny mezi dvěma dokumenty a obsahuje změny jako revize. Tento proces porovnává všechny dva dokumenty, včetně verzí jednoho konkrétního dokumentu, pak se změny mezi oběma dokumenty zobrazí jako revize v prvním dokumentu.

Porovnávací metody je dosaženo porovnáním slov na úrovni znaků nebo na úrovni slov. Pokud slovo obsahuje změnu alespoň jednoho znaku, ve výsledku se rozdíl zobrazí jako změna celého slova, nikoli znaku. Tento proces srovnání je obvyklým úkolem v právních a finančních odvětvích.

Místo manuálního vyhledávání rozdílů mezi dokumenty nebo mezi různými verzemi, můžete použít Aspose.Words pro porovnání dokumentů a získání změn obsahu ve formátování, hlavičky/noha, tabulkách a dalších.

Tento článek vysvětluje, jak porovnat dokumenty a jak určit pokročilé srovnávací vlastnosti.

{{% alert color="primary" %}}

**Zkuste online**

Můžete porovnat dva dokumenty online pomocí [Srovnání dokumentů online](https://products.aspose.app/words/comparison) Nástroj.

Všimněte si, že metoda srovnání, popsaná níže, se používá v tomto nástroji k zajištění stejných výsledků. Takže dostanete stejné výsledky i pomocí nástroje online srovnání nebo pomocí metody srovnání v Aspose.Words.

{{% /alert %}}

## Omezení a podporované formáty souborů {#limitations-and-supported-file-formats}

Porovnání dokumentů je velmi složité. Existují různé části kombinace obsahu, které je třeba analyzovat k rozpoznání všech rozdílů. Důvodem této složitosti je skutečnost, že Aspose.Words má za cíl získat stejné výsledky srovnání jako Microsoft Word algoritmus srovnání.

Obecné omezení pro dva dokumenty jsou porovnávány je, že nesmí mít revize před voláním metody srovnání, protože toto omezení existuje v Microsoft Word.

{{% alert color="primary" %}}

Všimněte si, že můžete porovnat jakékoliv dva dokumenty v rámci [Podporované formáty dokumentů](/words/cs/net/supported-document-formats/). V podstatě můžete porovnat objekty dokumentů a dokonce i vy můžete tyto objekty vytvořit od nuly, aniž byste měli konkrétní formát.

{{% /alert %}}

## Porovnat dva dokumenty {#compare-two-documents}

Když porovnáte dokumenty, objeví se rozdíly ve druhém dokumentu od prvního dokumentu jako revize. Při změně dokumentu bude mít každá editace svou vlastní revizi po spuštění metody porovnání.

Aspose.Words umožňuje identifikovat rozdíly v dokumentech pomocí [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) Tato metoda je podobná Microsoft Word funkce srovnání dokumentů. Umožňuje vám kontrolovat dokumenty nebo verze dokumentů pro nalezení rozdílů a změn, včetně formátování úprav, jako jsou změny písma, změny odstupu, přidání slov a odstavců.

V důsledku srovnání lze dokumenty určit jako rovnocenné nebo nerovné. Pojem "jednoznačné dokumenty" znamená, že metoda srovnání není schopna představovat změny jako revize. To znamená, že text i formátování textu jsou stejné. Ale mezi dokumenty mohou být i jiné rozdíly. Například: Microsoft Word podporuje pouze formát revize pro styly, a nemůžete reprezentovat styl vložení / odstranění. Takže dokumenty mohou mít jiný styl a **Compare** metoda stále nevytváří žádné revize.

Následující příklad kódu ukazuje, jak zkontrolovat, zda jsou dva dokumenty stejné nebo ne:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Následující příklad kódu ukazuje, jak jednoduše použít `Compare` metoda ke dvěma dokumentům:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Upřesnit možnosti pokročilého srovnání {#specify-advanced-comparing-properties}

Existuje mnoho různých vlastností [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) třída, kterou můžete uplatnit, pokud chcete porovnat dokumenty.

Například: Aspose.Words umožňuje ignorovat změny provedené během porovnání některých typů objektů v rámci původního dokumentu. Můžete vybrat vhodnou vlastnost pro typ objektu, například [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/), a jiní tím, že je postaví na "true".

Kromě toho Aspose.Words poskytuje [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) vlastnost, se kterou můžete určit, zda sledovat změny podle charakteru nebo slov.

Další společnou vlastností je volba, ve které dokument ukázat změny srovnání. Například, v dokumentu Porovnejte dialogový box s dokumenty Microsoft Word má možnost Zobrazit změny v Aspose.Words poskytuje [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) majetek, který slouží tomuto účelu.

Následující příklad kódu ukazuje, jak nastavit pokročilé srovnávací vlastnosti:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
