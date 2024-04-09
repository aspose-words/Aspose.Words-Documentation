---
title: Práce s vlastnostmi dokumentu C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s vlastnostmi dokumentu
linktitle: Práce s vlastnostmi dokumentu
description: "Aspose.Words místo .NET umožňuje ukládat některé užitečné informace o vašem dokumentu, jako je API a číslo verze nebo autorizované Date, ve vestavěných nebo zakázkových vlastnostech dokumentů pomocí C#."
type: docs
weight: 10
url: /cs/net/work-with-document-properties/
---

Vlastnosti dokumentu umožňují uložení některých užitečných informací o vašem dokumentu. Tyto vlastnosti lze rozdělit do dvou skupin:

* Systém nebo zabudované, které obsahují hodnoty jako název dokumentu, jméno autora, statistiky dokumentů a další.
* User-defined or custom, provided as name-value pair where the user can defined both the name and value.

Je užitečné znát informace o API a číslo verze je přímo zapsáno do výstupních dokumentů. Například po převodu dokumentu na PDF, Aspose.Words vyplní "Aplikace" pole s "Aspose.Words"a pole "PDF Producer" s "Aspose.Words místo .NET YY.M.N., kde *YY.M.N* je verze Aspose.Words používaný pro konverzi. Další podrobnosti viz [Generátor nebo jméno výrobce Zahrnuto ve výstupních dokumentech](/words/cs/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Všimněte si, že **nemůže režírovat** Aspose.Words změnit nebo odstranit tyto informace z výstupních dokumentů.

{{% /alert %}}

## Vlastnosti přístupového dokumentu

Přístup k vlastnostem dokumentů v Aspose.Words použití:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) k získání vestavěných nemovitostí.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) získat vlastní vlastnosti.

**BuiltInDocumentProperties** a **CustomDocumentProperties** jsou sbírky [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) objekty. Tyto objekty lze získat prostřednictvím vlastnosti indexeru jménem nebo indexem.

**BuiltInDocumentProperties** navíc poskytuje přístup k vlastnostem dokumentů prostřednictvím sady zadaných vlastností, které vracejí hodnoty příslušného typu. **CustomDocumentProperties** umožňuje přidat nebo odstranit vlastnosti dokumentu z dokumentu.

• [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) třída umožňuje získat jméno, hodnotu a typ vlastnosti dokumentu. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) vrací objekt, ale existuje soubor metod, které vám umožní získat hodnotu vlastnosti převedenou na určitý typ. Poté, co zjistíte, jaký typ nemovitosti je, můžete použít jeden z **DocumentProperty.ToXXX** metody, například **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) a **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), získat hodnotu příslušného typu.

Následující příklad kódu ukazuje, jak vyčíslit všechny vestavěné a vlastní vlastnosti v dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, můžete přistupovat k vlastnostem dokumentů pomocí menu → Vlastnosti → Vlastnosti.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Přidat nebo odstranit vlastnosti dokumentu

Nelze přidat nebo odstranit vestavěné vlastnosti dokumentu pomocí Aspose.Words. Můžete pouze měnit nebo aktualizovat jejich hodnoty.

Přidání vlastních vlastností dokumentu s Aspose.Words, použijte [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) způsob předání nového názvu nemovitosti a hodnoty příslušného typu. Metoda vrací nově vytvořené **DocumentProperty** objekt.

Pro odstranění vlastních vlastností použijte [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) způsob předání názvu nemovitosti k odstranění nebo [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) způsob odstranění nemovitosti indexem. Můžete také odstranit všechny vlastnosti pomocí [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) metoda.

Následující příklad kódu ověřuje, zda vlastní vlastnost s daným jménem existuje v dokumentu a přidává několik dalších vlastních vlastností dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak odstranit vlastní vlastnost dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Aktualizace Vestavěných vlastností dokumentu

Aspose.Words nemá automaticky aktualizovat vlastnosti dokumentu, jako Microsoft Word provádí s některými vlastnostmi, ale poskytuje metodu pro aktualizaci některých statistických vestavěných dokumentů vlastnosti. Zavolejte [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) metoda přepočítání a aktualizace těchto vlastností:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Vytvořit nový vlastní majetek spojený s obsahem

Aspose.Words poskytuje [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) způsob, jak vytvořit nový vlastní dokument vlastnosti spojené s obsahem. Tato vlastnost vrací nově vytvořený objekt nebonuluje, pokud [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) je neplatný.

Následující příklad kódu ukazuje, jak nastavit odkaz na vlastní vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Získat proměnné dokumentu

Můžete získat soubor proměnných dokumentů pomocí [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) majetek. Variabilní názvy a hodnoty jsou řetězce.

Následující příklad kódu ukazuje, jak vyčíslit proměnné dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Odstranit osobní údaje z dokumentu

Chcete-li sdílet dokument Word s jinými lidmi, možná budete chtít odstranit osobní údaje, jako je jméno autora a společnost. K tomu použijte [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) vlastnost nastavit vlajku s uvedením, že Microsoft Word odstraní všechny uživatelské informace z komentářů, revizí a vlastností dokumentů při uložení dokumentu.

Následující příklad kódu ukazuje, jak odstranit osobní údaje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Nastavení této volby neodstraní osobní údaje při zpracování dokumentu Aspose.Words a postihuje pouze Microsoft Word chování.

{{% /alert %}}
