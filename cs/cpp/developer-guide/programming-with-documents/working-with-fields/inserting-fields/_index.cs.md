---
title: Vložte pole do C++
second_title: Aspose.Words pro C++
articleTitle: Vložit Pole
linktitle: Vložit Pole
description: "Různé způsoby vkládání polí do dokumentu pomocí C++."
type: docs
weight: 20
url: /cs/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Existuje několik různých způsobů, jak vložit pole do dokumentu:

- použití [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- použití [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- použití [Aspose.Words Model Objektu Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/)

V tomto článku se podíváme na každou cestu podrobněji a analyzujeme, jak vložit určitá pole pomocí těchto možností.

## Vkládání polí do dokumentu pomocí DocumentBuilder

V Aspose.Words se metoda [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) používá k vložení nových polí do dokumentu. První parametr přijímá úplný kód pole pole, které má být vloženo. Druhý parametr je volitelný a umožňuje ruční nastavení výsledku pole pole. Pokud toto není dodáno, pole se automaticky aktualizuje. K tomuto parametru můžete předat null nebo empty a vložit pole s prázdnou hodnotou pole. Pokud si nejste jisti syntaxí konkrétního kódu pole, vytvořte pole nejprve v Microsoft Word a přepnutím zobrazte jeho kód pole.

{{% alert color="primary" %}}

Pokud má váš kód pole parametr obsahující mezeru, musí být uzavřen do řečových značek. Jinak pole v obou Microsoft Word a Aspose.Words nemusí fungovat podle očekávání, protože parametr je oběma považován za zkrácený

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit slučovací pole do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Stejná technika se používá k vkládání polí vnořených do jiných polí.

Následující příklad kódu ukazuje, jak vložit pole vnořená do jiného pole pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Zadejte národní prostředí na úrovni pole

Identifikátor jazyka je standardní mezinárodní číselná zkratka pro jazyk v zemi nebo zeměpisné oblasti. Pomocí Aspose.Words můžete určit národní prostředí na úrovni pole pomocí vlastnosti [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), která získá nebo nastaví národní prostředí pole ID.

Následující příklad kódu ukazuje, jak tuto možnost použít:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Vložit Netypované / Prázdné Pole

Pokud chcete vložit netypovaná / prázdná pole ({}) stejně jako Microsoft Word umožňuje, můžete použít metodu [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) s parametrem [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Chcete-li vložit pole do dokumentu Word, můžete stisknout kombinaci kláves "Ctrl + F9".

Následující příklad kódu ukazuje, jak vložit prázdné pole do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Vkládání polí do dokumentu pomocí FieldBuilder

Alternativní způsob vložení polí do Aspose.Words je třída [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Poskytuje plynulé rozhraní pro určení přepínačů polí a hodnot argumentů jako text, uzly nebo dokonce vnořená pole.

Následující příklad kódu ukazuje, jak vložit pole do dokumentu pomocí **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Vkládání polí pomocí DOM

Můžete také vložit různé typy polí pomocí [Aspose.Words Model Objektu Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/). V této části se podíváme na několik příkladů.

### Vložení slučovacího pole do dokumentu pomocí DOM

Pole `MERGEFIELD` v dokumentu Word může být reprezentováno třídou [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Třídu **FieldMergeField** můžete použít k provedení následujících operací:

- zadejte název pole sloučení
- určete formátování pole sloučení
- určete text, který je mezi oddělovačem polí a koncem pole slučovacího pole
- pokud pole není prázdné, zadejte text, který se má vložit za pole sloučení
- pokud pole není prázdné, zadejte text, který se má vložit Před pole sloučení

{{% alert color="primary" %}}

Další podrobnosti viz [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `MERGE` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Vložení Mail Merge pole bloku adresy do dokumentu pomocí DOM

Pole `ADDRESSBLOCK` se používá k vložení bloku adresy Mail Merge do dokumentu Word. `ADDRESSBLOCK` pole v Word dokumentu může být reprezentováno třídou [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Třídu **FieldAddressBlock** můžete použít k provedení následujících operací:

- určete, zda chcete do pole Zahrnout název země/oblasti
- určete, zda se má Adresa formátovat podle země / oblasti příjemce podle definice POST*CODE (Světová poštovní unie 2006)
- zadejte název vyloučené země / oblasti
- zadejte název a formát adresy
- zadejte jazyk ID použitý k formátování adresy

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole Mail Merge `ADDRESSBLOCK` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Vložení pole předem do dokumentu bez použití DocumentBuilder

Pole `ADVANCE` se používá k vyrovnání následného textu v řádku doleva, doprava, nahoru nebo dolů. Pole `ADVANCE` v dokumentu Word může být reprezentováno třídou [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Třídu FieldAdvance můžete použít k provedení následujících operací:

- určete počet bodů, o které by měl být text, který následuje po poli, přesunut svisle od horního okraje stránky
- určete počet bodů, o které má být text, který následuje po poli, přesunut vodorovně z levého okraje sloupce, rámečku nebo textového pole
- určete počet bodů, o které by měl být text, který následuje po poli, přesunut doleva, doprava, nahoru nebo dolů

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `ADVANCE` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Vložení `ASK` pole do dokumentu bez použití DocumentBuilder

Pole `ASK` se používá k výzvě uživatele k přiřazení textu k záložce v dokumentu Word. `ASK` pole v Word dokumentu může být reprezentováno třídou [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Třídu **FieldAsk** můžete použít k provedení následujících operací:

- zadejte název záložky
- zadejte výchozí odpověď uživatele (počáteční hodnota obsažená v okně výzvy)
- určete, zda má být odpověď uživatele přijata jednou za operaci Mail Merge
- zadejte text výzvy (název okna výzvy)

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `ASK` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Vložení `AUTHOR` pole do dokumentu bez použití DocumentBuilder

Pole `AUTHOR` se používá k určení jména autora dokumentu z vlastností `Document`. Pole `AUTHOR` v dokumentu Word může být reprezentováno třídou [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Třídu **FieldAuthor** můžete použít k provedení následujících operací:

- zadejte jméno autora dokumentu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `AUTHOR` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Vložení `INCLUDETEXT` pole do dokumentu bez použití DocumentBuilder

Pole `INCLUDETEXT` vloží text a grafiku obsaženou v dokumentu pojmenovaném v kódu pole. Můžete vložit celý dokument nebo část dokumentu, na kterou odkazuje Záložka. Toto pole v Word dokumentu je reprezentováno INCLUDETEXT. Třídu [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) můžete použít k provedení následujících operací:

- zadejte název záložky přiloženého dokumentu
- určete umístění dokumentu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `INCLUDETEXT` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Vložení `TOA` pole do dokumentu bez použití DocumentBuilder

Pole `TOA` (*Table of Authorities*) vytvoří a vloží tabulku autorit. Pole `TOA` shromažďuje položky označené poli `TA` (*Table of Authorities Entry*). Microsoft Office Word vloží pole `TOA`, Když kliknete na *Insert Table of Authorities* ve skupině **Table of Authorities** na kartě **References**. Při zobrazení pole `TOA` v dokumentu vypadá syntaxe takto:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Další podrobnosti viz [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat pole `TOA` pomocí DOM do odstavce v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
