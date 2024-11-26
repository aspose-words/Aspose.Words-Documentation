---
title: Mode FIPS
second_title: Aspose.Words pour Java
articleTitle: Mode FIPS
linktitle: Mode FIPS
description: "Aspose.Words pour Java utilise plusieurs algorithmes de cryptographie et de hachage lors du traitement des documents pour se conformer aux normes FIPS."
type: docs
weight: 80
url: /fr/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words utilise plusieurs algorithmes de cryptographie et de hachage lors du traitement des documents et cet article décrit comment il est lié aux normes FIPS.

Les Normes fédérales de traitement de l'information (FIPS) sont un ensemble de normes publiées ouvertement élaborées par le gouvernement fédéral des États-Unis pour établir des exigences à diverses fins, telles que la sécurité informatique et l'interopérabilité.

## BouncyCastle à la rescousse

Aspose.Words pour Java et Aspose.Words pour Android utilisez le château gonflable FIPS JAR pour chiffrer, déchiffrer et signer des documents. Le JAR a été conçu et mis en œuvre pour répondre aux exigences FIPS 140-2, niveau 1.

FIPS 140-2 est une norme de sécurité informatique du gouvernement américain utilisée pour approuver les modules cryptographiques. Cette norme spécifie les exigences de sécurité qui seront satisfaites par un module cryptographique et fournit des niveaux de sécurité élevés destinés à couvrir un large éventail d'applications et d'environnements potentiels. Pour plus de détails sur FIPS 140-2, voir le [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words pour .NET utilise la version générale du château gonflable sans prise en charge de FIPS.

## FIPS Activation du mode

A partir de la version 18.10 Aspose.Words permet de travailler en deux modes: Général et FIPS.

Par défaut, Aspose.Words fonctionne en mode général, il n'y a donc aucune restriction sur l'utilisation des algorithmes et des clés dans ce cas.

Vous pouvez passer Aspose.Words du mode général au mode FIPS en utilisant la méthode suivante:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Pour des raisons de sécurité, vous ne pouvez pas revenir au mode Général lors de l'exécution.

Notez également que Aspose.Words ne peut pas reconnaître automatiquement si votre système d'exploitation est en mode FIPS, vous devez donc basculer explicitement Aspose.Words en mode FIPS.

Utilisez la méthode suivante pour vous assurer que Aspose.Words pour Java est en mode FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Lorsque le mode FIPS est activé, Aspose Words vous empêchera d'utiliser certains algorithmes de cryptographie et clés de longueurs non approuvées.

Par exemple, lorsque vous essayez d'ouvrir un document chiffré ODT alors que le mode FIPS est actif, vous pouvez voir l'exception suivante:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Une tentative d'ouverture d'un fichier ODT qui utilise l'algorithme Blowfish. Cet algorithme ne figure pas sur la liste des algorithmes approuvés par FIPS.

{{% /alert %}}

Cela se produit car l'algorithme Blowfish ne figure pas sur la liste des algorithmes approuvés FIPS.

L'exception similaire peut se produire si des clés de longueur inappropriée sont utilisées:

UnapprovedSecurityOperationException: Vous ne pouvez pas utiliser une clé de taille 1024 pour RSA en mode FIPS.

Pour plus de détails sur la liste des algorithmes approuvés, voir [BouncyCastle Guide de l'utilisateur](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Algorithmes de chiffrement (symétriques)".


