﻿---
title: Clonare un documento in Java
second_title: Aspose.Words per Java
articleTitle: Clonare un documento
linktitle: Clonare un documento
type: docs
description: "Clonare un documento per ottenere la sua copia identica. Quando si crea una copia, i nodi e le proprietà del documento originale vengono clonati utilizzando Java."
weight: 70
url: /it/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

La clonazione di un documento è il processo di creazione di una copia identica di un documento originale, che può migliorare le prestazioni e risparmiare potenziali perdite di memoria.

Questo articolo spiegherà i principali casi d'uso della clonazione di un documento e come creare un clone di documento usando Aspose.Words.

## Operazioni con clonazione di documenti

L'operazione clone consente di rendere il processo di creazione di documenti più veloce in quanto non sarà necessario caricare e analizzare un documento da un file ogni volta.

Dopo aver creato un clone del documento, sarà possibile modificarlo ed eseguire diverse operazioni su di esso, ad esempio confrontarlo con il documento originale, aggiungerlo o inserirlo in un altro documento. È inoltre possibile modificare gli elementi clonati o il loro contenuto prima di inserirli in un altro documento.

## Creazione di un clone di documenti

Aspose.Words consente di clonare un documento utilizzando il metodo [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) che esegue una copia profonda del documento e lo restituisce. In altre parole, otterrà una copia completa del DOM. Il metodo `Clone` accelera la generazione dei documenti e basta una riga di codice per ottenere una copia del documento.

La clonazione produce un nuovo documento con lo stesso contenuto dell'originale, ma con una copia univoca di ciascuno dei [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/) del documento originale. È inoltre possibile applicare l'operazione clone a un nodo documento utilizzando il metodo node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean), che consente di duplicare i nodi documento composito con e senza i relativi nodi figlio.

{{% alert color="primary" %}}

Si noti che quando si applica il metodo di clonazione tutte le proprietà del documento verranno clonate.

{{% /alert %}}

L'esempio di codice seguente mostra come clonare un documento e creare un duplicato di una sezione in tale documento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
