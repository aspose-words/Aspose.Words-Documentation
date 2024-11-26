---
title: Applicare la formattazione personalizzata ai campi
second_title: Aspose.Words per Java
articleTitle: Applicare la formattazione personalizzata ai campi
linktitle: Applicare la formattazione personalizzata ai campi
description: "Formattare e valutare i risultati dei campi utilizzando Java."
type: docs
weight: 40
url: /it/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A volte gli utenti devono applicare la formattazione personalizzata ai campi. In questo articolo, vedremo un paio di esempi di come questo può essere fatto.

Per ulteriori informazioni, vedere l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente.

## Come applicare la formattazione personalizzata al risultato del campo

Aspose.Words fornisce API per la formattazione personalizzata del risultato del campo. È possibile implementare l'interfaccia [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) per controllare la formattazione del risultato del campo. È possibile applicare lo switch di formato numerico, ad esempio \# "#.##", lo switch di formato data/ora, ad esempio \@ "dd.MM.yyyy", e lo switch di formato numerico, ad esempio \* Ordinal.

L'esempio di codice seguente mostra come applicare la formattazione personalizzata per il risultato del campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Come valutare la condizione `IF`

Se si desidera valutare la condizione `IF` dopo mail merge, è possibile utilizzare il metodo [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) che restituisce immediatamente il risultato della valutazione dell'espressione.

Il seguente esempio di codice mostra come utilizzare questo metodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Come applicare la formattazione personalizzata al campo Orario

Per impostazione predefinita Aspose.Words aggiorna il campo `TIME` con il formato di tempo breve cultura corrente. Se si desidera formattare il campo `TIME` in base alle proprie esigenze, è possibile ottenere questo risultato implementando l'interfaccia [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

Gli esempi di codice seguenti mostrano come applicare la formattazione personalizzata al campo `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
