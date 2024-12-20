﻿---
title: Licence et Abonnement
second_title: Aspose.Words pour Java
articleTitle: Licence et Abonnement
linktitle: Licence et Abonnement
description: "Aspose.Words pour Java propose différents plans d'achat ou offre un Essai gratuit et une Licence temporaire de 30 jours pour évaluation à l'aide de politiques de licence et d'abonnement."
type: docs
weight: 60
url: /fr/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Parfois, pour mieux étudier le système, vous souhaitez vous plonger dans le code le plus rapidement possible. Pour faciliter cela, Aspose.Words propose différents plans d'achat ou offre un essai gratuit et une Licence temporaire de 30 jours pour évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la façon d'évaluer, d'octroyer correctement une licence et d'acheter nos produits. Vous pouvez les trouver dans le [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/) section.

{{% /alert %}}

## Essai Gratuit ou Licence Temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant de l'acheter. Vous pouvez facilement télécharger / installer Aspose.Words pour Java et Aspose.Words pour Android via Java [à partir de Maven](https://releases.aspose.com/words/java/) pour évaluation.

### Essai Gratuit

La version d'évaluation est la même que celle achetée – la version d'essai devient simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

La version d'essai de Aspose.Words pour Java et Aspose.Words pour Android via Java sans la licence spécifiée fournit toutes les fonctionnalités du produit, mais insère un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes.

### Licence Temporaire

Si vous souhaitez tester Aspose.Words pour Java et Aspose.Words pour Android via Java sans les limitations de la version d'essai, vous pouvez également demander une Licence temporaire de 30 jours. Pour plus de détails, voir le [Obtenez une Licence Temporaire](https://purchase.aspose.com/temporary-license/) page.

## Licence Achetée

Après l'achat, vous devez appliquer le fichier de licence ou inclure le fichier de licence en tant que ressource incorporée. Cette section décrit les options pour y parvenir, ainsi que des commentaires sur certaines questions courantes.

{{% alert color="primary" %}}

Une licence est un fichier XML en texte brut qui contient des détails tels que le nom du produit, le nombre de développeurs sous licence, la date d'expiration de l'abonnement, etc.

Le fichier est signé numériquement, ne modifiez donc pas le fichier. Même l'ajout involontaire d'un saut de ligne supplémentaire dans le fichier l'invalidera.

{{% /alert %}}

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
* Le dossier contenant le fichier *Aspose.Words JAR*
* Une ressource incorporée dans le JAR est appelée *Aspose.Words JAR*
* En tant que licence à compteur - un nouveau mécanisme de licence

Souvent, le moyen le plus simple de définir une licence consiste à placer le fichier de licence dans le même dossier que *Aspose.Words JAR* et à spécifier uniquement le nom de fichier sans le chemin.

{{% alert color="primary" %}}

Utilisez la méthode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) pour accorder une licence à un composant.

Appeler **SetLicense** plusieurs fois n'est pas dangereux, cela fait simplement perdre du temps au processeur.

Appeler [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) plusieurs fois n'est pas dangereux non plus, mais fait perdre du temps au processeur et peut accumuler de la consommation de manière incorrecte.

{{% /alert %}}

#### Appliquer une licence à l'aide d'un objet Fichier ou Flux

{{% alert color="primary" %}}

Appelez **SetLicense** dans votre code de démarrage avant d'utiliser les classes Aspose.Words.

{{% /alert %}}

Lors du développement d'une bibliothèque de classes, vous pouvez appeler **SetLicense** à partir du constructeur statique de votre classe qui utilise Aspose.Words. Le constructeur statique sera exécuté avant l'instanciation de votre classe pour s'assurer que la licence Aspose.Words est correctement installée.

##### Charger une licence à partir d'un fichier

En utilisant la méthode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), vous pouvez essayer de trouver le fichier de licence dans les ressources incorporées ou le dossier contenant le JARs de votre application pour une utilisation ultérieure.

L'exemple de code suivant montre comment initialiser une licence à partir d'un dossier:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Charger une licence à partir d'un objet `Stream`

L'exemple de code suivant montre comment initialiser une licence à partir d'un flux à l'aide d'une autre méthode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream):

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Inclure le fichier de licence en tant que ressource intégrée

Une bonne façon d'emballer une licence avec votre application et de vous assurer qu'elle ne sera pas perdue est de l'inclure en tant que ressource intégrée. Vous pouvez simplement copier le fichier LIC dans le dossier de ressources de votre projet.

La reconstruction du projet devrait intégrer le .fichier lic dans l'application .fichier jar. Après cela, vous pouvez demander une licence en utilisant le code suivant:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Appliquer une Licence Mesurée

Aspose.Words permet aux développeurs d'appliquer une clé mesurée. Il s'agit d'un nouveau mécanisme de licence.

Le nouveau mécanisme d'octroi de licences sera utilisé parallèlement à la méthode d'octroi de licences existante. Les clients qui souhaitent être facturés en fonction de l'utilisation de API fonctionnalités peuvent utiliser la licence mesurée.

Après avoir effectué toutes les étapes nécessaires pour obtenir ce type de licence, vous recevrez les clés, pas le fichier de licence. Cette clé mesurée peut être appliquée en utilisant la classe [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) spécialement introduite à cet effet.

N'appelez pas fréquemment la méthode **SetMeteredKey** afin que cette méthode de licence accumule correctement la consommation et nous la signale. Instanciez simplement la bibliothèque Aspose.Words, appelez **SetMeteredKey** une fois, puis laissez la bibliothèque instanciée et réutilisez-la.

L'exemple de code suivant montre comment définir des clés publiques et privées mesurées:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Veuillez noter que vous devez disposer d'une connexion Internet stable pour l'utilisation correcte de la licence mesurée, car le mécanisme mesuré nécessite une interaction constante avec nos services pour des calculs corrects.

Pour plus de détails, reportez-vous à la [Licence mesurée FAQ](https://purchase.aspose.com/faqs/licensing/metered/) section.

{{% /alert %}}

### Modification du nom du fichier de licence

Le nom du fichier de licence n'a pas besoin d'être "Aspose.Words.LIC". Vous pouvez le renommer à votre guise et utiliser ce nom lors de la définition d'une licence dans votre application.

### Exception" Impossible de trouver le nom du fichier de licence"

Lorsque vous achetez et téléchargez une licence, le site Web Aspose nomme le fichier de licence *"Aspose.Words.LIC"*. Vous téléchargez le fichier de licence à l'aide de votre navigateur. Dans ce cas, certains navigateurs reconnaissent le fichier de licence comme XML et l'ajoutent .extension xml, de sorte que le nom complet du fichier sur votre ordinateur devient *"Aspose.Words.lic.XML"*.

Lorsque Microsoft Windows est configuré pour masquer les extensions des types de fichiers connus (malheureusement, c'est la valeur par défaut dans la plupart des installations Windows), le fichier de licence apparaîtra sous la forme *"Aspose.Words. LIC"* dans Windows Explorer. Vous penserez probablement que c'est le vrai nom de fichier et appelez **SetLicense** en le passant *"Aspose.Words.LIC"*, mais il n'y a pas de tel fichier, d'où l'exception.

Pour résoudre le problème, renommez le fichier pour supprimer l'invisible .extension xml. Nous vous recommandons également de désactiver l'option "masquer les extensions" dans Microsoft Windows.

## Utilisation De Plusieurs Produits Aspose

Si vous utilisez plusieurs produits Aspose dans votre application, tels que Aspose.Words et `Aspose.Cells`, voici quelques conseils utiles:

* Définissez la licence pour chaque produit Aspose séparément. Même si vous disposez d'un seul fichier de licence pour tous les composants, par exemple "Aspose.Total.lic", vous devez toujours appeler **SetLicense** séparément pour chaque produit Aspose que vous utilisez dans votre application.
* Utilisez le Nom de Classe de licence complet. Chaque produit Aspose a une classe `License` dans son propre espace de noms. Par exemple, Aspose.Words a **com.aspose.words.License** et `Aspose.Cells` a com.aspose.cellules.Classe de licence. L'utilisation du nom de classe complet vous permet d'éviter toute confusion quant à la licence qui s'applique à quel produit.
