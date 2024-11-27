---
title: Klonování dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Klonování dokumentu
linktitle: Klonování dokumentu
type: docs
description: "Klonujte dokument, abyste získali jeho identickou kopii pomocí C++. Při vytváření kopie se klonují uzly a vlastnosti původního dokumentu."
weight: 70
url: /cs/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonování dokumentu je proces vytváření identické kopie původního dokumentu, který může zlepšit výkon a ušetřit vás před potenciálními úniky paměti.

Tento článek vysvětlí hlavní případy použití klonování dokumentu a jak vytvořit klon dokumentu pomocí Aspose.Words.

## Operace s Klonovacími dokumenty

Operace klonování umožňuje zrychlit proces vytváření dokumentů, protože nebudete muset pokaždé načítat a analyzovat dokument ze souboru.

Po vytvoření klonu dokumentu jej budete moci upravit a provádět s ním různé operace, například jej porovnat s původním dokumentem, připojit nebo vložit do jiného dokumentu. Klonované prvky nebo jejich obsah můžete také upravit před jejich vložením do jiného dokumentu.

## Vytvoření klonu dokumentu

Aspose.Words umožňuje klonovat dokument pomocí metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/), která provede hlubokou kopii dokumentu a vrátí jej. Jinými slovy, získá úplnou kopii DOM. Metoda `Clone` urychluje generování dokumentů a k získání kopie dokumentu potřebujete pouze jeden řádek kódu.

Klonování vytvoří nový dokument se stejným obsahem jako originál, ale s jedinečnou kopií každého z původních dokumentů [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). Operaci klonování můžete také použít na uzel dokumentu pomocí metody node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), která umožňuje duplikovat uzly složeného dokumentu s podřízenými uzly a bez nich.

{{% alert color="primary" %}}

Všimněte si, že při použití metody klonování budou klonovány všechny vlastnosti dokumentu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak klonovat dokument a vytvořit duplikát oddílu v tomto dokumentu:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
