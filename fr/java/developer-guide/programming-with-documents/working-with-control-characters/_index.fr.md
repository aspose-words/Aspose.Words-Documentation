---
title: Utilisation Des Caractères De Contrôle
second_title: Aspose.Words pour Java
articleTitle: Utilisation Des Caractères De Contrôle
linktitle: Utilisation Des Caractères De Contrôle
description: "Introduction à l'utilisation des caractères de contrôle dans Aspose.Words pour Java."
type: docs
weight: 400
url: /fr/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word les documents peuvent contenir divers caractères qui ont une signification particulière. Normalement, ils sont utilisés à des fins de formatage et ne sont pas dessinés en mode normal. Vous pouvez les rendre visibles en cliquant sur le bouton Afficher / Masquer les marques de mise en forme situé dans la barre d'outils standard.

Parfois, vous devrez peut-être ajouter ou supprimer des caractères dans/du texte. Par exemple, lors de l'obtention de texte par programme à partir du document, Aspose.Words préserve la plupart des caractères de contrôle, donc si vous avez besoin de travailler avec ce texte, vous devriez probablement supprimer ou remplacer les caractères.

La classe [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) est un référentiel pour les constantes qui représentent les caractères de contrôle souvent rencontrés dans les documents. Il fournit à la fois des versions char et string des mêmes constantes. Par exemple, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) et char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) ont la même valeur.

{{% alert color="primary" %}}

Utilisez cette classe chaque fois que vous souhaitez traiter des caractères de contrôle.

{{% /alert %}}

L'exemple de code suivant montre comment utiliser les caractères de contrôle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
