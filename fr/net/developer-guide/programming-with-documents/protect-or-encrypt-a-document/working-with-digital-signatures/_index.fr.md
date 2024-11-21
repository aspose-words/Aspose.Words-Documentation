---
title: Travailler avec des signatures numériques dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des signatures numériques
linktitle: Travailler avec des signatures numériques
description: "Signez numériquement des documents et détectez, comptez, vérifiez et supprimez les signatures numériques existantes à l'aide de C#."
type: docs
weight: 40
url: /fr/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Une signature numérique est une implémentation technologique des signatures électroniques pour signer des documents et authentifier le signataire afin de garantir qu'un document n'a pas été modifié depuis sa signature. Chaque signature numérique est unique pour chaque signataire car elle suit le protocole PKI pour générer des clés publiques et privées. Signer numériquement un document signifie créer une signature à l'aide de la clé privée du signataire où un algorithme mathématique est utilisé pour crypter le hachage généré.

Aspose.Words vous permet de détecter, compter ou vérifier les signatures numériques existantes, et également d'ajouter une nouvelle signature à votre document pour détecter toute falsification. Vous pouvez également supprimer toutes les signatures numériques d'un document. Utilisez la classe [DigitalSignatureUtil](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignatureutil/) pour travailler avec des signatures numériques.

Cet article explique comment faire tout ce qui précède pour valider l'authenticité et l'intégrité d'un document numérique.

{{% alert color="primary" %}}

Notez que vous ne pouvez accéder aux signatures numériques de votre document que lorsque vous exécutez la version .NET Framework 2.0 et supérieure.

{{% /alert %}}

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Signature en ligne gratuite](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formats pris en charge

Aspose.Words vous permet de travailler avec des signatures numériques sur des documents DOC, OOXML et ODT et de signer le document généré au format PDF ou XPS.

## Limites des signatures numériques

Le tableau ci-dessous décrit quelques limitations auxquelles vous pouvez être confronté lorsque vous travaillez avec des signatures numériques via Aspose.Words, ainsi que quelques options alternatives.

|  Limitation |  Option alternative |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perte des signatures numériques sur un document après son chargement et sa sauvegarde. Par conséquent, le traitement d’un document vers un serveur peut entraîner la perte de toutes les signatures numériques sans préavis |  Vérifiez si un document comporte des signatures numériques et prenez les mesures appropriées si vous en trouvez. Par exemple, envoyez une alerte aux clients les informant que le document qu'ils téléchargent contient des signatures numériques qui seront perdues s'il est traité |
|  Aspose.Words prend en charge l'utilisation de macros dans un document. Mais Aspose.Words ne prend pas encore en charge les signatures numériques sur les macros |  Exportez le document dans n'importe quel format Word et utilisez Microsoft Word pour ajouter une signature numérique aux macros |

## Détecter, compter et vérifier les signatures numériques

Aspose.Words vous permet de détecter la signature numérique dans un document en utilisant la méthode [DetectFileFormat](https://reference.aspose.com/words/fr/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) et la propriété [HasDigitalSignature](https://reference.aspose.com/words/fr/net/aspose.words/fileformatinfo/hasdigitalsignature/). Il convient de noter qu'un tel contrôle détectera uniquement le fait de la signature, mais pas sa validité.

Un document peut être signé plusieurs fois, et cela peut être fait par différents utilisateurs. Pour vérifier la validité des signatures numériques, vous devez les charger à partir du document à l'aide de la méthode [LoadSignatures](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) et utiliser la propriété [IsValid](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Aspose.Words vous permet également de compter un ensemble de toutes les signatures numériques d'un document à l'aide de la propriété [Count](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Tout cela constitue un moyen efficace et sûr de vérifier les signatures d’un document avant de le traiter.

L'exemple de code suivant montre comment détecter la présence de signatures numériques et les vérifier:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Créer une signature numérique {#create-a-digital-signature}

Pour créer une signature numérique, vous devrez charger un certificat de signature confirmant votre identité. Lorsque vous envoyez un document signé numériquement, vous envoyez également votre certificat et votre clé publique.

Aspose.Words vous permet de créer un certificat X.509, un certificat numérique qui utilise la norme X.509 PKI internationalement acceptée pour vérifier qu'une clé publique appartient au signataire inclus dans le certificat. Pour ce faire, utilisez la méthode [Create](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/certificateholder/create/) au sein de la classe [CertificateHolder](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/certificateholder/).

Les sections suivantes expliquent comment ajouter une signature numérique, une ligne de signature et comment signer un document PDF généré.

### Signer un document

Aspose.Words vous permet de signer numériquement un document DOC, DOCX, XPS ou ODT à l'aide de la méthode [Sign](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) et des propriétés [SignOptions](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/signoptions/).

L'exemple de code suivant montre comment signer des documents à l'aide d'un titulaire de certificat et des options de signature:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Ajouter une ligne de signature

Une ligne de signature est une représentation visuelle d'une signature numérique dans un document. Aspose.Words vous permet d'insérer une ligne de signature en utilisant la méthode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertsignatureline/). Vous pouvez également définir les paramètres de cette représentation à l'aide de la classe [SignatureLineOptions](https://reference.aspose.com/words/fr/net/aspose.words/signaturelineoptions/).

Par exemple, l'image ci-dessous montre comment les signatures valides et invalides peuvent être affichées.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="dessin" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="dessin" style="width:300px"/>

De plus, si un document contient une ligne de signature et aucune signature numérique, il existe une fonctionnalité permettant de demander à l'utilisateur d'ajouter une signature.

L'exemple de code suivant montre comment signer un document avec un certificat personnel et une ligne de signature spécifique:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Signer un document PDF généré {#sign-a-generated-pdf-document}

Aspose.Words vous permet de signer et d'obtenir tous les détails d'un document PDF en utilisant les propriétés [PdfDigitalSignatureDetails](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfdigitalsignaturedetails/).

L'exemple de code suivant montre comment signer un PDF généré:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Récupérer la valeur de la signature numérique

Aspose.Words offre également la possibilité de récupérer la valeur de signature numérique d'un document signé numériquement sous forme de tableau d'octets à l'aide de la propriété [SignatureValue](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

L'exemple de code suivant montre comment obtenir la valeur de signature numérique sous forme de tableau d'octets à partir d'un document:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Supprimer les signatures numériques

Aspose.Words vous permet de supprimer toutes les signatures numériques d'un document signé en utilisant la méthode [RemoveAllSignatures](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

L'exemple de code suivant montre comment charger et supprimer des signatures numériques d'un document:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Notez que vous ne pouvez pas supprimer une seule signature numérique dans votre document.

{{% /alert %}}
