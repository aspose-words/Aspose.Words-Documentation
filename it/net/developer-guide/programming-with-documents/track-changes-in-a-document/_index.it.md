---
title: Tieni traccia delle modifiche in un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Tieni traccia delle modifiche in un documento
linktitle: Tieni traccia delle modifiche in un documento
description: "Tieni traccia delle modifiche al contenuto e alla formattazione apportate da te o da altri utilizzando C#. Accedi alle singole revisioni di un documento e applica loro varie proprietà."
type: docs
weight: 270
url: /it/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La funzionalità di tracciamento delle modifiche, nota anche come revisione, ti consente di tenere traccia delle modifiche al contenuto e alla formattazione apportate da te o da altri utenti. Questa funzionalità di tracciamento delle modifiche con Aspose.Words supporta le modifiche di tracciamento in Microsoft Word. Con questa funzionalità, puoi accedere alle singole revisioni del tuo documento e applicare loro diverse proprietà.

Quando abiliti la funzione di tracciamento delle modifiche, tutti gli elementi inseriti, eliminati e modificati del documento verranno evidenziati visivamente con informazioni su chi, quando e cosa è stato modificato. Gli oggetti che contengono informazioni su ciò che è stato modificato sono chiamati "tracciamento delle modifiche". Ad esempio, supponi di voler rivedere un documento e apportare modifiche importanti: ciò potrebbe significare che è necessario apportare delle revisioni. Inoltre, potrebbe essere necessario inserire commenti per discutere alcune modifiche. È qui che entra in gioco il monitoraggio delle modifiche nei documenti.

Questo articolo spiega come gestire e tenere traccia delle modifiche create da più revisori sullo stesso documento, nonché le proprietà per tenere traccia delle modifiche.

{{% alert color="primary" %}}

Tieni presente che la funzione di commento in Aspose.Words, così come in Microsoft Word, può essere associata al monitoraggio delle modifiche. Tuttavia, ricorda che i commenti sono completamente indipendenti dal monitoraggio delle modifiche.

{{% /alert %}}

## Che cos'è una revisione

Prima di immergerci nelle revisioni, spieghiamo il significato delle revisioni. Un [revision](https://reference.aspose.com/words/it/net/aspose.words/revision/) è una modifica che avviene in un nodo di un documento mentre un gruppo di revisione, rappresentato dalla classe [RevisionGroup](https://reference.aspose.com/words/it/net/aspose.words/revision/group/), è un gruppo di revisioni sequenziali che si verificano in molti nodi di un documento. Fondamentalmente, la revisione è uno strumento per tenere traccia delle modifiche.

Le revisioni vengono utilizzate nella funzionalità di rilevamento delle modifiche e nella funzionalità di confronto dei documenti, dove le revisioni vengono visualizzate come risultato del confronto. Pertanto, le revisioni all'interno della funzionalità di rilevamento delle modifiche mostrano da chi e cosa è stato modificato.

{{% alert color="primary" %}}

Tieni presente che Microsoft Word non ti consente di visualizzare singole revisioni, ma solo di visualizzare revisioni sequenziali come una singola entità. Ma Aspose.Words risolve questa limitazione con la classe **RevisionGroup**.

{{% /alert %}}

Aspose.Words supporta diversi tipi di revisione, oltre che in Microsoft Word, come Inserimento, Eliminazione, FormatChange, StyleDefinitionChange e Moving. Tutti i tipi di revisione sono rappresentati con l'enumerazione [RevisionType](https://reference.aspose.com/words/it/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Tieni presente che le revisioni hanno un risultato simile a Microsoft Word ma Aspose.Words non rileva la formattazione durante il monitoraggio delle modifiche.

{{% /alert %}}

## Avvia e interrompi il monitoraggio delle modifiche

La modifica di un documento di solito non conta come una revisione finché non inizi a monitorarlo. Aspose.Words ti consente di tenere traccia automaticamente di tutte le modifiche apportate al tuo documento con semplici passaggi. Puoi avviare facilmente il processo di tracciamento delle modifiche utilizzando il metodo [StartTrackRevisions](https://reference.aspose.com/words/it/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Se è necessario interrompere il processo di tracciamento delle modifiche in modo che eventuali modifiche future non siano considerate revisioni, sarà necessario utilizzare il metodo [StopTrackRevisions](https://reference.aspose.com/words/it/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Tieni presente che il metodo `StartTrackingRevisions` non modifica lo stato della proprietà [TrackRevisions](https://reference.aspose.com/words/it/net/aspose.words/document/trackrevisions/) e non utilizza il suo valore ai fini del monitoraggio delle revisioni. Inoltre, se un nodo è stato spostato da una posizione a un'altra all'interno del documento tracciato, verranno create delle revisioni di spostamento, inclusi gli intervalli di spostamento da e di spostamento a.

{{% /alert %}}

Al termine del processo di monitoraggio delle modifiche nel tuo documento, avrai la possibilità anche di accettare tutte le revisioni o di rifiutarle per ripristinare il documento nella sua forma originale. Ciò può essere ottenuto utilizzando il metodo [AcceptAllRevisions](https://reference.aspose.com/words/it/net/aspose.words/document/acceptallrevisions/) o [RejectAll](https://reference.aspose.com/words/it/net/aspose.words/revisioncollection/rejectall/). Inoltre, puoi accettare o rifiutare ciascuna revisione separatamente utilizzando il metodo [Accept](https://reference.aspose.com/words/it/net/aspose.words/revision/accept/) o [Reject](https://reference.aspose.com/words/it/net/aspose.words/revision/reject/).

Tutte le modifiche verranno tracciate per un'iterazione dal momento in cui avvii il processo al momento in cui lo interrompi. La connessione tra le diverse iterazioni è rappresentata dal seguente scenario: si completa il processo di tracciamento, si apportano alcune modifiche e si avvia nuovamente il tracciamento delle modifiche. In questo scenario, tutte le modifiche che non hai accettato o rifiutato verranno nuovamente visualizzate.

{{% alert color="primary" %}}

Tieni presente che il metodo `AcceptAllRevisions` è simile a "Accetta tutte le modifiche" in Microsoft Word.

{{% /alert %}}

L'esempio di codice seguente mostra come utilizzare il rilevamento delle modifiche:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Il seguente esempio di codice mostra come vengono generate le revisioni quando un nodo viene spostato all'interno di un documento monitorato:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Gestisci e archivia le modifiche come revisioni

Con la precedente funzionalità di rilevamento delle modifiche, puoi capire quali modifiche sono state apportate al tuo documento e chi le ha apportate. Mentre con la funzione [TrackRevisions](https://reference.aspose.com/words/it/net/aspose.words/document/trackrevisions/), imposti che eventuali modifiche all'interno del tuo documento vengano archiviate come revisioni.

Aspose.Words ti consente di verificare se un documento ha una revisione o meno utilizzando la proprietà [HasRevision](https://reference.aspose.com/words/it/net/aspose.words/document/hasrevisions/). Se non è necessario tenere traccia automaticamente delle modifiche nel documento tramite i metodi StartTrackRevisions e StopTrackRevisions, è possibile utilizzare la proprietà `TrackRevisions` per verificare se le modifiche vengono tracciate durante la modifica di un documento in Microsoft Word e archiviate come revisioni.

La funzione `TrackRevisions` apporta revisioni invece di reali modifiche DOM. Ma le revisioni stesse sono separate. Ad esempio, se elimini un paragrafo, Aspose.Words lo renderà una revisione, contrassegnandolo come eliminazione, invece di eliminarlo.

Inoltre, Aspose.Words consente di verificare se un oggetto è stato inserito, eliminato o modificata la formattazione utilizzando le proprietà [IsDeleteRevision](https://reference.aspose.com/words/it/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/it/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/it/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/it/net/aspose.words/inline/ismovefromrevision/) e [IsMoveToRevision](https://reference.aspose.com/words/it/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Tieni presente che non esiste alcuna connessione tra le revisioni stesse e la proprietà `TrackRevisions`. Inoltre, puoi accettare/rifiutare le revisioni indipendentemente dalla funzionalità di rilevamento delle modifiche.

{{% /alert %}}

L'esempio di codice seguente mostra come applicare proprietà diverse con revisioni:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
