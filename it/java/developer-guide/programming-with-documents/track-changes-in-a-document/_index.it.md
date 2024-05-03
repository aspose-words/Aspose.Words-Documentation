---
title: Cambiamenti di traccia in un documento Java
second_title: Aspose.Words per Java
articleTitle: Cambiamenti di traccia in un documento
linktitle: Cambiamenti di traccia in un documento
description: "Traccia le modifiche al contenuto e la formattazione fatta da te o da altri. Accedere alle revisioni individuali in un documento e applicare varie proprietà a loro utilizzando Java."
type: docs
weight: 270
url: /it/java/track-changes-in-a-document/
---

La funzionalità delle modifiche di traccia, nota anche come revisione, consente di monitorare le modifiche al contenuto e la formattazione fatta da voi o da altri utenti. Questa pista cambia caratteristica con Aspose.Words supporta i cambiamenti di traccia Microsoft Word. Con questa funzionalità, è possibile accedere a singole revisioni nel documento e applicare diverse proprietà a loro.

Quando si attiva la funzione di modifica della traccia, tutti gli elementi inseriti, cancellati e modificati del documento verranno evidenziati visivamente con le informazioni su cui, quando e cosa è stato cambiato. Oggetti che trasportano informazioni su ciò che è stato cambiato sono chiamati "cambiamenti di tracciamento". Ad esempio, supponga che si desidera rivedere un documento e fare cambiamenti importanti – questo può significare che è necessario fare revisioni. Inoltre, potrebbe essere necessario inserire commenti per discutere alcuni dei cambiamenti. Ecco dove arrivano i cambiamenti di tracciamento dei documenti.

Questo articolo spiega come gestire e monitorare i cambiamenti creati da molti recensori sullo stesso documento, così come le proprietà per il monitoraggio dei cambiamenti.

{{% alert color="primary" %}}

Si noti che la funzione di commento in Aspose.Words, così come in Microsoft Word, può essere associato a modifiche di tracciamento. Tuttavia, ricorda che i commenti sono completamente indipendenti dai cambiamenti di tracciamento.

{{% /alert %}}

## Che cosa è una revisione

Prima di immergersi in revisioni, spieghiamo il significato delle revisioni. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) è un cambiamento che si verifica in un nodo di un documento mentre un gruppo di revisione, rappresentato dal [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) classe, è un gruppo di revisioni sequenziali che si verificano in molti nodi di un documento. La revisione è uno strumento per monitorare i cambiamenti.

Le revisioni sono utilizzate nella funzione di monitoraggio e all'interno della funzione di confronto dei documenti, dove le revisioni appaiono a seguito del confronto. Quindi, le revisioni all'interno delle modifiche di tracciamento mostrano da chi e cosa è stato cambiato.

{{% alert color="primary" %}}

Nota: Microsoft Word non consente di visualizzare le revisioni individuali, consente solo di visualizzare le revisioni sequenziali come un'unica entità. Ma Aspose.Words risolve questa limitazione con il **RevisionGroup** classe.

{{% /alert %}}

Aspose.Words supporta diversi tipi di revisione, così come in Microsoft Word, come Inserimento, Cancellazione, Formato Cambiamento, StyleDefinition Cambiare e muoversi. Tutti i tipi di revisione sono rappresentati con [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) enumerazione.

{{% alert color="primary" %}}

Si noti che le revisioni hanno un risultato simile a Microsoft Word ma Aspose.Words non rileva la formattazione durante le modifiche di tracciamento.

{{% /alert %}}

## Avviare e interrompere le modifiche di monitoraggio

Modificare un documento di solito non conta come una revisione fino a quando non si inizia a tracciarlo. Aspose.Words consente di monitorare automaticamente tutte le modifiche del documento con semplici passaggi. È possibile avviare facilmente il processo di monitoraggio delle modifiche utilizzando il [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) metodo. Se è necessario interrompere il processo di monitoraggio modifiche in modo che eventuali modifiche future non siano considerate revisioni, è necessario utilizzare il [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) metodo.

{{% alert color="primary" %}}

Nota che `StartTrackingRevisions` metodo non cambia lo stato del [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) proprietà e non utilizza il suo valore per l'obiettivo di monitoraggio della revisione. Inoltre, se un nodo è stato spostato da una posizione all'altra all'interno del documento tracciato, verranno create le revisioni, tra cui il movimento-da e il movimento-a gamma.

{{% /alert %}}

Al termine del processo di monitoraggio delle modifiche nel documento, si avrà la capacità di accettare anche tutte le revisioni o rifiutarle di reindirizzare il documento alla sua forma originale. Questo può essere raggiunto sia utilizzando [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) o [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) metodo. Inoltre, è possibile accettare o rifiutare ogni revisione separatamente utilizzando [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) o [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) metodo.

Tutti i cambiamenti saranno tracciati per una iterazione dal momento in cui si avvia il processo al momento in cui si ferma. La connessione tra diverse iterazioni è rappresentata come lo scenario seguente: si completa il processo di tracciamento, quindi fare alcuni cambiamenti, e iniziare a monitorare i cambiamenti di nuovo. Con questo scenario, tutte le modifiche che non hai accettato o rifiutato verranno visualizzate di nuovo.

{{% alert color="primary" %}}

Nota che `AcceptAllRevisions` metodo è simile al "Accept All Changes" in Microsoft Word.

{{% /alert %}}

Il seguente esempio di codice mostra come lavorare con le modifiche di tracciamento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Il seguente esempio di codice mostra come le revisioni vengono generate quando un nodo viene spostato all'interno di un documento tracciato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Gestire e memorizzare modifiche come revisioni

Con la precedente funzione di monitoraggio modifiche, è possibile capire quali cambiamenti sono stati fatti nel documento e che ha fatto quei cambiamenti. Mentre con il [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) funzione, forzare eventuali modifiche all'interno del documento da memorizzare come revisioni.

Aspose.Words consente di verificare se un documento ha una revisione o meno utilizzando [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) proprieta'. Se non è necessario monitorare automaticamente le modifiche del documento attraverso i metodi StartTrackRevisions e StopTrackRevisions, è possibile utilizzare il `TrackRevisions` proprietà per verificare se le modifiche vengono monitorate durante la modifica di un documento in Microsoft Word e memorizzato come revisioni.

The `TrackRevisions` caratteristica fa revisioni invece di reale DOM cambiamenti. Ma le revisioni stesse sono separate. Per esempio, Se si elimina qualsiasi paragrafo, Aspose.Words fare come una revisione, marcandolo come cancellazione, invece di eliminarlo.

Inoltre, Aspose.Words consente di controllare se un oggetto è stato inserito, cancellato o modificato la formattazione utilizzando il [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), e [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) proprietà.

{{% alert color="primary" %}}

Si noti che non c'è connessione tra le revisioni stesse e le `TrackRevisions` proprieta'. Inoltre, è possibile accettare/rigettare le revisioni indipendentemente dalla funzione di monitoraggio modifiche.

{{% /alert %}}

Il seguente esempio di codice mostra come applicare diverse proprietà con revisioni:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
