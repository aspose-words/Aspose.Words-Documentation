---
title: Mail Merge Sjabloon in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Mail Merge Sjabloon
linktitle: Mail Merge Sjabloon
type: docs
description: "Skep'n mail merge sjabloon om vaste inhoud in uitset dokumente te definieer, en dan genereer samesmelting dokumente met behulp van die samesmelting velde in Python."
keywords: "create mail merge template python"
weight: 10
url: /af/python-net/mail-merge-template/
---

Dit is algemeen om'n samesmelting sjabloon as die basis dokument vir'n mail merge operasie te gebruik as dit'n eenvoudige mail merge of mail merge met streke is. Mail merge met streke is kragtiger en gewilder as die eenvoudige mail merge. Simple mail merge word beskou as'n spesifieke geval van mail merge met streke waar die streek die hele dokument is. Alles word in die volgende artikel "Types of Mail Merge Operation" in meer besonderhede verduidelik.

Die sjabloon verseker dat die teks in die uitset saamgesmelte dokument korrek geformateer is, en die mail merge operasie waarborg dat die teks van die databron korrek in die samesmelting sjabloon ingevoer word.

Aspose.Words bied die vermoë om'n mail merge sjabloon te skep om vaste inhoud te definieer en dan samesmeltingsdokumente te genereer met behulp van die samesmeltingsvelde. So, die samesmelting sjabloon sal die nodige teks, wat dieselfde is in al die uitset dokumente, en die samesmelting velde in die veranderende inhoud te vul het. As gevolg hiervan sal inligting van die gespesifiseerde databron by die merge-sjabloon gevoeg word deur middel van hierdie velde tydens die opwekking van die saamgesmelte dokument.

## Wat is'n Mail Merge Sjabloon

'n mail merge sjabloon is'n persoonlike dokument wat die vaste data en die saamgesmelte velde bevat waar jy wil hê die veranderlike teks moet wees. 'n samesmelting sjabloon kan in enige formaat wat velde ondersteun, byvoorbeeld, DOC, DOCX, DOT, DOTX, RTF. Daarbenewens kan jy ook die mustache sjabloon wat in die artikel "Mustache Sjabloon Sintaksis" verduidelik word, in meer besonderhede gebruik.

U kan'n merge-sjabloon skep om'n model vir nuwe dokumente te wees, en dit moet die hoofteks insluit wat dieselfde moet wees vir elke weergawe van die saamgesmelte dokument. Die toevoeging van samesmelting velde binne die sjabloon sal die personalisering data soos name of adresse wat afgelei van'n data bron verteenwoordig. 'n mail merge - bewerking sal outomaties die personaliseringsdata van u databron in u merge-sjabloondokument plaas.

Daarbenewens kan jy'n mail merge streek in jou sjabloon byvoeg deur twee mail merge velde in te voeg om die begin en die einde van die pos streek te merk. Die volgende artikel "Tipes van Mail Merge Operasie" verduidelik dit in meer besonderhede.

## Skep'n Mail Merge Sjabloon

U kan'n sjabloon skep en spesifieke samesmeltingsvelde daarby voeg, wat met die hand vervang sal word deur die waardes van die databron, byvoorbeeld met behulp van Microsoft Word, of programmaties met behulp van Aspose.Words. In hierdie artikel sal ons kyk na die programmatiese manier om'n sjabloon te skep.

Gebruik die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas om die vereiste merge sjabloon te skep met behulp van Aspose.Words. Jy kan'n teks, 'n samesmelting veld, en'n lyn breek in so'n sjabloon met behulp van die [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), en [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/) metodes.

Die volgende kode voorbeeld toon hoe om'n mail merge sjabloon te skep:

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

Die prent hieronder toon die geskape sjabloon:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Pasmaak'n Mail Merge Sjabloon Eienskappe

Aspose.Words laat jou toe om jou sjabloon deur baie eienskappe aan te pas. Template aanpassing sal hieronder beskryf word deur'n voorbeeld van die aanpassing van sommige eienskappe van beelde en teks.

## Sien Ook

* Vir meer besonderhede oor hoe om templates in Microsoft Word handmatig te skep, gaan asseblief die [Skep'n Werkvoorbeeld](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in die Microsoft Dokumentasie
