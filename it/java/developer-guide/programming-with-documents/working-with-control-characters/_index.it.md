---
title: Lavorare con i caratteri di controllo
second_title: Aspose.Words per Java
articleTitle: Lavorare con i caratteri di controllo
linktitle: Lavorare con i caratteri di controllo
description: "Introduzione al lavoro con i caratteri di controllo in Aspose.Words per Java."
type: docs
weight: 400
url: /it/java/working-with-control-characters/
---

Microsoft Word i documenti possono contenere vari caratteri che hanno un significato speciale. Normalmente vengono utilizzati per la formattazione e non vengono disegnati nella modalità normale. È possibile renderli visibili se si fa clic sul pulsante Show/Hide Formatting Marks situato nella barra degli strumenti standard.

A volte è necessario aggiungere o rimuovere i caratteri da / dal testo. Per esempio, quando si ottiene il testo programmaticamente dal documento, Aspose.Words conserva la maggior parte dei caratteri di controllo, quindi se è necessario lavorare con questo testo si dovrebbe probabilmente rimuovere o sostituire i caratteri.

The [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) classe è un repository per le costanti che rappresentano i caratteri di controllo spesso incontrati nei documenti. Fornisce sia char che string versioni delle stesse costanti. Ad esempio, stringa [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) e beneficenza [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) ha lo stesso valore.

{{% alert color="primary" %}}

Utilizzare questa classe ogni volta che si desidera affrontare i caratteri di controllo.

{{% /alert %}}

Il seguente esempio di codice mostra come utilizzare i caratteri di controllo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
