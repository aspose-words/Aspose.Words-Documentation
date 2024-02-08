---
title: Chiffrer un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Chiffrer un document
linktitle: Chiffrer un document
description: "Chiffrez votre document à l'aide d'algorithmes de chiffrement appropriés pour des formats de document spécifiques dans C#."
type: docs
weight: 20
url: /fr/net/encrypt-a-document/
---

Le cryptage est le processus qui traduit un texte lisible en séquences d'octets dénuées de sens afin qu'il ne puisse être lu que par la personne qui possède la clé de déchiffrement ou le code secret. Ce processus joue un rôle important dans la sécurisation de votre contenu. Il permet d'encoder le contenu, de vérifier l'origine d'un document, de prouver que le contenu n'a pas été modifié après son envoi et de garantir la sécurité des données du document.

Cet article explique comment Aspose.Words vous permet de crypter un document et comment vérifier si un document est crypté ou non.

## Chiffrer avec mot de passe

Pour chiffrer un document, utilisez la propriété **Password** pour fournir un mot de passe qui fonctionne comme une clé de chiffrement. Cela modifiera le contenu de votre document et le rendra illisible. Le document crypté nécessitera la saisie de ce mot de passe avant de pouvoir être ouvert.

{{% alert color="primary" %}}

Vous pouvez trouver la propriété **Password** appropriée pour le format requis. Chaque format de sauvegarde de document au format [Enregistrement de l'espace de noms](https://reference.aspose.com/words/net/aspose.words.saving/) possède une classe correspondante contenant des options de sauvegarde pour ce format. Par exemple, la propriété [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) dans la classe [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) pour DOC ou la propriété [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) dans la classe [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) pour DOCX, DOCM, DOTX, DOTM et FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que seuls certains formats de documents prennent en charge le cryptage. Par exemple, RTF ne prend pas en charge le cryptage.

{{% /alert %}}

Le tableau ci-dessous répertorie les formats et algorithmes de cryptage pris en charge par Aspose.Words:

| Format |  Cryptage pris en charge lors du chargement |  Cryptage pris en charge lors de l'enregistrement |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  Cryptage XORCryptage RC4 40 bitsCryptoCryptage API RC4 |  Cryptage RC4 (40 bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Chiffrement standard ECMA-376Chiffrement agile ECMA-376 |  Cryptage standard ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Cryptage ODF (Blowfish/AES) |  Cryptage ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Cryptage RC4 (40/128 bits) |

L'exemple de code suivant montre comment chiffrer un document avec un mot de passe:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Vérifier si un document est crypté

Dans certains cas, vous pouvez avoir un document illisible et vouloir être sûr que le document est crypté et non corrompu ou compressé.

Pour détecter si un document est chiffré et si un mot de passe est requis, vous pouvez utiliser la propriété [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) de la classe [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Cette propriété vous permettra également d'effectuer certaines actions avant de charger un document, par exemple demander à un utilisateur de fournir un mot de passe.

L'exemple de code suivant montre comment détecter le chiffrement du document:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Ouvrir un document avec ou sans mot de passe

Lorsqu'on s'est assuré qu'un document est crypté, on peut tenter d'ouvrir ce document sans mot de passe, ce qui devrait conduire à une exception.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré sans mot de passe:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Après avoir vu qu'un document crypté ne peut pas être ouvert sans mot de passe, nous pouvons essayer de l'ouvrir en entrant le mot de passe.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
