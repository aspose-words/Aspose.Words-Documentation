---
title: Chiffrer un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Chiffrer un document
linktitle: Chiffrer un document
description: "Chiffrez votre document en utilisant des algorithmes de chiffrement appropriés pour des formats de document spécifiques dans Java."
type: docs
weight: 20
url: /fr/java/encrypt-a-document/
---

Le chiffrement est le processus qui traduit le texte lisible en séquences d'octets sans signification, de sorte qu'il ne peut être lu que par la personne qui a la clé de déchiffrement ou le code secret. Ce processus joue un rôle important dans la sécurisation de votre contenu. Il permet d'encoder le contenu, de vérifier l'origine d'un document, de prouver que le contenu n'a pas été modifié après son envoi et de s'assurer que les données du document sont sûres.

Cet article explique comment Aspose.Words vous permet de chiffrer un document et de vérifier si un document est chiffré ou non.

## Chiffrer avec le mot de passe

Pour chiffrer un document, utilisez le **Password** propriété pour fournir un mot de passe qui fonctionne comme une clé de chiffrement. Cela modifiera le contenu de votre document et le rendra illisible. Le document chiffré devra faire entrer ce mot de passe avant qu'il puisse être ouvert.

{{% alert color="primary" %}}

Vous pouvez trouver le **Password** propriété pour le format requis. Chaque format de sauvegarde de document a une classe correspondante contenant des options de sauvegarde pour ce format. Par exemple, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) propriété dans le [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) pour le DOC, ou [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) propriété dans le [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) cours pour DOCX, DOCM, DOTX, DOTM, et FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que seuls certains formats de documents supportent le chiffrement. Par exemple, RTF ne supporte pas le chiffrement.

{{% /alert %}}

Le tableau ci-dessous énumère les formats et les algorithmes de chiffrement pris en charge par Aspose.Words:

| Format |  Prise en charge du chiffrement lors du chargement |  Prise en charge du chiffrement pendant l'enregistrement |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  Docteur, DOT |  Chiffrement XOR encryptage RC4 40 bitsCryptoAPI Chiffrement RC4 |  Chiffrement RC4 (40 bits) |
|  Oui. DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Chiffrement standardECMA-376 Chiffrement agile |  ECMA-376 Chiffrement standard (AES128 + SHA1) |
|  ODT, OTT |  Chiffrement ODF (Fish/AES) |  Chiffrement ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Chiffrement RC4 (40/128 bits) |

L'exemple de code suivant montre comment chiffrer un document avec un mot de passe:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Vérifier si un document est chiffré

Dans certains cas, vous pouvez avoir un document illisible et voulez être sûr que le document est chiffré et non corrompu ou compressé.

Pour détecter si un document est chiffré et si un mot de passe est nécessaire, vous pouvez utiliser le [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propriété des [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) En cours. Cette propriété vous permettra également d'effectuer une action avant de charger un document, par exemple, en informant un utilisateur de fournir un mot de passe.

L'exemple de code suivant montre comment détecter le chiffrement du document:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Ouvrir un document avec ou sans mot de passe

Lorsque nous nous sommes assurés qu'un document est chiffré, nous pouvons essayer d'ouvrir ce document sans mot de passe, ce qui devrait conduire à une exception.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré sans mot de passe:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Après avoir vu qu'un document chiffré ne peut pas être ouvert sans mot de passe, nous pouvons essayer de l'ouvrir en entrant le mot de passe.

L'exemple de code suivant montre comment essayer d'ouvrir un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
