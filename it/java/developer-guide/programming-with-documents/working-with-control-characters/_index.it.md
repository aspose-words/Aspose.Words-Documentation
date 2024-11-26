---
title: Lavorare con i caratteri di controllo
second_title: Aspose.Words per Java
articleTitle: Lavorare con i caratteri di controllo
linktitle: Lavorare con i caratteri di controllo
description: "Introduzione all'utilizzo dei caratteri di controllo in Aspose.Words per Java."
type: docs
weight: 400
url: /it/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

I documenti Microsoft Word possono contenere vari caratteri che hanno un significato speciale. Normalmente vengono utilizzati per scopi di formattazione e non vengono disegnati in modalità normale. È possibile renderli visibili se si fa clic sul pulsante Mostra / Nascondi segni di formattazione situato sulla barra degli strumenti standard.

A volte potrebbe essere necessario aggiungere o rimuovere caratteri da/verso il testo. Ad esempio, quando si ottiene il testo a livello di codice dal documento, Aspose.Words conserva la maggior parte dei caratteri di controllo, quindi se è necessario lavorare con questo testo è probabilmente necessario rimuovere o sostituire i caratteri.

La classe [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) è un repository per le costanti che rappresentano i caratteri di controllo spesso riscontrati nei documenti. Fornisce entrambe le versioni char e string delle stesse costanti. Ad esempio, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) e char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) hanno lo stesso valore.

{{% alert color="primary" %}}

Usa questa classe ogni volta che vuoi gestire i caratteri di controllo.

{{% /alert %}}

Il seguente esempio di codice mostra come utilizzare i caratteri di controllo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
