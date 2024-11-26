---
title: Semplice operazione Mail Merge in C++
second_title: Aspose.Words per C++
articleTitle: Semplice operazione Mail Merge
linktitle: Semplice operazione Mail Merge
type: docs
description: "Un semplice Mail Merge viene utilizzato per riempire i campi Mail Merge all'interno del modello con i dati richiesti dall'origine dati – è simile al classico Mail Merge in Microsoft Word. Aggiungere uno o più campi di unione nel modello e quindi eseguire la semplice operazione mail merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /it/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Un semplice Mail Merge viene utilizzato per riempire i campi Mail Merge all'interno del modello con i dati richiesti dall'origine dati (rappresentazione di tabella singola). Quindi è simile al classico Mail Merge in Microsoft Word.

È possibile aggiungere uno o più campi di unione nel modello e quindi eseguire la semplice operazione mail merge. Si consiglia di utilizzarlo se il modello non contiene regioni di unione.

La limitazione principale dell'utilizzo di questo tipo è che l'intero contenuto del documento verrà ripetuto per ogni record nell'origine dati.

## Come eseguire una semplice operazione Mail Merge

Una volta che il modello è pronto, è possibile iniziare a eseguire la semplice operazione mail merge. Aspose.Words consente di eseguire una semplice operazione Mail Merge utilizzando diversi metodi [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) che accettano vari oggetti dati come origine dati.

Il seguente esempio di codice mostra come eseguire una semplice operazione Mail Merge utilizzando uno dei metodi [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

È possibile notare la differenza tra il documento prima di eseguire simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

E dopo aver eseguito semplice mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Come creare più documenti uniti

In Aspose.Words, l'operazione standard Mail Merge riempie solo un singolo documento con il contenuto dell'origine dati. Quindi, sarà necessario eseguire l'operazione Mail Merge molte volte per creare alcuni documenti uniti come output.

L'esempio di codice seguente mostra come generare alcuni documenti uniti durante un'operazione Mail Merge con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
