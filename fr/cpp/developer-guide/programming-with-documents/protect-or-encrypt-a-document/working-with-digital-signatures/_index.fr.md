---
title: Travailler avec des signatures numériques en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des Signatures numériques
linktitle: Travailler avec des Signatures numériques
description: "Signez numériquement des documents et détectez, comptez, vérifiez et supprimez les signatures numériques existantes."
type: docs
weight: 160
url: /fr/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Une signature numérique est une implémentation technologique des signatures électroniques pour signer des documents et authentifier le signataire afin de garantir qu'un document n'a pas été modifié depuis sa signature. Chaque signature numérique est unique pour chaque signataire car elle suit le protocole PKI pour générer à la fois des clés publiques et privées. Signer numériquement un document signifie créer une signature à l'aide de la clé privée du signataire où un algorithme mathématique est utilisé pour chiffrer le hachage généré.

Aspose.Words vous permet de détecter, de compter ou de vérifier les signatures numériques existantes, ainsi que d'ajouter une nouvelle signature à votre document pour détecter toute altération. Vous pouvez également supprimer toutes les signatures numériques d'un document. Utilisez la classe [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) pour travailler avec des signatures numériques.

Cet article explique comment faire tout ce qui précède pour valider l'authenticité et l'intégrité d'un document numérique.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Signature en ligne gratuite](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formats Pris En Charge

Aspose.Words vous permet de travailler avec des signatures numériques sur des documents DOC, OOXML et ODT et de signer le document généré au format PDF ou XPS.

## Limites des Signatures numériques

Le tableau ci-dessous décrit quelques limitations auxquelles vous pouvez être confronté lorsque vous travaillez avec des signatures numériques via Aspose.Words, ainsi que certaines options alternatives.

| Limitation | Autre option |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Perte de signatures numériques sur un document après son chargement et son enregistrement. Par conséquent, le traitement d'un document sur un serveur peut entraîner la perte de toutes les signatures numériques sans préavis. | Vérifiez si un document a des signatures numériques et prenez les mesures appropriées si vous en trouvez. Par exemple, envoyez une alerte aux clients pour les informer que le document qu'ils téléchargent contient des signatures numériques qui seront perdues s'il est traité. |
| Aspose.Words prend en charge l'utilisation de macros dans un document. Mais Aspose.Words ne prend pas encore en charge les signatures numériques sur les macros. | Exportez le document vers n'importe quel format Word et utilisez Microsoft Word pour ajouter une signature numérique aux macros. |

## Détecter, compter et vérifier les Signatures numériques

Aspose.Words vous permet de détecter une signature numérique dans un document à l'aide de la méthode [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) et de la propriété [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Il est à noter qu'une telle vérification ne détectera que le fait de la signature, mais pas sa validité.

Un document peut être signé plus d'une fois, et cela peut être fait par différents utilisateurs. Pour vérifier la validité des signatures numériques, vous devez les charger à partir du document à l'aide de la méthode [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) et utiliser la propriété [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). De plus, Aspose.Words vous permet de compter un ensemble de toutes les signatures numériques dans un document à l'aide de la propriété [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Tout cela constitue un moyen efficace et sûr de vérifier la signature d'un document avant de le traiter.

L'exemple de code suivant montre comment détecter la présence de signatures numériques et les vérifier:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Créer une signature numérique {#create-a-digital-signature}

Pour créer une signature numérique, vous devrez charger un certificat de signature qui confirme l'identité. Lorsque vous envoyez un document signé numériquement, vous envoyez également votre certificat et votre clé publique.

Aspose.Words vous permet de créer un certificat X. 509, un certificat numérique qui utilise la norme PKI X. 509 internationalement acceptée pour vérifier qu'une clé publique appartient au signataire inclus dans le certificat. Pour ce faire, utilisez la méthode [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) dans la classe [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Les sections suivantes expliquent comment ajouter une signature numérique, une ligne de signature et comment signer un document PDF généré.

### Signer un Document

Aspose.Words vous permet de signer numériquement un document DOC, DOCX ou ODT à l'aide de la méthode [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) et des propriétés [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

L'exemple de code suivant montre comment signer des documents à l'aide d'un titulaire de certificat et des options de signature:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Ajouter une Ligne de Signature

Une ligne de signature est une représentation visuelle d'une signature numérique dans un document. Aspose.Words vous permet d'insérer une ligne de signature à l'aide de la méthode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Vous pouvez également définir les paramètres de cette représentation à l'aide de la classe [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Par exemple, l'image ci-dessous montre comment les signatures valides et invalides peuvent être affichées.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

De plus, si un document contient une ligne de signature et aucune signature numérique, il existe une fonctionnalité pour demander à l'utilisateur d'ajouter une signature.

L'exemple de code suivant montre comment signer un document avec un certificat personnel et une ligne de signature spécifique:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Signer un document PDF généré {#sign-a-generated-pdf-document}

Aspose.Words vous permet de signer et d'obtenir tous les détails d'un document PDF à l'aide des propriétés [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

L'exemple de code suivant montre comment signer un PDFgénéré:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Récupérer la Valeur de la Signature Numérique

Aspose.Words permet également de récupérer la valeur de signature numérique d'un document signé numériquement sous la forme d'un tableau d'octets à l'aide de la propriété [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

L'exemple de code suivant montre comment obtenir la valeur de signature numérique sous forme de tableau d'octets à partir d'un document:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Supprimer les Signatures Numériques

Aspose.Words vous permet de supprimer toutes les signatures numériques d'un document signé à l'aide de la méthode [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

L'exemple de code suivant montre comment charger et supprimer des signatures numériques d'un document:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Notez que vous ne pouvez pas supprimer une seule signature numérique dans votre document.

{{% /alert %}}
