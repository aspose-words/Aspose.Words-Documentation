---
title: Mail Merge Modello in C++
second_title: Aspose.Words per C++
articleTitle: Mail Merge Modello
linktitle: Mail Merge Modello
type: docs
description: "Creare un modello Mail Merge per definire il contenuto fisso nei documenti di output, quindi generare documenti di unione utilizzando i campi Unione."
keywords: "create Mail Merge template с++"
weight: 10
url: /it/cpp/mail-merge-template/
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

Utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) per creare il modello di unione richiesto utilizzando Aspose.Words. È possibile includere un testo, un campo di unione e un'interruzione di riga in tale modello utilizzando i metodi [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) e [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

L'esempio di codice seguente mostra come creare un modello mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

L'immagine qui sotto mostra il modello creato:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Personalizzare le proprietà di un modello Mail Merge

Aspose.Words consente di personalizzare il modello attraverso molte proprietà. La personalizzazione del modello verrà descritta di seguito attraverso un esempio di personalizzazione di alcune proprietà di immagini e testo.

### Personalizza le proprietà dell'immagine

È possibile specificare le proprietà dell'immagine utilizzando la classe [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

Il seguente esempio di codice mostra come specificare il nome del file immagine e la dimensione dell'immagine:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Personalizza le proprietà del testo

È possibile utilizzare la proprietà [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) per inserire del testo nel documento per il campo Unione corrente. Inoltre, è possibile modificare la formattazione di testi e paragrafi all'interno del modello utilizzando [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) e [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) classi. È possibile gestire il testo da inserire prima o dopo il campo Unione utilizzando le proprietà [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) e [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) incluse nella classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

L'esempio di codice seguente mostra come inserire caselle di controllo o HTML durante l'operazione mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

È inoltre possibile controllare l'implementazione della classe `HandleMergeField` da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Vedi anche

* Per ulteriori dettagli su come creare manualmente i modelli in Microsoft Word, controllare [Creare un modello](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articolo nella documentazione Microsoft