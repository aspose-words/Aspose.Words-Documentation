---
title: Porovnat dokumenty v Java
second_title: Aspose.Words místo Java
articleTitle: Porovnat dokumenty
linktitle: Porovnat dokumenty
type: docs
description: "Porovnejte dva dokumenty v podporovaných formátech a zobrazí změny obsahu. Při porovnání můžete použít pokročilé možnosti Java."
weight: 60
url: /cs/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Porovnání dokumentů je proces, který identifikuje změny mezi dvěma dokumenty a obsahuje změny jako revize. Tento proces porovnává všechny dva dokumenty, včetně verzí jednoho konkrétního dokumentu, pak se změny mezi oběma dokumenty zobrazí jako revize v prvním dokumentu.

Porovnávací metody je dosaženo porovnáním slov na úrovni znaku nebo na úrovni slova. Pokud slovo obsahuje změnu alespoň jednoho znaku, ve výsledku se rozdíl zobrazí jako změna celého slova, nikoli znaku. Tento proces srovnání je obvyklým úkolem v právních a finančních odvětvích.

Místo manuálního vyhledávání rozdílů mezi dokumenty nebo mezi různými verzemi můžete použít Aspose.Words pro porovnání dokumentů a získání změn obsahu ve formátování, hlavičky/noha, tabulkách a dalších.

Tento článek vysvětluje, jak porovnat dokumenty a jak určit pokročilé srovnávací vlastnosti.

{{% alert color="primary" %}}

**Zkuste online**

Můžete porovnat dva dokumenty on-line pomocí [Správa dokumentů online](https://products.aspose.app/words/comparison) Nástroj.

Všimněte si, že metoda srovnání, popsaná níže, se používá v tomto nástroji k zajištění stejných výsledků. Takže dostanete stejné výsledky i pomocí nástroje online srovnání nebo pomocí metody srovnání v Aspose.Words.

{{% /alert %}}

## Omezení a podporované formáty souborů {#limitations-and-supported-file-formats}

Porovnání dokumentů je velmi složité. Existují různé části kombinace obsahu, které je třeba analyzovat k rozpoznání všech rozdílů. Důvodem této složitosti je, že Aspose.Words Cílem je získat stejné výsledky srovnání jako Microsoft Word srovnávací algoritmus.

Obecné omezení pro dva dokumenty jsou porovnávány je, že nesmí mít revize před voláním metody srovnání, protože toto omezení existuje v Microsoft Word.

{{% alert color="primary" %}}

Všimněte si, že můžete porovnat jakékoliv dva dokumenty v rámci [Podporované formuláře dokumentů](/words/cs/java/supported-document-formats/). V podstatě můžete porovnávat objekty dokumentů a dokonce i vy můžete tyto objekty vytvořit od nuly, aniž byste měli konkrétní formát.

{{% /alert %}}

## Porovnat dva dokumenty {#compare-two-documents}

Když porovnáte dokumenty, objeví se rozdíly ve druhém dokumentu od prvního jako revize s prvním dokumentem. Při změně dokumentu bude mít každá editace svou vlastní revizi po spuštění metody porovnání.

Aspose.Words umožňuje identifikovat rozdíly v dokumentech pomocí [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) metoda Microsoft Word Porovnat funkci dokumentu. Umožňuje vám kontrolovat dokumenty nebo verze dokumentů pro nalezení rozdílů a změn, včetně formátování úprav, jako jsou změny písma, změny odstupu, přidání slov a odstavců.

V důsledku srovnání mohou být dokumenty určeny jako rovnocenné nebo rovnocenné. Pojem "rovné dokumenty" znamená, že metoda srovnání není schopna představovat změny jako revize. To znamená, že text i formátování textu jsou stejné. Ale mezi dokumenty mohou být i jiné rozdíly. Například, Microsoft Word podporuje pouze formát revize pro styly, a nemůžete reprezentovat styl vložení / odstranění. Takže dokumenty mohou mít jiný soubor stylů a **Compare** metoda stále nevytváří žádné revize.

Následující příklad kódu ukazuje, jak ověřit, zda jsou dva dokumenty stejné nebo ne:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Následující příklad kódu ukazuje, jak jednoduše použít `Compare` metoda ke dvěma dokumentům:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Upřesnit možnosti pokročilého srovnání {#specify-advanced-comparing-properties}

Existuje mnoho různých vlastností [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) třída, kterou můžete použít, pokud chcete porovnat dokumenty.

Například, Aspose.Words umožňuje ignorovat změny provedené během porovnání některých typů objektů v rámci původního dokumentu. Pro typ objektu si můžete vybrat vhodnou vlastnost, například [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), a jiní tím, že je postaví na "true".

Kromě toho Aspose.Words poskytuje [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) vlastnost, se kterou můžete určit, zda sledovat změny podle charakteru nebo slov.

Další společnou vlastností je volba, ve které dokument ukázat změny srovnání. Například, v okně "Porovnat dokumenty dialog" Microsoft Word má možnost Zobrazit změny v?? Aspose.Words poskytuje [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) majetek, který slouží tomuto účelu.

Následující příklad kódu ukazuje, jak nastavit pokročilé porovnávací vlastnosti:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
