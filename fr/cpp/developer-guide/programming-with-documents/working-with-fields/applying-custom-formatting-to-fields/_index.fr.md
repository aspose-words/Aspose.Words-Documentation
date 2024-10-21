---
title: Appliquer une mise en forme personnalisée aux champs en C++
second_title: Aspose.Words pour C++
articleTitle: Appliquer une mise en forme personnalisée aux champs
linktitle: Appliquer une mise en forme personnalisée aux champs
description: "Formatez et évaluez le résultat des champs en utilisant C++."
type: docs
weight: 40
url: /fr/cpp/applying-custom-formatting-to-fields/
---

Parfois, les utilisateurs doivent appliquer une mise en forme personnalisée aux champs. Dans cet article, nous examinerons quelques exemples de la façon dont cela peut être fait.

Pour en savoir plus sur les options, consultez la liste complète des propriétés pour chaque type de champ dans la classe correspondante dans le [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Comment appliquer une Mise en forme personnalisée au Résultat du Champ

Aspose.Words fournit une API pour la mise en forme personnalisée du résultat du champ. Vous pouvez implémenter l'interface [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) pour contrôler la mise en forme du résultat du champ. Vous pouvez appliquer un changement de format numérique, c'est-à-dire \#"#.## ", commutateur de format date / heure, c'est-à-dire \@ "jj.MM.aaaa", et commutateur de format numérique, c'est-à-dire \* Ordinal.

L'exemple de code suivant montre comment appliquer une mise en forme personnalisée pour le résultat du champ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Comment évaluer la condition `IF`

Si vous souhaitez évaluer la condition `IF` après mail merge, vous pouvez utiliser la méthode [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) qui renvoie immédiatement le résultat de l'évaluation de l'expression.

L'exemple de code suivant montre comment utiliser cette méthode:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Comment appliquer une mise en forme personnalisée au Champ Horaire

Par défaut, Aspose.Words met à jour le champ `TIME` avec le format de temps court de la culture actuelle. Si vous souhaitez formater le champ `TIME` en fonction de vos besoins, vous pouvez y parvenir en implémentant l'interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Les exemples de code suivants montrent comment appliquer une mise en forme personnalisée au champ `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}