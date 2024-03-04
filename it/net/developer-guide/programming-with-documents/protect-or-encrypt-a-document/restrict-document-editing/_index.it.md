---
title: Limita la modifica dei documenti in C#
second_title: Aspose.Words per .NET
articleTitle: Limita la modifica dei documenti
linktitle: Limita la modifica dei documenti
description: "Limita la modifica di un documento impostando un tipo di restrizione utilizzando C#. Puoi anche rimuovere la protezione e creare aree modificabili senza restrizioni."
type: docs
weight: 30
url: /it/net/restrict-document-editing/
---

A volte potrebbe essere necessario limitare la possibilità di modificare un documento e consentire solo determinate azioni con esso. Ciò può essere utile per impedire ad altre persone di modificare informazioni sensibili e riservate nel documento.

Aspose.Words consente di limitare la modifica di un documento impostando un tipo di restrizione. Inoltre, Aspose.Words consente anche di specificare le impostazioni di protezione da scrittura per un documento.

Questo articolo spiega come utilizzare Aspose.Words per selezionare un tipo di restrizione, come aggiungere o rimuovere la protezione e come creare aree modificabili senza restrizioni.

## Seleziona Tipo di restrizione di modifica

Aspose.Words ti consente di controllare il modo in cui limiti il contenuto utilizzando il parametro di enumerazione [ProtectionType](https://reference.aspose.com/words/it/net/aspose.words/protectiontype/). Ciò ti consentirà di selezionare un tipo esatto di protezione come il seguente:

* Consenti solo commenti
* ConsentiSoloCampiForma
* Consenti solo revisioni
* Sola lettura
* Nessuna protezione

Tutti i tipi sono protetti da password e, se la password non viene inserita correttamente, un utente non sarà in grado di modificare legalmente il contenuto del documento. Pertanto, se il tuo documento ti viene restituito senza l'obbligo di fornire la password necessaria, questo è un segno che qualcosa non va.

Se non hai impostato una password quando scegli il tipo di sicurezza, gli altri utenti potranno semplicemente ignorare la protezione del tuo documento.

{{% alert color="primary" %}}

Tieni presente che la password impostata è semplicemente una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento. Il metodo [Unprotect](https://reference.aspose.com/words/it/net/aspose.words/document/unprotect/#unprotect/) mostra proprio questo.

{{% /alert %}}

## Aggiungi la protezione del documento

Aggiungere protezione al tuo documento è un processo semplice, poiché tutto ciò che devi fare è applicare uno dei metodi di protezione descritti in questa sezione.

Aspose.Words ti consente di proteggere i tuoi documenti dalle modifiche utilizzando il metodo [Protect](https://reference.aspose.com/words/it/net/aspose.words/document/protect/#protect/). Questo metodo non è una funzionalità di sicurezza e non crittografa un documento.

{{% alert color="primary" %}}

In Microsoft Word, puoi limitare la modifica in modo simile utilizzando entrambi:

* Limita la modifica (File → Informazioni → Proteggi documento)
* Funzionalità alternativa – "Limita modifica" (Rivedi → Proteggi → Limita modifica)

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere la protezione tramite password al documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Il seguente esempio di codice mostra come limitare la modifica in un documento in modo che sia possibile solo la modifica nei campi del modulo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Rimuovi la protezione del documento

Aspose.Words ti consente di rimuovere la protezione da un documento con una modifica semplice e diretta del documento. Puoi rimuovere la protezione del documento senza conoscere la password effettiva oppure fornire la password corretta per sbloccare il documento utilizzando il metodo [Unprotect](https://reference.aspose.com/words/it/net/aspose.words/document/unprotect/#unprotect/). Entrambi i modi di rimozione non hanno alcuna differenza.

Il seguente esempio di codice mostra come rimuovere la protezione dal documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Specificare regioni modificabili senza restrizioni

Puoi limitare la modifica del tuo documento e allo stesso tempo consentire modifiche a parti selezionate di esso. Pertanto, chiunque apra il tuo documento potrà accedere a queste parti senza restrizioni e apportare modifiche al contenuto.

Aspose.Words ti consente di contrassegnare le parti che possono essere modificate nel tuo documento utilizzando i metodi [StartEditableRange](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/starteditablerange/) e [EndEditableRange](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

Il seguente esempio di codice mostra come contrassegnare l'intero documento come di sola lettura e specificarne le aree modificabili:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Puoi anche scegliere diverse restrizioni di modifica del documento per le diverse sezioni.

L'esempio di codice seguente mostra come aggiungere una restrizione per l'intero documento e quindi rimuovere la restrizione per una delle sezioni:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
