---
title: Limitare la modifica dei documenti in C++
second_title: Aspose.Words per C++
articleTitle: Limita la modifica dei documenti
linktitle: Limita la modifica dei documenti
description: "Limitare la modifica di un documento impostando un tipo di restrizione utilizzando C++. È inoltre possibile rimuovere la protezione e rendere le regioni modificabili senza restrizioni."
type: docs
weight: 30
url: /it/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario limitare la possibilità di modificare un documento e consentire solo determinate azioni con esso. Ciò può essere utile per impedire ad altre persone di modificare informazioni sensibili e riservate nel documento.

Aspose.Words consente di limitare la modifica di un documento impostando un tipo di restrizione. Inoltre, Aspose.Words consente anche di specificare le impostazioni di protezione in scrittura per un documento.

In questo articolo viene spiegato come utilizzare Aspose.Words per selezionare un tipo di restrizione, come aggiungere o rimuovere la protezione e come rendere le aree modificabili senza restrizioni.

## Seleziona Modifica Tipo di restrizione

Aspose.Words consente di controllare il modo in cui si limita il contenuto utilizzando il parametro di enumerazione [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Ciò consentirà di selezionare un tipo esatto di protezione come il seguente:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Tutti i tipi sono protetti da password e, se questa password non viene inserita correttamente, un utente non sarà in grado di modificare legalmente il contenuto del documento. Pertanto, se il documento ti viene restituito senza l'obbligo di fornire la password necessaria, questo è un segno che qualcosa non va.

Se non è stata impostata una password quando si sceglie il tipo di protezione, gli altri utenti possono semplicemente ignorare la protezione del documento.

{{% alert color="primary" %}}

Si noti che la password impostata è solo una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento. Il metodo [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) mostra proprio questo.

{{% /alert %}}

## Aggiungi protezione documenti

Aggiungere protezione al documento è un processo semplice, poiché tutto ciò che devi fare è applicare uno dei metodi di protezione descritti in questa sezione.

Aspose.Words consente di proteggere i documenti dalle modifiche utilizzando il metodo [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Questo metodo non è una funzione di sicurezza e non crittografa un documento.

{{% alert color="primary" %}}

In Microsoft Word, puoi limitare la modifica in modo simile usando entrambi:

* Limita la modifica (File → Info → Proteggi documento)
* Funzione alternativa - "Limita la modifica" (Revisione → Protezione → Limita la modifica)

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere la protezione con password al documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

L'esempio di codice seguente mostra come limitare la modifica in un documento in modo che sia possibile solo la modifica nei campi modulo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Rimuovere la protezione dei documenti

Aspose.Words consente di rimuovere la protezione da un documento con una modifica semplice e diretta del documento. È possibile rimuovere la protezione del documento senza conoscere la password effettiva o fornire la password corretta per sbloccare il documento utilizzando il metodo [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Entrambi i modi di rimozione non hanno alcuna differenza.

L'esempio di codice seguente mostra come rimuovere la protezione dal documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Specificare le regioni modificabili senza restrizioni

È possibile limitare la modifica del documento e allo stesso tempo consentire modifiche a parti selezionate di esso. Pertanto, chiunque apra il documento sarà in grado di accedere a queste parti senza restrizioni e apportare modifiche al contenuto.

Aspose.Words consente di contrassegnare le parti che possono essere modificate nel documento utilizzando i metodi [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) e [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

L'esempio di codice seguente mostra come contrassegnare l'intero documento come di sola lettura e specificare le regioni modificabili in esso:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

È inoltre possibile scegliere diverse restrizioni di modifica dei documenti per le diverse sezioni.

Nell'esempio di codice seguente viene illustrato come aggiungere una restrizione per l'intero documento e quindi rimuovere la restrizione per una delle sezioni:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
