---
title: Klonovat dokument v Java
second_title: Aspose.Words místo Java
articleTitle: Klonovat dokument
linktitle: Klonovat dokument
type: docs
description: "Klonujte dokument, abyste získali jeho identickou kopii. Při vytváření kopie, uzly a vlastnosti původního dokumentu jsou klonovány pomocí Java."
weight: 70
url: /cs/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonování dokumentu je proces vytvoření stejné kopie původního dokumentu, který může zlepšit výkon a ušetřit vás před potenciálními úniky paměti.

Tento článek vysvětlí hlavní případy použití klonování dokumentu a způsob vytvoření klonu dokumentu pomocí Aspose.Words.

## Operace s klonovacími dokumenty

Klonová operace umožňuje rychlejší vytváření dokumentů, protože nebudete muset načíst a pokaždé analyzovat dokument ze souboru.

Po vytvoření klonu vašeho dokumentu jej budete moci upravit a provádět na něm různé operace, například jej porovnat s původním dokumentem, doplnit nebo vložit do jiného dokumentu. Před vložením do jiného dokumentu můžete také upravit klonované prvky nebo jejich obsah.

## Vytvoření klonu dokumentu

Aspose.Words umožňuje naklonovat dokument pomocí [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) metoda, která provádí hlubokou kopii dokumentu a vrací jej. Jinými slovy, dostane plnou kopii DOM. The `Clone` metoda urychluje generování dokumentů a k získání kopie dokumentu potřebujete pouze jeden řádek kódu.

Klonování vytváří nový dokument se stejným obsahem jako originál, ale s jedinečnou kopií každého z původních dokumentů [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Můžete také použít klonovou operaci na uzel dokumentu pomocí uzel [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metoda, která umožňuje duplikovat kompozitní dokumentové uzly s a bez jejich dětských uzlů.

{{% alert color="primary" %}}

Všimněte si, že při použití metody klonování budou naklonovány všechny vlastnosti dokumentů.

{{% /alert %}}

Následující příklad kódu ukazuje, jak naklonovat dokument a vytvořit duplikát oddílu v tomto dokumentu:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
