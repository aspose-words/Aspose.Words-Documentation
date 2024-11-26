---
title: Vkládání polí do Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Vložit pole
linktitle: Vložit pole
description: "Vložit pole do dokumentu v Python různými způsoby: `DocumentBuilder` nebo DOM (Document Object Model)."
type: docs
weight: 20
url: /cs/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

Existuje několik různých způsobů, jak vložit pole do dokumentu:

- použití [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- použití [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- použití [Aspose.Words Document Object Model (DOM)](/words/cs/python-net/aspose-words-document-object-model/)

V tomto článku se budeme každým způsobem podrobněji zabývat a analyzovat, jak vložit některá pole pomocí těchto možností.

## Vkládání polí do dokumentu pomocí nástroje DokumentBuilder

In Aspose.Words vá [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) metoda se používá pro vložení nových polí do dokumentu. První parametr přijímá úplný kód pole, které má být vloženo. Druhý parametr je volitelný a umožňuje ručně nastavit výsledek pole. Pokud toto není dodáno, pak se pole automaticky aktualizuje. Pro vložení pole s prázdnou hodnotou pole můžete přejít do tohoto parametru null nebo prázdný. Pokud si nejste jisti konkrétní syntaxi kódu pole, vytvořit pole v Microsoft Word Nejdřív přepněte na kód pole.

{{% alert color="primary" %}}

Pokud má váš kód pole parametr obsahující mezeru, pak musí být uveden ve znacích řeči. Jinak pole v obou Microsoft Word a Aspose.Words nemusí fungovat tak, jak se očekává, protože parametr je považován za redukovaný.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit pole sloučení do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Následující příklad kódu ukazuje, jak vložit pole sloučení s německým locale do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Stejná technika se používá pro vkládání polí do jiných polí.

Následující příklad kódu ukazuje, jak vložit pole vnořená do jiného pole pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Upřesnit umístění na úrovni pole

Identifikátor jazyka je standardní mezinárodní numerická zkratka pro jazyk v zemi nebo zeměpisné oblasti. S Aspose.Words, můžete zadat Lokalita na úrovni pole. • [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) nemovitost dostane nebo nastaví místní ID pole.

Následující příklad kódu ukazuje, jak této možnosti využít:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Vložit netypované/vyprázdněné pole

Pokud chcete vložit netypovaná/prázdná pole ({}) stejně jako Microsoft Word umožňuje, můžete použít [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) metoda s [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) parametr. Chcete-li vložit pole do dokumentu Word, můžete stisknout kombinaci klávesy Ctrl + F9.1.2.

Následující příklad kódu ukazuje, jak do dokumentu vložit prázdné pole:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Vkládání polí do dokumentu pomocí polního stavitele

Alternativní způsob vložení polí do Aspose.Words je [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) třída. Nabízí plynulé rozhraní pro určení hodnot spínačů a argumentů jako text, uzly nebo dokonce vnořená pole.

Následující příklad kódu ukazuje, jak vložit pole do dokumentu pomocí **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Vkládání polí pomocí DOM

Můžete také vložit různé typy polí pomocí [Aspose.Words Document Object Model (DOM)](/words/cs/python-net/aspose-words-document-object-model/). V této části se podíváme na několik příkladů.

### Vkládání sloučení Pole do dokumentu pomocí DOM

• `MERGEFIELD` pole v dokumentu Word může být reprezentováno [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) třída. Můžete použít [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) třída provádět tyto operace:

- zadat název pole sloučení
- zadat formátování pole sloučení
- zadat text, který je mezi oddělovačem pole a koncem pole sloučení
- zadat text, který má být vložen za pole sloučení, není-li pole prázdné
- zadat text, který má být vložen před pole sloučení, není-li pole prázdné

Následující příklad kódu ukazuje, jak přidat a `Merge` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Vkládání Mail Merge `ADDRESSBLOCK` pole do dokumentu pomocí DOM

• `ADDRESSBLOCK` a Mail Merge blok adres v dokumentu Word. `ADDRESSBLOCK` pole v dokumentu Word může být reprezentováno [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) třída. Můžete použít [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) třída provádět tyto operace:

- uveďte, zda má být název země/regionu zařazen do pole
- uveďte, zda má být adresa zformátována podle země/regionu příjemce podle definice POST*CODE (Universal Post Union 2006)
- uveďte vyloučenou zemi/region
- zadat název a formát adresy
- zadat jazyk ID používané pro formátování adresy

Následující příklad kódu ukazuje, jak přidat Mail Merge `ADDRESSBLOCK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Vkládání `ADVANCE` pole do dokumentu bez použití nástroje DokumentBuilder

• `ADVANCE` pole se používá k vyrovnání následujícího textu v řádku vlevo, vpravo, nahoře nebo dolů. • `ADVANCE` pole v dokumentu Word může být reprezentováno [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) třída. Můžete použít [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) třída provádět tyto operace:

- uveďte počet bodů, kterými by měl být text, který následuje po poli, přesunut vertikálně z horního okraje stránky
- uveďte počet bodů, o které by text, který následuje po poli, měl být přesunut vodorovně z levého okraje sloupce, rámu nebo textového pole
- uveďte počet bodů, kterými by měl být text, který následuje po poli, přesunut doleva, doprava, nahoru nebo dolů

Následující příklad kódu ukazuje, jak přidat `ADVANCE` Použití pole DOM na odstavec v dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Vkládání `ASK` pole do dokumentu bez použití nástroje DokumentBuilder

• `ASK` pole se používá k tomu, aby uživatel pro text přiřadil do záložky v dokumentu Word. `ASK` pole v dokumentu Word může být reprezentováno [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) třída. Můžete použít **FieldAsk** třída provádět tyto operace:

- uveďte název záložky
- zadat výchozí uživatelskou odpověď (počáteční hodnota obsažená v okně nápovědy)
- určí, zda má být odpověď uživatele obdržena jednou za Mail Merge provoz
- zadat rychlý text (název rychlého okna)

Následující příklad kódu ukazuje, jak přidat `ASK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Vkládání `AUTHOR` pole do dokumentu bez použití nástroje DokumentBuilder

• `AUTHOR` pole se používá k upřesnění jména autora dokumentu `Document` vlastnosti. • `AUTHOR` pole v dokumentu Word může být reprezentováno [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) třída. Můžete použít **FieldAuthor** třída provádět tyto operace:

- uveďte jméno autora dokumentu

Následující příklad kódu ukazuje, jak přidat `AUTHOR` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Vkládání `INCLUDETEXT` pole do dokumentu bez použití nástroje DokumentBuilder

• `INCLUDETEXT` pole vkládá text a grafiku obsažené v dokumentu uvedeném v kódu pole. Celý dokument nebo část dokumentu uvedeného v záložce můžete vložit. Toto pole v dokumentu Word je reprezentováno VORGETEXT. Můžete použít [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) třída provádět tyto operace:

- uveďte název záložky přiloženého dokumentu
- uveďte umístění dokladu

Následující příklad kódu ukazuje, jak přidat `INCLUDETEXT` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Vkládání `TOA` pole do dokumentu bez použití nástroje DokumentBuilder

• `TOA` (*Tabulka úřadů*) pole staví a vkládá tabulku úřadů. • `TOA` pole shromažďuje položky označené `TA` (*Tabulka záznamů orgánů*) pole. Microsoft Kancelářské slovo vloží `TOA` field when you click *Insert Table of Authorities* in the **Tabulka orgánů** skupina **References** Účet. Když vidíte `TOA` pole ve vašem dokumentu, syntaxe vypadá takto:

{ `TOA` [Switches ] }

Můžete použít [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) třída k provádění operací s `TOA` pole.

Následující příklad kódu ukazuje, jak přidat `TOA` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
