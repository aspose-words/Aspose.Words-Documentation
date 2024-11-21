---
title: Lavorare con i caratteri di controllo
second_title: Aspose.Words per C++
articleTitle: Lavorare con i caratteri di controllo
linktitle: Lavorare con i caratteri di controllo
description: "Introduzione a lavorare con i caratteri di controllo in Aspose.Words per C++."
type: docs
weight: 400
url: /it/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

I documenti Microsoft Word possono contenere vari caratteri che hanno un significato speciale. Normalmente vengono utilizzati per scopi di formattazione e non vengono disegnati in modalità normale. È possibile renderli visibili se si fa clic sul pulsante Mostra / Nascondi segni di formattazione situato sulla barra degli strumenti standard.

A volte potrebbe essere necessario aggiungere o rimuovere caratteri da/verso il testo. Ad esempio, quando si ottiene il testo a livello di codice dal documento, Aspose.Words conserva la maggior parte dei caratteri di controllo, quindi se è necessario lavorare con questo testo è probabilmente necessario rimuovere o sostituire i caratteri.

La classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) è un repository per le costanti che rappresentano i caratteri di controllo spesso riscontrati nei documenti. Fornisce entrambe le versioni char e string delle stesse costanti. Ad esempio, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) e char **ControlChar.LineBreakChar** hanno lo stesso valore.

Il seguente esempio di codice mostra come utilizzare i caratteri di controllo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
