---
title: Applica la formattazione personalizzata ai campi in C#
second_title: Aspose.Words per .NET
articleTitle: Applica la formattazione personalizzata ai campi
linktitle: Applica la formattazione personalizzata ai campi
description: "Formattare e valutare il risultato dei campi utilizzando C#."
type: docs
weight: 40
url: /it/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A volte gli utenti devono applicare una formattazione personalizzata ai campi. In questo articolo vedremo un paio di esempi di come ciò possa essere fatto.

Per ulteriori informazioni sulle opzioni, consulta l'elenco completo delle proprietà per ciascun tipo di campo nella classe corrispondente nel [Spazio dei nomi dei campi](https://reference.aspose.com/words/it/net/aspose.words.fields/).

## Come applicare la formattazione personalizzata al risultato del campo

Aspose.Words fornisce API per la formattazione personalizzata del risultato del campo. È possibile implementare l'interfaccia [IFieldResultFormatter](https://reference.aspose.com/words/it/net/aspose.words.fields/ifieldresultformatter/) per controllare la formattazione del risultato del campo. È possibile applicare il cambio del formato numerico, ad esempio \# "#.##", il cambio del formato data/ora, ad esempio \@ "gg.MM.aaaa", e il cambio del formato numerico, ad esempio \* Ordinale.

L'esempio di codice seguente mostra come applicare la formattazione personalizzata per il risultato del campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Come valutare la condizione `IF`

Se desideri valutare la condizione `IF` dopo mail merge, puoi utilizzare il metodo [EvaluateCondition](https://reference.aspose.com/words/it/net/aspose.words.fields/fieldif/evaluatecondition/) che restituisce immediatamente il risultato della valutazione dell'espressione.

L'esempio di codice seguente mostra come utilizzare questo metodo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Come applicare la formattazione personalizzata al campo ora

Per impostazione predefinita, Aspose.Words aggiorna il campo `TIME` con il formato di breve durata della cultura corrente. Abbiamo scoperto che esiste una differenza tra la formattazione Microsoft Word e la formattazione .NET/Windows, e anche tra diverse versioni .NET Framework. Se desideri formattare il campo `TIME` in base alle tue esigenze, puoi farlo implementando l'interfaccia [IFieldUpdateCultureProvider](https://reference.aspose.com/words/it/net/aspose.words.fields/ifieldupdatecultureprovider/).

I seguenti esempi di codice mostrano come applicare la formattazione personalizzata al campo `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
