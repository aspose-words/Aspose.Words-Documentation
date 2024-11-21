---
title: Práce s vlastnostmi dokumentu
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s vlastnostmi dokumentu
linktitle: Práce s vlastnostmi dokumentu
description: "Aspose.Words místo Python umožňuje ukládat některé užitečné informace o vašem dokumentu, jako je API a číslo verze nebo autorizované Date, ve vestavěných nebo vlastních vlastnostech dokumentů."
type: docs
weight: 10
url: /cs/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Vlastnosti dokumentu umožňují uložení některých užitečných informací o vašem dokumentu. Tyto vlastnosti lze rozdělit do dvou skupin:

* Systém nebo zabudované, které obsahují hodnoty jako název dokumentu, jméno autora, statistiky dokumentů a další.
* User-defined or custom, provided as name-value pair where the user can defined both the name and value.

Je užitečné znát informace o API a číslo verze je přímo zapsáno do výstupních dokumentů. Například po převodu dokumentu na PDF, Aspose.Words vyplní "Aplikace" pole s "Aspose.Words"a pole "PDF Producer" s "Aspose.Words místo .NET YY.M.N., kde *YY.M.N* je verze Aspose.Words používaný pro konverzi. Další podrobnosti viz [Generátor nebo jméno výrobce Zahrnuto ve výstupních dokumentech](/words/cs/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Všimněte si, že **nemůže režírovat** Aspose.Words změnit nebo odstranit tyto informace z výstupních dokumentů.

{{% /alert %}}

## Vlastnosti přístupového dokumentu

Přístup k vlastnostem dokumentů v Aspose.Words použití:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) k získání vestavěných nemovitostí.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) získat vlastní vlastnosti.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) a [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) jsou sbírky [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) objekty. Tyto objekty lze získat prostřednictvím vlastnosti indexeru jménem nebo indexem.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) navíc poskytuje přístup k vlastnostem dokumentů prostřednictvím sady zadaných vlastností, které vracejí hodnoty příslušného typu. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) umožňuje přidat nebo odstranit vlastnosti dokumentu z dokumentu.

• [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) třída umožňuje získat jméno, hodnotu a typ vlastnosti dokumentu. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) vrací objekt, ale existuje soubor metod, které vám umožní získat hodnotu vlastnosti převedenou na určitý typ. Poté, co zjistíte, jaký typ nemovitosti je, můžete použít jeden z **DokumentProperty.to_XXX** metody, například **DokumentProperty.\_\_str\_\_** a [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), získat hodnotu příslušného typu.

Následující příklad kódu ukazuje, jak vyčíslit všechny vestavěné a vlastní vlastnosti v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, vlastnosti dokumentu můžete získat pomocí menu "File → Properties."

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Přidat nebo odstranit vlastnosti dokumentu

Nelze přidat nebo odstranit vestavěné vlastnosti dokumentu pomocí Aspose.Words. Můžete pouze měnit nebo aktualizovat jejich hodnoty.

Přidání vlastních vlastností dokumentu s Aspose.Words, použijte [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) způsob předání nového názvu nemovitosti a hodnoty příslušného typu. Metoda vrací nově vytvořené [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) objekt.

Pro odstranění vlastních vlastností použijte [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) způsob předání názvu nemovitosti k odstranění nebo [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) způsob odstranění nemovitosti indexem. Můžete také odstranit všechny vlastnosti pomocí [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) metoda.

Následující příklad kódu ověřuje, zda vlastní vlastnost s daným jménem existuje v dokumentu a přidává několik dalších vlastních vlastností dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak odstranit vlastní vlastnost dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Aktualizace Vestavěných vlastností dokumentu

Aspose.Words nemá automaticky aktualizovat vlastnosti dokumentu, jako Microsoft Word provádí s některými vlastnostmi, ale poskytuje metodu pro aktualizaci některých statistických vestavěných dokumentů vlastnosti. Zavolejte [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) metoda přepočítání a aktualizace těchto vlastností:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Vytvořit nový vlastní majetek spojený s obsahem

Aspose.Words poskytuje [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) způsob, jak vytvořit nový vlastní dokument vlastnosti spojené s obsahem. Tato vlastnost vrací nově vytvořený objekt nebonuluje, pokud **odkaz_zdroj** je neplatný.

Následující příklad kódu ukazuje, jak nastavit odkaz na vlastní vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Získat proměnné dokumentu

Můžete získat soubor proměnných dokumentů pomocí [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) majetek. Variabilní názvy a hodnoty jsou řetězce.

Následující příklad kódu ukazuje, jak přidat a přistupovat k proměnné dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Odstranit osobní údaje z dokumentu

Chcete-li sdílet dokument Word s jinými lidmi, možná budete chtít odstranit osobní údaje, jako je jméno autora a společnost. K tomu použijte [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) vlastnost nastavit vlajku s uvedením, že Microsoft Word odstraní všechny uživatelské informace z komentářů, revizí a vlastností dokumentů při uložení dokumentu.

Následující příklad kódu ukazuje, jak odstranit osobní údaje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Nastavení této volby neodstraní osobní údaje při zpracování dokumentu Aspose.Words a postihuje pouze Microsoft Word chování.

{{% /alert %}}
