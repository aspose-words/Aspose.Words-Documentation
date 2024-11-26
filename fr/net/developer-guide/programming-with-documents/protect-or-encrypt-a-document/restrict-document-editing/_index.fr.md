---
title: Restreindre l'édition de documents dans C#
second_title: Aspose.Words pour .NET
articleTitle: Restreindre l'édition de documents
linktitle: Restreindre l'édition de documents
description: "Restreindre la modification d'un document en définissant un type de restriction à l'aide de C#. Vous pouvez également supprimer la protection et créer des régions modifiables sans restriction."
type: docs
weight: 30
url: /fr/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devrez peut-être limiter la possibilité de modifier un document et autoriser uniquement certaines actions. Cela peut être utile pour empêcher d'autres personnes de modifier des informations sensibles et confidentielles dans votre document.

Aspose.Words vous permet de restreindre la modification d'un document en définissant un type de restriction. De plus, Aspose.Words vous permet également de spécifier les paramètres de protection en écriture pour un document.

Cet article explique comment utiliser Aspose.Words pour sélectionner un type de restriction, comment ajouter ou supprimer une protection et comment créer des régions modifiables sans restriction.

## Sélectionnez le type de restriction de modification

Aspose.Words vous permet de contrôler la manière dont vous restreignez le contenu à l'aide du paramètre d'énumération [ProtectionType](https://reference.aspose.com/words/fr/net/aspose.words/protectiontype/). Cela vous permettra de sélectionner un type exact de protection tel que le suivant:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* Lecture seulement
* Pas de protection

Tous les types sont sécurisés par mot de passe, et si ce mot de passe n'est pas saisi correctement, un utilisateur ne pourra pas légalement modifier le contenu de votre document. Ainsi, si votre document vous est renvoyé sans qu’il soit nécessaire de fournir le mot de passe nécessaire, c’est le signe que quelque chose ne va pas.

Si vous n'avez pas défini de mot de passe lors du choix du type de sécurité, les autres utilisateurs peuvent simplement ignorer la protection de votre document.

{{% alert color="primary" %}}

Notez que le mot de passe défini n'est qu'une propriété d'un document qui peut être supprimée en cas d'accès aux propriétés du document. Par conséquent, un tel mot de passe ne constitue pas une garantie de la sécurité du document. La méthode [Unprotect](https://reference.aspose.com/words/fr/net/aspose.words/document/unprotect/#unprotect/) montre exactement cela.

{{% /alert %}}

## Ajouter une protection de document

L'ajout d'une protection à votre document est un processus simple, car il vous suffit d'appliquer l'une des méthodes de protection détaillées dans cette section.

Aspose.Words vous permet de protéger vos documents des modifications en utilisant la méthode [Protect](https://reference.aspose.com/words/fr/net/aspose.words/document/protect/#protect/). Cette méthode n'est pas une fonctionnalité de sécurité et ne crypte pas un document.

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez restreindre l'édition de la même manière en utilisant les deux:

* Restreindre l'édition (Fichier → Informations → Protéger le document)
* Fonctionnalité alternative – "Restreindre l'édition" (Révision → Protéger → Restreindre l'édition)

{{% /alert %}}

L'exemple de code suivant montre comment ajouter une protection par mot de passe à votre document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

L'exemple de code suivant montre comment restreindre la modification dans un document afin que seule la modification dans les champs de formulaire soit possible:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Supprimer la protection des documents

Aspose.Words vous permet de supprimer la protection d'un document avec une modification simple et directe du document. Vous pouvez soit supprimer la protection du document sans connaître le mot de passe réel, soit fournir le mot de passe correct pour déverrouiller le document en utilisant la méthode [Unprotect](https://reference.aspose.com/words/fr/net/aspose.words/document/unprotect/#unprotect/). Les deux méthodes de suppression n'ont aucune différence.

L'exemple de code suivant montre comment supprimer la protection de votre document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Spécifier des régions modifiables sans restriction

Vous pouvez restreindre la modification de votre document et en même temps autoriser la modification de parties sélectionnées de celui-ci. Ainsi, toute personne ouvrant votre document pourra accéder à ces parties sans restriction et apporter des modifications au contenu.

Aspose.Words vous permet de marquer les parties qui peuvent être modifiées dans votre document à l'aide des méthodes [StartEditableRange](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/starteditablerange/) et [EndEditableRange](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

L'exemple de code suivant montre comment marquer l'intégralité du document en lecture seule et y spécifier des zones modifiables:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Vous pouvez également choisir différentes restrictions d'édition de documents pour différentes sections.

L'exemple de code suivant montre comment ajouter une restriction pour l'ensemble du document, puis supprimer la restriction pour l'une des sections:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
