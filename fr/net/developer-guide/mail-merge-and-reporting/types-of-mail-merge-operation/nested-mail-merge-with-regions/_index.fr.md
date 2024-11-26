---
title: Imbriqués Mail Merge avec des régions dans C#
second_title: Aspose.Words pour .NET
articleTitle: Imbriqué Mail Merge avec des régions
linktitle: Imbriqué Mail Merge avec des régions
type: docs
description: "Effectuez une opération Mail Merge avec des régions imbriquées à l'aide de C#. La fusion imbriquée est une fonctionnalité qui vous permet de fusionner des données hiérarchiques de votre source de données dans votre modèle de fusion."
keywords: "mail merge with nested regions c#"
weight: 10
url: /fr/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

Dans certains scénarios, vous devrez peut-être utiliser des Mail Merge imbriqués avec des régions. La fusion imbriquée est une fonctionnalité qui vous permet de fusionner des données hiérarchiques de votre source de données dans votre modèle de fusion pour remplir facilement votre document. Fondamentalement, les données hiérarchiques sont représentées comme un ensemble d'éléments de données, et les relations hiérarchiques décrivent comment les éléments de données sont liés les uns aux autres (un élément de données est le parent d'un autre).

Aspose.Words vous permet d'effectuer une opération Mail Merge avec des régions imbriquées. Vous pouvez utiliser cette fonctionnalité si vous disposez d'une source de données organisée en structure arborescente et que vous souhaitez exécuter une opération Mail Merge pour remplir un modèle avec des données hiérarchiques.

{{% alert color="primary" %}}

Imbriqué Mail Merge n'est pertinent que lors de l'exécution d'un Mail Merge avec des régions.

{{% /alert %}}

## Qu'est-ce qu'un Mail Mergeimbriqué

La région Mail Merge est appelée imbriquée si vous avez au moins deux régions Mail Merge dont l'une est à l'intérieur de l'autre sous une forme hiérarchique. Notez que chaque région contient les données d'une table.

L'exemple le plus courant d'un Mail Merge imbriqué est un ordre qui contient plusieurs éléments dans lequel vous devez lier plusieurs tables de données et présenter les informations dans un modèle.

L'image ci-dessous montre deux régions imbriquées où la région *Order* Mail Merge est le parent de la région *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Comment traiter Mail Merge avec des régions imbriquées

Les données à fusionner dans un modèle peuvent provenir de diverses sources, principalement des bases de données relationnelles ou des documents XML. Dans notre exemple, nous allons utiliser un fichier XML pour stocker nos données et les charger directement dans le **DataSet**.

Aspose.Words vous permet de traiter Mail Merge avec des régions imbriquées en utilisant les relations de données spécifiées dans **DataSet**. Lorsque l'objet **DataSet** charge XML, il utilise le schéma fourni ou le déduit de la structure du XML lui-même pour y parvenir. À partir de cette structure, il crée des relations entre les tables si nécessaire.

L'image ci-dessous montre comment les données de la table *Order* transmises aux régions de fusion imbriquées seront liées à la table *Item*, ainsi que la sortie générée lors de l'opération de fusion.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Comme vous pouvez le voir dans le document de sortie, chaque commande de la table **Order** est insérée dans le modèle de fusion avec tous les éléments associés de la commande de la table **Item**. La prochaine commande sera insérée avec leurs articles jusqu'à ce que toutes les commandes et tous les articles soient répertoriés. L'ordre d'imbrication Mail Merge des régions dans le modèle doit correspondre aux relations de données entre les tables de la source de données.

L'exemple de code suivant montre comment générer une facture à l'aide de Mail Merge imbriqués avec des régions:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Vous pouvez vérifier l'implémentation de la configuration manuelle des relations de données à partir de [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Comment configurer des Relations de Données dans Mail Merge imbriquées avec des Régions

Vous devez configurer toutes les relations de données dans la structure parent-enfant pour exécuter correctement les régions Mail Merge imbriquées. Ignorer cette étape importante peut entraîner l'échec de l'exécution des régions Mail Merge imbriquées.

Lors de la récupération de données pour un Mail Merge imbriqué à partir d'un fichier XML à l'aide de la méthode **ReadXml**, des relations sont automatiquement créées en fonction de la structure du document XML. Cependant, vous devez vous assurer que des relations correctes ont été créées.

Si Mail Merge ne fonctionne pas comme prévu, vous devrez peut-être restructurer votre fichier XML ou créer explicitement des relations entre les objets DataTable dans le DataSet.

Un `DataSet` qui a des tables de données associées utilisera l'objet **DataRelation** pour représenter la relation parent-enfant entre les tables.

L'exemple de code suivant montre comment établir un `DataRelation` entre la table d'un client et la table d'une commande à l'aide d'un objet `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Comment créer des Relations de Données à partir d'une Source de Données personnalisée

Implémentez l'interface [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) pour créer des relations dans la structure parent-enfant de votre source de données personnalisée. Utilisez la méthode [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) pour renvoyer les données enfants pertinentes d'un enregistrement parent actuel.

L'exemple suivant montre comment créer des relations de données à l'aide de **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
