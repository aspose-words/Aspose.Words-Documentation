---
title: Mail Merge a hlášení v C++
second_title: Aspose.Words pro C++
articleTitle: Mail Merge a podávání zpráv
linktitle: Mail Merge a podávání zpráv
type: docs
description: "Mail Merge je populární funkce pro rychlé vytváření dokumentů pomocí C++. Aspose.Words pro C++ má standardní funkci Mail Merge a posouvá ji o mnoho kroků dopředu, čímž se stává plnohodnotným řešením pro podávání zpráv, které vám umožní vytvářet ještě složitější dokumenty, jako jsou zprávy, katalogy, zásoby a faktury."
keywords: "how to use Mail Merge c++"
weight: 30
url: /cs/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge je populární funkce pro rychlé a snadné vytváření dokumentů, jako jsou dopisy, štítky a obálky. Aspose.Words umožňuje generovat dokumenty ze šablon s Mail Merge poli.

Pole Mail Merge je pole, které můžete vložit do šablony mail merge a zahrnout do výstupních dokumentů konkrétní hodnoty ze záznamu zdroje dat. Můžete například vložit pole sloučení do šablony e-mailu, aby pozdrav měl spíše křestní jméno příjemce než obecné "Ahoj!". Aspose.Words umístí data z externího zdroje, jako je databáze nebo soubor, do těchto polí a naformátuje je. Výsledný dokument se uloží do zadané složky.

Aspose.Words využívá standardní funkci Mail Merge a posouvá ji o mnoho kroků dopředu, čímž se stává plnohodnotným řešením pro podávání zpráv, které vám umožní vytvářet ještě složitější dokumenty, jako jsou zprávy, katalogy, zásoby a faktury. Zde je několik výhod řešení pro podávání zpráv Aspose.Words:

- Návrh sestav v Microsoft Word pomocí standardních polí Mail Merge
- Definujte oblasti v dokumentu, které rostou, například podrobné řádky pořadí
- Vkládání obrázků během mail merge
- Spusťte libovolnou vlastní logiku, Ovládejte formátování nebo vkládejte složitý obsah pomocí obslužných rutin událostí Mail Merge
- Vyplňte dokumenty daty z jakéhokoli typu zdroje dat

{{% alert color="primary" %}}

Obor názvů [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) se používá pro práci se slučováním pošty.

{{% /alert %}}

## Mechanismus a hlavní složky Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words poskytuje možnost načítat dokumenty v různých [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) a poté umožňuje uživatelům provádět operaci Mail Merge.

Načtený dokument obvykle umožňuje ukládat slučovací pole, například dokument ve formátu DOCX. Existují však formáty, které taková pole neukládají, například TXT. Pokud Aspose.Words podporuje načítání takových formátů souborů, můžete přidat slučovací pole přímo do modelu dokumentu, uložit dokument pohodlným [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) a provést operaci Mail Merge.

Operace Mail Merge sloučí vaše *mail merge template* a vaše *data source* a vygeneruje jednotlivé *merged documents*.

## Co je Mail Merge šablona {#what-is-a-mail-merge-template}

Cílem použití operace mail merge pomocí šablony sloučení je zjednodušit proces vytváření dokumentu.

Existuje několik způsobů, jak vytvořit a navrhnout šablonu sloučení. Můžete použít Microsoft Word a šablona sloučení nemusí být šablonou Microsoft Word, to je dokument ve formátu DOT nebo DOTX, může to být běžný dokument ve formátu DOC nebo DOCX. Do této šablony musíte vložit některá speciální pole s názvem sloučit pole na místech, kam chcete později vložit data ze zdroje dat. Nebo můžete programově vytvořit šablonu sloučení pomocí třídy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Šablona sloučení obsahuje hlavní text, který by měl být stejný ve všech výstupních dokumentech po provedení operace Mail Merge. Pro šablonu můžete použít libovolný formát, pokud do ní můžete přidat slučovací pole. Všechna pole sloučení ve vaší šabloně budou vyplněna ze zdroje dat během operace Mail Merge.


## Vidět

- [Práce s Mail Merge šablonami v Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
