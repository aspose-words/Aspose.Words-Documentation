---
title: Lavorare con le macro VBA in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le macro VBA
linktitle: Lavorare con le macro VBA
description: "Crea, leggi, scrivi, clona e gestisci macro VBA in un documento utilizzando Python."
type: docs
weight: 410
url: /it/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) per Microsoft Word è un linguaggio di programmazione semplice ma potente che può essere utilizzato per estendere le funzionalità. Aspose.Words API fornisce tre classi per ottenere l'accesso al codice sorgente del progetto VBA:

- La classe [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) fornisce l'accesso alle informazioni sul progetto VBA
- La classe [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) restituisce la raccolta di moduli del progetto VBA
- La classe [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) fornisce l'accesso al modulo di progetto VBA
- L'enumerazione [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) definisce i tipi di un modello in un progetto VBA. Il modulo può essere un modulo procedurale, un modulo di documento, un modulo di classe o un modulo di progettazione

## Crea un progetto VBA

Aspose.Words API fornisce la proprietà [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) per ottenere o impostare [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) nel documento.

Il seguente esempio di codice dimostra come creare un progetto VBA e un modulo VBA insieme alle proprietà di base, ad esempio [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) e [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Leggi le macro

Aspose.Words offre inoltre agli utenti la possibilità di leggere le macro VBA.

Il seguente esempio di codice mostra come leggere le macro VBA dal documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Scrivere o modificare macro

Utilizzando Aspose.Words, gli utenti possono modificare le macro VBA.

Il seguente esempio di codice mostra come modificare le macro VBA utilizzando la proprietà [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clona progetto VBA

Con Aspose.Words è anche possibile clonare progetti VBA.

Il seguente esempio di codice mostra come clonare il progetto VBA utilizzando la proprietà [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clona modulo VBA

Se necessario, puoi anche clonare i moduli VBA.

Il seguente esempio di codice mostra come clonare il modulo VBA utilizzando la proprietà [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Lavora con i riferimenti al progetto VBA

Aspose.Words API fornisce una classe [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) per lavorare con i riferimenti al progetto VBA che rappresentano una raccolta di riferimenti al progetto VBA.

Il seguente esempio di codice mostra come rimuovere alcuni riferimenti dalla raccolta di riferimenti da un progetto VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
