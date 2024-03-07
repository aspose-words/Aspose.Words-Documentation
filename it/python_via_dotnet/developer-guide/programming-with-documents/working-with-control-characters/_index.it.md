---
title: Lavorare con i caratteri di controllo
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i caratteri di controllo
linktitle: Lavorare con i caratteri di controllo
description: "Introduzione all'utilizzo dei caratteri di controllo in Aspose.Words per Python."
type: docs
weight: 400
url: /it/python-net/working-with-control-characters/
---

I documenti Microsoft Word possono contenere vari caratteri che hanno un significato speciale. Normalmente vengono utilizzati per scopi di formattazione e non vengono disegnati in modalità normale. Puoi renderli visibili facendo clic sul pulsante Mostra/Nascondi segni di formattazione situato sulla barra degli strumenti Standard.

A volte potrebbe essere necessario aggiungere o rimuovere caratteri al/dal testo. Ad esempio, quando si ottiene testo a livello di codice dal documento, Aspose.Words conserva la maggior parte dei caratteri di controllo, quindi se è necessario lavorare con questo testo probabilmente è necessario rimuovere o sostituire i caratteri.

La classe [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) è un repository per le costanti che rappresentano i caratteri di controllo spesso incontrati nei documenti. Fornisce versioni sia char che string delle stesse costanti. Ad esempio, string [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) e char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) hanno lo stesso valore.

Nell'esempio di codice seguente viene illustrato come utilizzare i caratteri di controllo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
