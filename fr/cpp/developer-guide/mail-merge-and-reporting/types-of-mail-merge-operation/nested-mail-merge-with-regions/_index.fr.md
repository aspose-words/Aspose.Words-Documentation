---
title: Imbriqué Mail Merge avec des régions en C++
second_title: Aspose.Words pour C++
articleTitle: Imbriqué Mail Merge avec des régions
linktitle: Imbriqué Mail Merge avec des régions
type: docs
description: "Effectuez une opération Mail Merge avec des régions imbriquées en utilisant C++. La fusion imbriquée est une fonctionnalité qui vous permet de fusionner des données hiérarchiques de votre source de données dans votre modèle de fusion."
keywords: "mail merge with nested regions c++"
weight: 30
url: /fr/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Dans certains scénarios, vous devrez peut-être utiliser des Mail Merge imbriqués avec des régions. La fusion imbriquée est une fonctionnalité qui vous permet de fusionner des données hiérarchiques de votre source de données dans votre modèle de fusion pour remplir facilement votre document. Fondamentalement, les données hiérarchiques sont représentées comme un ensemble d'éléments de données, et les relations hiérarchiques décrivent comment les éléments de données sont liés les uns aux autres (un élément de données est le parent d'un autre).

Aspose.Words vous permet d'effectuer une opération Mail Merge avec des régions imbriquées. Vous pouvez utiliser cette fonctionnalité si vous disposez d'une source de données organisée en structure arborescente et que vous souhaitez exécuter une opération Mail Merge pour remplir un modèle avec des données hiérarchiques.

{{% alert color="primary" %}}

Imbriqué Mail Merge n'est pertinent que lors de l'exécution d'un Mail Merge avec des régions.

{{% /alert %}}

## Qu'est-ce qu'un Mail Mergeimbriqué

La région Mail Merge est appelée imbriquée si vous avez au moins deux régions Mail Merge dont l'une est à l'intérieur de l'autre sous une forme hiérarchique. Notez que chaque région contient les données d'une table.

L'exemple le plus courant d'un Mail Merge imbriqué est un ordre qui contient quelques éléments où vous devez lier de nombreuses tables de données et présenter les informations dans un modèle.

L'image ci-dessous montre deux régions imbriquées où la région *Order* Mail Merge est le parent de la région *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Comment traiter Mail Merge avec des régions imbriquées

Les données à fusionner dans un modèle peuvent provenir de diverses sources, principalement des bases de données relationnelles ou des documents XML. Dans notre exemple, nous allons utiliser un [SQLite](https://www.sqlite.org/index.html) base de données pour stocker nos données et les charger avec une implémentation de source de données personnalisée.

L'image ci-dessous montre comment les données de la table *Order* transmises aux régions de fusion imbriquées seront liées à la table *Item*, ainsi que la sortie générée lors de l'opération de fusion.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Comme vous pouvez le voir dans le document de sortie, chaque commande de la table **Order** est insérée dans le modèle de fusion avec tous les éléments associés de la commande de la table **Item**. La prochaine commande sera insérée avec leurs articles jusqu'à ce que toutes les commandes et tous les articles soient répertoriés. L'ordre d'imbrication Mail Merge des régions dans le modèle doit correspondre aux relations de données entre les tables de la source de données.

## Comment créer des Relations de Données à partir d'une Source de Données personnalisée

Implémentez l'interface [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) pour créer des relations dans la structure parent-enfant de votre source de données personnalisée. Utilisez la méthode [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) pour renvoyer les données enfants pertinentes d'un enregistrement parent actuel.

L'exemple de code suivant montre comment générer une facture à l'aide de Mail Merge imbriqués avec des régions à partir de [SQLite](https://www.sqlite.org/index.html) base de données avec [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
