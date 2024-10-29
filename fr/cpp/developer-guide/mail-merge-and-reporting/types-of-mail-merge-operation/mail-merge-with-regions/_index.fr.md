---
title: Mail Merge avec des régions en C++
second_title: Aspose.Words pour C++
articleTitle: Mail Merge avec les régions
linktitle: Mail Merge avec les régions
type: docs
description: "Créez différentes régions dans votre modèle pour avoir des zones spéciales que vous pouvez simplement remplir avec vos données. Utilisez le mail merge avec des régions si vous souhaitez insérer des tableaux, des lignes avec des données répétitives pour faire croître dynamiquement vos documents."
keywords: "how to execute mail merge c++"
weight: 20
url: /fr/cpp/mail-merge-with-regions/
---

Vous pouvez créer différentes régions dans votre modèle pour avoir des zones spéciales que vous pouvez simplement remplir avec vos données. Utilisez le mail merge avec des régions si vous souhaitez insérer des tableaux, des lignes avec des données répétitives pour faire croître dynamiquement vos documents en spécifiant ces régions dans votre modèle.

Vous pouvez créer des régions imbriquées (enfants) ainsi que fusionner des régions. Le principal avantage de l'utilisation de ce type est d'augmenter dynamiquement les parties à l'intérieur d'un document. Voir plus de détails dans le prochain article "Imbriqué Mail Merge avec des régions".

{{% alert color="primary" %}}

Des informations sur une région mail merge peuvent être obtenues en utilisant la classe [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Comment exécuter Mail Merge avec des régions

Une région mail merge est une partie spécifique d'un document qui a un point de départ et un point final. Les deux points sont représentés par des champs mail merge portant des noms spécifiques *"TableStart:XXX"* et *"TableEnd:XXX"*. Tout le contenu inclus dans une région mail merge sera automatiquement répété pour chaque enregistrement de la source de données.

Aspose.Words vous permet d'exécuter mail merge avec des régions en utilisant l'une des méthodes [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) qui acceptent [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) source de données personnalisée.

L'exemple de code suivant montre comment exécuter mail merge avec des régions de la base de données sqlite avec [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Vous pouvez remarquer la différence entre le document avant d'exécuter mail merge avec des régions:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Et après avoir exécuté mail merge avec des régions:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Limitations de Mail Merge avec les régions

Il y a quelques points importants que vous devez prendre en compte lorsque vous effectuez un mail merge avec des régions:

* Le point de départ *TableStart:Orders* et le point final *TableEnd:Orders* doivent tous deux se trouver dans la même ligne ou cellule. Par exemple, si vous démarrez une région de fusion dans une cellule d'un tableau, vous devez terminer la région de fusion sur la même ligne que la première cellule.
  Le nom du champ de fusion doit correspondre au nom de la colonne dans votre DataTable. Sauf si vous spécifiez des champs mappés, mail merge avec des régions ne réussira pas pour tout champ de fusion qui a un nom autre que le nom de la colonne.
* Aspose.Words pour C++ prend uniquement en charge les sources de données basées sur [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) et [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). Contrairement à .NET et Java, C++ n'a pas de plate-forme multiplateforme généralement acceptée API pour travailler avec des bases de données (comme ADODB, ODBC ou JDBC). Pour travailler avec une source de données spécifique, vous devez implémenter une interface [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) ou [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Si l'une de ces règles est enfreinte, vous obtiendrez des résultats inattendus ou une exception peut être levée.

{{% alert color="primary" %}}

Si vous n'utilisez pas de régions mail merge, cela ressemblera à Microsoft Word mail merge et l'intégralité du contenu du document sera répétée pour chaque enregistrement de la source de données.

{{% /alert %}}

