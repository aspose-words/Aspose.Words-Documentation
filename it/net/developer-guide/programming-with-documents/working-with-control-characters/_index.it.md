---
title: Lavorare con i caratteri di controllo
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i caratteri di controllo
linktitle: Lavorare con i caratteri di controllo
description: "Introduzione all'utilizzo dei caratteri di controllo in Aspose.Words per .NET."
type: docs
weight: 400
url: /it/net/working-with-control-characters/
---

I documenti Microsoft Word possono contenere vari caratteri che hanno un significato speciale. Normalmente vengono utilizzati per scopi di formattazione e non vengono disegnati in modalità normale. Puoi renderli visibili facendo clic sul pulsante Mostra/Nascondi segni di formattazione situato sulla barra degli strumenti Standard.

A volte potrebbe essere necessario aggiungere o rimuovere caratteri al/dal testo. Ad esempio, quando si ottiene testo a livello di codice dal documento, Aspose.Words conserva la maggior parte dei caratteri di controllo, quindi se è necessario lavorare con questo testo probabilmente è necessario rimuovere o sostituire i caratteri.

La classe [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) è un repository per le costanti che rappresentano i caratteri di controllo spesso incontrati nei documenti. Fornisce versioni sia char che string delle stesse costanti. Ad esempio, string [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) e char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) hanno lo stesso valore.

L'esempio di codice seguente mostra come utilizzare i caratteri di controllo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
