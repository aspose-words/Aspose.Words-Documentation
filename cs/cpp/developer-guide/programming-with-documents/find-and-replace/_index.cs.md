---
title: Najít a nahradit v C++
second_title: Aspose.Words pro C++
articleTitle: Najít a nahradit
linktitle: Najít a nahradit
type: docs
description: "Najděte v dokumentu vzor řetězce nebo regulárního výrazu a nahraďte jej požadovaným textem pomocí C++."
weight: 100
url: /cs/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

V dokumentu se můžete snadno pohybovat pomocí klávesnice a myši, ale pokud máte k procházení mnoho stránek, nalezení konkrétního textu v dlouhém dokumentu bude chvíli trvat. Bude to časově náročnější, když chcete nahradit určité znaky nebo slova, která jste použili v dokumentu. Funkce "Najít a nahradit" umožňuje najít sekvenci znaků v dokumentu a nahradit ji jinou sekvencí znaků.

Aspose.Words umožňuje najít v dokumentu konkrétní řetězec nebo vzor regulárního výrazu a nahradit jej alternativou bez instalace a použití dalších aplikací, jako je Microsoft Word. To urychlí mnoho úkolů psaní a formátování, což vám potenciálně ušetří hodiny práce.

Tento článek vysvětluje, jak použít nahrazení řetězce a regulární výrazy s podporou metacharacters.

## Způsoby, jak najít a nahradit {#ways-to-find-and-replace}

Aspose.Words poskytuje dva způsoby použití operace najít a nahradit pomocí následujícího:

1. *Simple string replacement* - Chcete-li najít a nahradit konkrétní řetězec jiným, musíte zadat vyhledávací řetězec (alfanumerické znaky), který bude nahrazen podle všech výskytů jiným zadaným náhradním řetězcem. Oba řetězce nesmí obsahovat symboly. Vezměte v úvahu, že porovnání řetězců může rozlišovat velká a malá písmena, nebo si nejste jisti pravopisem nebo máte několik podobných pravopisů.
2. *Regular expressions* - Chcete-li zadat regulární výraz, najděte přesné shody řetězců a nahraďte je podle regulárního výrazu. Všimněte si, že slovo je definováno jako tvořené pouze alfanumerickými znaky. Pokud je náhrada provedena pouze s odpovídajícími celými slovy a vstupní řetězec obsahuje symboly, nebudou nalezeny žádné fráze.

Kromě toho můžete použít speciální metaznaky s jednoduchou náhradou řetězců a regulárními výrazy k určení přestávek v rámci operace najít a nahradit.

Aspose.Words představuje funkci Najít a nahradit jmenným prostorem [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Během procesu najít a nahradit můžete pracovat s mnoha možnostmi pomocí třídy [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Najděte a nahraďte Text pomocí jednoduché náhrady řetězce {#find-and-replace-text-using-simple-string-replacement}

Pomocí jedné z metod [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) můžete najít nebo nahradit konkrétní řetězec a vrátit počet provedených náhrad. V tomto případě můžete určit řetězec, který má být nahrazen, řetězec, který nahradí všechny jeho výskyty, zda náhrada rozlišuje velká a malá písmena a zda budou ovlivněna pouze samostatná slova.

Následující příklad kódu ukazuje, jak najít řetězec "_CustomerName_ " a nahradit jej řetězcem *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím jednoduché výměny řetězců:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

A po použití jednoduché výměny řetězce:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Najděte a nahraďte Text pomocí regulárních výrazů {#find-and-replace-text-using-regular-expressions}

Regulární výraz (regulární výraz) je vzor, který popisuje určitou posloupnost textu. Předpokládejme, že chcete nahradit všechny dvojité výskyty slova výskytem jednoho slova. Poté můžete použít následující regulární výraz k určení dvouslovného vzoru: `([a-zA-Z]+) \1`.

Pomocí jiné metody [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) vyhledejte a nahraďte konkrétní kombinace znaků nastavením parametru `Regex` jako vzoru regulárního výrazu pro nalezení shod.

Následující příklad kódu ukazuje, jak nahradit řetězce, které odpovídají vzoru regulárního výrazu, zadaným náhradním řetězcem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím nahrazení řetězce regulárními výrazy:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

A po použití nahrazení řetězce regulárními výrazy:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Najděte a nahraďte řetězec pomocí Metacharacters {#find-and-replace-text-using-metacharacters}

Pokud se určitý text nebo fráze skládá z více odstavců, oddílů nebo stránek, můžete ve vyhledávacím řetězci nebo v náhradním řetězci použít znaky meta. Některé z metacharakterů zahrnují **&p** pro konec odstavce, **&b** pro konec oddílu, **&m** pro konec stránky a **&l** pro konec řádku.

{{% alert color="primary" %}}

Všimněte si, že metacharakter **&&** se rovná **&**. Pokud například potřebujete najít text pro **&p**, který není koncem odstavce, můžete použít **&&p**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit text odstavcem a koncem stránky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Najít a nahradit řetězec v záhlaví / zápatí dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Text můžete najít a nahradit v části Záhlaví/zápatí dokumentu Word pomocí třídy [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Následující příklad kódu ukazuje, jak nahradit text části záhlaví v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím nahrazení řetězce záhlaví:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

A po použití nahrazení řetězce záhlaví:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Příklad kódu, který nahradí text části zápatí v dokumentu, je velmi podobný předchozímu příkladu kódu záhlaví. Vše, co musíte udělat, je nahradit následující dva řádky:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

S následujícími:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím nahrazení řetězce zápatí:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

A po použití zápatí řetězec nahrazení:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ignorujte Text během hledání a nahrazení {#ignore-text-during-find-and-replace}

Při použití operace najít a nahradit můžete ignorovat určité segmenty textu. Některé části textu lze tedy z vyhledávání vyloučit a najít a nahradit lze použít pouze na zbývající části.

Aspose.Words poskytuje mnoho vlastností najít a nahradit pro ignorování textu, jako například [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), a [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Následující příklad kódu ukazuje, jak ignorovat text uvnitř odstranit revize:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Přizpůsobení operace najít a nahradit {#customize-find-and-replace-operation}

Aspose.Words poskytuje mnoho různých [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) k vyhledání a nahrazení textu, například použití konkrétního formátu s vlastnostmi [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) a [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), použití substitucí v náhradních vzorcích s vlastností [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) a další.

Následující příklad kódu ukazuje, jak zvýraznit konkrétní slovo v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words umožňuje použít rozhraní [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) k vytvoření a volání vlastní metody během operace nahrazení. Můžete mít některé případy použití, kdy potřebujete přizpůsobit operaci najít a nahradit, jako je nahrazení textu určeného regulárním výrazem značkami HTML, takže v zásadě použijete nahradit vložením HTML.

Pokud potřebujete nahradit řetězec značkou HTML, Použijte rozhraní **IReplacingCallback** k přizpůsobení operace najít a nahradit tak, aby shoda začala na začátku běhu s uzlem shody vašeho dokumentu. Uveďme několik příkladů použití **IReplacingCallback**.

Následující příklad kódu ukazuje, jak nahradit text zadaný HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Následující příklad kódu ukazuje, jak zvýraznit kladná čísla zelenou barvou a záporná čísla červenou barvou:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Následující příklad kódu ukazuje, jak předřadit číslo řádku na každý řádek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
