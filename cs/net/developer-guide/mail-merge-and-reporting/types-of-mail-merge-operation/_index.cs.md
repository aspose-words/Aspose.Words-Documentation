---
title: Typy operací Mail Merge v C#
second_title: Aspose.Words pro .NET
articleTitle: Typy operací Mail Merge
linktitle: Typy operací Mail Merge
type: docs
description: "Proveďte dva různé typy operací Mail Merge: jednoduché Mail Merge a Mail Merge s oblastmi pomocí C#. Simple Mail Merge opakuje celý dokument na každý záznam zdroje dat, zatímco Mail Merge s regiony opakuje pouze určené oblasti na záznam."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /cs/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Hlavní myšlenkou Mail Merge je automatické vytvoření dokumentu nebo více dokumentů na základě vaší šablony a dat načtených ze zdroje dat. Aspose.Words umožňuje provádět dva různé typy operací Mail Merge: Jednoduché Mail Merge a Mail Merge s regiony.

Nejběžnějším příkladem použití jednoduchého Mail Merge je, když chcete odeslat dokument pro různé klienty zahrnutím jejich jmen na začátek dokumentu. Chcete-li to provést, musíte v šabloně vytvořit slučovací pole, například *First Name* a *Last Name*, a poté je vyplnit daty ze zdroje dat. Zatímco nejběžnějším příkladem použití Mail Merge s regiony je, když chcete odeslat dokument, který obsahuje konkrétní objednávky se seznamem všech položek v každé objednávce. Chcete – li to provést, budete muset vytvořit slučovací oblasti uvnitř vaší šablony-vlastní oblast pro každou objednávku, abyste ji mohli vyplnit všemi požadovanými údaji pro položky.

Hlavní rozdíl mezi oběma operacemi sloučení spočívá v tom, že jednoduché Mail Merge (bez oblastí) opakuje celý dokument na každý záznam zdroje dat, zatímco Mail Merge s oblastmi opakuje pouze určené oblasti na záznam. Jednoduchou operaci Mail Merge si můžete představit jako konkrétní případ sloučení s regiony, kde jedinou oblastí je celý dokument.

{{% alert color="primary" %}}

Třída [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) představuje funkci Mail Merge. S jeho vlastnostmi můžete přizpůsobit požadované chování před provedením operace Mail Merge.

{{% /alert %}}

## Jednoduchá Operace Mail Merge {#simple-mail-merge-operation}

Jednoduchý Mail Merge se používá k vyplnění polí Mail Merge uvnitř šablony požadovanými daty ze zdroje dat (reprezentace jedné tabulky). Je to tedy podobné klasice Mail Merge v Microsoft Word.

Do šablony můžete přidat jedno nebo více polí sloučení a poté provést jednoduchou operaci Mail Merge. Doporučujeme jej použít, pokud vaše šablona neobsahuje žádné slučovací oblasti.

Hlavním omezením použití tohoto typu je, že celý obsah dokumentu se bude opakovat pro každý záznam ve zdroji dat.

### Jak provést jednoduchou operaci Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Jakmile je vaše šablona připravena, můžete začít provádět jednoduchou operaci Mail Merge. Aspose.Words umožňuje provést jednoduchou operaci Mail Merge pomocí různých [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/), které jako zdroj dat přijímají různé datové objekty.

Následující příklad kódu ukazuje, jak provést jednoduchou operaci Mail Merge pomocí jedné z metod [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Rozdíl mezi dokumentem si můžete všimnout před provedením jednoduchého mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

A po provedení jednoduchého mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Jak vytvořit více sloučených dokumentů

V Aspose.Words vyplní standardní operace Mail Merge pouze jeden dokument s obsahem ze zdroje dat. Takže budete muset provést operaci Mail Merge vícekrát, abyste vytvořili více sloučených dokumentů jako výstup.

Následující příklad kódu ukazuje, jak generovat více sloučených dokumentů během operace Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge s regiony

V šabloně můžete vytvořit různé oblasti, abyste měli speciální oblasti, které můžete jednoduše vyplnit svými daty. Pokud chcete vložit tabulky, řádky s opakujícími se daty, použijte Mail Merge s regiony, aby vaše dokumenty dynamicky rostly zadáním těchto oblastí v šabloně.

Můžete vytvářet vnořené (podřízené) regiony i slučovat regiony. Hlavní výhodou použití tohoto typu je dynamicky zvětšovat části uvnitř dokumentu. Další podrobnosti naleznete v dalším článku "vnořené Mail Merge s regiony".

{{% alert color="primary" %}}

Informace o oblasti Mail Merge lze získat pomocí třídy [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### Jak spustit Mail Merge s regiony

Oblast Mail Merge je specifická část uvnitř dokumentu, která má počáteční a koncový bod. Oba body jsou reprezentovány jako pole Mail Merge, která mají specifické názvy *"TableStart:XXX"* a *"TableEnd:XXX"*. Veškerý obsah, který je zahrnut v oblasti Mail Merge, se automaticky opakuje pro každý záznam ve zdroji dat.

Aspose.Words umožňuje spustit Mail Merge s oblastmi pomocí různých [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/), které přijímají různé datové objekty jako zdroj dat.

Jako první krok musíme vytvořit `DataSet`, abychom jej později předali jako vstupní parametr metodě `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Následující příklad kódu ukazuje, jak provést Mail Merge s regiony pomocí metody [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Rozdíl mezi dokumentem si můžete všimnout před spuštěním Mail Merge s regiony:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

A po provedení Mail Merge s regiony:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Omezení Mail Merge s regiony

Při provádění Mail Merge s regiony je třeba vzít v úvahu několik důležitých bodů:

* Počáteční bod *TableStart:Orders* a koncový bod *TableEnd:Orders* musí být ve stejném řádku nebo buňce. Pokud například spustíte oblast sloučení v buňce tabulky, musíte oblast sloučení ukončit ve stejném řádku jako první buňka.
* Název sloučeného pole se musí shodovat s názvem sloupce ve vašem DataTable. Pokud jste nezadali mapovaná pole, Mail Merge s oblastmi nebude úspěšné pro žádné slučovací pole, které má jiný název než název sloupce.

Pokud je jedno z těchto pravidel porušeno, získáte neočekávané výsledky nebo může být vyvolána výjimka.

{{% alert color="primary" %}}

Pokud nepoužíváte oblasti Mail Merge, bude to podobné Microsoft Word mail merge a celý obsah dokumentu se bude opakovat pro každý záznam ve zdroji dat.

{{% /alert %}}

