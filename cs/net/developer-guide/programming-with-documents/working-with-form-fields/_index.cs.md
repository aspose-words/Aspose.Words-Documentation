---
title: Práce s polemi formuláře C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s polemi formuláře
linktitle: Práce s polemi formuláře
description: "Pochopení funkce formuláře Pole, práce s formulářem Pole pomocí C#."
type: docs
weight: 380
url: /cs/net/working-with-form-fields/
---

Dokument, který obsahuje vyplněné mezery (pole), je znám jako formulář. Například, můžete vytvořit registrační formulář v Microsoft Word který používá seznamy drop-down, ze kterých mohou uživatelé vybírat položky. • `Form` pole je místo, kde je uložen určitý typ údajů, jako je název nebo adresa. Forma polí v Microsoft Word obsahovat textový vstup, combobox a checkbox.

Ve vašem projektu můžete použít pole formuláře pro komunikaci s uživateli. Například vytvoříte dokument, jehož obsah je chráněn, ale pouze pole formuláře jsou editovatelná. Uživatelé mohou údaje zadat do polí formuláře a dokument předložit. Vaše aplikace, která používá Aspose.Words může získat data z polí formuláře a zpracovat je.

Vložení polí formuláře do dokumentu přes kód je snadné. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) má speciální metody pro jejich vložení, jeden pro každý typ formuláře. Každá z metod přijímá parametr řetězce představující název pole formuláře. Jméno může být prázdný řetězec. Pokud však zadáte název pro pole formuláře, pak je automaticky vytvořena záložka se stejným názvem.

## Vložit pole formuláře

Formulářová pole jsou konkrétním případem polí Word, které umožňují "interakce" s uživatelem. Forma polí v Microsoft Word obsahovat textbox, combo box a checkbox.

**DocumentBuilder** poskytuje zvláštní metody pro vložení každého typu formuláře do dokumentu: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), a [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Všimněte si, že pokud zadáte jméno pro pole formuláře, pak je automaticky vytvořena záložka se stejným názvem.

Následující příklad kódu ukazuje, jak vložit pole formuláře combobox do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Vložit textový vstup

Použijte **InsertTextInput** způsob vložení textového pole do dokumentu.

Následující příklad kódu ukazuje, jak vložit vstupní pole textu do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Vložit kontrolní rámeček

Volat **InsertCheckBox** vložit checkbox do dokumentu.

Následující příklad kódu ukazuje, jak vložit pole formuláře checkbox do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Vložit Combo box

Volat **InsertComboBox** vložit do dokumentu combobox.

Následující příklad kódu ukazuje, jak vložit pole formuláře Combobox do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Získat pole formuláře

Sbírka formulářových polí představuje [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) třída, kterou lze získat pomocí [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) majetek. To znamená, že můžete získat formulářová pole obsažená v každém uzelu dokumentu včetně samotného dokumentu.

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor následujících příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak získat kolekci formulářových polí:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Můžete získat konkrétní pole formuláře podle jeho indexu nebo názvu.

Následující příklad kódu ukazuje, jak přistupovat k polím formuláře:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

• **FormField** vlastnosti umožňují pracovat s názvem pole formuláře, typu a výsledku.

Následující příklad kódu ukazuje, jak pracovat s názvem pole formuláře, typu a výsledku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Pole formuláře

• [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) vlastnictví [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) umožňuje aplikovat formátování písma na **FormField** jako celek včetně hodnoty pole.

Následující příklad kódu ukazuje, jak použít formátování písma na **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
