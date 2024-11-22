---
title: Mail Merge Sjabloon in Java
second_title: Aspose.Words vir Java
articleTitle: Mail Merge Sjabloon
linktitle: Mail Merge Sjabloon
type: docs
description: "Skep'n Mail Merge sjabloon om vaste inhoud in uitset dokumente te definieer, en dan genereer samesmelting dokumente met behulp van die samesmelting velde in Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /af/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Dit is algemeen om'n samesmelting sjabloon as die basis dokument vir'n Mail Merge operasie te gebruik as dit'n eenvoudige Mail Merge of Mail Merge met streke is. Mail merge met streke is kragtiger en gewilder as die eenvoudige mail merge. 'n eenvoudige Mail Merge word beskou as'n spesifieke geval van Mail Merge met streke waar die streek die hele dokument is. Alles word in die volgende artikel "Types of Mail Merge Operation" in meer besonderhede verduidelik.

Die sjabloon verseker dat die teks in die uitset saamgesmelte dokument korrek geformateer is, en die Mail Merge operasie waarborg dat die teks van die databron korrek in die samesmelting sjabloon ingevoer word.

Aspose.Words bied die vermoë om'n Mail Merge sjabloon te skep om vaste inhoud te definieer en dan samesmeltingsdokumente te genereer met behulp van die samesmeltingsvelde. So, die samesmelting sjabloon sal die nodige teks, wat dieselfde is in al die uitset dokumente, en die samesmelting velde in die veranderende inhoud te vul het. As gevolg hiervan sal inligting van die gespesifiseerde databron by die merge-sjabloon gevoeg word deur middel van hierdie velde tydens die opwekking van die saamgesmelte dokument.

## Wat is'n Mail Merge Sjabloon

'n Mail Merge sjabloon is'n persoonlike dokument wat die vaste data en die saamgesmelte velde bevat waar jy wil hê die veranderlike teks moet wees. 'n samesmelting sjabloon kan in enige formaat wat velde ondersteun, byvoorbeeld, DOC, DOCX, DOT, DOTX, RTF. Daarbenewens kan jy ook die mustache sjabloon wat in die artikel "Mustache Sjabloon Sintaksis" verduidelik word, in meer besonderhede gebruik.

U kan'n merge-sjabloon skep om'n model vir nuwe dokumente te wees, en dit moet die hoofteks insluit wat dieselfde moet wees vir elke weergawe van die saamgesmelte dokument. Die toevoeging van samesmelting velde binne die sjabloon sal die personalisering data soos name of adresse wat afgelei van'n data bron verteenwoordig. 'n Mail Merge - bewerking sal outomaties die personaliseringsdata van u databron in u merge-sjabloondokument plaas.

Daarbenewens kan jy'n Mail Merge streek in jou sjabloon byvoeg deur twee Mail Merge velde in te voeg om die begin en die einde van die pos streek te merk. Die volgende artikel "Tipes van Mail Merge Operasie" verduidelik dit in meer besonderhede.

## Skep'n Mail Merge Sjabloon

U kan'n sjabloon skep en spesifieke samesmeltingsvelde daarby voeg, wat met die hand vervang sal word deur die waardes van die databron, byvoorbeeld met behulp van Microsoft Word, of programmaties met behulp van Aspose.Words. In hierdie artikel sal ons kyk na die programmatiese manier om'n sjabloon te skep.

Gebruik die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klas om die vereiste merge sjabloon te skep met behulp van Aspose.Words. Jy kan'n teks, 'n samesmelting veld, en'n lyn breek in so'n sjabloon met behulp van die [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), en [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) metodes.

Die volgende kode voorbeeld toon hoe om'n Mail Merge sjabloon te skep:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

Die prent hieronder toon die geskape sjabloon:

<img src="mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Pasmaak'n Mail Merge Sjabloon Eienskappe

Aspose.Words laat jou toe om jou sjabloon deur baie eienskappe aan te pas. Template aanpassing sal hieronder beskryf word deur'n voorbeeld van die aanpassing van sommige eienskappe van beelde en teks.

### Pas Beeldeienskappe Aan

Jy kan die beeld eienskappe spesifiseer met behulp van die [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) klas. Let daarop dat jy'n beeld van'n databasis kan invoeg soos dit beskryf word in [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

Die volgende kode voorbeeld toon hoe om die beeld lêer naam en beeld grootte spesifiseer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Pasmaak Teks Eienskappe

Jy kan die [Text]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text) property to insert text into the document for the current merge field. Also, you can change the formatting of texts and paragraphs inside your template using [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) en [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) klasse gebruik. U kan die teks wat voor of na die samesmeltingsveld ingevoeg moet word, hanteer deur die eienskappe [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) en [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) te gebruik wat in die klas [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) ingesluit is.

Die volgende kode voorbeeld toon hoe Om Te voeg Boks Of HTML tydens Mail Merge operasie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

U kan ook die implementering van die `HandleMergeField` klas van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## Sien Ook

* Vir meer besonderhede oor hoe om templates in Microsoft Word handmatig te skep, gaan asseblief die [Skep'n Werkvoorbeeld](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in die Microsoft Dokumentasie
