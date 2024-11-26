---
title: Appliquer une mise en forme personnalisée aux champs
second_title: Aspose.Words pour Java
articleTitle: Appliquer une mise en forme personnalisée aux champs
linktitle: Appliquer une mise en forme personnalisée aux champs
description: "Formatez et évaluez le résultat des champs en utilisant Java."
type: docs
weight: 40
url: /fr/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Parfois, les utilisateurs doivent appliquer une mise en forme personnalisée aux champs. Dans cet article, nous examinerons quelques exemples de la façon dont cela peut être fait.

Pour en savoir plus sur les options, consultez la liste complète des propriétés pour chaque type de champ dans la classe correspondante.

## Comment appliquer une Mise en forme personnalisée au Résultat du Champ

Aspose.Words fournit API pour la mise en forme personnalisée du résultat du champ. Vous pouvez implémenter l'interface [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) pour contrôler la mise en forme du résultat du champ. Vous pouvez appliquer un commutateur de format numérique, c'est-à-dire \# "#.##", un commutateur de format date/heure, c'est-à-dire \@ "dd.MM.yyyy", et un commutateur de format numérique, c'est-à-dire \* Ordinal.

L'exemple de code suivant montre comment appliquer une mise en forme personnalisée pour le résultat du champ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Comment évaluer la condition `IF`

Si vous souhaitez évaluer la condition `IF` après mail merge, vous pouvez utiliser la méthode [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) qui renvoie immédiatement le résultat de l'évaluation de l'expression.

L'exemple de code suivant montre comment utiliser cette méthode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Comment appliquer une mise en forme personnalisée au Champ Horaire

Par défaut, Aspose.Words met à jour le champ `TIME` avec le format de temps court de la culture actuelle. Si vous souhaitez formater le champ `TIME` en fonction de vos besoins, vous pouvez y parvenir en implémentant l'interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

Les exemples de code suivants montrent comment appliquer une mise en forme personnalisée au champ `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
