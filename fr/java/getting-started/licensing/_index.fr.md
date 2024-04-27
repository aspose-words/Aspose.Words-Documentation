---
title: Licence et abonnement
second_title: Aspose.Words pour Java
articleTitle: Licence et abonnement
linktitle: Licence et abonnement
description: "Aspose.Words pour Java offre différents plans d'achat ou offre un essai gratuit et une licence temporaire de 30 jours pour l'évaluation en utilisant les politiques de licence et d'abonnement."
type: docs
weight: 60
url: /fr/java/licensing/
---

Parfois, pour mieux étudier le système, vous voulez plonger dans le code le plus rapidement possible. Pour faciliter la tâche, Aspose.Words fournit différents plans d'achat ou offre un essai gratuit et une licence temporaire de 30 jours pour l'évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la façon d'évaluer, de délivrer une licence appropriée et d'acheter nos produits. Vous pouvez les trouver dans le [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/) Chapitre.

{{% /alert %}}

## Essai gratuit ou licence temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant d'acheter. Vous pouvez facilement télécharger/installer Aspose.Words pour Java et Aspose.Words pour Android par Java [de Maven](https://releases.aspose.com/words/java/) pour évaluation.

### Essai gratuit

La version d'évaluation est la même que celle achetée – la version d'essai devient tout simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

La version du procès Aspose.Words pour Java et Aspose.Words pour Android par Java sans la licence spécifiée fournit une fonctionnalité complète du produit, mais insère un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes.

### Licence temporaire

Si vous souhaitez tester Aspose.Words pour Java et Aspose.Words pour Android par Java sans les limites de la version d'essai, vous pouvez également demander une licence temporaire de 30 jours. Pour plus de détails, voir [Obtenez une licence temporaire](https://purchase.aspose.com/temporary-license/) page.

## Licence achetée

Après l'achat, vous devez appliquer le fichier de licence ou inclure le fichier de licence comme ressource intégrée. La présente section décrit les différentes façons de procéder, ainsi que des commentaires sur certaines questions courantes.

{{% alert color="primary" %}}

Une licence est un fichier XML en texte simple qui contient des détails tels que le nom du produit, le nombre de développeurs autorisés, la date d'expiration de l'abonnement, etc.

Le fichier est signé numériquement, donc ne modifiez pas le fichier. Même l'ajout involontaire d'une ligne supplémentaire dans le fichier l'invalide.

{{% /alert %}}

{{% alert color="primary" %}}

Vous devez définir la licence:

* une seule fois par domaine d'application
* avant d'utiliser n'importe quel autre Aspose.Words classes

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez trouver des informations sur les prix [Information sur la tarification](https://purchase.aspose.com/pricing/words/family/) page.

{{% /alert %}}

### Protection de votre licence achetée

Après l'achat d'une licence, vous devez lire attentivement les informations sur la page [Protection de votre licence achetée](https://purchase.aspose.com/orders/protecting-your-license-file) pour protéger votre fichier de licence. Veuillez noter que cette page n'est disponible que si vous avez une licence payée.

### Options d'application de licence

Les licences peuvent être appliquées à différents endroits:

* Chemin explicite
* Le dossier contenant le *Aspose.Words JAR* fichier
* Une ressource intégrée dans le JAR est appelé *Aspose.Words JAR*
* En tant que licence de mesure – un nouveau mécanisme de délivrance de licences

Souvent, la façon la plus facile de définir une licence est de placer le fichier de licence dans le même dossier que *Aspose.Words JAR* et spécifiez simplement le nom de fichier sans le chemin.

{{% alert color="primary" %}}

Utiliser [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) méthode de licence d'un composant.

Appel **SetLicense** plusieurs fois n'est pas nuisible, il gaspille juste le temps de traitement.

Appel [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) plusieurs fois n'est pas nocive non plus, mais simplement déchets temps de traitement et peut accumuler la consommation incorrecte.

{{% /alert %}}

#### Appliquer la licence en utilisant un objet de fichier ou de Stream

{{% alert color="primary" %}}

Appeler **SetLicense** dans votre code de démarrage avant d'utiliser Aspose.Words les cours.

{{% /alert %}}

Lors du développement d'une bibliothèque de classe, vous pouvez appeler **SetLicense** du constructeur statique de votre classe qui utilise Aspose.Words. Le constructeur statique sera exécuté avant d'actualiser votre classe pour s'assurer que le Aspose.Words licence est installé correctement.

##### Charger une licence à partir d'un fichier

Utilisation [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) méthode, vous pouvez essayer de trouver le fichier de licence dans les ressources intégrées ou le dossier qui contiennent le JARs de votre demande d'utilisation ultérieure.

L'exemple de code suivant montre comment initialiser une licence depuis un dossier:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Charger une licence à partir d'une `Stream` Objet

L'exemple de code suivant montre comment initialiser une licence depuis un flux en utilisant un autre [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) méthode:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Inclure le fichier de licence comme ressource intégrée

Une façon soignée d'emballer une licence avec votre application et assurez-vous qu'elle ne sera pas perdue est de l'inclure comme une ressource intégrée. Vous pouvez simplement copier le fichier LIC dans le dossier ressource de votre projet.

Reconstruire le projet devrait intégrer le fichier .lic dans l'application .jar. Après cela, vous pouvez demander une licence en utilisant le code suivant:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Appliquer la licence de mesure

Aspose.Words permet aux développeurs d'appliquer une clé mesurée. Il s'agit d'un nouveau mécanisme de délivrance de permis.

Le nouveau mécanisme d'autorisation sera utilisé avec la méthode d'autorisation existante. Les clients qui veulent être facturés en fonction de l'utilisation de API caractéristiques peuvent utiliser la licence de compteur.

Après avoir complété toutes les étapes nécessaires pour obtenir ce type de licence, vous recevrez les clés, et non le fichier de licence. Cette clé mesurée peut être appliquée en utilisant la [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) classe spécialement introduite à cet effet.

Ne pas appeler le **SetMeteredKey** Cette méthode d'octroi de licences accumule la consommation et nous la rapporte fréquemment. Il suffit d'actualiser le Aspose.Words bibliothèque, appeler **SetMeteredKey** Une fois, quittez la bibliothèque et réutilisez-la.

L'exemple de code suivant montre comment définir les clés publiques et privées mesurées:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Veuillez noter que vous devez avoir une connexion Internet stable pour l'utilisation correcte de la licence Metered, puisque le mécanisme Metered nécessite une interaction constante avec nos services pour des calculs corrects

Pour plus de détails, voir [FAQ sur l'homologation des compteurs](https://purchase.aspose.com/faqs/licensing/metered/) Chapitre.

{{% /alert %}}

### Modification du nom du fichier de licence

Le nom du fichier de licence n'a pas à être:Aspose.Words- Oui. Vous pouvez le renommer à votre goût et utiliser ce nom lors de la configuration d'une licence dans votre application.

### "Impossible de trouver le nom de fichier de licence Exception

Lorsque vous achetez et téléchargez une licence, le site Web Aspose nomme le fichier de licence *"Aspose.Words.LIC"*. Vous téléchargez le fichier de licence en utilisant votre navigateur. Dans ce cas, certains navigateurs reconnaissent le fichier de licence comme XML et y ajoutent l'extension .xml, de sorte que le nom complet du fichier sur votre ordinateur devient *"Aspose.Words.lic.XML"*.

Quand Microsoft Windows est configuré pour masquer les extensions pour les types de fichiers connus (malheureusement, c'est le défaut dans la plupart des Windows installations), le fichier de licence apparaîtra sous *"Aspose.Words. LIC* en Windows Explorateur. Vous penserez probablement que c'est le vrai nom de fichier et l'appel **SetLicense** le passer *"Aspose.Words.LIC"*, mais il n'y a pas de tel dossier, d'où l'exception.

Pour résoudre le problème, renommer le fichier pour supprimer l'extension invisible .xml. Nous vous recommandons également de désactiver l'option "cacher les extensions" dans Microsoft Windows.

## Utilisation de produits à usage multiple

Si vous utilisez plusieurs produits Asposent dans votre application, comme Aspose.Words et `Aspose.Cells`, Voici quelques conseils utiles:

* Définissez la licence pour chaque produit Assocate séparément. Même si vous avez un seul fichier de licence pour tous les composants, par exemple, "Aspose.Total.lic", vous devez toujours appeler **SetLicense** séparément pour chaque produit Associez que vous utilisez dans votre application.
* Utilisez le nom de classe de licence entièrement qualifié. Chaque Le produit Aspose a une `License` classe dans son propre espace de nom. Par exemple, Aspose.Words a **com.aspose.words.License** et `Aspose.Cells` a com.aspose.cellules. Cours de licence. L'utilisation du nom de classe entièrement qualifié vous permet d'éviter toute confusion quant à la licence applicable à quel produit.
