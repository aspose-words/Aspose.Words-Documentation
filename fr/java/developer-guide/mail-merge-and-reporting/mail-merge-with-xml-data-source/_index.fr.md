---
title: Mail Merge avec XML Source de données dans Java
second_title: Aspose.Words pour Java
articleTitle: Mail Merge avec XML Source de données
linktitle: Mail Merge avec XML Source de données
type: docs
description: "Utilisez diverses sources de données lors de l'exécution d'une opération Mail Merge, y compris un fichier XML. Le principal avantage de l'utilisation de XML est la possibilité de définir une hiérarchie directement dans le document dans Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /fr/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

Vous pouvez utiliser diverses sources de données lors de l'exécution d'une opération Mail Merge, y compris un fichier XML. Le principal avantage de l'utilisation de XML est la possibilité de définir une hiérarchie directement dans le document, puis de la transmettre simplement à Aspose.Words.

Cet article décrit comment lire des données à partir d'un fichier XML plutôt que directement à partir d'une base de données et inclure XML comme source de données pour effectuer une opération Mail Merge.

## Avantages de XML En tant que source de données

XML les sources de données sont très pratiques pour stocker des données sans la surcharge d'une base de données. Ils sont parfaits pour les applications hors ligne où les utilisateurs doivent ajouter, modifier et supprimer des données lorsqu'ils ne peuvent pas se connecter à une base de données.

XML les données peuvent être une bonne alternative aux bases de données relationnelles, en particulier si vous travaillez avec des applications Web. La plupart des services Web utilisent XML pour échanger des informations. Les bases de données orientées XML sont activement utilisées sur le marché actuel, et les développeurs de bases de données relationnelles ajoutent la compatibilité XML à leurs produits pour avoir un retour de base de données XML.

Puisque XML stocke les données au format texte brut, le stockage est indépendant de la plate-forme. Ainsi, les données peuvent être facilement exportées, importées ou simplement déplacées. XML est populaire en tant que source de données car il offre un moyen de préserver la signification sémantique des données lors de la communication entre différentes applications.

## Remplir un modèle de fusion avec des données de XML en utilisant DataSet

XML est la norme universelle pour l'échange de données, et les formats de document Microsoft Word sont les formats les plus populaires pour les modèles Mail Merge. Par conséquent, la possibilité d'exécuter un Mail Merge à partir d'un fichier XML vers un document modèle Word est devenue une exigence courante.

Microsoft Word ne fournit pas de méthode directe pour utiliser les données XML comme source de données pour une opération Mail Merge, tandis que Aspose.Words vous permet d'effectuer une opération Mail Merge avec des données provenant d'une source de données XML. Notez que la structure du document XML peut également être modifiée et que les données seront toujours lues correctement. Cela permet de fusionner facilement différents types de documents XML.

Utilisez la méthode `ReadXML` pour lire le schéma XML et les données dans l'objet `DataSet`. Cet objet est ensuite utilisé comme source de données pour un mail merge.

{{% alert color="primary" %}}

Vous pouvez utiliser les mêmes modèles pour différentes sources de données.

{{% /alert %}}

Le XML suivant contient les données nécessaires pour remplir un modèle de fusion:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

L'exemple de code suivant montre comment charger des données XML dans DataSet, puis les utiliser comme source de données:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Vous pouvez remarquer la différence entre le modèle avant d'exécuter l'opération Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

Et après avoir exécuté l'opération Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
