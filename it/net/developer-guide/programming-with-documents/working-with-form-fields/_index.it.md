---
title: Lavorare con i campi modulo in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i campi del modulo
linktitle: Lavorare con i campi del modulo
description: "Comprendere la funzionalità dei campi modulo, lavorare con i campi modulo utilizzando C#."
type: docs
weight: 380
url: /it/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un documento che contiene spazi vuoti (campi) è noto come modulo. Ad esempio, puoi creare un modulo di registrazione in Microsoft Word che utilizza elenchi a discesa da cui gli utenti possono selezionare le voci. Il campo `Form` è una posizione in cui viene archiviato un particolare tipo di dati, come un nome o un indirizzo. I campi del modulo in Microsoft Word includono input di testo, casella combinata e casella di controllo.

Puoi utilizzare i campi modulo nel tuo progetto per "comunicare" con i tuoi utenti. Ad esempio, crei un documento il cui contenuto è protetto, ma solo i campi del modulo sono modificabili. Gli utenti possono inserire i dati nei campi del modulo e inviare il documento. La tua applicazione che utilizza Aspose.Words può recuperare i dati dai campi del modulo ed elaborarli.

Inserire i campi del modulo nel documento tramite codice è semplice. [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/) dispone di metodi speciali per inserirli, uno per ciascun tipo di campo modulo. Ciascuno dei metodi accetta un parametro stringa che rappresenta il nome del campo del modulo. Il nome può essere una stringa vuota. Se tuttavia specifichi un nome per il campo modulo, verrà automaticamente creato un segnalibro con lo stesso nome.

## Inserisci campi modulo

I campi modulo sono un caso particolare di campi Word che consentono l'"interazione" con l'utente. I campi del modulo in Microsoft Word includono casella di testo, casella combinata e casella di controllo.

**DocumentBuilder** fornisce metodi speciali per inserire ogni tipo di campo modulo nel documento: [InsertTextInput](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertcheckbox/) e [InsertComboBox](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertcombobox/). Tieni presente che se specifichi un nome per il campo modulo, verrà creato automaticamente un segnalibro con lo stesso nome.

L'esempio di codice seguente mostra come inserire un campo modulo casella combinata in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Inserisci un input di testo

Utilizza il metodo **InsertTextInput** per inserire una casella di testo nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo di input di testo in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Inserisci una casella di controllo

Chiama **InsertCheckBox** per inserire una casella di controllo nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo casella di controllo in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Inserisci una casella combinata

Chiama **InsertComboBox** per inserire una casella combinata nel documento.

Il seguente esempio di codice mostra come inserire un campo modulo Combobox in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Ottieni campi modulo

Una raccolta di campi modulo è rappresentata dalla classe [FormFieldCollection](https://reference.aspose.com/words/it/net/aspose.words.fields/formfieldcollection/) che può essere recuperata utilizzando la proprietà [FormFields](https://reference.aspose.com/words/it/net/aspose.words/range/formfields/). Ciò significa che è possibile ottenere campi del modulo contenuti in qualsiasi nodo del documento compreso il documento stesso.

{{% alert color="primary" %}}

È possibile scaricare il file di esempio dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come ottenere una raccolta di campi del modulo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Puoi ottenere un particolare campo modulo tramite il suo indice o nome.

Il seguente esempio di codice mostra come accedere ai campi del modulo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Le proprietà **FormField** ti consentono di lavorare con il nome, il tipo e il risultato del campo modulo.

L'esempio di codice seguente mostra come utilizzare il nome, il tipo e il risultato del campo modulo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formattare i campi del modulo

La proprietà [Font](https://reference.aspose.com/words/it/net/aspose.words/inline/font/) di [FormField](https://reference.aspose.com/words/it/net/aspose.words.fields/formfield/) consente di applicare la formattazione dei caratteri all'**FormField** nel suo insieme, incluso il valore del campo.

Il seguente esempio di codice mostra come applicare la formattazione dei caratteri al **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
