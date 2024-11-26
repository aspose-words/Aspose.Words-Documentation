---
title: Appliquer un formatage personnalisé aux champs dans C#
second_title: Aspose.Words pour .NET
articleTitle: Appliquer une mise en forme personnalisée aux champs
linktitle: Appliquer une mise en forme personnalisée aux champs
description: "Formatez et évaluez le résultat des champs à l’aide de C#."
type: docs
weight: 40
url: /fr/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Parfois, les utilisateurs doivent appliquer une mise en forme personnalisée aux champs. Dans cet article, nous examinerons quelques exemples de la manière dont cela peut être réalisé.

Pour en savoir plus sur les options, consultez la liste complète des propriétés pour chaque type de champ dans la classe correspondante dans le [Espace de noms des champs](https://reference.aspose.com/words/fr/net/aspose.words.fields/).

## Comment appliquer un formatage personnalisé au résultat du champ

Aspose.Words fournit API pour un formatage personnalisé du résultat du champ. Vous pouvez implémenter une interface [IFieldResultFormatter](https://reference.aspose.com/words/fr/net/aspose.words.fields/ifieldresultformatter/) pour contrôler la façon dont le résultat du champ est formaté. Vous pouvez appliquer un changement de format numérique, c'est-à-dire \# "#.##", un changement de format date/heure, c'est-à-dire \@ "jj.MM.aaaa", et un changement de format numérique, c'est-à-dire \* Ordinal.

L'exemple de code suivant montre comment appliquer une mise en forme personnalisée pour le résultat du champ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Comment évaluer la condition `IF`

Si vous souhaitez évaluer la condition `IF` après mail merge, vous pouvez utiliser la méthode [EvaluateCondition](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldif/evaluatecondition/) qui renvoie immédiatement le résultat de l'évaluation de l'expression.

L'exemple de code suivant montre comment utiliser cette méthode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Comment appliquer un formatage personnalisé au champ horaire

Par défaut, Aspose.Words met à jour le champ `TIME` avec le format horaire court de la culture actuelle. Nous avons compris qu'il existe une différence entre le formatage Microsoft Word et le formatage .NET/Windows, ainsi qu'entre les différentes versions .NET Framework. Si vous souhaitez formater le champ `TIME` selon vos besoins, vous pouvez y parvenir en implémentant l'interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/fr/net/aspose.words.fields/ifieldupdatecultureprovider/).

Les exemples de code suivants montrent comment appliquer une mise en forme personnalisée au champ `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
