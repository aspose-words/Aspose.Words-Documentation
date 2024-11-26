---
title: Types d'opération Mail Merge dans Java
second_title: Aspose.Words pour Java
articleTitle: Types d'opération Mail Merge
linktitle: Types d'opération Mail Merge
type: docs
description: "Effectuez deux types différents d'opérations Mail Merge: simples Mail Merge et Mail Merge avec des régions. Simple Mail Merge répète l'intégralité du document pour chaque enregistrement de source de données, tandis que Mail Merge avec régions répète uniquement les régions désignées par enregistrement à l'aide de Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /fr/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

L'idée principale de Mail Merge est de créer automatiquement un document ou plusieurs documents en fonction de votre modèle et des données extraites de votre source de données. Aspose.Words vous permet d'effectuer deux types différents d'opérations Mail Merge: simples Mail Merge et Mail Merge avec des régions.

L'exemple le plus courant d'utilisation de simple Mail Merge est lorsque vous souhaitez envoyer un document à différents clients en incluant leurs noms au début du document. Pour ce faire, vous devez créer des champs de fusion tels que *First Name* et *Last Name* dans votre modèle, puis les remplir avec des données de votre source de données. Alors que l'exemple le plus courant d'utilisation de Mail Merge avec des régions est lorsque vous souhaitez envoyer un document qui inclut des commandes spécifiques avec la liste de tous les éléments de chaque commande. Pour ce faire, vous devrez créer des régions de fusion dans votre propre région de modèle pour chaque commande, afin de la remplir avec toutes les données requises pour les articles.

La principale différence entre les deux opérations de fusion est que la simple Mail Merge (sans régions) répète l'intégralité du document pour chaque enregistrement de source de données, tandis que Mail Merge avec des régions répète uniquement les régions désignées par enregistrement. Vous pouvez considérer une simple opération Mail Merge comme un cas particulier de fusion avec des régions où la seule région est le document entier.

{{% alert color="primary" %}}

La classe [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) représente une fonctionnalité Mail Merge. Avec ses propriétés, vous pouvez personnaliser le comportement requis avant d'exécuter une opération Mail Merge.

{{% /alert %}}

## Opération simple Mail Merge {#simple-mail-merge-operation}

Un simple Mail Merge est utilisé pour remplir les champs Mail Merge à l'intérieur de votre modèle avec les données requises de votre source de données (représentation de table unique). C'est donc similaire au classique Mail Merge dans Microsoft Word.

Vous pouvez ajouter un ou plusieurs champs de fusion dans votre modèle, puis exécuter l'opération simple Mail Merge. Il est recommandé de l'utiliser si votre modèle ne contient aucune région de fusion.

La principale limitation de l'utilisation de ce type est que l'ensemble du contenu du document sera répété pour chaque enregistrement de la source de données.

### Comment exécuter une opération simple Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Une fois que votre modèle est prêt, vous pouvez commencer à effectuer l'opération simple Mail Merge. Aspose.Words vous permet d'exécuter une opération Mail Merge simple en utilisant différents [Exécuter des méthodes](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) qui acceptent divers objets de données comme source de données.

L'exemple de code suivant montre comment exécuter une opération Mail Merge simple en utilisant l'une des méthodes [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Vous pouvez remarquer la différence entre le document avant d'exécuter simple mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

Et après avoir exécuté le simple mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Comment Créer Plusieurs Documents Fusionnés

Dans Aspose.Words, l'opération standard Mail Merge ne remplit qu'un seul document avec le contenu de votre source de données. Ainsi, vous devrez exécuter l'opération Mail Merge plusieurs fois pour créer plusieurs documents fusionnés en sortie.

L'exemple de code suivant montre comment générer plusieurs documents fusionnés lors d'une opération Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge avec les régions

Vous pouvez créer différentes régions dans votre modèle pour avoir des zones spéciales que vous pouvez simplement remplir avec vos données. Utilisez le Mail Merge avec des régions si vous souhaitez insérer des tableaux, des lignes avec des données répétitives pour faire croître dynamiquement vos documents en spécifiant ces régions dans votre modèle.

Vous pouvez créer des régions imbriquées (enfants) ainsi que fusionner des régions. Le principal avantage de l'utilisation de ce type est d'augmenter dynamiquement les parties à l'intérieur d'un document. Voir plus de détails dans le prochain article "Imbriqué Mail Merge avec des régions".

{{% alert color="primary" %}}

Des informations sur une région Mail Merge peuvent être obtenues en utilisant la classe [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Comment exécuter Mail Merge avec des régions

Une région Mail Merge est une partie spécifique d'un document qui a un point de départ et un point final. Les deux points sont représentés par des champs Mail Merge portant des noms spécifiques *"TableStart:XXX"* et *"TableEnd:XXX"*. Tout le contenu inclus dans une région Mail Merge sera automatiquement répété pour chaque enregistrement de la source de données.

Aspose.Words vous permet d'exécuter Mail Merge avec des régions utilisant différentes [Exécuter des méthodes](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) qui acceptent divers objets de données comme source de données.

Dans un premier temps, nous devons créer le `DataSet` pour le transmettre plus tard en tant que paramètre d'entrée à la méthode `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

L'exemple de code suivant montre comment exécuter Mail Merge avec des régions à l'aide de la méthode [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

Vous pouvez remarquer la différence entre le document avant d'exécuter Mail Merge avec des régions:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

Et après avoir exécuté Mail Merge avec des régions:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Limitations de Mail Merge avec les régions

Il y a quelques points importants que vous devez prendre en compte lorsque vous effectuez un Mail Merge avec des régions:

* Le point de départ *TableStart:Orders* et le point final *TableEnd:Orders* doivent tous deux se trouver dans la même ligne ou cellule. Par exemple, si vous démarrez une région de fusion dans une cellule d'un tableau, vous devez terminer la région de fusion sur la même ligne que la première cellule.
* Le nom du champ de fusion doit correspondre au nom de la colonne dans votre DataTable. Sauf si vous avez spécifié des champs mappés, le Mail Merge avec des régions ne réussira pas pour tout champ de fusion qui a un nom différent de celui de la colonne.

Si l'une de ces règles est enfreinte, vous obtiendrez des résultats inattendus ou une exception peut être levée.

{{% alert color="primary" %}}

Si vous n'utilisez pas de régions Mail Merge, elles seront similaires à Microsoft Word mail merge et l'ensemble du contenu du document sera répété pour chaque enregistrement de la source de données.

{{% /alert %}}

