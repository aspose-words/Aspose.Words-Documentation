---
title: Applicare la formattazione personalizzata ai campi in C++
second_title: Aspose.Words per C++
articleTitle: Applicare la formattazione personalizzata ai campi
linktitle: Applicare la formattazione personalizzata ai campi
description: "Formattare e valutare i risultati dei campi utilizzando C++."
type: docs
weight: 40
url: /it/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A volte gli utenti devono applicare la formattazione personalizzata ai campi. In questo articolo, vedremo un paio di esempi di come questo può essere fatto.

Per ulteriori informazioni sulle opzioni, vedere l'elenco completo delle proprietà per ogni tipo di campo nella classe corrispondente in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Come applicare la formattazione personalizzata al risultato del campo

Aspose.Words fornisce API per la formattazione personalizzata del risultato del campo. È possibile implementare l'interfaccia [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) per controllare la formattazione del risultato del campo. È possibile applicare l'interruttore di formato numerico, ad esempio \#"#.## ", cambio formato data / ora, cioè \@" gg.MM.aaaa", e cambio formato numero, cioè \* Ordinale.

L'esempio di codice seguente mostra come applicare la formattazione personalizzata per il risultato del campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Come valutare la condizione `IF`

Se si desidera valutare la condizione `IF` dopo mail merge, è possibile utilizzare il metodo [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) che restituisce immediatamente il risultato della valutazione dell'espressione.

Il seguente esempio di codice mostra come utilizzare questo metodo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Come applicare la formattazione personalizzata al campo Orario

Per impostazione predefinita Aspose.Words aggiorna il campo `TIME` con il formato di tempo breve cultura corrente. Se si desidera formattare il campo `TIME` in base alle proprie esigenze, è possibile ottenere questo risultato implementando l'interfaccia [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Gli esempi di codice seguenti mostrano come applicare la formattazione personalizzata al campo `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
