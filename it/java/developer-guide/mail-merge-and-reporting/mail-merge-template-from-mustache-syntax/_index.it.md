---
title: Mail Merge Template da Mustache Sintassi
second_title: Aspose.Words per Java
articleTitle: Mail Merge Template da Mustache Sintassi
linktitle: Mail Merge Template da Mustache Sintassi
type: docs
description: "Creare modelli con sintassi Mustache. La sintassi Mustache è l'unica opzione da utilizzare con i modelli che non contengono campi (HTML o TXT). Con i modelli di Word, hai due opzioni: campi o sintassi Mustache usando Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /it/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente di creare modelli con sintassi mustache in aggiunta ai modelli familiari. Un Mustache è una variante alternativa della sintassi del modello che consiste in nomi di tag racchiusi da un oggetto modello che contiene i dati per il modello.

La sintassi Mustache è l'unica opzione da utilizzare con i modelli che non contengono campi, ad esempio i modelli HTML e TXT. Con i modelli di Word, sono disponibili due opzioni per utilizzare i campi o la sintassi Mustache.

La sintassi Mustache supporta il tag *foreach*, che è un'alternativa per l'utilizzo di Mail Merge con le regioni. Quindi il vantaggio è che puoi usare la sintassi mustache se per qualche motivo non sei in grado o semplicemente non vuoi usare campi di unione e regioni di unione.

Puoi anche combinare i campi Mail Merge con alcuni campi aggiuntivi usando il tag *foreach* come mostrato nell'immagine qui sotto.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Creare un modello Mustache

Il primo punto importante da chiarire è che Mustache non è un motore di template. Mustache è un'altra variante di sintassi disponibile per qualsiasi modello in un [carica formato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) supportato da Aspose.Words. Pertanto, è possibile creare un modello di questo tipo sia a livello di programmazione che tramite un'interfaccia, è sufficiente includere una certa sintassi e rispettare le specifiche Mustache.

Supponiamo che sia necessario inviare la stessa email a 50 destinatari per personalizzare il saluto con i loro nomi corrispondenti. È possibile sostituire il nome del destinatario con un segnaposto come segue:

> Dear {{FirstName}}
>
> I hereby...

La domanda qui: come è possibile creare 50 e-mail da 1 singolo modello Mustache? Per rispondere a ciò, è necessario eseguire un Mail Merge con regioni per riempire le parentesi graffe per i segnaposto nel modello con dati effettivi e generare un documento di output.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Come si nota dall'esempio precedente, in Mustache è necessario utilizzare parentesi graffe per segnaposto che assomigliano a mustache quando si ruotano le parentesi graffe di 90 gradi in senso orario.

{{% /alert %}}

## Lavorare con Mustache Sintassi

Mustache è rappresentato come un ordine senza logica in quanto manca di istruzioni di flusso di controllo specifiche come *for* loop e *if* e *else* condizioni. Ma è possibile utilizzare i tag di sezione che elaborano elenchi e lambda per ottenere la valutazione condizionale e il loop. Quindi, per includere la sintassi Mustache all'interno dell'operazione Mail Merge, è necessario utilizzare la proprietà [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) e impostarne il valore su *True*.

Il seguente esempio di codice mostra come sostituire i tag Mustache con dati specifici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

È possibile notare la differenza tra il documento prima di eseguire Mail Merge con le regioni e l'applicazione della proprietà **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

Una sezione inizia con una libbra e termina con una barra. Cioè, `{{#foreach list}}` inizia una sezione "foreach" mentre `{{/foreach list}}` la termina.

{{% /alert %}}

E dopo aver applicato il Mail Merge con le regioni:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Utilizzare i campi `IF` per rendere Mail Merge intelligente

Aspose.Words consente di utilizzare i campi Mail Merge e i tag Mustache con l'istruzione `IF`. I campi `IF` possono essere utilizzati in qualsiasi documento Mail Merge per eliminare spazi e virgole indesiderati se un campo è vuoto.

La formula del campo `IF` è mostrata sotto:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Qui, la Condizione può essere un campo di unione o un tag Mustache.

Ad esempio, è possibile utilizzare i campi `IF` se è necessario inserire "his"," her"," he "o" she " a seconda del genere come segue:

**{ IF { MERGEFIELD Gender } = "MALE" "testo vero" "testo falso" }**

**{ IF "{{ GENDER }}" = "MALE" "testo vero" "testo falso" }**

Il seguente esempio di codice mostra come eseguire un'operazione Mail Merge con i tag Mustache e i campi `IF`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

È possibile notare la differenza tra il documento prima di applicare la proprietà **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

E dopo aver applicato la proprietà **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
