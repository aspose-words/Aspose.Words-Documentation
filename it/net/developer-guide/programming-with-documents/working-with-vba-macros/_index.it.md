---
title: Lavorare con le macro VBA in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con le macro VBA
linktitle: Lavorare con le macro VBA
description: "Lavorare con progetti VBA di documenti utilizzando C#."
type: docs
weight: 410
url: /it/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) per Microsoft Word è un linguaggio di programmazione semplice ma potente che può essere utilizzato per estendere le funzionalità. Aspose.Words API fornisce tre classi per ottenere l'accesso al codice sorgente del progetto VBA:

- La classe [VBAProject](https://reference.aspose.com/words/it/net/aspose.words.vba/vbaproject/) fornisce l'accesso alle informazioni sul progetto VBA
- La classe [VBAModuleCollection](https://reference.aspose.com/words/it/net/aspose.words.vba/vbamodulecollection/) restituisce la raccolta di moduli del progetto VBA
- La classe [VbaModule](https://reference.aspose.com/words/it/net/aspose.words.vba/vbamodule/) fornisce l'accesso al modulo di progetto VBA
- L'enumerazione [VbaModuleType](https://reference.aspose.com/words/it/net/aspose.words.vba/vbamoduletype/) definisce i tipi di un modello in un progetto VBA. Il modulo può essere un modulo procedurale, un modulo di documento, un modulo di classe o un modulo di progettazione

## Crea un progetto VBA

Aspose.Words API fornisce la proprietà [VbaProject](https://reference.aspose.com/words/it/net/aspose.words/document/vbaproject/) per ottenere o impostare VbaProject nel documento.

Il seguente esempio di codice dimostra come creare un progetto VBA e un modulo VBA insieme alle proprietà di base, ad esempio Nome e Tipo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Leggi le macro

Aspose.Words offre inoltre agli utenti la possibilità di leggere le macro VBA.

Il seguente esempio di codice mostra come leggere le macro VBA dal documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Scrivere o modificare macro

Utilizzando Aspose.Words, gli utenti possono modificare le macro VBA.

Il seguente esempio di codice mostra come modificare le macro VBA utilizzando la proprietà [SourceCode](https://reference.aspose.com/words/it/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clona progetto VBA

Con Aspose.Words è anche possibile clonare progetti VBA.

Il seguente esempio di codice mostra come clonare il progetto VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/it/net/aspose.words.vba/vbaproject/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clona modulo VBA

Se necessario, puoi anche clonare i moduli VBA.

Il seguente esempio di codice mostra come clonare il modulo VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/it/net/aspose.words.vba/vbamodule/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Lavora con i riferimenti al progetto VBA

Aspose.Words API fornisce la classe [VbaReferenceCollection](https://reference.aspose.com/words/it/net/aspose.words.vba/vbareferencecollection/) per funzionare con i riferimenti al progetto VBA che rappresentano una raccolta di riferimenti al progetto VBA.

Il seguente esempio di codice mostra come rimuovere alcuni riferimenti dalla raccolta di riferimenti da un progetto VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
