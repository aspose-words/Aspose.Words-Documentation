---
title: Práce s vlastnostmi dokumentu Java
second_title: Aspose.Words místo Java
articleTitle: Práce s vlastnostmi dokumentu
linktitle: Práce s vlastnostmi dokumentu
description: "Aspose.Words místo Java umožňuje ukládání některých užitečných informací o vašem dokumentu, například API a číslo verze nebo autorizované Date, ve vestavěných nebo vlastních vlastnostech dokumentu."
type: docs
weight: 10
url: /cs/java/work-with-document-properties/
---

Vlastnosti dokumentu umožňují uložení některých užitečných informací o vašem dokumentu. Tyto vlastnosti lze rozdělit do dvou skupin:

* Systém nebo zabudované, které obsahují hodnoty jako název dokumentu, jméno autora, statistiky dokumentů a další.
* User-defined or custom, provided as name-value pair where the user can defined both the name and value.

Je užitečné znát informace o API a číslo verze je přímo zapsáno do výstupních dokumentů. Například po převodu dokumentu do PDF, Aspose.Words vyplní "Aplikace" pole s "Aspose.Words"a pole "PDF Producer" s "Aspose.Words místo Java YY.M.N., kde *YY.M.N* je verze Aspose.Words používaný pro konverzi. Další podrobnosti viz [Generát nebo jméno výrobce Zahrnuto ve výtahech dokumentech](/words/cs/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Všimněte si, že **nemůže režírovat** Aspose.Words změnit nebo odstranit tyto informace z výstupních dokumentů.

{{% /alert %}}

## Vlastnosti přístupového dokumentu

Přístup k vlastnostem dokumentů v Aspose.Words použití:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) k získání vestavěných nemovitostí.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) získat vlastní vlastnosti.

**BuiltInDocumentProperties** a **CustomDocumentProperties** jsou sbírky [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) objekty. Tyto objekty lze získat prostřednictvím vlastnosti indexeru jménem nebo indexem.

**BuiltInDocumentProperties** navíc poskytuje přístup k vlastnostem dokumentů prostřednictvím sady zadaných vlastností, které vracejí hodnoty příslušného typu. **CustomDocumentProperties** umožňuje přidat nebo odstranit vlastnosti dokumentu z dokumentu.

The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) třída umožňuje získat název, hodnotu a typ vlastnosti dokumentu. [Value]https://reference.apose.com/words/java/com.apose.words/documentproperty#Value) vrace objekt, ale existuje soubor metod, které vám vyhovuje cena nemovitosti převedenou na určený typ. Poté, co zjistíte, jaký typ nemovitosti je, můžete použít jeden z nich {0} metody, jako jsou {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) a **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), získat hodnotu příslušného typu.

Následující příklad kódu ukazuje, jak vyčíslit všechny vestavěné a vlastní vlastnosti v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, vlastnosti dokumentů můžete získat pomocí menu → Vlastnosti →.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Přidat nebo odstranit vlastnosti dokumentu

Nelze přidat nebo odstranit vestavěné vlastnosti dokumentu pomocí Aspose.Words. Můžete pouze měnit nebo aktualizovat jejich hodnoty.

Přidání vlastních vlastností dokumentu s Aspose.Words, použijte [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) způsob předání nového názvu nemovitosti a hodnoty příslušného typu. Metoda vrací nově vytvořené **DocumentProperty** objekt.

Pro odstranění vlastních vlastností použijte [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) způsob, předání názvu nemovitosti k odstranění, nebo [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) způsob odstranění nemovitosti indexem. Můžete také odstranit všechny vlastnosti pomocí [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) metoda.

Následující příklad kódu ověřuje, zda vlastní vlastnost s daným jménem existuje v dokumentu a přidává několik dalších vlastních vlastností dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak odstranit vlastní vlastnost dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aktualizace Vestavěných vlastností dokumentu

Aspose.Words automaticky neaktualizuje vlastnosti dokumentu jako Microsoft Word dělá s některými vlastnostmi, ale poskytuje metodu pro aktualizaci některých statistických vestavěných dokumentů vlastnosti. Zavolej [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) metoda přepočítání a aktualizace těchto vlastností:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Vytvořit nový vlastní majetek spojený s obsahem

Aspose.Words poskytuje [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) způsob vytvoření nové vlastní vlastnosti dokumentu spojené s obsahem. Tato vlastnost vrací nově vytvořený objekt nebonuluje, pokud [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) je neplatný.

Následující příklad kódu ukazuje, jak nastavit odkaz na vlastní vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Získat proměnné dokumentu

Můžete získat soubor proměnných dokumentů pomocí [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) majetek. Variabilní názvy a hodnoty jsou řetězce.

Následující příklad kódu ukazuje, jak vyčíslit proměnné dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Odstranit osobní údaje z dokumentu

Chcete-li sdílet dokument Word s jinými lidmi, možná budete chtít odstranit osobní údaje, jako je jméno autora a společnost. K tomu použijte [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) Vlastnost pro stanovení vlajky s uvedením, že Microsoft Word odstraní všechny uživatelské informace z komentářů, revizí a vlastností dokumentů při uložení dokumentu.

{{% alert color="primary" %}}

Nastavení této volby neodstraní osobní údaje při zpracování dokumentu v Aspose.Words a postihuje pouze Microsoft Word chování.

{{% /alert %}}
