---
title: Mail Merge e reporting in C++
second_title: Aspose.Words per C++
articleTitle: Mail Merge e rapporti
linktitle: Mail Merge e rapporti
type: docs
description: "Mail Merge è una caratteristica popolare per la creazione rapida di documenti utilizzando C++. Aspose.Words per C++ adotta la funzionalità standard mail merge e avanza di molti passi avanti, trasformandola in una soluzione di reporting completa che consente di creare documenti ancora più complessi come report, cataloghi, inventari e fatture."
keywords: "how to use mail merge c++"
weight: 30
url: /it/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge è una caratteristica popolare per creare rapidamente e facilmente documenti come lettere, etichette e buste. Aspose.Words consente di generare documenti da modelli con campi mail merge.

Un campo mail merge è un campo che è possibile inserire in un modello mail merge per includere valori specifici da un record di origine dati nei documenti di output. Ad esempio, è possibile inserire un campo di unione in un modello di posta elettronica in modo che il saluto abbia il nome del destinatario anziché un generico " Ciao!". Aspose.Words inserisce i dati di un'origine esterna, ad esempio un database o un file, in questi campi e li formatta. Il documento risultante viene salvato nella cartella specificata.

Aspose.Words adotta la funzionalità standard mail merge e avanza di molti passi avanti, trasformandola in una soluzione di reporting completa che consente di creare documenti ancora più complessi come report, cataloghi, inventari e fatture. Ecco alcuni vantaggi della soluzione di reporting Aspose.Words:

- Progettare report in Microsoft Word utilizzando i campi standard mail merge
- Definire le aree del documento in crescita, ad esempio righe di ordine dettagliate
- Inserire immagini durante un mail merge
- Esegui qualsiasi logica personalizzata, controlla la formattazione o inserisci contenuto complesso utilizzando i gestori di eventi mail merge
- Compilare documenti con dati provenienti da qualsiasi tipo di origine dati

{{% alert color="primary" %}}

Lo spazio dei nomi [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) viene utilizzato per lavorare con la fusione della posta.

{{% /alert %}}

## Meccanismo e componenti principali di Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words offre la possibilità di caricare documenti in vari [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) e quindi consente agli utenti di eseguire un'operazione mail merge.

Di solito, un documento caricato consente di memorizzare campi di unione, ad esempio un documento in formato DOCX. Ma ci sono formati che non memorizzano tali campi, ad esempio TXT. Se Aspose.Words supporta il caricamento di tali formati di file, è possibile aggiungere i campi di unione direttamente al modello di documento, salvare il documento in un comodo [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) ed eseguire l'operazione mail merge.

L'operazione mail merge unirà il tuo *mail merge template* e il tuo *data source* per generare singoli *merged documents*.

## Che cos'è un modello Mail Merge {#what-is-a-mail-merge-template}

L'obiettivo di applicare un'operazione mail merge utilizzando un modello di unione è semplificare il processo di creazione di un documento.

Esistono diversi modi per creare e progettare un modello di unione. È possibile utilizzare Microsoft Word e il modello di unione non deve essere un modello Microsoft Word, ovvero un documento nel formato DOT o DOTX, può essere un documento normale nel formato DOC o DOCX. È necessario inserire alcuni campi speciali chiamati campi di unione in questo modello nei punti in cui si desidera inserire successivamente i dati dall'origine dati. Oppure è possibile creare un modello di unione a livello di codice utilizzando la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Il modello di unione contiene il testo principale, che dovrebbe essere lo stesso in tutti i documenti di output dopo aver eseguito l'operazione mail merge. È possibile utilizzare qualsiasi formato per il modello se è possibile aggiungere campi di unione ad esso. Tutti i campi di unione all'interno del modello verranno compilati dall'origine dati durante l'operazione mail merge.


## Vedi anche

- [Lavorare con i modelli mail merge in Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
