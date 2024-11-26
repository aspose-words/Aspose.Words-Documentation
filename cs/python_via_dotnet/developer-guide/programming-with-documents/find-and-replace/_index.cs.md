---
title: Najít a nahradit v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Najít a nahradit
linktitle: Najít a nahradit
type: docs
description: "Najděte řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahraďte jej textem, který chcete použít Python."
weight: 100
url: /cs/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Můžete snadno procházet ve vašem dokumentu pomocí klávesnice a myši, ale pokud máte mnoho stránek procházet, bude to chvíli trvat najít konkrétní text v dlouhém dokumentu. Bude to více časově náročné, pokud chcete nahradit určité znaky nebo slova, která jste použili ve svém dokumentu. Najít a nahradit funkce vám umožní najít posloupnost znaků v dokumentu a nahradit jej jinou posloupnost znaků.

Aspose.Words umožňuje najít konkrétní řetězec nebo regulární vzor výrazu ve vašem dokumentu a nahradit jej alternativou bez instalace a použití dalších aplikací, jako jsou Microsoft Word. To urychlí mnoho psaní a formátování úkolů, potenciálně vám ušetří hodiny práce.

Tento článek vysvětluje, jak použít náhradu řetězce a pravidelné výrazy s podporou metacharakterů.

## Způsoby, jak najít a nahradit {#ways-to-find-and-replace}

Aspose.Words poskytuje dva způsoby použití vyhledávacího a náhradního provozu pomocí:

1. *Jednoduchá náhrada za řetězec* díry pro nalezení a nahrazení konkrétního řetězce jiným, musíte zadat vyhledávací řetězec (alfanumerické znaky), který bude nahrazen podle všech událostí jiným zadaným náhradním řetězcem. Oba řetězce nesmějí obsahovat symboly. Vezměte v úvahu, že string srovnání může být případ-citlivý, nebo si můžete být jisti pravopisu nebo mají několik podobných pravopisů.
2. *Regularní výrazy* &gt; Chcete-li zadat regulární výraz najít přesné string zápasy a nahradit je podle vašeho regulárního výrazu. Všimněte si, že slovo je definováno jako tvořeno pouze alfanumerickými znaky. Pokud je výměna provedena pouze s celým textem, která se shodují a vstupní řetězec obsahuje symboly, pak se nenajdou žádné fráze.

Kromě toho můžete použít speciální metacharaktery s jednoduchou náhradou řetězce a regulární výrazy k určení přerušení v rámci hledání a nahrazení operace.

Aspose.Words představuje najít a nahradit funkčnost s [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) Modul. Můžete pracovat s mnoha možnostmi během hledání a nahrazení procesu pomocí [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) třída.

### Najít a nahradit text pomocí jednoduché výměny řetězců {#find-and-replace-text-using-simple-string-replacement}

Můžete použít jednu z [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) a [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) metody, jak najít nebo nahradit konkrétní řetězec a vrátit počet nahrazení, které byly provedeny. V tomto případě můžete zadat řetězec, který má být nahrazen, řetězec, který nahradí všechny jeho výskyty, zda je náhrada případ-citlivá, a zda bude ovlivněna pouze samostatná slova.

Následující příklad kódu ukazuje, jak najít řetězec

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím jednoduché náhrady řetězce:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

A po aplikaci jednoduché náhrady řetězce:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Najít a nahradit text pomocí pravidelných výrazů {#find-and-replace-text-using-regular-expressions}

Pravidelný výraz je vzor, který popisuje určitou posloupnost textu. Předpokládejme, že chcete nahradit všechny dvojité výskyty slova jedním slovem. Pak můžete použít následující regulární výraz pro upřesnění dvojslovného vzoru: `([a-zA-Z]+) \1`.

Použijte [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) metoda vyhledávání a nahrazení jednotlivých kombinací znaků nastavením regulárního parametru výrazu jako vzor pro hledání shody.

Následující příklad kódu ukazuje, jak nahradit řetězce, které odpovídají regulárnímu vzoru výrazu zadaným náhradním řetězcem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Můžete si všimnout rozdílu mezi dokumentem před uplatněním náhrady řetězce s pravidelnými výrazy:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

A po aplikaci náhrady řetězce s pravidelnými výrazy:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Najít a nahradit řetězec pomocí metacharakterů {#find-and-replace-text-using-metacharacters}

Metaznaky můžete použít ve vyhledávacím řetězci nebo náhradním řetězci, pokud se konkrétní text nebo fráze skládají z více odstavců, oddílů nebo stránek. Některé z metaznaků patří **&p** pro průlom odstavce, **&b** pro přestávku v sekci, **&m** na pagerový zlom a **&l** na přestávku.

{{% alert color="primary" %}}

Všimněte si, že metacharakter **&&** rovná se **&**. Například, pokud potřebujete najít text pro **&p** to není odstavec přestávka, pak můžete použít **&&p**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit text zlomem odstavce a stránky:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Najít a nahradit řetězec v záhlaví/footer dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Text můžete najít a nahradit v části záhlaví / nohy dokumentu Word pomocí [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) třída.

Následující příklad kódu ukazuje, jak nahradit text sekce záhlaví ve vašem dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím výměny řetězce záhlaví:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

A po aplikaci výměny řetězce hlavičky:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Příklad kódu pro nahrazení textu zápatí ve vašem dokumentu je velmi podobný příkladu předchozího záhlaví kódu. Jediné, co musíte udělat, je vyměnit tyto dva řádky:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

S:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Můžete si všimnout rozdílu mezi dokumentem před použitím zápatí nahrazení řetězce:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

A po aplikaci zápatí nahrazení řetězce:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignorovat text během hledání a nahrazení {#ignore-text-during-find-and-replace}

Při aplikaci hledání a nahrazení operace můžete ignorovat některé segmenty textu. Některé části textu tedy mohou být vyloučeny z vyhledávání a nález a výměna lze použít pouze na zbývající části.

Aspose.Words poskytuje mnoho najít a nahradit vlastnosti pro ignorování textu, jako je [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), a [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Následující příklad kódu ukazuje, jak ignorovat text uvnitř odstranění revizí:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Přizpůsobit hledání a nahrazení operace {#customize-find-and-replace-operation}

Aspose.Words poskytuje mnoho různých vlastností najít a nahradit text, jako je použití zvláštní formát s [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) a [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) vlastnosti s použitím substitucí v náhradních vzorech s [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) majetek a další.

Následující příklad kódu ukazuje, jak zdůraznit konkrétní slovo ve vašem dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
