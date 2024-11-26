---
title: Práce s vlastnostmi dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s vlastnostmi dokumentu
linktitle: Práce s vlastnostmi dokumentu
description: "Aspose.Words pro C++ umožňuje ukládat některé užitečné informace o dokumentu, například API a Číslo verze nebo autorizované Datum, ve vestavěných nebo vlastních vlastnostech dokumentu."
type: docs
weight: 10
url: /cs/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Vlastnosti dokumentu umožňují ukládat některé užitečné informace o dokumentu. Tyto vlastnosti lze rozdělit do dvou skupin:

* Systém nebo vestavěný, které obsahují hodnoty, jako je název dokumentu, jméno autora, statistiky dokumentů a další.
* Uživatelem definované nebo vlastní, poskytované jako páry název-hodnota, kde uživatel může definovat název i hodnotu.

Je užitečné vědět, že informace o API a čísle verze se zapisují přímo do výstupních dokumentů. Například při převodu dokumentu na PDF vyplní Aspose.Words pole "aplikace" pomocí "Aspose.Words" a pole "PDF Výrobce" pomocí "Aspose.Words pro C++ YY.M. N", kde *YY.M.N* je verze Aspose.Words použitá pro převod. Další podrobnosti viz [Název generátoru nebo výrobce obsažený ve výstupních dokumentech](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Všimněte si, že **cannot direct** Aspose.Words Chcete-li tyto informace změnit nebo odstranit z výstupních dokumentů.

{{% /alert %}}

## Vlastnosti Dokumentu Access

Pro přístup k vlastnostem dokumentu v Aspose.Words použijte:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) pro získání vestavěných vlastností.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) pro získání vlastních vlastností.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Třída [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) umožňuje získat název, hodnotu a typ vlastnosti dokumentu. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) vrací objekt, ale existuje sada metod, které vám umožňují převést hodnotu vlastnosti na konkrétní typ. Poté, co se dozvíte, o jaký typ vlastnosti jde, můžete použít jednu z metod **DocumentProperty.ToXXX**, například **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) a **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), k získání hodnoty příslušného typu.

Následující příklad kódu ukazuje, jak vyjmenovat všechny vestavěné a vlastní vlastnosti v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

V Microsoft Word můžete přistupovat k vlastnostem dokumentu pomocí nabídky "Soubor → Vlastnosti".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Přidání nebo odebrání vlastností dokumentu

Předdefinované Vlastnosti dokumentu nelze přidat ani odebrat pomocí Aspose.Words. Můžete pouze změnit nebo aktualizovat jejich hodnoty.

Chcete-li přidat vlastní vlastnosti dokumentu pomocí Aspose.Words, použijte metodu [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/) a předejte nový název vlastnosti a hodnotu příslušného typu. Metoda vrací nově vytvořený objekt **DocumentProperty**.

Chcete-li odebrat vlastní vlastnosti, použijte metodu [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/) a předejte jí název vlastnosti, kterou chcete odebrat, nebo metodu [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) k odstranění vlastnosti podle indexu. Všechny vlastnosti Můžete také odebrat pomocí metody [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Následující příklad kódu zkontroluje, zda v dokumentu existuje vlastní vlastnost s daným názvem, a přidá několik dalších vlastních vlastností dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Následující příklad kódu ukazuje, jak odebrat vlastní vlastnost dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Aktualizace Vestavěných Vlastností Dokumentu

Aspose.Words automaticky neaktualizuje Vlastnosti dokumentu, jako Microsoft Word u některých vlastností, ale poskytuje metodu aktualizace některých statistických vestavěných vlastností dokumentu. Zavolejte metodu [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) a přepočítejte a aktualizujte následující vlastnosti:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Vytvoření nové vlastní vlastnosti propojené s obsahem

Aspose.Words poskytuje metodu [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) k vytvoření nové vlastnosti vlastního dokumentu propojené s obsahem. Tato vlastnost vrací nově vytvořený objekt Vlastnosti nebo null, pokud je [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) neplatný.

Následující příklad kódu ukazuje, jak nakonfigurovat odkaz na vlastní vlastnost:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Získejte Proměnné Dokumentu

Kolekci proměnných dokumentu můžete získat pomocí vlastnosti [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Názvy a hodnoty proměnných jsou řetězce.

Následující příklad kódu ukazuje, jak vyjmenovat proměnné dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Odstranění osobních údajů z dokumentu

Pokud chcete sdílet dokument Word s jinými lidmi, možná budete chtít odstranit osobní údaje, jako je jméno autora a společnost. Chcete-li to provést, použijte vlastnost [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) k nastavení příznaku označujícího, že Microsoft Word odstraní všechny informace o uživateli z komentářů, revizí a vlastností dokumentu po uložení dokumentu.

Následující příklad kódu ukazuje, jak odstranit osobní údaje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Nastavení této možnosti ve skutečnosti neodstraní osobní údaje při zpracování dokumentu v Aspose.Words a ovlivní pouze chování Microsoft Word.

{{% /alert %}}
