---
title: Jednoduchá operace Mail Merge v C++
second_title: Aspose.Words pro C++
articleTitle: Jednoduchá Operace Mail Merge
linktitle: Jednoduchá Operace Mail Merge
type: docs
description: "Jednoduchý Mail Merge se používá k vyplnění polí Mail Merge uvnitř šablony požadovanými daty ze zdroje dat – je podobný klasickému Mail Merge v Microsoft Word. Přidejte do šablony jedno nebo více polí sloučení a poté proveďte jednoduchou operaci Mail Merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /cs/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Jednoduchý Mail Merge se používá k vyplnění polí Mail Merge uvnitř šablony požadovanými daty ze zdroje dat (reprezentace jedné tabulky). Je to tedy podobné klasice Mail Merge v Microsoft Word.

Do šablony můžete přidat jedno nebo více polí sloučení a poté provést jednoduchou operaci Mail Merge. Doporučujeme jej použít, pokud vaše šablona neobsahuje žádné slučovací oblasti.

Hlavním omezením použití tohoto typu je, že celý obsah dokumentu se bude opakovat pro každý záznam ve zdroji dat.

## Jak provést jednoduchou operaci Mail Merge

Jakmile je vaše šablona připravena, můžete začít provádět jednoduchou operaci Mail Merge. Aspose.Words umožňuje provést jednoduchou operaci Mail Merge pomocí různých metod [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/), které jako zdroj dat přijímají různé datové objekty.

Následující příklad kódu ukazuje, jak provést jednoduchou operaci Mail Merge pomocí jedné z metod [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Rozdíl mezi dokumentem si můžete všimnout před provedením jednoduchého mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

A po provedení jednoduchého mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Jak vytvořit více sloučených dokumentů

V Aspose.Words vyplní standardní operace Mail Merge pouze jeden dokument s obsahem ze zdroje dat. Takže budete muset provést operaci Mail Merge mnohokrát, abyste vytvořili několik sloučených dokumentů jako výstup.

Následující příklad kódu ukazuje, jak vygenerovat několik sloučených dokumentů během operace Mail Merge s [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
