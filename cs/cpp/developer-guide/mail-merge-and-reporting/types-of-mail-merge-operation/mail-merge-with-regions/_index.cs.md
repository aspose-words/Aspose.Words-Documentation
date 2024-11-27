---
title: Mail Merge s regiony v C++
second_title: Aspose.Words pro C++
articleTitle: Mail Merge s regiony
linktitle: Mail Merge s regiony
type: docs
description: "Vytvořte v šabloně různé oblasti, abyste měli speciální oblasti, které můžete jednoduše vyplnit svými daty. Pokud chcete vložit tabulky, použijte Mail Merge s regiony, řádky s opakujícími se daty, aby vaše dokumenty dynamicky rostly."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /cs/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

V šabloně můžete vytvořit různé oblasti, abyste měli speciální oblasti, které můžete jednoduše vyplnit svými daty. Pokud chcete vložit tabulky, řádky s opakujícími se daty, použijte Mail Merge s regiony, aby vaše dokumenty dynamicky rostly zadáním těchto oblastí v šabloně.

Můžete vytvářet vnořené (podřízené) regiony i slučovat regiony. Hlavní výhodou použití tohoto typu je dynamicky zvětšovat části uvnitř dokumentu. Další podrobnosti naleznete v dalším článku "vnořené Mail Merge s regiony".

{{% alert color="primary" %}}

Informace o oblasti Mail Merge lze získat pomocí třídy [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Jak spustit Mail Merge s regiony

Oblast Mail Merge je specifická část uvnitř dokumentu, která má počáteční a koncový bod. Oba body jsou reprezentovány jako pole Mail Merge, která mají specifické názvy *"TableStart:XXX"* a *"TableEnd:XXX"*. Veškerý obsah, který je zahrnut v oblasti Mail Merge, se automaticky opakuje pro každý záznam ve zdroji dat.

Aspose.Words umožňuje spustit Mail Merge s regiony pomocí jedné z metod [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/), které přijímají vlastní zdroj dat [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/).

Následující příklad kódu ukazuje, jak spustit Mail Merge s regiony z databáze sqlite pomocí [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Rozdíl mezi dokumentem si můžete všimnout před spuštěním Mail Merge s regiony:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

A po provedení Mail Merge s regiony:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Omezení Mail Merge s regiony

Při provádění Mail Merge s regiony je třeba vzít v úvahu několik důležitých bodů:

* Počáteční bod *TableStart:Orders* a koncový bod *TableEnd:Orders* musí být ve stejném řádku nebo buňce. Pokud například spustíte oblast sloučení v buňce tabulky, musíte oblast sloučení ukončit ve stejném řádku jako první buňka.
  Název sloučeného pole se musí shodovat s názvem sloupce ve vašem DataTable. Pokud nezadáte mapovaná pole, Mail Merge s regiony nebude úspěšné pro žádné slučovací pole, které má jiný název než název sloupce.
* Aspose.Words pro C++ podporuje pouze zdroje dat založené na [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) a [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). Na rozdíl od .NET a Java nemá C++ obecně přijímanou multiplatformní API pro práci s databázemi (jako ADODB, ODBC nebo JDBC). Abyste mohli pracovat s konkrétním zdrojem dat,musíte implementovat rozhraní [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) nebo [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Pokud je jedno z těchto pravidel porušeno, získáte neočekávané výsledky nebo může být vyvolána výjimka.

{{% alert color="primary" %}}

Pokud nepoužíváte oblasti Mail Merge, bude to podobné Microsoft Word mail merge a celý obsah dokumentu se bude opakovat pro každý záznam ve zdroji dat.

{{% /alert %}}

