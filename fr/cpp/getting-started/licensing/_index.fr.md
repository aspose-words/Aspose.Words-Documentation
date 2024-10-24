---
title: Licence et Abonnement
second_title: Aspose.Words pour C++
articleTitle: Licence et Abonnement
linktitle: Licence et Abonnement
description: "Aspose.Words pour С ++ propose différents plans d'achat ou offre un Essai gratuit et une Licence temporaire de 30 jours pour évaluation à l'aide de politiques de licence et d'abonnement."
type: docs
weight: 60
url: /fr/cpp/licensing/
---

Parfois, pour mieux étudier le système, vous souhaitez vous plonger dans le code le plus rapidement possible. Pour faciliter cela, Aspose.Words propose différents plans d'achat ou offre un essai gratuit et une Licence temporaire de 30 jours pour évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la façon d'évaluer, d'octroyer correctement une licence et d'acheter nos produits. Vous pouvez les trouver dans le [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/) section.

{{% /alert %}}

## Essai Gratuit ou Licence Temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant de l'acheter.

### Essai Gratuit

La version d'évaluation est la même que celle achetée – le [Version d'essai](https://releases.aspose.com/words/) devient simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

La version d'essai de Aspose.Words sans la licence spécifiée fournit toutes les fonctionnalités du produit, mais insère un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes.

### Licence Temporaire

Si vous souhaitez tester Aspose.Words sans les limitations de la version d'essai, vous pouvez également demander une Licence temporaire de 30 jours. Pour plus de détails, voir le [Obtenez une Licence Temporaire](https://purchase.aspose.com/temporary-license/) page.

## Licence Achetée

Après l'achat, vous devez appliquer le fichier de licence ou inclure le fichier de licence en tant que ressource incorporée. Cette section décrit les options pour y parvenir, ainsi que des commentaires sur certaines questions courantes.

{{% alert color="primary" %}}

Vous devez définir la licence:

* une seule fois par domaine d'application
* avant d'utiliser d'autres classes Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez trouver des informations sur les prix sur le [Informations Sur les Prix](https://purchase.aspose.com/pricing/words/family/) page.

{{% /alert %}}

### Protéger Votre Licence Achetée

Après avoir acheté une licence, vous devez lire attentivement les informations sur la page [Protéger Votre Licence Achetée](https://purchase.aspose.com/orders/protecting-your-license-file) pour protéger votre fichier de licence. Veuillez noter que cette page n'est consultable que si vous disposez d'une licence payante.

### Options d'Application de Licence

Les licences peuvent être appliquées à partir de divers endroits:

* Chemin explicite
* Le dossier contenant le fichier `Aspose.Words_` \*.dll
* Le dossier contenant l'assembly qui a appelé `Aspose.Words_`\*.dll
* Le dossier contenant l'assembly d'entrée (votre *.exe*)
* Une ressource incorporée dans l'assembly est appelée `Aspose.Words_`\*.dll

Souvent, le moyen le plus simple de définir une licence consiste à placer le fichier de licence dans le même dossier que `Aspose.Words_`\*.dll et à spécifier uniquement le nom de fichier sans le chemin.

{{% alert color="primary" %}}

Utilisez la méthode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) pour accorder une licence à un composant.

Appeler **SetLicense** plusieurs fois n'est pas dangereux, cela fait simplement perdre du temps au processeur.

{{% /alert %}}

#### Appliquer une licence à l'aide d'un objet Fichier ou Flux

Lors du développement de votre application, appelez **SetLicense** dans votre code de démarrage avant d'utiliser Aspose.Words classes.

##### Charger une licence à partir d'un fichier

En utilisant la méthode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), vous pouvez essayer de trouver le fichier de licence dans les dossiers Ressources incorporées ou assembly pour une utilisation ultérieure.

L'exemple de code suivant montre comment initialiser une licence à partir d'un dossier:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Charger une licence à partir d'un objet de flux

L'exemple de code suivant montre comment initialiser une licence à partir d'un flux à l'aide d'une autre méthode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Inclure le fichier de licence en tant que ressource intégrée

Une bonne façon d'emballer une licence avec votre application et de vous assurer qu'elle ne sera pas perdue est de l'inclure en tant que ressource intégrée. La manière d'intégrer et d'utiliser les ressources dépend de votre plate-forme cible.

##### Windows

Supposons que vous ayez ajouté la licence en tant que ressource comme indiqué ci-dessous.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Vous pouvez lire sur la façon de travailler avec les fichiers de ressources sur le [Utilisation des Fichiers de Ressources](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) page.

{{% /alert %}}

L'exemple de code suivant montre comment initialiser une licence à partir d'une ressource incorporée à l'aide de la méthode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Il existe une manière similaire d'incorporer des ressources sur Linux dans un exécutable.

{{% alert color="primary" %}}

Pour plus d'informations, voir [Incorporer des ressources dans un exécutable à l'aide de GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

L'exemple de code suivant montre comment initialiser une licence à partir d'une ressource incorporée à l'aide de la méthode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Modification du nom du fichier de licence

Le nom du fichier de licence n'a pas besoin d'être "Aspose.Words.SIC". Vous pouvez le renommer à votre guise et utiliser ce nom lors de la définition d'une licence dans votre application.

### Exception" Impossible de trouver le nom du fichier de licence"

Lorsque vous achetez et téléchargez une licence, le site Web Aspose nomme le fichier de licence *"Aspose.Words.SIC"*. Vous téléchargez le fichier de licence à l'aide de votre navigateur. Dans ce cas, certains navigateurs reconnaissent le fichier de licence en tant que XML et l'ajoutent .extension xml, de sorte que le nom complet du fichier sur votre ordinateur devient *"Aspose.Words.lique.XML"*.

Lorsque Microsoft Windows est configuré pour masquer les extensions des types de fichiers connus (malheureusement, c'est la valeur par défaut dans la plupart des installations Windows), le fichier de licence apparaîtra sous la forme *"Aspose.Words. LIC " * dans Windows Explorateur. Vous penserez probablement que c'est le vrai nom de fichier et appelez **SetLicense** en le passant *"Aspose.Words.LIC"*, mais il n'y a pas de tel fichier, d'où l'exception.

Pour résoudre le problème, renommez le fichier pour supprimer l'invisible .extension xml. Nous vous recommandons également de désactiver l'option" masquer les extensions " dans Microsoft Windows.

## Utilisation De Plusieurs Produits Aspose

Si vous utilisez plusieurs produits Aspose dans votre application, tels que Aspose.Words et `Aspose.Cells`, voici quelques conseils utiles:

* Définissez la licence pour chaque produit Aspose séparément. Même si vous avez un seul fichier de licence pour tous les composants, par exemple, "Aspose.Totale.lic", vous devez toujours appeler **SetLicense** séparément pour chaque produit Aspose que vous utilisez dans votre application.
* Utilisez le Nom de Classe de licence complet. Chaque produit Aspose a une classe **License** dans son propre espace de noms. Par exemple, Aspose.Words a [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) et `Aspose.Cells` a `Aspose.Cells`.Classe de licence. L'utilisation du nom de classe complet vous permet d'éviter toute confusion quant à la licence qui s'applique à quel produit.
