---
title: Appliquer le formatage personnalisé aux champs
second_title: Aspose.Words pour Java
articleTitle: Appliquer le formatage personnalisé aux champs
linktitle: Appliquer le formatage personnalisé aux champs
description: "Formater et évaluer le résultat des champs en utilisant Java."
type: docs
weight: 40
url: /fr/java/applying-custom-formatting-to-fields/
---

Parfois, les utilisateurs doivent appliquer un formatage personnalisé aux champs. Dans cet article, nous allons examiner quelques exemples de la façon dont cela peut être fait.

Pour en savoir plus, consultez la liste complète des propriétés pour chaque type de champ dans la classe correspondante.

## Comment appliquer le formatage personnalisé au résultat du champ

Aspose.Words fournit API pour le formatage personnalisé du résultat du champ. Vous pouvez mettre en œuvre [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interface pour contrôler comment le résultat du champ est formaté. Vous pouvez appliquer le commutateur de format numérique, c'est-à-dire \# "#.##", le commutateur de format date/heure, c'est-à-dire \@ "dd.MM.aaayy", et le commutateur de format de nombre, c'est-à-dire \* Ordinal.

L'exemple de code suivant montre comment appliquer le formatage personnalisé pour le résultat du champ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Comment évaluer `IF` état

Si vous voulez évaluer `IF` condition après mail merge, vous pouvez utiliser [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) méthode qui renvoie immédiatement le résultat de l'évaluation de l'expression.

L'exemple de code suivant montre comment utiliser cette méthode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Comment appliquer le formatage personnalisé au champ temporel

Par défaut Aspose.Words mises à jour `TIME` champ avec culture actuelle court format de temps. Si vous voulez formater la `TIME` champ selon votre exigence, vous pouvez atteindre ceci en mettant en œuvre [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) interface.

Les exemples de code suivants montrent comment appliquer le formatage personnalisé au `TIME` champ & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
