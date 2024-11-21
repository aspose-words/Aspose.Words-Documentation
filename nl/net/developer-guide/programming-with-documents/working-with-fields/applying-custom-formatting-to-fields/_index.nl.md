---
title: Aangepaste opmaak toepassen op velden in C#
second_title: Aspose.Words voor .NET
articleTitle: Aangepaste opmaak toepassen op velden
linktitle: Aangepaste opmaak toepassen op velden
description: "Formatteren en evalueren van velden resultaat met behulp van C#."
type: docs
weight: 40
url: /nl/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Soms moeten gebruikers aangepaste opmaak toepassen op velden. In dit artikel zullen we een paar voorbeelden bekijken van hoe dit kan gebeuren.

Voor meer opties, zie de volledige lijst van eigenschappen voor elk veldtype in de overeenkomstige klasse in de [Veldnaamruimte](https://reference.aspose.com/words/net/aspose.words.fields/).

## Aangepaste formattering toepassen op veldresultaat

Aspose.Words levert API voor aangepaste opmaak van het resultaat van het veld. U kunt implementeren [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) interface om te bepalen hoe het veldresultaat is geformatteerd. U kunt numeriek formaat switch, d.w.z. \# "#.##," datum/tijd format switch, d.w.z. \@ "dd.MM.jjjj," en nummer formaat switch, d.w.z. \* Ordinal.

Het volgende voorbeeld van code laat zien hoe u aangepaste opmaak voor het veldresultaat toe te passen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Evaluatie `IF` conditie

Als u wilt evalueren `IF` toestand na mail merge, u kunt de [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) methode die het resultaat van de expressie-evaluatie onmiddellijk teruggeeft.

Het volgende voorbeeld van code laat zien hoe deze methode te gebruiken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Hoe aangepaste formattering toe te passen op tijdveld

Standaard Aspose.Words bijwerken `TIME` veld met huidige cultuur korte tijd formaat. We ontdekten dat er een verschil is tussen Microsoft Word opmaak en .NET'Windows formatteren, en ook tussen verschillende .NET Framework versies. Als u de `TIME` veld volgens uw eis, kunt u dit bereiken door te implementeren [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) interface.

De volgende code voorbeelden laat zien hoe u aangepaste opmaak toe te passen op de `TIME` veld:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
