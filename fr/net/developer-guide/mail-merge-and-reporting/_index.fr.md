---
title: Mail Merge et Rapports dans C#
second_title: Aspose.Words pour .NET
articleTitle: Mail Merge et rapports
linktitle: Mail Merge et rapports
type: docs
description: "Mail Merge est une fonctionnalité populaire pour créer rapidement des documents à l'aide de C#. Aspose.Words pour .NET reprend la fonctionnalité standard Mail Merge et la fait progresser de nombreuses étapes, la transformant en une solution de reporting à part entière qui vous permet de créer des documents encore plus complexes tels que des rapports, des catalogues, des inventaires et des factures."
keywords: "how to use Mail Merge c#"
weight: 30
url: /fr/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge est une fonctionnalité populaire pour créer rapidement et facilement des documents tels que des lettres, des étiquettes et des enveloppes. Aspose.Words vous permet de générer des documents à partir de modèles avec des champs Mail Merge.

Un champ Mail Merge est un champ que vous pouvez insérer dans un modèle mail merge pour inclure des valeurs spécifiques d'un enregistrement de source de données dans les documents de sortie. Par exemple, vous pouvez insérer un champ de fusion dans un modèle d'e-mail afin que le message d'accueil porte le prénom du destinataire plutôt qu'un générique "Bonjour!". Aspose.Words place les données d'une source externe, telle qu'une base de données ou un fichier, dans ces champs et les formate. Le document résultant est enregistré dans le dossier spécifié.

Aspose.Words reprend la fonctionnalité standard Mail Merge et la fait progresser de nombreuses étapes, la transformant en une solution de reporting à part entière qui vous permet de créer des documents encore plus complexes tels que des rapports, des catalogues, des inventaires et des factures. Voici quelques avantages de la solution de reporting Aspose.Words:

- Créez des rapports dans Microsoft Word à l'aide de champs Mail Merge standard
- Définissez des régions dans le document qui augmentent, telles que des lignes de commande détaillées
- Insérer des images pendant un mail merge
- Exécutez n'importe quelle logique personnalisée, contrôlez la mise en forme ou insérez du contenu complexe à l'aide de gestionnaires d'événements Mail Merge
- Remplissez des documents avec des données provenant de tout type de source de données

{{% alert color="primary" %}}

L'espace de noms [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) est utilisé pour travailler avec la fusion de courrier.

{{% /alert %}}

## Mécanisme et principaux composants de Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words offre la possibilité de charger des documents dans divers [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/), puis permet aux utilisateurs d'effectuer une opération Mail Merge.

Habituellement, un document chargé vous permet de stocker des champs de fusion, par exemple un document au format DOCX. Mais il existe des formats qui ne stockent pas de tels champs, par exemple, TXT. Si Aspose.Words prend en charge le chargement de tels formats de fichier, vous pouvez ajouter les champs de fusion directement au modèle de document, enregistrer le document dans un [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) pratique et effectuer l'opération Mail Merge.

L'opération Mail Merge fusionnera votre *mail merge template* et votre *data source* pour générer un *merged documents* individuel.

## Qu'est-ce qu'un modèle Mail Merge {#what-is-a-mail-merge-template}

L'objectif de l'application d'une opération mail merge à l'aide d'un modèle de fusion est de simplifier le processus de création d'un document.

Il existe plusieurs façons de créer et de concevoir un modèle de fusion. Vous pouvez utiliser Microsoft Word, et le modèle de fusion n'a pas besoin d'être un modèle Microsoft Word, c'est-à-dire un document au format DOT ou DOTX, il peut s'agir d'un document ordinaire au format DOC ou DOCX. Vous devez insérer des champs spéciaux appelés champs de fusion dans ce modèle aux endroits où vous souhaitez que les données de votre source de données soient insérées ultérieurement. Ou vous pouvez créer par programme un modèle de fusion à l'aide de la classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

Le modèle de fusion contient le texte principal, qui doit être le même dans tous les documents de sortie après avoir effectué l'opération Mail Merge. Vous pouvez utiliser n'importe quel format pour votre modèle s'il est possible d'y ajouter des champs de fusion. Tous les champs de fusion de votre modèle seront remplis à partir de votre source de données lors de l'opération Mail Merge.

## Sources de données pour une opération Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge accepte diverses sources de données. Cela peut être soit un DataTable, DataView, DataSet, IDataReader, un tableau de valeurs pris en charge par ADO .NET, ou des sources de données personnalisées représentées par des implémentations [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/).

La source de données contient toutes les informations extraites lors de l'opération Mail Merge afin de personnaliser les e-mails et documents individuels. Les sources de données peuvent être créées manuellement ou générées par des rapports à partir d'une base de données ou d'une application existante. Si vous avez des données au format XML, vous pouvez les charger et les fusionner avec DataSet. L'opération Mail Merge parcourra tous les enregistrements de la source de données et les insérera dans les champs Mail Merge du document. Vous pouvez implémenter certaines interfaces mail merge telles que [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/) pour fusionner des données à partir de n'importe quelle source de données, y compris une requête LINQ, un fichier XML ou des objets métier.

L'exemple de code suivant montre comment charger une table de données en tant que source de données pour l'opération Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Documents fusionnés d'une opération Mail Merge {#merged-documents-of-a-mail-merge-operation}

Un document fusionné est le résultat de l'opération Mail Merge lorsque vous fusionnez le modèle avec la source de données. Tous les champs de fusion du document fusionné sont remplacés par les données réelles de votre source de données.

L'image suivante montre un exemple de modèle de fusion avec des champs fusionnés avant d'effectuer l'opération Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

L'image suivante montre un exemple du document fusionné en sortie à la suite de l'exécution de l'opération Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Voir Aussi

- [Travailler avec Mail Merge modèles dans Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
