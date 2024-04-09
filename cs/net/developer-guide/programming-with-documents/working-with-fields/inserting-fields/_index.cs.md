---
title: Vložit pole do C#
second_title: Aspose.Words místo .NET
articleTitle: Vložit pole
linktitle: Vložit pole
description: "Jak vložit pole do dokumentu pomocí C# Naučte se různé způsoby s příklady kódů."
type: docs
weight: 20
url: /cs/net/inserting-fields/
---

Existuje několik různých způsobů, jak vložit pole do dokumentu:

* [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* [Aspose.Words Document Object Model (DOM)](/words/cs/net/aspose-words-document-object-model/)

V tomto článku se budeme každým způsobem podrobněji zabývat a analyzovat, jak vložit některá pole pomocí těchto možností.

## Vkládání polí do dokumentu pomocí nástroje DokumentBuilder

In Aspose.Words vá [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metoda se používá pro vložení nových polí do dokumentu. První parametr přijímá úplný kód pole, které má být vloženo. Druhý parametr je volitelný a umožňuje ručně nastavit výsledek pole. Pokud toto není dodáno, pak se pole automaticky aktualizuje. Pro vložení pole s prázdnou hodnotou pole můžete přejít do tohoto parametru null nebo prázdný. Pokud si nejste jisti konkrétní syntaxi kódu pole, vytvořit pole v Microsoft Word Nejdřív přepněte na kód pole.

{{% alert color="primary" %}}

Pokud má váš kód pole parametr obsahující mezeru, pak musí být uveden ve znacích řeči. Jinak pole v obou Microsoft Word a Aspose.Words nemusí fungovat tak, jak se očekává, protože parametr je považován za redukovaný.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit pole sloučení do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Stejná technika se používá pro vkládání polí do jiných polí.

Následující příklad kódu ukazuje, jak vložit pole vnořená do jiného pole pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Upřesnit umístění na úrovni pole

Identifikátor jazyka je standardní mezinárodní numerická zkratka pro jazyk v zemi nebo zeměpisné oblasti. S Aspose.Words, můžete zadat Locale na úrovni pole pomocí [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) nemovitost, která dostane nebo nastaví místní ID pole.

Následující příklad kódu ukazuje, jak použít tuto volbu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Vložit netypované/vyprázdněné pole

Pokud chcete vložit netypovaná/prázdná pole ({}) stejně jako Microsoft Word umožňuje, můžete použít [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metoda s [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) parametr. Chcete-li vložit pole do dokumentu Word, můžete stisknout kombinaci klávesy Ctrl + F9.1.2.

Následující příklad kódu ukazuje, jak do dokumentu vložit prázdné pole:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Vkládání polí do dokumentu pomocí polního stavitele
Alternativní způsob vložení polí do Aspose.Words je [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) třída. Nabízí plynulé rozhraní pro určení hodnot spínačů a argumentů jako text, uzly nebo dokonce vnořená pole.

Následující příklad kódu ukazuje, jak vložit pole do dokumentu pomocí **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Vkládání polí pomocí DOM

Můžete také vložit různé typy polí pomocí [Aspose.Words Document Object Model (DOM)](/words/cs/net/aspose-words-document-object-model/). V této části se podíváme na několik příkladů.

### Vkládání sloučení Pole do dokumentu pomocí DOM

• `MERGEFIELD` pole v dokumentu Word může být reprezentováno [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) třída. Můžete použít **FieldMergeField** třída provádět tyto operace:

- zadat název pole sloučení
- zadat formátování pole sloučení
- zadat text, který je mezi oddělovačem pole a koncem pole sloučení
- zadat text, který má být vložen za pole sloučení, není-li pole prázdné
- zadat text, který má být vložen před pole sloučení, není-li pole prázdné

{{% alert color="primary" %}}

Další podrobnosti viz [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `MERGE` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Vkládání Mail Merge `ADDRESSBLOCK` pole do dokumentu pomocí DOM

• `ADDRESSBLOCK` a mail merge blok adres v dokumentu Word. `ADDRESSBLOCK` pole v dokumentu Word může být reprezentováno [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) třída. Můžete použít **FieldAddressBlock** třída provádět tyto operace:

- uveďte, zda má být název země/regionu zařazen do pole
- uveďte, zda má být adresa zformátována podle země/regionu příjemce podle definice POST*CODE (Universal Post Union 2006)
- uveďte vyloučenou zemi/region
- zadat název a formát adresy
- zadat jazyk ID používané pro formátování adresy

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat Mail Merge `ADDRESSBLOCK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Vkládání `ADVANCE` pole do dokumentu bez použití nástroje DokumentBuilder

• `ADVANCE` pole se používá k vyrovnání následujícího textu v řádku vlevo, vpravo, nahoře nebo dolů. • `ADVANCE` pole v dokumentu Word může být reprezentováno [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) třída. Můžete použít **FieldAdvance** třída provádět tyto operace:

- uveďte počet bodů, kterými by měl být text, který následuje po poli, přesunut vertikálně z horního okraje stránky
- uveďte počet bodů, o které by text, který následuje po poli, měl být přesunut vodorovně z levého okraje sloupce, rámu nebo textového pole
- uveďte počet bodů, kterými by měl být text, který následuje po poli, přesunut doleva, doprava, nahoru nebo dolů

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `ADVANCE` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Vkládání `ASK` pole do dokumentu bez použití nástroje DokumentBuilder

• `ASK` pole se používá k tomu, aby uživatel pro text přiřadil do záložky v dokumentu Word. `ASK` pole v dokumentu Word může být reprezentováno [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) třída. Můžete použít **FieldAsk** třída provádět tyto operace:

- uveďte název záložky
- zadat výchozí uživatelskou odpověď (počáteční hodnota obsažená v okně nápovědy)
- určí, zda má být odpověď uživatele obdržena jednou za mail merge provoz
- zadat rychlý text (název rychlého okna)

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `ASK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Vkládání `AUTHOR` pole do dokumentu bez použití nástroje DokumentBuilder

• `AUTHOR` pole se používá k upřesnění jména autora dokumentu `Document` vlastnosti. • `AUTHOR` pole v dokumentu Word může být reprezentováno [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) třída. Můžete použít **FieldAuthor** třída provádět tyto operace:

- uveďte jméno autora dokumentu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `AUTHOR` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Vkládání `INCLUDETEXT` pole do dokumentu bez použití nástroje DokumentBuilder

• `INCLUDETEXT` pole vkládá text a grafiku obsažené v dokumentu uvedeném v kódu pole. Celý dokument nebo část dokumentu uvedeného v záložce můžete vložit. Toto pole v dokumentu Word je reprezentováno VORGETEXT. Můžete použít [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) třída provádět tyto operace:

- uveďte název záložky přiloženého dokumentu
- uveďte umístění dokladu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `INCLUDETEXT` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Vkládání `TOA` pole do dokumentu bez použití nástroje DokumentBuilder

• `TOA` (*Tabulka úřadů*) pole staví a vkládá tabulku úřadů. • `TOA` pole shromažďuje položky označené `TA` (*Tabulka záznamů orgánů*) pole. Microsoft Kancelářské slovo vloží `TOA` field when you click *Insert Table of Authorities* in the **Tabulka orgánů** skupina **References** Účet. Když vidíte `TOA` pole ve vašem dokumentu, syntaxe vypadá takto:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Další podrobnosti viz [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `TOA` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
