---
title: Dare un documento in Java
second_title: Aspose.Words per Java
articleTitle: Sola un documento
linktitle: Sola un documento
type: docs
description: "Clone un documento per ottenere la sua copia identica. Quando si crea una copia, i nodi e le proprietà del documento originale vengono clonati utilizzando Java."
weight: 70
url: /it/java/clone-a-document/
---

La chiusura di un documento è il processo di creazione di una copia identica di un documento originale, che può migliorare le prestazioni e salvare da potenziali perdite di memoria.

Questo articolo spiegherà i principali casi di utilizzo di clonazione di un documento e come creare un clone di documento utilizzando Aspose.Words.

## Operazioni con documenti di chiusura

L'operazione clone consente di rendere il processo di creazione di documenti più veloce in quanto non è necessario caricare e analizzare un documento da un file ogni volta.

Dopo aver creato un clone del documento, sarai in grado di modificarlo ed eseguire diverse operazioni su di esso, ad esempio, confrontarlo con il documento originale, appendirlo o inserirlo in un altro documento. È inoltre possibile modificare elementi clonati o il loro contenuto prima di inserirli in un altro documento.

## Creazione di un Clone di Documenti

Aspose.Words consente di clonare un documento utilizzando [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) metodo che esegue una copia profonda del documento e lo restituisce. In altre parole, otterrà una copia completa del DOM. The `Clone` metodo accelera la generazione dei documenti, e hai solo bisogno di una riga di codice per ottenere una copia del documento.

Cloning produce un nuovo documento con lo stesso contenuto dell'originale, ma con una copia unica di ogni documento originale [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). È inoltre possibile applicare l'operazione clone a un nodo di documento utilizzando il nodo [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metodo, che consente di duplicare i nodi di documento composito con e senza i loro nodi di bambino.

{{% alert color="primary" %}}

Nota che quando si applica il metodo di clonazione tutte le proprietà del documento saranno clonate.

{{% /alert %}}

Il seguente esempio di codice mostra come clonare un documento e creare un duplicato di una sezione in quel documento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
