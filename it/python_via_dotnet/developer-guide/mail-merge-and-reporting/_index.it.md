---
title: Mail Merge e Segnalazione in Python
second_title: Aspose.Wordsper Python via .NET
articleTitle: Mail Merge e rapporti
linktitle: Mail Merge e rapporti
type: docs
description: "Mail Merge è una caratteristica popolare per la creazione rapida di documenti utilizzando Python. Aspose.Words per Python via .NET adotta la funzionalità standard Mail Merge e la fa progredire di molti passi avanti, trasformandola in una soluzione di reporting completa che consente di creare documenti ancora più complessi come report, cataloghi, inventari e fatture."
keywords: "how to use Mail Merge python"
weight: 30
url: /it/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge è una caratteristica popolare per creare rapidamente e facilmente documenti come lettere, etichette e buste. Aspose.Words consente di generare documenti da modelli con campi Mail Merge.

Un campo Mail Merge è un campo che è possibile inserire in un modello mail merge per includere valori specifici da un record di origine dati nei documenti di output. Ad esempio, è possibile inserire un campo di unione in un modello di posta elettronica in modo che il saluto abbia il nome del destinatario anziché un generico " Ciao!". Aspose.Words inserisce i dati di un'origine esterna, ad esempio un database o un file, in questi campi e li formatta. Il documento risultante viene salvato nella cartella specificata.

Aspose.Words adotta la funzionalità standard Mail Merge e avanza di molti passi avanti, trasformandola in una soluzione di reporting completa che consente di creare documenti ancora più complessi come report, cataloghi, inventari e fatture. Ecco alcuni vantaggi della soluzione di reporting Aspose.Words:

- Progettare report in Microsoft Word utilizzando i campi standard Mail Merge
- Definire le aree del documento in crescita, ad esempio le righe di ordine dettagliate (attualmente non è supportato nella versione Python)
- Inserire immagini durante un mail merge
- Esegui qualsiasi logica personalizzata, controlla la formattazione o inserisci contenuto complesso utilizzando i gestori di eventi Mail Merge (attualmente non è supportato nella versione Python)
- Compilare documenti con dati da qualsiasi tipo di origine dati (attualmente non è supportato nella versione Python, è supportata solo l'origine dati array)

{{% alert color="primary" %}}

Il modulo [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) viene utilizzato per lavorare con l'unione della posta.

{{% /alert %}}

## Meccanismo e componenti principali di un'operazione Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words offre la possibilità di caricare documenti in vari [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) e quindi consente agli utenti di eseguire un'operazione Mail Merge.

Di solito, un documento caricato consente di memorizzare campi di unione, ad esempio un documento in formato DOCX. Ma ci sono formati che non memorizzano tali campi, ad esempio TXT. Se Aspose.Words supporta il caricamento di tali formati di file, è possibile aggiungere i campi di unione direttamente al modello di documento, salvare il documento in un comodo [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) ed eseguire l'operazione Mail Merge.

L'operazione Mail Merge unirà il tuo *mail merge template* e il tuo *data source* per generare singoli *merged documents*.

## Che cos'è un modelloMail Merge {#what-is-a-mail-merge-template}

L'obiettivo di applicare un'operazione mail merge utilizzando un modello di unione è semplificare il processo di creazione di un documento.

Esistono diversi modi per creare e progettare un modello di unione. È possibile utilizzare Microsoft Word e il modello di unione non deve essere un modello Microsoft Word, ovvero un documento nel formato DOT o DOTX, può essere un documento normale nel formato DOC o DOCX. È necessario inserire alcuni campi speciali chiamati campi di unione in questo modello nei punti in cui si desidera inserire successivamente i dati dall'origine dati. Oppure è possibile creare un modello di unione a livello di codice utilizzando la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

Il modello di unione contiene il testo principale, che dovrebbe essere lo stesso in tutti i documenti di output dopo aver eseguito l'operazione Mail Merge. È possibile utilizzare qualsiasi formato per il modello se è possibile aggiungere campi di unione ad esso. Tutti i campi di unione all'interno del modello verranno compilati dall'origine dati durante l'operazione Mail Merge.

## Tipi di origine dati per un'operazione Mail Merge {#data-source-types-for-a-mail-merge-operation}

Attualmente Aspose.Words per Python via .NET Mail Merge accetta solo una matrice di valori come origine dati. Altri tipi verranno aggiunti nelle versioni future.

L'esempio di codice seguente mostra come creare un modello semplice e riempirlo con i dati utilizzando la funzionalità Mail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Documenti uniti di un'operazione Mail Merge {#merged-documents-of-a-mail-merge-operation}

Un documento unito è il risultato dell'operazione Mail Merge quando si unisce il modello all'origine dati. Tutti i campi di unione all'interno del documento unito vengono sostituiti con dati effettivi dall'origine dati.

L'immagine seguente mostra un esempio del modello di unione con campi uniti prima di eseguire l'operazione Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

L'immagine seguente mostra un esempio del documento unito di output come risultato dell'esecuzione dell'operazione Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Vedi anche

- [Lavorare con i modelli Mail Mergein Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
