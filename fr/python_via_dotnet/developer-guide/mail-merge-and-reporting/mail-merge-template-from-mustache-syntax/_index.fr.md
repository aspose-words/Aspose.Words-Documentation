---
title: Syntaxe Mail Merge Mustache
second_title: Aspose.Words pour Python via .NET
articleTitle: Mail Merge Modèle à partir de la syntaxe Mustache
linktitle: Mail Merge Modèle à partir de la syntaxe Mustache
type: docs
description: "Créez des modèles avec la syntaxe Mustache en utilisant Python. La syntaxe Mustache est la seule option à utiliser avec les modèles qui ne contiennent pas de champs (HTML ou TXT). Avec les modèles Word, vous avez deux options: les champs ou la syntaxe Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /fr/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vous permet de créer des modèles avec la syntaxe mustache en plus des modèles familiers. Un Mustache est une variante alternative de la syntaxe de modèle qui se compose de noms de balises entourés de `{{ }}` et est soutenu par un objet de modèle qui contient les données du modèle.

La syntaxe Mustache est la seule option à utiliser avec les modèles qui ne contiennent pas de champs, tels que les modèles HTML et TXT. Avec les modèles Word, vous avez deux options pour utiliser les champs ou la syntaxe Mustache.

La syntaxe Mustache prend en charge la balise *foreach*, qui est une alternative à l'utilisation de Mail Merge avec des régions. L'avantage est donc que vous pouvez utiliser la syntaxe mustache si, pour une raison quelconque, vous ne pouvez pas ou simplement vous ne souhaitez pas utiliser les champs de fusion et les régions de fusion.

Vous pouvez également combiner des champs Mail Merge avec des champs supplémentaires à l'aide de la balise *foreach*, comme illustré dans l'image ci-dessous.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Créer un modèle Mustache

Le premier point important à clarifier est que Mustache n'est pas un moteur de création de modèles. Mustache est une autre variante de syntaxe disponible pour tout modèle dans un [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) supporté par Aspose.Words. Par conséquent, vous pouvez créer un tel modèle à la fois par programmation et via une interface, il vous suffit d'inclure une certaine syntaxe et de vous conformer à la spécification Mustache.

Supposons que vous deviez envoyer le même e-mail à 50 destinataires pour personnaliser le message d'accueil avec leurs prénoms correspondants. Vous pouvez remplacer le prénom du destinataire par un espace réservé comme suit:

> Dear {{FirstName}}
>
> I hereby...

La question ici: comment créer 50 emails à partir d'un seul modèle Mustache? Pour répondre à cela, vous devez effectuer un Mail Merge avec des régions pour remplir les accolades pour les espaces réservés dans le modèle avec des données réelles et générer un document de sortie.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Comme vous le remarquez dans l'exemple ci-dessus, dans Mustache, vous devez utiliser des accolades pour les espaces réservés qui ressemblent à un mustache lorsque vous faites pivoter les accolades de 90 degrés dans le sens des aiguilles d'une montre.

{{% /alert %}}

## Travailler avec la syntaxe Mustache

Mustache est représenté comme un ordre sans logique car il manque d'instructions de flux de contrôle spécifiques telles que *for* boucles et *if* et *else* conditions. Mais vous pouvez utiliser les balises de section listes de traitement et lambdas pour réaliser une évaluation conditionnelle et une boucle. Donc, pour inclure la syntaxe Mustache dans l'opération Mail Merge, vous devrez utiliser la propriété [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) et définir sa valeur sur *True*.

## Utilisez les champs `IF` pour rendre un Mail Merge intelligent

Aspose.Words vous permet d'utiliser des champs Mail Merge et des balises Mustache avec l'instruction `IF`. Les champs `IF` peuvent être utilisés dans n'importe quel document Mail Merge pour supprimer les espaces et virgules indésirables si un champ est vide.

La formule du champ `IF` est indiquée ci-dessous:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Ici, la Condition peut être soit un champ de fusion, soit une balise Mustache.

Par exemple, vous pouvez utiliser les champs `IF` si vous devez insérer "son", "elle", "il" ou "elle" selon le sexe comme suit:

**{ IF { MERGEFIELD Gender } = "MALE" "texte vrai" " texte faux"}**

**{ IF "{{ GENDER }}" = "MALE" "texte vrai" " texte faux"}**

L'exemple de code suivant montre comment effectuer une opération Mail Merge avec des balises Mustache et des champs `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer la propriété [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Et après avoir appliqué la propriété [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
