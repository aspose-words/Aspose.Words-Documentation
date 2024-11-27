---
title: Mail Merge Modello in Python
second_title: Aspose.Wordsper Python via .NET
articleTitle: Mail Merge Modello
linktitle: Mail Merge Modello
type: docs
description: "Creare un modello Mail Merge per definire il contenuto fisso nei documenti di output, quindi generare documenti di unione utilizzando i campi Unione in Python."
keywords: "create Mail Merge template python"
weight: 10
url: /it/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

È comune utilizzare un modello di unione come documento di base per un'operazione Mail Merge se si tratta di un semplice Mail Merge o Mail Merge con regioni. Mail merge con regioni è più potente e popolare del semplice mail merge. Semplice Mail Merge è considerato come un caso particolare di Mail Merge con regioni in cui l'area è l'intero documento. Tutto è spiegato nel prossimo articolo "Tipi di operazione Mail Merge" in modo più dettagliato.

Il modello garantisce che il testo nel documento unito di output sia formattato correttamente e l'operazione Mail Merge garantisce che il testo dell'origine dati sia inserito correttamente nel modello di unione.

Aspose.Words offre la possibilità di creare un modello Mail Merge per definire il contenuto fisso e quindi generare documenti di unione utilizzando i campi Unione. Pertanto, il modello di unione avrà il testo necessario, che è lo stesso in tutti i documenti di output, e i campi di unione per compilare il contenuto che cambia. Di conseguenza, le informazioni dall'origine dati specificata verranno aggiunte al modello di unione tramite questi campi durante la generazione del documento unito.

## Che cos'è un template Mail Merge

Un modello Mail Merge è un documento personalizzato che contiene i dati fissi e i campi uniti in cui si desidera che sia il testo variabile. Un modello di unione può essere in qualsiasi formato che supporti i campi, ad esempio, DOC, DOCX, DOT, DOTX, RTF. Inoltre, è anche possibile utilizzare il modello mustache spiegato nell'articolo "Sintassi del modelloMustache" in modo più dettagliato.

È possibile creare un modello di unione come modello per i nuovi documenti e dovrebbe includere il testo principale che deve essere lo stesso per ogni versione del documento unito. L'aggiunta di campi di unione all'interno del modello rappresenterà i dati di personalizzazione, ad esempio nomi o indirizzi recuperati da un'origine dati. Un'operazione Mail Merge inserirà automaticamente i dati di personalizzazione dall'origine dati al documento modello di unione.

Inoltre, è possibile aggiungere un'area Mail Merge nel modello inserendo due campi Mail Merge per contrassegnare l'inizio e la fine dell'area di posta. Il prossimo articolo "Tipi di operazione Mail Merge" lo spiega in modo più dettagliato.

## Creare un modello Mail Merge

È possibile creare un modello e aggiungere campi di unione specifici, che verranno sostituiti dai valori dell'origine dati manualmente, ad esempio utilizzando Microsoft Word o a livello di programmazione utilizzando Aspose.Words. In questo articolo, vedremo il modo programmatico di creare un modello.

Utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) per creare il modello di unione richiesto utilizzando Aspose.Words. È possibile includere un testo, un campo di unione e un'interruzione di riga in tale modello utilizzando i metodi [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) e [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

L'esempio di codice seguente mostra come creare un modello Mail Merge:

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

L'immagine qui sotto mostra il modello creato:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizzare le proprietà di un modello Mail Merge

Aspose.Words consente di personalizzare il modello attraverso molte proprietà. La personalizzazione del modello verrà descritta di seguito attraverso un esempio di personalizzazione di alcune proprietà di immagini e testo.

## Vedi anche

* Per ulteriori dettagli su come creare manualmente i modelli in Microsoft Word, controllare [Creare un modello](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articolo nella Documentazione Microsoft
