---
title: Utilizzo delle macro VBAin Java
second_title: Aspose.Words per Java
articleTitle: Utilizzo di macro VBA
linktitle: Utilizzo di macro VBA
description: "Lavorare con i progetti document VBA usando Java."
type: docs
weight: 410
url: /it/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic per applicazioni (VBA) per Microsoft Word è un linguaggio di programmazione semplice ma potente che può essere utilizzato per estendere la funzionalità. Aspose.Words API fornisce tre classi per accedere al codice sorgente del progetto VBA:

- La classe [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) fornisce l'accesso alle informazioni del progetto VBA
- La classe [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) restituisce la raccolta di moduli di progetto VBA
- La classe [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) fornisce l'accesso al modulo del progetto VBA

## Creare un progetto VBA

Aspose.Words API fornisce la proprietà [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) per ottenere o impostare VbaProject nel documento.

Nell'esempio di codice seguente viene illustrato come creare un progetto VBA e un modulo VBA insieme alle proprietà di base, ad esempio Nome e tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Leggere le macro

Aspose.Words fornisce inoltre agli utenti la possibilità di leggere le macro VBA.

L'esempio di codice seguente mostra come leggere le macro VBA dal documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modifica macro

Usando Aspose.Words, gli utenti possono modificare le macro VBA.

L'esempio di codice seguente mostra come modificare le macro VBA utilizzando la proprietà [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Progetto

Con Aspose.Words è anche possibile clonare progetti VBA.

Nell'esempio di codice seguente viene illustrato come clonare il progetto VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) che crea una copia del progetto esistente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clona VBA Modulo

È anche possibile clonare i moduli VBA se necessario.

Nell'esempio di codice seguente viene illustrato come clonare il modulo VBA utilizzando la proprietà [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) che crea una copia del progetto esistente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
