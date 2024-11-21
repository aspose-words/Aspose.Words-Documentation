---
title: Applica formattazione personalizzata ai campi
second_title: Aspose.Words per Java
articleTitle: Applica formattazione personalizzata ai campi
linktitle: Applica formattazione personalizzata ai campi
description: "Formattare e valutare i risultati dei campi utilizzando Java."
type: docs
weight: 40
url: /it/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A volte gli utenti devono applicare la formattazione personalizzata ai campi. In questo articolo, vedremo un paio di esempi di come questo può essere fatto.

Per ulteriori opzioni, vedere l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente.

## Come applicare la formattazione personalizzata al risultato del campo

Aspose.Words fornisce API per la formattazione personalizzata del risultato del campo. È possibile implementare [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interfaccia per controllare come il risultato del campo è formattato. È possibile applicare l'interruttore di formato numerico, vale a dire \# "##", l'interruttore di formato di data/ora, cioè \@ "dd.MM.yyyyyy", e l'interruttore di formato di numero, cioè \* Ordinal.

Il seguente esempio di codice mostra come applicare la formattazione personalizzata per il risultato del campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Come valutare `IF` Stato

Se si desidera valutare `IF` stato dopo mail merge, si può usare [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) metodo che restituisce immediatamente il risultato della valutazione dell'espressione.

Il seguente esempio di codice mostra come utilizzare questo metodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Come applicare la formattazione personalizzata al campo del tempo

Per impostazione predefinita Aspose.Words aggiornamenti `TIME` campo con la cultura attuale breve formato di tempo. Se si desidera formattare il `TIME` campo secondo il vostro requisito, è possibile raggiungere questo implementando [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) interfaccia.

I seguenti esempi di codice mostrano come applicare la formattazione personalizzata alla `TIME` campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
