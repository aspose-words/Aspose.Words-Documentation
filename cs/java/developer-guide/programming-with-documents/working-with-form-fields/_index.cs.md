---
title: Práce s polemi formuláře Java
second_title: Aspose.Words místo Java
articleTitle: Práce s polemi formuláře
linktitle: Práce s polemi formuláře
description: "Pochopení funkce formuláře Pole, práce s polemi formuláře pomocí Java."
type: docs
weight: 380
url: /cs/java/working-with-form-fields/
---

Dokument, který obsahuje vyplněné mezery (pole), je znám jako formulář. Například můžete vytvořit registrační formulář v Microsoft Word který používá seznamy drop-down, ze kterých mohou uživatelé vybírat položky. The `Form` pole je místo, kde je uložen určitý typ údajů, jako je jméno nebo adresa. Forma polí v Microsoft Word obsahovat textový vstup, combobox a checkbox.

Ve vašem projektu můžete použít pole formuláře pro komunikaci s uživateli. Například vytvoříte dokument, jehož obsah je chráněn, ale pouze formulářová pole jsou editovatelná. Uživatelé mohou údaje zadat do polí formuláře a dokument předložit. Vaše aplikace, která používá Aspose.Words může získat data z polí formuláře a zpracovat je.

Vložení polí formuláře do dokumentu přes kód je snadné. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) má speciální metody pro jejich vložení, jeden pro každý typ formuláře. Každá z metod přijímá parametr řetězce představující název pole formuláře. Jméno může být prázdný řetězec. Pokud však zadáte název pole formuláře, pak je záložka automaticky vytvořena se stejným názvem.

## Vložit pole formuláře

Formulářová pole jsou konkrétním případem polí Word, které umožňují "interakce" s uživatelem. Forma polí v Microsoft Word obsahovat textbox, combo box a checkbox.

**DocumentBuilder** poskytuje zvláštní metody pro vložení každého typu formuláře do dokumentu: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) nebo [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Následující příklad kódu ukazuje, jak vložit pole formuláře combobox do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Vložit textový vstup

Použijte **vložit TextVstup** způsob vložení textového pole do dokumentu.

Následující příklad kódu ukazuje, jak vložit vstupní pole textu do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Vložit kontrolní rámeček

Volat **vložitCheckBox** vložit checkbox do dokumentu.

Následující příklad kódu ukazuje, jak vložit pole formuláře checkbox do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Vložit krabici Combo

Volat **vložitComboBox** vložit do dokumentu combobox.

Následující příklad kódu ukazuje, jak vložit pole formuláře Combobox do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Získat pole formuláře

Sběr formulářových polí představuje [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) třída, kterou lze získat pomocí [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) majetek. To znamená, že můžete získat formulářová pole obsažená v každém uzelu dokumentu včetně samotného dokumentu.

Následující příklad kódu ukazuje, jak získat kolekci formulářových polí:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor následujících příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Můžete získat konkrétní pole formuláře podle jeho indexu nebo názvu.

Následující příklad kódu ukazuje, jak přistupovat k polím formuláře:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The **FormField** vlastnosti umožňují pracovat s názvem pole formuláře, typu a výsledku.

Následující příklad kódu ukazuje, jak pracovat s názvem formuláře, typem a výsledkem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
