---
title: Mail Merge šablona v Python
second_title: Aspose.Words pro Python via .NET
articleTitle: Mail Merge šablona
linktitle: Mail Merge šablona
type: docs
description: "Vytvořte šablonu Mail Merge pro definování pevného obsahu ve výstupních dokumentech a poté Vygenerujte slučovací dokumenty pomocí slučovacích polí v Python."
keywords: "create Mail Merge template python"
weight: 10
url: /cs/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Je běžné používat šablonu sloučení jako základní dokument pro operaci Mail Merge, pokud se jedná o jednoduchou Mail Merge nebo Mail Merge s oblastmi. Mail merge s regiony je silnější a populárnější než jednoduchý mail merge. Jednoduchý Mail Merge je považován za konkrétní případ Mail Merge s regiony, kde region je celý dokument. Vše je vysvětleno v dalším článku "Typy operací Mail Merge" podrobněji.

Šablona zajišťuje správné formátování textu ve výstupním sloučeném dokumentu a operace Mail Merge zaručuje správné zadání textu ze zdroje dat do šablony sloučení.

Aspose.Words poskytuje možnost Vytvořit šablonu Mail Merge pro definování pevného obsahu a poté generovat slučovací dokumenty pomocí slučovacích polí. Šablona sloučení tedy bude mít potřebný text, který je stejný ve všech výstupních dokumentech, a pole sloučení pro vyplnění měnícího se obsahu. V důsledku toho budou informace ze zadaného zdroje dat přidány do šablony sloučení prostřednictvím těchto polí během generování sloučeného dokumentu.

## Co je Mail Merge šablona

Šablona Mail Merge je personalizovaný dokument, který obsahuje pevná data a sloučená pole, kde má být text proměnné. Šablona sloučení může být v libovolném formátu, který podporuje pole, například, DOC, DOCX, DOT, DOTX, RTF. Kromě toho můžete také použít šablonu mustache, která je podrobněji vysvětlena v článku "syntaxe šablonyMustache".

Šablonu sloučení můžete vytvořit jako model pro nové dokumenty a měla by obsahovat hlavní text, který musí být stejný pro každou verzi sloučeného dokumentu. Přidání slučovacích polí do šablony bude představovat personalizační data, jako jsou jména nebo adresy, které jsou načteny ze zdroje dat. Operace Mail Merge automaticky vloží personalizační data ze zdroje dat do dokumentu šablony sloučení.

Kromě toho můžete do šablony přidat oblast Mail Merge vložením dvou polí Mail Merge pro označení začátku a konce oblasti pošty. Další článek "Typy operací Mail Merge" to vysvětluje podrobněji.

## Vytvořte šablonu Mail Merge

Můžete vytvořit šablonu a přidat do ní konkrétní slučovací pole, která budou nahrazena hodnotami ze zdroje dat buď ručně, například pomocí Microsoft Word, nebo programově pomocí Aspose.Words. V tomto článku se podíváme na programový způsob vytváření šablony.

Pomocí třídy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vytvořte požadovanou šablonu sloučení pomocí Aspose.Words. Do takové šablony můžete zahrnout text, slučovací pole a zalomení řádku pomocí metod [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) a [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Následující příklad kódu ukazuje, jak vytvořit šablonu Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Obrázek níže ukazuje vytvořenou šablonu:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Přizpůsobení vlastností šablony Mail Merge

Aspose.Words umožňuje přizpůsobit šablonu pomocí mnoha vlastností. Přizpůsobení šablony bude popsáno níže na příkladu přizpůsobení některých vlastností obrázků a textu.

## Vidět

* Pro více informací o tom, jak vytvořit šablony v Microsoft Word ručně, zkontrolujte prosím [Vytvoření šablony](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) článek v dokumentaci Microsoft
