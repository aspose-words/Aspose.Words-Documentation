---
title: Délivrance de licences
second_title: Aspose.Words pour Java
articleTitle: Délivrance de licences
linktitle: Délivrance de licences
description: "Délivrance de licences Aspose.Words pour Android par Java."
type: docs
weight: 60
url: /fr/java/licensing-android/
---

Parfois, pour mieux étudier le système, vous voulez plonger dans le code le plus rapidement possible. Pour faciliter la tâche, Aspose.Words fournit différents plans d'achat ou offre un essai gratuit et une licence temporaire de 30 jours pour l'évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la façon d'évaluer, de délivrer une licence appropriée et d'acheter nos produits. Vous pouvez les trouver dans le [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/) Chapitre.

{{% /alert %}}

## Essai gratuit ou licence temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant d'acheter. Vous pouvez facilement télécharger/installer Aspose.Words pour Java et Aspose.Words pour Android par Java [depuis la page de téléchargement](https://releases.aspose.com/words/androidjava/) pour évaluation.

La version d'évaluation est la même que celle achetée – la version d'essai devient tout simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

{{% alert color="primary" %}}

En savoir plus sur l'essai gratuit ou la licence temporaire pour Aspose.Words pour Android par Java le [Licence et abonnement](/words/fr/java/licensing/).

{{% /alert %}}

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
* Une ressource intégrée
* En tant que licence de mesure – un nouveau mécanisme de délivrance de licences

#### Chargement du fichier Licence

En Aspose.Words pour Android par Java, la licence peut être [Licence et abonnement](/words/fr/java/licensing/), ou chargés à partir d'un flux:

1. Mettez le fichier de licence à n'importe quel endroit sur **/mnt/sdcard/**.
1. Créez un flux qui renvoie le fichier.
1. Passer le flux (contenant le fichier de licence) dans le `SetLicense` méthode.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Appliquer une licence à partir d'une ressource intégrée. Pour accéder à la licence comme une ressource par nom à partir d'un Android fichier paquet & #160;:

1. Ajouter le fichier de licence comme ressource à votre application **Res/raw** dossier.
   Le fichier de licence doit être visible dans le **Res/raw** dossier.
1. Accédez/chargez la licence à partir de la ressource avec l'échantillon de code suivant.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Appliquer la licence de mesure

Aspose.Words permet aux développeurs d'appliquer la clé mesurée. C'est un nouveau mécanisme d'octroi de licences. Le nouveau mécanisme de délivrance de permis sera utilisé avec la méthode de délivrance de permis existante. Les clients qui veulent être facturés en fonction de l'utilisation de la API fonctions peuvent utiliser la licence mesurée.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Modification du nom du fichier de licence

Le nom du fichier de licence ne doit pas être 'Aspose.Words.Android.JavaOui. Vous pouvez le renommer à tout ce que vous voulez et utiliser ce nom en appelant `License.SetLicense`.

### Exception - Impossible de trouver le nom de fichier de licence

Lorsque vous téléchargez une licence que vous avez achetée, le fichier de licence s'appelle **Aspose.Words.Android.Java.lic** par défaut. Le fichier de licence est téléchargé via votre navigateur et certains navigateurs reconnaissent le fichier de licence comme XML et ajoutent une extension .xml au nom. Le fichier téléchargé devient **Aspose.Words.Android.Java.lic.XML**.

Quand Microsoft Windows est configuré pour masquer les extensions de types de fichiers connus (malheureusement c'est par défaut dans la plupart des Windows installations), le fichier de licence est listé comme **Aspose.Words.Android.Java.lic** en Windows Explorateur. On dirait le nom du fichier attendu. Si vous appelez `License.SetLicense` et passer 'Aspose.Words.Android.Java.lic', vous verrez et exception parce qu'il n'y a pas un tel fichier

Pour résoudre le problème, renommer le fichier pour supprimer l'extension invisible .xml. Nous vous recommandons de désactiver l'option "cacher les extensions" dans Microsoft Windows.

## Utilisation de produits à usage multiple

Si vous utilisez plusieurs produits Asposent dans une application, par exemple Aspose.Words et `Aspose.Cells`, Voici quelques conseils utiles.

- Définir la licence pour chaque produit Assocate séparément.
  Même si vous avez un seul fichier de licence pour tous les composants, par exemple 'Assocate. Totalement.Android.Java.lic', vous devez toujours appeler le `License.SetLicense` méthode séparée pour chaque produit Assocate.
- Utiliser un nom de classe de licence entièrement qualifié.
  Chaque Le produit Aspose a une `License` classe dans son espace de noms. Par exemple, Aspose.Words a com.aspose.words. Licence et `Aspose.Cells` a com.aspose.cellules. Cours de licence. L'utilisation du nom de classe entièrement qualifié vous permet d'éviter toute confusion quant à la licence appliquée à quel produit.
