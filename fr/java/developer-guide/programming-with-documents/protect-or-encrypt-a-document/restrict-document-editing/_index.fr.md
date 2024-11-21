---
title: Document de restriction Édition Java
second_title: Aspose.Words pour Java
articleTitle: Restreindre l'édition des documents
linktitle: Restreindre l'édition des documents
description: "Restreindre l'édition d'un document en définissant un type de restriction. Vous pouvez également supprimer la protection et faire des régions modifiables sans restriction en utilisant Java."
type: docs
weight: 30
url: /fr/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez avoir besoin de limiter la possibilité de modifier un document et ne permettre que certaines actions avec lui. Cela peut être utile pour empêcher d'autres personnes d'éditer des informations sensibles et confidentielles dans votre document.

Aspose.Words vous permet de restreindre l'édition d'un document en définissant un type de restriction. En outre, Aspose.Words vous permet également de spécifier les paramètres de protection en écriture pour un document.

Cet article explique comment utiliser Aspose.Words sélectionner un type de restriction, comment ajouter ou supprimer la protection et comment faire des régions modifiables sans restriction.

## Sélectionnez Modifier le type de restriction

Aspose.Words vous permet de contrôler la manière dont vous limitez le contenu en utilisant [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) paramètre de dénombrement. Cela vous permettra de sélectionner un type exact de protection comme:

*N'autorise que les commentaires
*Autoriser uniquement les champsForm
*Autorise uniquement les révisions
* En lecture seule
* Pas de protection

Tous les types sont sécurisés par mot de passe, et si ce mot de passe n'est pas entré correctement, un utilisateur ne pourra pas modifier légalement le contenu de votre document. Ainsi, si votre document vous est retourné sans obligation de fournir le mot de passe nécessaire, c'est un signe que quelque chose ne va pas.

Si vous n'avez pas défini de mot de passe lors du choix du type de sécurité, d'autres utilisateurs peuvent tout simplement ignorer la protection de votre document.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété dans un document qui peut être supprimé si les propriétés du document sont accessibles. Par conséquent, un tel mot de passe n'est pas une garantie de la sécurité du document. Les [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) La méthode montre ça.

{{% /alert %}}

## Ajouter la protection des documents

Ajouter une protection à votre document est un processus simple, car il vous suffit d'appliquer l'une des méthodes de protection décrites dans cette section.

Aspose.Words vous permet de protéger vos documents contre les changements [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) méthode. Cette méthode n'est pas une fonction de sécurité et ne chiffre pas un document.

{{% alert color="primary" %}}

En Microsoft Word, vous pouvez restreindre l'édition de la même manière en utilisant les deux:

* Édition restreinte (Fichier → Info → Protéger le document)
* Variante alternative – Édition de restrictions (Review → Protégez → Édition de restrictions)

{{% /alert %}}

L'exemple de code suivant montre comment ajouter une protection par mot de passe à votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

L'exemple de code suivant montre comment restreindre l'édition dans un document, de sorte que seule l'édition dans les champs de formulaire est possible:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Supprimer la protection du document

Aspose.Words vous permet de supprimer la protection d'un document avec une modification simple et directe du document. Vous pouvez soit supprimer la protection du document sans connaître le mot de passe réel, soit fournir le mot de passe correct pour débloquer le document en utilisant le [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) méthode. Les deux façons de supprimer n'ont aucune différence.

L'exemple de code suivant montre comment supprimer la protection de votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Spécifier les régions modifiables non restreintes

Vous pouvez restreindre l'édition de votre document et en même temps permettre des modifications à certaines parties de celui-ci. Ainsi, toute personne qui ouvre votre document pourra accéder à ces parties libres et apporter des modifications au contenu.

Aspose.Words vous permet de marquer les parties qui peuvent être modifiées dans votre document [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) et [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) méthodes.

L'exemple de code suivant montre comment marquer l'ensemble du document en lecture seule et précise les régions modifiables:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Vous pouvez également choisir différentes restrictions d'édition de documents pour différentes sections.

L'exemple de code suivant montre comment ajouter une restriction pour l'ensemble du document, puis supprimer la restriction pour une des sections:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
