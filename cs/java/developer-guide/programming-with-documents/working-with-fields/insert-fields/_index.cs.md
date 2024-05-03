---
title: Vložit pole do Java
second_title: Aspose.Words místo Java
articleTitle: Vložit pole
linktitle: Vložit pole
description: "Různé způsoby vkládání polí do dokumentu pomocí Java."
type: docs
weight: 20
url: /cs/java/insert-fields/
---

Existuje několik různých způsobů, jak vložit pole do dokumentu:

- použití [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- použití [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- použití [Aspose.Words Document Object Model (DOM)](/words/cs/java/aspose-words-document-object-model/)

V tomto článku se budeme každým způsobem podrobněji zabývat a analyzovat, jak vložit některá pole pomocí těchto možností.

## Vkládání polí do dokumentu pomocí nástroje DokumentBuilder

In Aspose.Words vá [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) metoda se používá k vložení nových polí do dokumentu. První parametr přijímá úplný kód pole, který má být vložen. Druhý parametr je volitelný a umožňuje ručně nastavit výsledek pole. Pokud toto není dodáno, pak se pole automaticky aktualizuje. Pro vložení pole s prázdnou hodnotou pole můžete přejít do tohoto parametru null nebo prázdný. Pokud si nejste jisti konkrétní syntaxi kódu pole, vytvořit pole v Microsoft Word Nejprve přepněte na kód pole.

{{% alert color="primary" %}}

Pokud má váš kód pole parametr obsahující mezeru, pak musí být uveden ve znacích řeči. Jinak pole v obou Microsoft Word a Aspose.Words nemusí fungovat tak, jak se očekává, protože parametr je považován za redukovaný.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit pole sloučení do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Stejná technika se používá pro vkládání polí do jiných polí.

Následující příklad kódu ukazuje, jak vložit pole vnořená do jiného pole pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Upřesnit umístění na úrovni pole

Identifikátor jazyka je standardní mezinárodní numerická zkratka pro jazyk v zemi nebo zeměpisné oblasti. S Aspose.Words, můžete zadat Locale na úrovni pole pomocí [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) majetek, který dostane nebo nastaví místní ID pole.

Následující příklad kódu ukazuje, jak použít tuto volbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Vložit nepodepsané/Vyprázdněné pole

Pokud chcete vložit netypovaná/prázdná pole ({}) stejně jako Microsoft Word umožňuje, můžete použít [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metoda s [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parametr. Chcete-li vložit pole do dokumentu Word, můžete stisknout kombinaci klávesy Ctrl + F9.

Následující příklad kódu ukazuje, jak vložit prázdné pole do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Vložit `COMPARE` Pole

The `COMPARE` pole porovnává dvě hodnoty a vrací číselnou hodnotu 1, pokud je srovnání true nebo 0, pokud srovnání je false.

Následující příklad kódu ukazuje, jak přidat `COMPARE` Pole používající dokumentStavitel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Vložit `IF` Pole

The `IF` pole lze použít k vyhodnocení argumentů podmíněně.

Následující příklad kódu ukazuje, jak přidat `IF` Pole používající dokumentStavitel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Vkládání polí do dokumentu pomocí stavění pole

Alternativní způsob vkládání polí do Aspose.Words je [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) třída. Poskytuje plynulé rozhraní pro určení hodnot spínačů a argumentů jako text, uzly nebo dokonce vnořená pole.

Následující příklad kódu ukazuje, jak vložit pole do dokumentu pomocí **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Vkládání polí pomocí DOM

Můžete také vložit různé typy polí pomocí [Aspose.Words Document Object Model (DOM)](/words/cs/java/aspose-words-document-object-model/). V této části se podíváme na několik příkladů.

### Vkládání sloučení Pole do dokumentu pomocí DOM

`MERGEFIELD` pole v dokumentu Word může být reprezentováno [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) třída. Můžete použít **FieldMergeField** třída provádět tyto operace:

- uveďte název pole sloučení
- zadat formátování pole sloučení
- zadat text mezi oddělovačem pole a koncem pole sloučení
- zadat text, který má být vložen za pole sloučení, není-li pole prázdné
- zadat text, který má být vložen před pole sloučení, není-li pole prázdné

{{% alert color="primary" %}}

Další podrobnosti viz [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `MERGE` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Vkládání Mail Merge `ADDRESSBLOCK` pole do dokumentu pomocí DOM

The `ADDRESSBLOCK` a mail merge blok adres v dokumentu Word. `ADDRESSBLOCK` pole v dokumentu Word může být reprezentováno [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) třída. Můžete použít **FieldAddressBlock** třída provádět tyto operace:

- uveďte, zda má být název země/regionu zařazen do pole
- uveďte, zda má být adresa zformátována podle země/regionu příjemce podle POST*CODE (Universal Post Union 2006)
- uveďte vyloučenou zemi/název oblasti
- zadat název a formát adresy
- zadat jazykové ID používané pro formátování adresy

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat Mail Merge `ADDRESSBLOCK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Vkládání `ADVANCE` pole do dokumentu bez použití nástroje DocumentBuilder

The `ADVANCE` pole se používá k vyrovnání následujícího textu v řádku vlevo, vpravo, nahoře nebo dolů. `ADVANCE` pole v dokumentu Word může být reprezentováno [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) třída. Můžete použít **FieldAdvance** třída provádět tyto operace:

- uveďte počet bodů, o které by text, který následuje po poli, měl být přesunut vertikálně z horního okraje stránky
- uveďte počet bodů, kterými se text, který následuje po poli, přesune vodorovně z levého okraje sloupce, rámu nebo textového pole
- uveďte počet bodů, kterými by měl být text, který následuje po poli, přesunut doleva, doprava, nahoru nebo dolů

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `ADVANCE` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Vkládání `ASK` pole do dokumentu bez použití nástroje DocumentBuilder

The `ASK` pole se používá k tomu, aby uživatel pro text přiřadil do záložky v dokumentu Word. `ASK` pole v dokumentu Word může být reprezentováno [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) třída. Můžete použít **FieldAsk** třída provádět tyto operace:

- uveďte název záložky
- zadat výchozí uživatelskou odpověď (počáteční hodnota obsažená v rychlém okně)
- určí, zda má být odpověď uživatele obdržena jednou za mail merge provoz
- zadat rychlý text (název rychlého okna)

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `ASK` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Vkládání `AUTHOR` pole do dokumentu bez použití nástroje DocumentBuilder

The `AUTHOR` pole se používá k upřesnění jména autora dokumentu `Document` vlastnosti. `AUTHOR` pole v dokumentu Word může být reprezentováno [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) třída. Můžete použít **FieldAuthor** třída provádět tyto operace:

- uveďte jméno autora dokumentu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `AUTHOR` Použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Vkládání `INCLUDETEXT` pole do dokumentu bez použití nástroje DocumentBuilder

The `INCLUDETEXT` pole vkládá text a grafiku obsažené v dokumentu uvedeném v kódu pole. Celý dokument nebo část dokumentu uvedeného v záložce můžete vložit. Toto pole v dokumentu Word je reprezentováno VORGETEXT. Můžete použít [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) třída provádět tyto operace:

- uveďte název záložky přiloženého dokumentu
- uveďte umístění dokladu

{{% alert color="primary" %}}

Další podrobnosti viz [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `INCLUDETEXT` použití pole DOM k odstavci v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Vkládání `TOA` pole do dokumentu bez použití nástroje DocumentBuilder

The `TOA` (*Tabulka orgánů*) pole staví a vkládá tabulku úřadů. The `TOA` pole shromažďuje položky označené `TA` (*Tabulka záznamů orgánů*) pole. Microsoft Kancelářské slovo vloží `TOA` field when you click *Insert Table of Authorities* in the **Tabulka orgánů** skupina **References** Účet. Když vidíte `TOA` pole ve vašem dokumentu, syntaxe vypadá takto:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Další podrobnosti viz [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) třída API.

{{% /alert %}}

Následující příklad kódu ukazuje, jak přidat `TOA` použití pole DOM na odstavec v dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
