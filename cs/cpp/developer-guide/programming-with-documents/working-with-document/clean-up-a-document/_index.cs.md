---
title: Vyčistěte dokument v C++
second_title: Aspose.Words pro C++
articleTitle: Vyčistěte dokument
linktitle: Vyčistěte dokument
description: "Odstraňte nepoužité nebo duplicitní informace, abyste snížili velikost výstupu a dobu zpracování pomocí C++. Odstraňte nepoužívané styly, nepoužívané předdefinované styly, duplicitní styly nebo nepoužívané seznamy."
type: docs
weight: 30
url: /cs/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Někdy možná budete muset odstranit nepoužívané nebo duplicitní informace, abyste snížili velikost výstupního dokumentu a dobu zpracování.

I když můžete nepoužívaná data, jako jsou styly nebo seznamy nebo duplicitní informace, najít a odstranit ručně, bude mnohem pohodlnější to provést pomocí funkcí a funkcí poskytovaných Aspose.Words.

Třída [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) umožňuje zadat možnosti čištění dokumentů. Chcete-li z dokumentu odstranit duplicitní styly nebo pouze nepoužívané styly nebo seznamy, můžete použít metodu [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Odebrání nepoužitých informací z dokumentu

Vlastnosti [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) a [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) můžete použít k detekci a odebrání stylů, které jsou označeny jako"nepoužité".

Vlastnost [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) můžete použít k detekci a odebrání seznamů a definic seznamů, které jsou označeny jako "nepoužité".

Následující příklad kódu ukazuje, jak z dokumentu odebrat pouze nepoužívané styly:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Odstranění duplicitních informací z dokumentu

Vlastnost [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) můžete také použít k nahrazení všech duplicitních stylů původním a odstranění duplikátů z dokumentu.

Následující příklad kódu ukazuje, jak odstranit duplicitní styly z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
