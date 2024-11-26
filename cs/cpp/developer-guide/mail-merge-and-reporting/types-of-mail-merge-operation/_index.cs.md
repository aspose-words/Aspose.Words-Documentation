---
title: Typy operací Mail Merge v C++
second_title: Aspose.Words pro C++
articleTitle: Typy operací Mail Merge
linktitle: Typy operací Mail Merge
type: docs
description: "Proveďte dva různé typy operací Mail Merge: jednoduché Mail Merge a Mail Merge s oblastmi pomocí C++. Simple Mail Merge opakuje celý dokument na každý záznam zdroje dat, zatímco Mail Merge s regiony opakuje pouze určené oblasti na záznam."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /cs/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

Hlavní myšlenkou Mail Merge je automatické vytvoření dokumentu nebo několika dokumentů na základě vaší šablony a dat načtených ze zdroje dat. Aspose.Words umožňuje provádět dva různé typy operací Mail Merge: Jednoduché Mail Merge a Mail Merge s regiony.

Nejběžnějším příkladem použití jednoduchého Mail Merge je, když chcete odeslat dokument pro různé klienty zahrnutím jejich jmen na začátek dokumentu. Chcete-li to provést, musíte v šabloně vytvořit slučovací pole, například *First Name* a *Last Name*, a poté je vyplnit daty ze zdroje dat. Zatímco nejběžnějším příkladem použití Mail Merge s regiony je, když chcete odeslat dokument, který obsahuje konkrétní objednávky se seznamem všech položek v každé objednávce. Chcete – li to provést, budete muset vytvořit slučovací oblasti uvnitř vaší šablony-vlastní oblast pro každou objednávku, abyste ji mohli vyplnit všemi požadovanými údaji pro položky.

Hlavní rozdíl mezi oběma operacemi sloučení spočívá v tom, že jednoduché Mail Merge (bez oblastí) opakuje celý dokument na každý záznam zdroje dat, zatímco Mail Merge s oblastmi opakuje pouze určené oblasti na záznam. Jednoduchou operaci Mail Merge si můžete představit jako konkrétní případ sloučení s regiony, kde jedinou oblastí je celý dokument.

{{% alert color="primary" %}}

Třída [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) představuje funkci Mail Merge. S jeho vlastnostmi můžete přizpůsobit požadované chování před provedením operace Mail Merge.

{{% /alert %}}

