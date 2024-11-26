---
title: Licences
second_title: Aspose.Words pour Java
articleTitle: Licences
linktitle: Licences
description: "Licence Aspose.Words pour Android via Java."
type: docs
weight: 60
url: /fr/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Parfois, pour mieux étudier le système, vous souhaitez vous plonger dans le code le plus rapidement possible. Pour faciliter cela, Aspose.Words propose différents plans d'achat ou offre un essai gratuit et une Licence temporaire de 30 jours pour évaluation.

{{% alert color="primary" %}}

Notez qu'il existe un certain nombre de politiques et de pratiques générales qui vous guident sur la façon d'évaluer, d'octroyer correctement une licence et d'acheter nos produits. Vous pouvez les trouver dans le [Politiques d'achat et FAQ](https://purchase.aspose.com/policies/) section.

{{% /alert %}}

## Essai Gratuit ou Licence Temporaire

Aspose.Words est un logiciel incroyable que les développeurs peuvent essayer avant de l'acheter. Vous pouvez facilement télécharger / installer Aspose.Words pour Java et Aspose.Words pour Android via Java [à partir de la page de téléchargement](https://releases.aspose.com/words/androidjava/) pour évaluation.

La version d'évaluation est la même que celle achetée – la version d'essai devient simplement sous licence lorsque vous ajoutez quelques lignes de code pour appliquer la licence.

{{% alert color="primary" %}}

En savoir plus sur l'Essai gratuit ou la Licence temporaire pour Aspose.Words pour Android via Java sur [la page Licences et abonnements](/words/java/licensing/).

{{% /alert %}}

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
* Une ressource intégrée
* En tant que licence à compteur - un nouveau mécanisme de licence

#### Chargement du fichier de licence

Dans Aspose.Words pour Android via Java, la licence peut être [intégré en tant que ressource](/words/java/licensing/), ou chargé à partir d'un flux:

1. Placez le fichier de licence à n'importe quel emplacement sur **/mnt/sdcard/**.
1. Créez un flux qui référence le fichier.
1. Passez le flux (contenant le fichier de licence) dans la méthode `SetLicense`.

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

Application d'une licence à partir d'une ressource intégrée. Pour accéder à la licence en tant que ressource par son nom à partir d'un fichier de package Android:

1. Ajoutez le fichier de licence en tant que ressource au dossier **res/raw** de votre application.
   Le fichier de licence doit être visible dans le dossier **res/raw**.
1. Accédez/chargez la licence à partir de la ressource avec l'exemple de code suivant.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Appliquer une Licence Mesurée

Aspose.Words permet aux développeurs d'appliquer une clé mesurée. Il s'agit d'un nouveau mécanisme d'octroi de licences. Le nouveau mécanisme d'octroi de licences sera utilisé parallèlement à la méthode d'octroi de licences existante. Les clients qui souhaitent être facturés en fonction de l'utilisation des fonctionnalités API peuvent utiliser la licence mesurée.

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

Le nom du fichier de licence ne doit pas nécessairement être ' Aspose.Words.Android.Java.lique'. Vous pouvez le renommer comme vous le souhaitez et utiliser ce nom lorsque vous appelez `License.SetLicense`.

### Exception - Impossible de trouver le nom du fichier de licence

Lorsque vous téléchargez une licence que vous avez achetée, le fichier de licence est nommé **Aspose.Words.Android.Java.lic** par défaut. Le fichier de licence est téléchargé via votre navigateur et certains navigateurs reconnaissent le fichier de licence comme XML et en ajoutent un .extension xml du nom. Le fichier téléchargé devient **Aspose.Words.Android.Java.lic.XML**.

Lorsque Microsoft Windows est configuré pour masquer les extensions des types de fichiers connus (malheureusement, c'est la valeur par défaut dans la plupart des installations Windows), le fichier de licence est répertorié comme **Aspose.Words.Android.Java.lic** dans Windows Explorer. Cela ressemble au nom de fichier attendu. Si vous appelez `License.SetLicense` et passez ' Aspose.Words.Android.Java.lic', vous verrez et exception car il n'y a pas de tel fichier.

Pour résoudre le problème, renommez le fichier pour supprimer l'invisible .extension xml. Nous vous recommandons de désactiver l'option" masquer les extensions " dans Microsoft Windows.

## Utilisation De Plusieurs Produits Aspose

Si vous utilisez plusieurs produits Aspose dans une application, par exemple Aspose.Words et `Aspose.Cells`, voici quelques conseils utiles.

- Définissez la licence pour chaque produit Aspose séparément.
  Même si vous avez un seul fichier de licence pour tous les composants, par exemple ' Aspose.Total.Android.Java.lic', vous devez toujours appeler la méthode `License.SetLicense` séparément pour chaque produit Aspose.
- Utilisez un nom de classe de licence entièrement qualifié.
  Chaque produit Aspose a une classe `License` dans son espace de noms. Par exemple, Aspose.Words a com.aspose.des mots.Licence et `Aspose.Cells` a com.aspose.cellules.Classe de licence. L'utilisation du nom de classe entièrement qualifié vous permet d'éviter toute confusion quant à la licence appliquée à quel produit.
