---
title: Najít a nahradit v Java
second_title: Aspose.Words místo Java
articleTitle: Najít a nahradit
linktitle: Najít a nahradit
type: docs
description: "Najděte řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahraďte jej textem, který chcete použít Java."
weight: 100
url: /cs/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Můžete snadno procházet ve vašem dokumentu pomocí klávesnice a myši, ale pokud máte mnoho stránek procházet, bude to chvíli trvat najít konkrétní text v dlouhém dokumentu. Bude to více časově náročné, pokud chcete nahradit určité znaky nebo slova, která jste použili ve svém dokumentu. Funkci najdete a nahradíte tak, že v dokumentu najdete posloupnost znaků a nahradíte ji jinou posloupností znaků.

Aspose.Words umožňuje najít konkrétní řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahradit jej alternativou bez instalace a použití dalších aplikací, jako například Microsoft Word. To urychlí mnoho psaní a formátování úkolů, potenciálně vám ušetří hodiny práce.

Tento článek vysvětluje, jak použít náhradu řetězce a pravidelné výrazy s podporou metacharakterů.

## Způsoby, jak najít a nahradit {#ways-to-find-and-replace}

Aspose.Words poskytuje dva způsoby použití vyhledávacího a náhradního provozu pomocí:

1. *Jednoduchá náhrada řetězce* lásky najít a nahradit konkrétní řetězec jiným, musíte zadat vyhledávací řetězec (alfanumerické znaky), který bude nahrazen podle všech výskytů jiným zadaným náhradním řetězcem. Oba řetězce nesmí obsahovat symboly. Vezměte v úvahu, že string comparison může být citlivý případ, nebo si můžete být jisti pravopisu nebo mají několik podobných pravopisů.
2. *Regularní výrazy* díry pro upřesnění regulárního výrazu pro nalezení přesných strunných zápasů a jejich nahrazení podle regulárního výrazu. Všimněte si, že slovo je definováno jako tvořeno pouze alfanumerickými znaky. Pokud se provede výměna pouze s celým textem, který se shoduje a vstupní řetězec obsahuje symboly, pak nebudou nalezeny žádné fráze.

Také můžete použít speciální metacharaktery s jednoduchou výměnou strun a regulárními výrazy k určení přerušení v rámci hledání a nahrazení operace.

Aspose.Words představuje najít a nahradit funkčnost s [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Můžete pracovat s mnoha možnostmi během hledání a nahrazení procesu pomocí [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) třída.

### Najít a nahradit text pomocí jednoduché výměny řetězců {#find-and-replace-text-using-simple-string-replacement}

Můžete použít jednu z [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metody, jak najít nebo nahradit konkrétní řetězec a vrátit počet nahrazení, které byly provedeny. V tomto případě můžete zadat řetězec, který má být nahrazen, řetězec, který nahradí všechny jeho výskyty, zda je náhrada případ-citlivá, a zda bude ovlivněna pouze samostatná slova.

Následující příklad kódu ukazuje, jak najít řetězec

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím jednoduché náhrady řetězce:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

A po aplikaci jednoduché náhrady řetězce:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Najít a nahradit text pomocí pravidelných výrazů {#find-and-replace-text-using-regular-expressions}

Pravidelný výraz (regex) je vzor, který popisuje určitou posloupnost textu. Předpokládejme, že chcete nahradit všechny dvojité výskyty slova jedinou událostí. Pak můžete použít následující regulární výraz pro upřesnění dvojslovného vzoru: `([a-zA-Z]+) \1`.

Použijte ten druhý. [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) způsob vyhledávání a nahrazení určitých kombinací znaků nastavením `Regex` parametr jako regulární exprese vzor najít shody.

Následující příklad kódu ukazuje, jak nahradit řetězce, které odpovídají regulárnímu vzoru výrazu zadaným náhradním řetězcem:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Můžete si všimnout rozdílu mezi dokumentem před použitím náhrady řetězce s pravidelnými výrazy:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

A po aplikaci náhrady řetězce s pravidelnými výrazy:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Najít a nahradit řetězec pomocí metacharakterů {#find-and-replace-text-using-metacharacters}

Metaznaky můžete použít ve vyhledávacím řetězci nebo v náhradním řetězci, pokud se konkrétní text nebo fráze skládají z více odstavců, oddílů nebo stránek. Některé z metaznaků patří **&p** pro průlom odstavce, **&b** na přestávku v sekci, **&m** na pager a **&l** na přestávku.

{{% alert color="primary" %}}

Všimněte si, že metacharakter **&&** rovná se **&**. Například, pokud potřebujete najít text pro **&p** to není odstavec přestávka, pak můžete použít **&&p**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit text odstavcem a zlomem stránky:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Najít a nahradit řetězec v záhlaví/footer dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Text můžete najít a nahradit v záhlaví / stopě dokumentu Word pomocí [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) třída.

Následující příklad kódu ukazuje, jak nahradit text sekce záhlaví ve vašem dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Můžete si všimnout rozdílu mezi dokumentem před použitím výměny řetězce záhlaví:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

A po aplikaci výměny hlaviček:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Příklad kódu pro nahrazení textu zápatí ve vašem dokumentu je velmi podobný příkladu předchozího záhlaví kódu. Jediné, co musíte udělat, je vyměnit tyto dva řádky:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

S těmito vlastnostmi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Můžete si všimnout rozdílu mezi dokumentem před použitím zápatí nahrazení řetězce:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

A po aplikaci zápatí nahrazení řetězce:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorovat text během hledání a nahrazení {#ignore-text-during-find-and-replace}

Při aplikaci vyhledání a nahrazení operace můžete některé segmenty textu ignorovat. Některé části textu tedy mohou být z hledání vyloučeny a nález a výměna lze použít pouze na zbývající části.

Aspose.Words poskytuje mnoho najít a nahradit vlastnosti pro ignorování textu, jako je [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), a [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Následující příklad kódu ukazuje, jak ignorovat text uvnitř odstranění revizí:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Přizpůsobit hledání a nahrazení operace {#customize-find-and-replace-operation}

Aspose.Words poskytuje mnoho různých [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) najít a nahradit text, jako je použití zvláštního formátu s [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) a [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) vlastnosti, pomocí substitucí v náhradních vzorech s [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) majetek a další.

Následující příklad kódu ukazuje, jak zvýraznit konkrétní slovo ve vašem dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words umožňuje použít [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) rozhraní pro vytvoření a volání vlastní metody během výměny operace. Můžete mít některé případy použití, kde budete muset přizpůsobit hledání a nahradit operaci, jako je nahrazení textu zadané s pravidelným výrazem HTML tagy, takže v podstatě budete aplikovat nahradit vložením HTML.

Pokud potřebujete nahradit řetězec HTML tagem, použijte **IReplacingCallback** rozhraní pro přizpůsobení vyhledání a nahrazení operace, takže zápas začíná na začátku spuštění s uzel zápasu vašeho dokumentu. Poskytněme několik příkladů použití **IReplacingCallback**.

Následující příklad kódu ukazuje, jak nahradit text zadaný HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Následující příklad kódu ukazuje, jak zvýraznit pozitivní čísla s zelenou barvou a negativní čísla s červenou barvou:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Následující příklad kódu ukazuje, jak předložit číslo řádku na každý řádek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
