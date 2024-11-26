---
title: Fonctionnalités avancées Mail Merge en C++
second_title: Aspose.Words pour C++
articleTitle: Fonctionnalités avancées Mail Merge
linktitle: Fonctionnalités avancées Mail Merge
type: docs
description: "Aspose.Words pour C++ fournit des fonctionnalités Mail Merge avancées qui vous permettent d'effectuer d'autres personnalisations mail merge. Par exemple, obtenir des informations sur la structure du modèle, définir des règles, nettoyer après une opération mail merge, etc."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /fr/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fournit des propriétés et méthodes Mail Merge supplémentaires qui vous permettent de personnaliser davantage le processus Mail Merge soit en simple mail merge, soit en Mail Merge avec des régions.

Les fonctionnalités avancées Mail Merge incluent, sans toutefois s'y limiter, l'obtention d'informations sur la structure du modèle avant d'effectuer une opération mail merge, la définition de règles pour une opération Mail Merge et le nettoyage pendant une opération mail merge. Cet article ne couvrira que quelques propriétés et exemples pour vous montrer comment utiliser les fonctionnalités avancées.

## Définir des règles pour les opérations Mail Merge

L'ajout de règles à votre modèle vous permet de rendre le processus de flux de travail plus efficace et plus flexible. En utilisant les règles mail merge, vous pouvez configurer du contenu qui peut être modifié rapidement et éviter d'avoir à générer plusieurs documents.

Aspose.Words vous permet de personnaliser Mail Merge en fonction des règles qui s'exécutent lorsque vous effectuez l'opération Mail Merge et de contrôler les informations de fusion. Par exemple, lorsque vous créez un e-mail ou une lettre à envoyer à tous vos clients. Vous pouvez configurer une règle pour que la lettre puisse contenir diverses données en fonction des différentes valeurs de certains champs de votre source de données.

Jetez un œil à certaines règles Mail Merge que vous pouvez implémenter.

### Implémenter le champ Suivant pour fusionner les Enregistrements de données dans le Document actuel

Vous pouvez implémenter le champ [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) pour fusionner l'enregistrement de données suivant dans le document fusionné résultant actuel, au lieu de démarrer un nouveau document fusionné. Il est utilisé pour afficher plusieurs enregistrements dans un seul document.

### Implémentez les champs NextIf et SkipIf pour comparer deux expressions

Vous pouvez utiliser un champ [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) ou un champ [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) si vous souhaitez comparer deux expressions (expressions[right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/)) par certains [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words fusionnera l'enregistrement de données suivant dans le document de fusion actuel, et tous les champs de fusion du modèle qui se trouvent après le champ *NextIf* seront remplacés par des valeurs de l'enregistrement de données suivant plutôt que de l'enregistrement de données actuel. | Aspose.Words fusionnera le prochain enregistrement de données dans un nouveau document de fusion. |
| `SkipIf` | Aspose.Words annulera le document de fusion actuel, passera à l'enregistrement de données suivant dans la source de données et démarrera un nouveau document de fusion. | Aspose.Words continuera le document de fusion actuel. |

## Obtenir Des Informations Sur La Structure Du Modèle

Aspose.Words vous permet de rassembler différentes informations dans votre modèle via de nombreuses méthodes. Par exemple, vous devrez peut-être obtenir les noms de certains champs de fusion ou la hiérarchie des régions dans votre modèle. Maintenant, nous allons expliquer les variantes possibles pour obtenir des informations spécifiques à partir de votre modèle.

### Obtenir les Noms des Champs de Fusion

Vous pouvez rencontrer un scénario dans lequel vous souhaiterez fusionner des données avec des champs de fusion créés par d'autres, et dans ce cas, vous ne serez pas sûr des noms exacts des champs de fusion. Donc, pour atteindre l'objectif mail merge, vous devrez d'abord lire et afficher les noms de tous les champs de fusion. Aspose.Words vous permet d'obtenir une collection de noms de champs de fusion à l'aide de la méthode [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

L'exemple de code suivant montre comment obtenir les noms de tous les champs de fusion dans le modèle:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Obtenir Des Informations Sur Les Régions De Fusion

Vous pouvez avoir un scénario dans lequel vous souhaitez comprendre comment votre modèle est structuré à travers les régions de fusion spécifiées. Vous pouvez utiliser certaines méthodes pour rassembler toutes les informations nécessaires sur les régions de fusion ou pour obtenir la hiérarchie des régions de fusion dans votre modèle, comme la méthode [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Vous pouvez utiliser les propriétés et les méthodes de la classe [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).L'exemple de code suivant montre comment obtenir la hiérarchie des régions de fusion:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Ajouter des Champs mappés

Aspose.Words vous permet de mapper automatiquement les noms des champs de votre source de données et les noms des champs Mail Merge du modèle à l'aide de la propriété [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Par exemple, si vous avez un nom de champ appelé "Nom de famille" dans votre modèle et que, dans votre source de données, vous avez le nom de champ "Nom de famille" ou une autre variante telle que "Nom de famille" ou "LastName", le champ de la source de données sera automatiquement mappé au champ mappé correspondant. Si un modèle de fusion doit être fusionné avec de nombreuses sources de données, les champs mappés rendent inutile la réintroduction des champs dans le modèle pour s'accorder avec les noms de champ dans la base de données.

L'exemple de code suivant montre comment ajouter un champ mappé à l'aide de la méthode [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) lorsqu'un champ de fusion dans un modèle et un champ de données dans une source de données ont des noms différents:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
