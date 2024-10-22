---
title: Lavorare con le macro VBA in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le macro VBA
linktitle: Lavorare con le macro VBA
description: "Lavorare con i progetti document VBA utilizzando C++."
type: docs
weight: 410
url: /it/cpp/working-with-vba-macros/
---

Visual Basic for Applications (VBA) per Microsoft Word è un linguaggio di programmazione semplice ma potente che può essere utilizzato per estendere la funzionalità. Aspose.Words API fornisce tre classi per ottenere l'accesso al codice sorgente del progetto VBA:

- La classe [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) fornisce l'accesso alle informazioni del progetto VBA
- La classe [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) restituisce la raccolta di moduli di progetto VBA
- La classe [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) fornisce l'accesso al modulo del progetto VBA

## Creare un progetto VBA

Aspose.Words API fornisce la proprietà `Document.VbaProject` per ottenere o impostare VbaProject nel documento.

Nell'esempio di codice seguente viene illustrato come creare un progetto VBA e un modulo VBA insieme alle proprietà di base, ad esempio Nome e tipo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Leggere le macro

Aspose.Words fornisce inoltre agli utenti la possibilità di leggere le macro VBA.

Il seguente esempio di codice mostra come leggere le macro VBA dal documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Scrivere o modificare macro

Usando Aspose.Words, gli utenti possono modificare le macro VBA.

L'esempio di codice seguente mostra come modificare le macro VBA utilizzando la proprietà [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Progetto Clone VBA

Con Aspose.Words è anche possibile clonare progetti VBA.

L'esempio di codice seguente mostra come clonare il progetto VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Modulo Clone VBA

È inoltre possibile clonare i moduli VBA, se necessario.

L'esempio di codice seguente mostra come clonare il modulo VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) che crea una copia del progetto esistente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
