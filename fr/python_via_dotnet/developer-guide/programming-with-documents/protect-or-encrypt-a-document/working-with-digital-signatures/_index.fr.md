---
title: Travailler avec des signatures numériques
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des signatures numériques
linktitle: Travailler avec des signatures numériques
description: "Signez numériquement des documents et détectez, comptez, vérifiez et supprimez les signatures numériques existantes à l'aide de Python."
type: docs
weight: 40
url: /fr/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Une signature numérique est utilisée pour authentifier un document afin d'établir que l'expéditeur du document est bien celui qu'il prétend être et que le contenu du document n'a pas été falsifié.

Aspose.Words prend en charge les documents avec des signatures numériques et y donne accès, vous permettant de détecter et de valider les signatures numériques sur un document et de signer un document PDF généré avec un certificat fourni. À l'heure actuelle, les signatures numériques sont prises en charge sur les documents DOC, OOXML et ODT. La signature des documents générés est prise en charge au format PDF.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Signature en ligne gratuite](https://products.aspose.app/words/signature).

{{% /alert %}}

## Les signatures numériques ne sont pas conservées lors de l'ouverture et de l'enregistrement

Un point important à noter est qu'un document chargé puis enregistré à l'aide de Aspose.Words perdra toutes les signatures numériques signées sur le document. Ceci est intentionnel, car une signature numérique garantit que le contenu n'a pas été modifié et authentifie en outre l'identité de la personne qui a signé le document. Ces principes seraient invalidés si les signatures originales étaient reportées sur le document résultant.

Pour cette raison, si vous traitez des documents téléchargés sur un serveur, cela pourrait potentiellement signifier que vous pourriez corrompre un document téléchargé sur votre serveur de cette manière sans le savoir. Il est donc préférable de vérifier les signatures numériques sur un document et de prendre les mesures appropriées si elles sont trouvées. Par exemple, une alerte peut être envoyée au client pour l'informer que le document qu'il transmet contient des signatures numériques qui seront perdues s'il est traité. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Le code ci-dessus utilise la méthode [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) pour détecter si un document contient des signatures numériques sans charger le document au préalable. Cela constitue un moyen efficace et sûr de vérifier les signatures d’un document avant de les traiter. Une fois exécutée, la méthode renvoie un objet [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) qui fournit la propriété [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Cette propriété renvoie true si le document contient une ou plusieurs signatures numériques. Il est important de noter que cette méthode ne valide pas les signatures, elle détermine uniquement si les signatures sont présentes. La validation des signatures numériques est abordée dans la section suivante.

{{% alert color="primary" %}}

Vous pouvez également vérifier si un document possède des signatures numériques après son chargement en vérifiant la propriété `Count` de la collection [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Signatures numériques sur les macros (projets VBA)

Les signatures numériques sur les macros ne sont ni accessibles ni signées. En effet, Aspose.Words ne traite pas directement les macros d'un document. Cependant, les signatures numériques des macros sont conservées lors de la réexportation du document vers n'importe quel format Word. Ces signatures peuvent être conservées sur le code VBA car le contenu binaire des macros n'est pas modifié même si le document lui-même est modifié.

### Accéder et vérifier les signatures numériques

Un document peut avoir plusieurs signatures numériques. Ces signatures sont toutes accessibles via la collection [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Chaque objet renvoyé est un [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) qui représente une seule signature numérique appartenant au document. Cela fournit des membres qui vous permettent de vérifier la validité de la signature.

La propriété la plus importante à vérifier avec les signatures numériques est la validité de chaque signature du document. Toutes les signatures du document peuvent être validées en même temps en appelant la propriété [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Cela renverra true si toutes les signatures du document sont valides ou si le document n'a aucune signature et false si au moins une signature numérique n'est pas valide.

Chaque signature peut également être validée individuellement en appelant [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Une signature peut s'avérer invalide pour plusieurs raisons, par exemple le document a été modifié depuis la signature ou le certificat a expiré. De plus, des détails supplémentaires sur la signature sont également accessibles. L'exemple de code ci-dessous montre comment valider chaque signature dans un document et afficher des informations de base sur la signature. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Signature de documents Word

La classe [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) fournit des méthodes pour signer un document. La méthode [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) signe le document source à l'aide du [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) donné avec une signature numérique et écrit le document signé dans le flux de destination

L'exemple ci-dessous montre comment signer un document simple

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

L'exemple ci-dessous montre comment signer un document crypté

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Signature d'un document Word avec la ligne de signature

Vous pouvez signer le document source à l'aide de [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) et [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) donnés avec signature numérique et écrire le document signé dans le fichier de destination. En utilisant la classe [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/), vous pouvez spécifier des options de signature de documents. L'exemple ci-dessous montre comment créer une nouvelle ligne de signature et signer un document

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

L'exemple ci-dessous montre comment modifier la ligne de signature existante et signer le document

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Signature d'un document Word à l'aide de l'identifiant du fournisseur de signature

L'exemple ci-dessous montre comment signer un document Word à l'aide de l'identifiant du fournisseur de signature. Le fournisseur de services cryptographiques (CSP) est un module logiciel indépendant qui exécute des algorithmes de cryptographie pour l'authentification, le codage et le chiffrement. MS Office réserve la valeur {00000000-0000-0000-0000-000000000000} pour son fournisseur de signature par défaut.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Créer un nouveau document Word de signe de ligne de signature à l'aide de l'identifiant du fournisseur

L'exemple ci-dessous montre comment créer une ligne de signature et signer un document Word à l'aide de l'identifiant du fournisseur de signature.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Récupérer la valeur de la signature numérique

Aspose.Words offre également la possibilité de récupérer la valeur de signature numérique d'un document signé numériquement sous forme de tableau d'octets à l'aide de la propriété [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

L'exemple de code suivant montre comment obtenir la valeur de signature numérique sous forme de tableau d'octets à partir d'un document:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
