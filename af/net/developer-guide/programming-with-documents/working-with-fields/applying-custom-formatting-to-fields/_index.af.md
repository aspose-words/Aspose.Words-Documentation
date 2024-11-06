---
title: Pasmaak Opmaak Toe Op Velde in C#
second_title: Aspose.Words vir .NET
articleTitle: Pasmaak Opmaak Toe Op Velde
linktitle: Pasmaak Opmaak Toe Op Velde
description: "Formateer en evalueer velde resultaat met behulp van C#."
type: docs
weight: 40
url: /af/net/applying-custom-formatting-to-fields/
---

Soms moet gebruikers persoonlike formatering op velde toepas. In hierdie artikel sal ons kyk na'n paar voorbeelde van hoe dit gedoen kan word.

Om meer opsies te leer, sien die volledige lys van eienskappe vir elke veld tipe in die ooreenstemmende klas in die [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/).

## Hoe Om Pasgemaakte Formatering Toe Te Pas Op Veldresultaat

Aspose.Words verskaf API vir persoonlike opmaak van veld se resultaat. Jy kan [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) koppelvlak implementeer om te beheer hoe die veldresultaat geformateer is. Jy kan numeriese formaatskakelaar toepas, d.w. s. \# "#.##", datum/tyd formaatskakelaar, d. w. s. \@ "dd.MM.yyyy", en getalformaatskakelaar, d. w. s. \* Ordinal.

Die volgende kode voorbeeld toon hoe om persoonlike formatering vir die veld resultaat toe te pas:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Hoe om `IF` toestand te evalueer

As jy `IF` toestand na mail merge wil evalueer, kan jy die [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) metode gebruik wat onmiddellik die resultaat van die uitdrukking evaluering teruggee.

Die volgende kode voorbeeld toon hoe om hierdie metode te gebruik:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Hoe Om Pasgemaakte Formatering Op Tydveld Toe Te Pas

By verstek Aspose.Words updates `TIME` veld met huidige kultuur kort tyd formaat. Ons het uitgevind dat daar'n verskil is tussen Microsoft Word formatering en .NET/Windows formatering, en ook tussen verskillende .NET Framework weergawes. As u die `TIME` - veld volgens u vereiste wil formateer, kan u dit bereik deur die [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) - koppelvlak te implementeer.

Die volgende kode voorbeelde toon hoe om persoonlike formatering toe te pas op die `TIME` veld:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
