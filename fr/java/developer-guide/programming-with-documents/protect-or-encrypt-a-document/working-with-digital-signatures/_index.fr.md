---
title: Travailler avec les signatures numériques dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les signatures numériques
linktitle: Travailler avec les signatures numériques
description: "Signer numériquement les documents et détecter, compter, vérifier et retirer les signatures numériques existantes en utilisant Java."
type: docs
weight: 30
url: /fr/java/working-with-digital-signatures/
---

Une signature numérique est une mise en œuvre technologique de signatures électroniques pour signer des documents et authentifier le signataire pour garantir qu'un document n'a pas été modifié depuis sa signature. Chaque signature numérique est unique pour chaque signataire en raison du respect du protocole de l'ICP pour générer des clés publiques et privées. Signer un document numériquement signifie créer une signature en utilisant la clé privée du signataire où un algorithme mathématique est utilisé pour chiffrer le hash généré.

Aspose.Words vous permet de détecter, de compter ou de vérifier les signatures numériques existantes, ainsi que d'ajouter une nouvelle signature à votre document pour en savoir plus. Vous pouvez également supprimer toutes les signatures numériques d'un document. Utiliser [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) cours pour travailler avec des signatures numériques.

Cet article explique comment faire tout ce qui précède pour valider l'authenticité et l'intégrité d'un document numérique.

{{% alert color="primary" %}}

Notez que vous pouvez accéder aux signatures numériques de votre document seulement lors de l'exécution du Java 6 versions et plus.

{{% /alert %}}

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Signature en ligne gratuite](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formats pris en charge

Aspose.Words vous permet de travailler avec des signatures numériques sur les documents DOC, OOXML et ODT et de signer le document généré en PDF ou XPS modèle.

## Limitations des signatures numériques

Le tableau ci-dessous décrit quelques limites auxquelles vous pouvez faire face en travaillant avec des signatures numériques Aspose.Words, ainsi que certaines autres options.

|  Limitation |  Autre option |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perte de signatures numériques sur un document après le chargement et l'enregistrement. Par conséquent, le traitement d'un document vers un serveur peut entraîner la perte de toutes les signatures numériques sans préavis |  Vérifiez si un document a des signatures numériques et prenez les mesures appropriées, le cas échéant. Par exemple, envoyez une alerte aux clients les informant que le document qu'ils téléchargent contient des signatures numériques qui seront perdues si elles sont traitées |
|  Aspose.Words soutient le travail avec les macros dans un document. Mais Aspose.Words ne supporte pas encore les signatures numériques sur les macros |  Exporter le document vers n'importe quel format Word, et utiliser Microsoft Word pour ajouter une signature numérique aux macros |

## Détecter, compter et vérifier les signatures numériques

Aspose.Words vous permet de détecter la signature numérique dans un document en utilisant [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) méthode et [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) propriété. Il convient de noter qu'un tel contrôle ne permettra de détecter que le fait de la signature, mais pas sa validité.

Un document peut être signé plus d'une fois et cela peut être fait par différents utilisateurs. Pour vérifier la validité des signatures numériques, vous devez les charger à partir du document [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) et utiliser [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) propriété. Aussi Aspose.Words vous permet de compter un ensemble de toutes les signatures numériques dans un document en utilisant [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) propriété.

Tout cela fournit un moyen efficace et sûr de vérifier un document pour les signatures avant de le traiter.

L'exemple de code suivant montre comment détecter la présence de signatures numériques et les vérifier:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Créer une signature numérique {#create-a-digital-signature}

Pour créer une signature numérique, vous devrez charger un certificat de signature qui confirme l'identité. Lorsque vous envoyez un document signé numériquement, vous envoyez également votre certificat et votre clé publique.

Aspose.Words vous permet de créer un certificat X.509, un certificat numérique qui utilise la norme X.509 ICP acceptée à l'échelle internationale pour vérifier qu'une clé publique appartient au signataire inclus dans le certificat. Pour ce faire, utilisez la [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) méthode dans la [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) En cours.

Les sections suivantes expliquent comment ajouter une signature numérique, une ligne de signature et comment signer un document PDF généré.

### Signer un document

Aspose.Words vous permet de signer un document DOC, DOCX ou ODT numériquement en utilisant [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) méthode et [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) propriétés.

L'exemple de code suivant montre comment signer les documents à l'aide d'un titulaire de certificat et d'options de signature:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Ajouter une ligne de signature

Une ligne de signature est une représentation visuelle d'une signature numérique dans un document. Aspose.Words vous permet d'insérer une ligne de signature [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) méthode. Vous pouvez également définir les paramètres de cette représentation en utilisant la [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) En cours.

Par exemple, l'image ci-dessous montre comment des signatures valides et non valides peuvent être affichées.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

De plus, si un document contient une ligne de signature et aucune signature numérique, il y a une fonction pour demander à l'utilisateur d'ajouter une signature.

L'exemple de code suivant montre comment signer un document avec un certificat personnel et une ligne de signature spécifique:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Signer un document PDF généré {#sign-a-generated-pdf-document}

Aspose.Words vous permet de signer et d'obtenir tous les détails d'un document PDF en utilisant [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) propriétés.

L'exemple de code suivant montre comment signer un PDF généré:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

L'image ci-dessous montre que le document PDF généré est ouvert en Adobe Acrobat et la signature numérique est vérifiée comme présente et valide.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Récupérer la valeur de signature numérique

Aspose.Words fournit également la possibilité de récupérer la valeur de signature numérique d'un document signé numériquement comme tableau d'octets en utilisant le [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propriété.

L'exemple de code suivant montre comment obtenir la valeur de signature numérique comme tableau d'octets d'un document:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Supprimer les signatures numériques

Aspose.Words vous permet de supprimer toutes les signatures numériques d'un document signé [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) méthode.

L'exemple de code suivant montre comment charger et supprimer les signatures numériques d'un document:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Notez que vous ne pouvez pas supprimer une seule signature numérique dans votre document.

{{% /alert %}}
