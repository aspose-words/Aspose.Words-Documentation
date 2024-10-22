---
title: Lavorare con i campi modulo in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con i campi modulo
linktitle: Lavorare con i campi modulo
description: "Comprendere la funzionalità Campi modulo, lavorare con i campi modulo utilizzando C++."
type: docs
weight: 380
url: /it/cpp/working-with-form-fields/
---

Un documento che contiene spazi vuoti di riempimento (campi) è noto come modulo. Ad esempio, è possibile creare un modulo di registrazione in Microsoft Word che utilizza elenchi a discesa da cui gli utenti possono selezionare le voci. Un campo modulo è un percorso in cui viene memorizzato un particolare tipo di dati, ad esempio un nome o un indirizzo. I campi modulo in Microsoft Word includono input di testo, Casella combinata e casella di controllo.

È possibile utilizzare i campi modulo nel progetto per "comunicare" con gli utenti. Ad esempio, si crea un documento il cui contenuto è protetto, ma solo i campi modulo sono modificabili. Gli utenti possono inserire i dati nei campi del modulo e inviare il documento. L'applicazione che utilizza Aspose.Words può recuperare i dati dai campi modulo ed elaborarli.

Inserire i campi modulo nel documento tramite codice è facile. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ha metodi speciali per inserirli, uno per ogni tipo di campo modulo. Ciascuno dei metodi accetta un parametro string che rappresenta il nome del campo modulo. Il nome può essere una stringa vuota. Se tuttavia si specifica un nome per il campo modulo, viene creato automaticamente un segnalibro con lo stesso nome.

## Inserimento di campi modulo

I campi modulo sono un caso particolare di campi Word che consente "interazione" con l'utente. I campi modulo in Microsoft Word includono casella di testo, casella combinata e casella di controllo.

**DocumentBuilder**

L'esempio di codice seguente mostra come inserire un campo modulo combobox in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Ottenere campi modulo

Una raccolta di campi modulo è rappresentata dalla classe [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) che può essere recuperata utilizzando la proprietà [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Ciò significa che è possibile ottenere campi modulo contenuti in qualsiasi nodo documento, incluso il documento stesso.

L'esempio di codice seguente mostra come ottenere una raccolta di campi modulo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

È possibile ottenere un particolare campo modulo dal suo indice o nome.

L'esempio di codice seguente mostra come accedere ai campi modulo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Le proprietà **FormField** consentono di lavorare con nome campo modulo, tipo e risultato.

L'esempio di codice seguente mostra come utilizzare il nome, il tipo e il risultato del campo modulo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
