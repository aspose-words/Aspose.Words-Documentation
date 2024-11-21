---
title: Tenere traccia delle modifiche in un documento in C++
second_title: Aspose.Words per C++
articleTitle: Tenere traccia delle modifiche in un documento
linktitle: Tenere traccia delle modifiche in un documento
description: "Tieni traccia delle modifiche apportate al contenuto e alla formattazione da te o da altri utenti che utilizzano C++. Accedere a singole revisioni in un documento e applicarvi varie proprietà."
type: docs
weight: 270
url: /it/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

La funzionalità di tenere traccia delle modifiche, nota anche come revisione, consente di tenere traccia delle modifiche al contenuto e alla formattazione apportate dall'utente o da altri utenti. Questa funzione traccia modifiche con Aspose.Words supporta traccia modifiche in Microsoft Word. Con questa funzionalità, è possibile accedere a singole revisioni nel documento e applicarvi proprietà diverse.

Quando si attiva la funzione Traccia modifiche, tutti gli elementi inseriti, eliminati e modificati del documento verranno evidenziati visivamente con informazioni su chi, quando e cosa è stato modificato. Gli oggetti che contengono le informazioni su ciò che è stato modificato sono chiamati "modifiche di tracciamento". Ad esempio, si supponga di voler rivedere un documento e apportare modifiche importanti: ciò potrebbe significare che è necessario apportare revisioni. Inoltre, potrebbe essere necessario inserire commenti per discutere alcune delle modifiche. È qui che entrano in gioco le modifiche ai documenti.

Questo articolo spiega come gestire e tenere traccia delle modifiche create da molti revisori sullo stesso documento, nonché le proprietà per il monitoraggio delle modifiche.

{{% alert color="primary" %}}

Si noti che la funzione commento in Aspose.Words, così come in Microsoft Word, può essere associata alle modifiche di tracciamento. Tuttavia, ricorda che i commenti sono completamente indipendenti dalle modifiche di tracciamento.

{{% /alert %}}

## Cos'è una revisione

Prima di approfondire le revisioni, spieghiamo il significato delle revisioni. Un [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) è una modifica che si verifica in un nodo di un documento mentre un gruppo di revisione, rappresentato dalla classe [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), è un gruppo di revisioni sequenziali che si verificano in molti nodi di un documento. Fondamentalmente, la revisione è uno strumento per tracciare le modifiche.

Le revisioni vengono utilizzate nella funzione Monitoraggio modifiche e nella funzione Confronta documenti, in cui le revisioni vengono visualizzate come risultato del confronto. Quindi, le revisioni all'interno della funzione di monitoraggio delle modifiche mostrano da chi e cosa è stato modificato.

{{% alert color="primary" %}}

Si noti che Microsoft Word non consente di visualizzare singole revisioni, ma consente solo di visualizzare le revisioni sequenziali come una singola entità. Ma Aspose.Words risolve questa limitazione con la classe **RevisionGroup**.

{{% /alert %}}

Aspose.Words supporta diversi tipi di revisione, così come in Microsoft Word, come Inserimento, Eliminazione, FormatChange, StyleDefinitionChange e Spostamento. Tutti i tipi di revisione sono rappresentati con l'enumerazione [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Si noti che le revisioni hanno un risultato simile a Microsoft Word ma Aspose.Words non rileva la formattazione durante il monitoraggio delle modifiche.

{{% /alert %}}

## Avviare e interrompere le modifiche di monitoraggio

La modifica di un documento di solito non viene considerata una revisione fino a quando non si inizia a monitorarlo. Aspose.Words consente di monitorare automaticamente tutte le modifiche nel documento con semplici passaggi. È possibile avviare facilmente il processo di tracciamento delle modifiche utilizzando il metodo [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Se è necessario interrompere il processo di tracciamento delle modifiche in modo che eventuali modifiche future non siano considerate revisioni, è necessario utilizzare il metodo [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Si noti che il metodo `StartTrackingRevisions` non modifica lo stato della proprietà [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) e non utilizza il suo valore per lo scopo del monitoraggio delle revisioni. Inoltre, se un nodo è stato spostato da una posizione all'altra all'interno del documento tracciato, verranno create le revisioni move, inclusi gli intervalli move-from e move-to.

{{% /alert %}}

Al termine del processo di tracciamento delle modifiche nel documento, si avrà la possibilità di accettare anche tutte le revisioni o rifiutarle per ripristinare il documento nella sua forma originale. Questo può essere ottenuto usando il metodo [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) o [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Inoltre, è possibile accettare o rifiutare ogni revisione separatamente utilizzando il metodo [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) o [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Tutte le modifiche verranno monitorate per un'iterazione dal momento in cui si avvia il processo al momento in cui lo si interrompe. La connessione tra diverse iterazioni è rappresentata come lo scenario seguente: si completa il processo di tracciamento, quindi si apportano alcune modifiche e si ricomincia a tracciare le modifiche. Con questo scenario, tutte le modifiche che non hai accettato o rifiutato verranno visualizzate di nuovo.

{{% alert color="primary" %}}

Si noti che il metodo `AcceptAllRevisions` è simile a "Accetta tutte le modifiche" in Microsoft Word.

{{% /alert %}}

Il seguente esempio di codice mostra come lavorare con le modifiche di monitoraggio:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

L'esempio di codice seguente mostra come vengono generate le revisioni quando un nodo viene spostato all'interno di un documento tracciato:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Gestire e archiviare le modifiche come revisioni

Con la funzione di monitoraggio delle modifiche precedenti, è possibile capire quali modifiche sono state apportate nel documento e chi ha apportato tali modifiche. Con la funzione [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), è possibile forzare l'archiviazione di eventuali modifiche all'interno del documento come revisioni.

Aspose.Words consente di verificare se un documento ha una revisione o meno utilizzando la proprietà [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Se non è necessario tenere traccia automaticamente delle modifiche nel documento tramite i metodi StartTrackRevisions e StopTrackRevisions, è possibile utilizzare la proprietà `TrackRevisions` per verificare se le modifiche vengono tracciate durante la modifica di un documento in Microsoft Word e archiviate come revisioni.

La funzione `TrackRevisions` effettua revisioni anziché modifiche reali del DOM. Ma le revisioni stesse sono separate. Ad esempio, se si elimina un paragrafo, Aspose.Words renderlo come revisione, contrassegnandolo come eliminazione, invece di eliminarlo.

Inoltre, Aspose.Words consente di verificare se un oggetto è stato inserito, eliminato o modificato [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), e [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) proprietà.

{{% alert color="primary" %}}

Si noti che non esiste alcuna connessione tra le revisioni stesse e la proprietà `TrackRevisions`. Inoltre, è possibile accettare/rifiutare le revisioni indipendentemente dalla funzione di monitoraggio delle modifiche.

{{% /alert %}}

Il seguente esempio di codice mostra come applicare diverse proprietà con le revisioni:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
