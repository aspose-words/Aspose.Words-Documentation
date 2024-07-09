---
title: Travailler avec les personnages de contrôle
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les personnages de contrôle
linktitle: Travailler avec les personnages de contrôle
description: "Introduction au travail avec les caractères de contrôle dans Aspose.Words pour Java."
type: docs
weight: 400
url: /fr/java/working-with-control-characters/
---

Microsoft Word Les documents peuvent contenir divers caractères ayant une signification particulière. Normalement, ils sont utilisés à des fins de formatage et ne sont pas dessinés en mode normal. Vous pouvez les rendre visibles si vous cliquez sur le bouton Afficher/Cacher les marques de formatage situé sur la barre d'outils standard.

Parfois, vous pouvez avoir besoin d'ajouter ou de supprimer des caractères du texte. Par exemple, lors de l'obtention du texte programmatique du document, Aspose.Words conserve la plupart des caractères de contrôle, donc si vous devez travailler avec ce texte, vous devriez probablement supprimer ou remplacer les caractères.

Les [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) class est un dépôt pour les constantes qui représentent les caractères de contrôle souvent rencontrés dans les documents. Il fournit à la fois des versions char et string des mêmes constantes. Par exemple, chaîne [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) et char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) a la même valeur.

{{% alert color="primary" %}}

Utilisez cette classe chaque fois que vous voulez traiter avec des caractères de contrôle.

{{% /alert %}}

L'exemple de code suivant montre comment utiliser les caractères de contrôle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
