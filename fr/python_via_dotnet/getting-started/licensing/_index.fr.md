---
title: Licence et abonnement
second_title: Aspose.Words pour Python via .NET
articleTitle: Licence et abonnement
linktitle: Licence et abonnement
description: "Aspose.Words pour Python via .NET propose différents plans d'achat ou propose un essai gratuit et une licence temporaire de 30 jours pour une évaluation à l'aide des politiques de licence et d'abonnement."
type: docs
weight: 40
url: /fr/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

Parfois, pour mieux étudier le système, on souhaite se plonger dans le code le plus rapidement possible. Pour faciliter cela, Aspose.Words propose différents plans d'achat ou propose un essai gratuit et une licence temporaire de 30 jours pour évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la manière d'évaluer, d'obtenir correctement une licence et d'acheter nos produits. Vous pouvez les trouver dans la section [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Essai gratuit ou licence temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant d'acheter.

### Essai gratuit

La version d'évaluation est la même que celle achetée: la version d'essai devient simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

La version d'essai de Aspose.Words sans la licence spécifiée fournit toutes les fonctionnalités du produit, mais insère un filigrane d'évaluation en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes.

### Permis temporaire

Si vous souhaitez tester Aspose.Words sans les limitations de la version d'essai, vous pouvez également demander une licence temporaire de 30 jours. Pour plus de détails, consultez la page [Obtenez une licence temporaire](https://purchase.aspose.com/temporary-license/).

## Licence achetée

Après l'achat, vous devez appliquer le fichier de licence ou le flux. Cette section décrit les différentes manières de procéder et commente également certaines questions courantes.

{{% alert color="primary" %}}

Vous devez définir la licence:

* une seule fois par domaine d'application

* avant d'utiliser d'autres classes Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez trouver des informations sur les prix sur la page [Information sur les prix](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Protéger votre licence achetée

Après avoir acheté une licence, vous devez lire attentivement les informations de la page [Protéger votre licence achetée](https://purchase.aspose.com/orders/protecting-your-license-file) pour protéger votre fichier de licence. Veuillez noter que cette page n'est disponible que si vous disposez d'une licence payante.

### Options d'application de licence

Les licences peuvent être appliquées à partir de différents endroits:

* Chemin explicite
* Le dossier contenant le script python qui appelle Aspose.Words pour Python via .NET
* Flux
* En tant que licence mesurée – un nouveau mécanisme de licence

{{% alert color="primary" %}}

Utilisez la méthode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) pour obtenir une licence pour un composant.

Appeler [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) plusieurs fois n'est pas dangereux, cela fait simplement perdre du temps au processeur.

Appeler [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) plusieurs fois n'est pas non plus dangereux, mais fait simplement perdre du temps au processeur et peut accumuler de la consommation de manière inappropriée.

{{% /alert %}}

#### Appliquer une licence à l'aide d'un objet fichier ou flux

Lors du développement de votre application, appelez [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) dans votre code de démarrage avant d'utiliser les classes Aspose.Words.

##### Charger une licence à partir d'un fichier

À l'aide de la méthode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), vous pouvez essayer de trouver le fichier de licence dans les ressources intégrées ou les dossiers d'assembly pour une utilisation ultérieure.

L'exemple de code suivant montre comment initialiser une licence à partir d'un dossier:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Charger une licence à partir d'un objet `Stream`

L'exemple de code suivant montre comment initialiser une licence à partir d'un flux à l'aide d'une autre méthode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/):

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Appliquer une licence limitée

Aspose.Words permet aux développeurs d'appliquer une clé mesurée. Il s'agit d'un nouveau mécanisme de licence.

Le nouveau mécanisme de licence sera utilisé parallèlement à la méthode de licence existante. Les clients qui souhaitent être facturés en fonction de l'utilisation des fonctionnalités API peuvent utiliser la licence mesurée.

Après avoir effectué toutes les étapes nécessaires pour obtenir ce type de licence, vous recevrez les clés et non le fichier de licence. Cette clé mesurée peut être appliquée à l'aide de la classe [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) spécialement introduite à cet effet.

N'appelez pas fréquemment la méthode **SetMeteredKey** afin que cette méthode de licence accumule correctement la consommation et nous la signale. Instanciez simplement la bibliothèque Aspose.Words, appelez **SetMeteredKey** une fois, puis laissez la bibliothèque instanciée et réutilisez-la.

L'exemple de code suivant montre comment définir des clés publiques et privées limitées:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Veuillez noter que vous devez disposer d'une connexion Internet stable pour utiliser correctement la licence Metered, car le mécanisme Metered nécessite une interaction constante avec nos services pour des calculs corrects. Pour plus de détails, reportez-vous à la section [FAQ sur les licences limitées](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Modification du nom du fichier de licence

Il n'est pas nécessaire que le nom du fichier de licence soit "Aspose.Words.Python.NET.lic". Vous pouvez le renommer à votre guise et utiliser ce nom lors de la définition d'une licence dans votre application.

### "Impossible de trouver le nom du fichier de licence" Exception

Lorsque vous achetez et téléchargez une licence, le site Web Aspose nomme le fichier de licence *"Aspose.Words.Python.NET.lic"*. Vous téléchargez le fichier de licence à l'aide de votre navigateur. Dans ce cas, certains navigateurs reconnaissent le fichier de licence comme XML et y ajoutent l'extension .xml, de sorte que le nom complet du fichier sur votre ordinateur devient *"Aspose.Words.Python.NET.lic.XML"*.

Lorsque Microsoft Windows est configuré pour masquer les extensions des types de fichiers connus (malheureusement, c'est la valeur par défaut dans la plupart des installations Windows), le fichier de licence apparaîtra sous la forme *"Aspose.Words.Python.NET.lic"* dans Windows Explorer. Vous penserez probablement qu'il s'agit du vrai nom du fichier et appellerez [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) en le passant *"Aspose.Words.Python.NET.lic"*, mais un tel fichier n'existe pas, d'où l'exception.

Pour résoudre le problème, renommez le fichier pour supprimer l'extension invisible .xml. Nous vous recommandons également de désactiver l'option "Masquer les extensions" dans Microsoft Windows.

## Utilisation de plusieurs produits Aspose

Si vous utilisez plusieurs produits Aspose dans votre application, tels que Aspose.Words et `Aspose.Cells`, voici quelques conseils utiles:

* Définissez la licence pour chaque produit Aspose séparément. Même si vous disposez d'un seul fichier de licence pour tous les composants, par exemple "Aspose.Total.lic", vous devez toujours appeler [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) séparément pour chaque produit Aspose que vous utilisez dans votre application.
* Utilisez le nom de classe de licence complet. Chaque produit Aspose possède une classe **License** dans son propre espace de noms. Par exemple, Aspose.Words a [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) et `Aspose.Cells` a une classe **aspose.cells.Licence**. L'utilisation du nom de classe complet vous permet d'éviter toute confusion quant à la licence qui s'applique à quel produit.
