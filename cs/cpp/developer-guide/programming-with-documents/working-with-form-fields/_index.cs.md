---
title: Práce s poli formuláře v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s poli formuláře
linktitle: Práce s poli formuláře
description: "Pochopení funkce pole formuláře, práce s poli formuláře pomocí C++."
type: docs
weight: 380
url: /cs/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokument, který obsahuje vyplňovací mezery (pole), se nazývá formulář. Můžete například vytvořit registrační formulář v Microsoft Word, který používá rozevírací seznamy, ze kterých mohou uživatelé vybírat položky. Pole formuláře je místo, kde je uložen určitý typ dat, například jméno nebo adresa. Pole formuláře v Microsoft Word zahrnují zadávání textu, Combobox a checkbox.

Pole formuláře v projektu můžete použít k "komunikaci" se svými uživateli. Například vytvoříte dokument, jehož obsah je chráněn, ale lze upravovat pouze pole formuláře. Uživatelé mohou zadat data do polí formuláře a odeslat dokument. Vaše aplikace, která používá Aspose.Words, může načíst data z polí formuláře a zpracovat je.

Umístění polí formuláře do dokumentu pomocí kódu je snadné. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) má speciální metody pro jejich vkládání, jeden pro každý typ pole formuláře. Každá z metod přijímá parametr řetězce představující název pole formuláře. Název může být prázdný řetězec. Pokud však zadáte název pole formuláře, automaticky se vytvoří záložka se stejným názvem.

## Vkládání Polí Formuláře

Pole formuláře jsou konkrétním případem polí Word, která umožňují "interakci" s uživatelem. Pole formuláře v Microsoft Word zahrnují textové pole, pole se seznamem a checkbox.

**DocumentBuilder**

Následující příklad kódu ukazuje, jak vložit pole formuláře combobox do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Získání Polí Formuláře

Kolekce polí formuláře je reprezentována třídou [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/), kterou lze načíst pomocí vlastnosti [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). To znamená, že můžete získat pole formuláře obsažené v libovolném uzlu dokumentu, včetně samotného dokumentu.

Následující příklad kódu ukazuje, jak získat kolekci polí formuláře:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Konkrétní pole formuláře můžete získat podle jeho indexu nebo názvu.

Následující příklad kódu ukazuje, jak přistupovat k polím formuláře:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Vlastnosti **FormField** umožňují pracovat s názvem, typem a výsledkem pole formuláře.

Následující příklad kódu ukazuje, jak pracovat s názvem, typem a výsledkem pole formuláře:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
