---
title: Najít a nahradit v C#
second_title: Aspose.Words místo .NET
articleTitle: Najít a nahradit
linktitle: Najít a nahradit
type: docs
description: "Najděte řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahraďte jej textem, který chcete použít C#."
weight: 100
url: /cs/net/find-and-replace/
---

Můžete snadno procházet ve vašem dokumentu pomocí klávesnice a myši, ale pokud máte mnoho stránek procházet, bude to chvíli trvat najít konkrétní text v dlouhém dokumentu. Bude to více časově náročné, pokud chcete nahradit určité znaky nebo slova, která jste použili ve svém dokumentu. Najít a nahradit funkce vám umožní najít posloupnost znaků v dokumentu a nahradit jej jinou posloupnost znaků.

Aspose.Words umožňuje najít konkrétní řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahradit jej alternativou bez instalace a použití dalších aplikací, jako jsou Microsoft Word. To urychlí mnoho psaní a formátování úkolů, potenciálně vám ušetří hodiny práce.

Tento článek vysvětluje, jak použít náhradu řetězce a pravidelné výrazy s podporou metacharakterů.

## Způsoby, jak najít a nahradit {#ways-to-find-and-replace}

Aspose.Words poskytuje dva způsoby použití vyhledávacího a náhradního provozu pomocí:

1. *Jednoduchá náhrada za řetězec* díry pro nalezení a nahrazení konkrétního řetězce jiným, musíte zadat vyhledávací řetězec (alfanumerické znaky), který bude nahrazen podle všech událostí jiným zadaným náhradním řetězcem. Oba řetězce nesmějí obsahovat symboly. Vezměte v úvahu, že string srovnání může být případ-citlivý, nebo si můžete být jisti pravopisu nebo mají několik podobných pravopisů.
2. *Regularní výrazy* &gt; Chcete-li zadat regulární výraz najít přesné string zápasy a nahradit je podle vašeho regulárního výrazu. Všimněte si, že slovo je definováno jako tvořeno pouze alfanumerickými znaky. Pokud je výměna provedena pouze s celým textem, která se shodují a vstupní řetězec obsahuje symboly, pak se nenajdou žádné fráze.

Kromě toho můžete použít speciální metacharaktery s jednoduchou náhradou řetězce a regulární výrazy k určení přerušení v rámci hledání a nahrazení operace.

Aspose.Words představuje najít a nahradit funkčnost s [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) jmenný prostor. Můžete pracovat s mnoha možnostmi během hledání a nahrazení procesu pomocí [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) třída.

### Najít a nahradit text pomocí jednoduché výměny řetězců {#find-and-replace-text-using-simple-string-replacement}

Můžete použít jednu z [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) metody, jak najít nebo nahradit konkrétní řetězec a vrátit počet nahrazení, které byly provedeny. V tomto případě můžete zadat řetězec, který má být nahrazen, řetězec, který nahradí všechny jeho výskyty, zda je náhrada případ-citlivá, a zda bude ovlivněna pouze samostatná slova.

Následující příklad kódu ukazuje, jak najít řetězec

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím jednoduché náhrady řetězce:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

A po aplikaci jednoduché náhrady řetězce:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Najít a nahradit text pomocí pravidelných výrazů {#find-and-replace-text-using-regular-expressions}

Pravidelný výraz (regex) je vzor, který popisuje určitou posloupnost textu. Předpokládejme, že chcete nahradit všechny dvojité výskyty slova jedním slovem. Pak můžete použít následující regulární výraz pro upřesnění dvojslovného vzoru: `([a-zA-Z]+) \1`.

Použijte ten druhý. [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) metoda vyhledávání a nahrazení určitých kombinací znaků nastavením `Regex` parametr jako regulární exprese vzor najít shody.

Následující příklad kódu ukazuje, jak nahradit řetězce, které odpovídají regulárnímu vzoru výrazu zadaným náhradním řetězcem:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Můžete si všimnout rozdílu mezi dokumentem před uplatněním náhrady řetězce s pravidelnými výrazy:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

A po aplikaci náhrady řetězce s pravidelnými výrazy:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Najít a nahradit řetězec pomocí metacharakterů {#find-and-replace-text-using-metacharacters}

Metaznaky můžete použít ve vyhledávacím řetězci nebo náhradním řetězci, pokud se konkrétní text nebo fráze skládají z více odstavců, oddílů nebo stránek. Některé z metaznaků patří **&p** pro průlom odstavce, **&b** pro přestávku v sekci, **&m** na pagerový zlom a **&l** na přestávku.

{{% alert color="primary" %}}

Všimněte si, že metacharakter **&&** rovná se **&**. Například, pokud potřebujete najít text pro **&p** to není odstavec přestávka, pak můžete použít **&&p**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit text zlomem odstavce a stránky:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Najít a nahradit řetězec v záhlaví/footer dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Text můžete najít a nahradit v části záhlaví / nohy dokumentu Word pomocí [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) třída.

Následující příklad kódu ukazuje, jak nahradit text sekce záhlaví ve vašem dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím výměny řetězce záhlaví:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

A po aplikaci výměny řetězce hlavičky:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Příklad kódu pro nahrazení textu zápatí ve vašem dokumentu je velmi podobný příkladu předchozího záhlaví kódu. Jediné, co musíte udělat, je vyměnit tyto dva řádky:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

S:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím zápatí nahrazení řetězce:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

A po aplikaci zápatí nahrazení řetězce:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignorovat text během hledání a nahrazení {#ignore-text-during-find-and-replace}

Při aplikaci hledání a nahrazení operace můžete ignorovat některé segmenty textu. Některé části textu tedy mohou být vyloučeny z vyhledávání a nález a výměna lze použít pouze na zbývající části.

Aspose.Words poskytuje mnoho najít a nahradit vlastnosti pro ignorování textu, jako je [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/), a [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Následující příklad kódu ukazuje, jak ignorovat text uvnitř odstranění revizí:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Přizpůsobit hledání a nahrazení operace {#customize-find-and-replace-operation}

Aspose.Words poskytuje mnoho různých [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) najít a nahradit text, jako je použití zvláštního formátu s [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) a [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) vlastnosti s použitím substitucí v náhradních vzorech s [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) majetek a další.

Následující příklad kódu ukazuje, jak zdůraznit konkrétní slovo ve vašem dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words umožňuje použití [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) rozhraní pro vytvoření a volání vlastní metody během výměny operace. Můžete mít některé případy použití, kde je třeba přizpůsobit vyhledávací a nahradit operaci, jako je nahrazení textu zadaným pravidelným výrazem HTML tagy, takže v podstatě použijete nahradit vložením HTML.

Pokud potřebujete nahradit řetězec HTML tagem, použijte **IReplacingCallback** rozhraní pro přizpůsobení vyhledání a nahrazení operace, takže zápas začíná na začátku spuštění s uzel zápasu vašeho dokumentu. Poskytněme několik příkladů použití **IReplacingCallback**.

Následující příklad kódu ukazuje, jak nahradit text zadaný HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Následující příklad kódu ukazuje, jak zvýraznit pozitivní čísla s zelenou barvou a negativní čísla s červenou barvou:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Následující příklad kódu ukazuje, jak předložit číslo řádku na každý řádek:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
