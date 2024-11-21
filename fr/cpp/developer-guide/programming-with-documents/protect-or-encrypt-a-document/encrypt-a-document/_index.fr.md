---
title: Chiffrer un document en C++
second_title: Aspose.Words pour C++
articleTitle: Chiffrer un Document
linktitle: Chiffrer un Document
description: "Cryptez votre document à l'aide d'algorithmes de cryptage appropriés pour des formats de document spécifiques."
type: docs
weight: 20
url: /fr/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Le chiffrement est le processus qui traduit un texte lisible en séquences d'octets dénuées de sens, de sorte qu'il ne peut être lu que par la personne qui possède la clé de déchiffrement ou le code secret. Ce processus joue un rôle important dans la sécurisation de votre contenu. Il permet d'encoder le contenu, de vérifier l'origine d'un document, de prouver que le contenu n'a pas été modifié après son envoi et de s'assurer que les données du document sont sécurisées.

Cet article explique comment Aspose.Words vous permet de chiffrer un document et comment vérifier si un document est chiffré ou non.

## Crypter avec mot de passe

Pour chiffrer un document, utilisez la propriété **Password** pour fournir un mot de passe qui fonctionne comme une clé de chiffrement. Cela modifiera le contenu de votre document et le rendra illisible. Le document crypté nécessitera la saisie de ce mot de passe avant de pouvoir être ouvert.

{{% alert color="primary" %}}

Vous pouvez trouver la propriété **Password** appropriée pour le format requis. Chaque format d'enregistrement de document dans [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) a une classe correspondante contenant des options d'enregistrement pour ce format. Par exemple, la propriété [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) dans la classe [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) pour DOC, ou la propriété [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) dans la classe [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) pour DOCX, DOCM, DOTX, DOTM, et FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que seuls certains formats de documents prennent en charge le cryptage. Par exemple, RTF ne prend pas en charge le cryptage.

{{% /alert %}}

Le tableau ci-dessous répertorie les formats et algorithmes de chiffrement pris en charge par Aspose.Words:

| Format | Cryptage pris en charge lors du chargement | Cryptage pris en charge lors de l'enregistrement |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | Chiffrement Xorcryptage RC4 40 bits EncryptionCryptoAPI RC4 | Cryptage RC4 (40 bits) |
| DOCX, DOTX, DOCM, DOTM, PlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | Chiffrement standard ECMA-376cryptage agile ECMA-376 | Chiffrement standard ECMA-376 (AES128 + SHA1 ) |
| ODT, OTT | Cryptage ODF (Blowfish / AES) | Chiffrement ODF (AES256 + SHA256) |
| PDF | Cryptage RC4 (40/128 bits) |

L'exemple de code suivant montre comment chiffrer un document avec un mot de passe:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Vérifier Si un Document Est Chiffré

Dans certains cas, vous pouvez avoir un document illisible et vouloir vous assurer que le document est crypté et non corrompu ou compressé.

Pour détecter si un document est chiffré et si un mot de passe est requis, vous pouvez utiliser la propriété [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) de la classe [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Cette propriété vous permettra également d'effectuer certaines actions avant de charger un document, par exemple, informer un utilisateur de fournir un mot de passe.

L'exemple de code suivant montre comment détecter le cryptage du document:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Ouvrir un Document Avec ou Sans mot de passe

Lorsque nous nous sommes assurés qu'un document est crypté, nous pouvons essayer d'ouvrir ce document sans mot de passe, ce qui devrait entraîner une exception.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré sans mot de passe:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Après avoir constaté qu'un document crypté ne peut pas être ouvert sans mot de passe, nous pouvons essayer de l'ouvrir en entrant le mot de passe.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
