---
title: Opération Mail Merge simple en C++
second_title: Aspose.Words pour C++
articleTitle: Opération simple Mail Merge
linktitle: Opération simple Mail Merge
type: docs
description: "Un simple mail merge est utilisé pour remplir les champs mail merge à l'intérieur de votre modèle avec les données requises de votre source de données – il est similaire au classique mail merge dans Microsoft Word. Ajoutez un ou plusieurs champs de fusion dans votre modèle, puis exécutez l'opération simple mail merge."
keywords: "how to execute mail merge c++"
weight: 10
url: /fr/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Un simple mail merge est utilisé pour remplir les champs mail merge à l'intérieur de votre modèle avec les données requises de votre source de données (représentation de table unique). C'est donc similaire au classique mail merge dans Microsoft Word.

Vous pouvez ajouter un ou plusieurs champs de fusion dans votre modèle, puis exécuter l'opération simple mail merge. Il est recommandé de l'utiliser si votre modèle ne contient aucune région de fusion.

La principale limitation de l'utilisation de ce type est que l'ensemble du contenu du document sera répété pour chaque enregistrement de la source de données.

## Comment exécuter une opération simple Mail Merge

Une fois que votre modèle est prêt, vous pouvez commencer à effectuer l'opération simple mail merge. Aspose.Words vous permet d'exécuter une opération mail merge simple en utilisant différentes méthodes [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) qui acceptent divers objets de données comme source de données.

L'exemple de code suivant montre comment exécuter une opération mail merge simple en utilisant l'une des méthodes [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Vous pouvez remarquer la différence entre le document avant d'exécuter simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Et après avoir exécuté le simple mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Comment Créer Plusieurs Documents Fusionnés

Dans Aspose.Words, l'opération standard mail merge ne remplit qu'un seul document avec le contenu de votre source de données. Ainsi, vous devrez exécuter l'opération mail merge plusieurs fois pour créer quelques documents fusionnés en sortie.

L'exemple de code suivant montre comment générer quelques documents fusionnés lors d'une opération mail merge avec [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
