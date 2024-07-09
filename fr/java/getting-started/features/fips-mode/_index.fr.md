---
title: Mode FIPS
second_title: Aspose.Words pour Java
articleTitle: Mode FIPS
linktitle: Mode FIPS
description: "Aspose.Words pour Java utilise plusieurs algorithmes de cryptographie et de hachage lors du traitement des documents pour se conformer aux normes FIPS."
type: docs
weight: 80
url: /fr/java/fips-mode/
---

Aspose.Words utilise plusieurs algorithmes de cryptographie et de hachage lors du traitement des documents et cet article décrit comment il est lié aux normes FIPS.

Les Normes fédérales de traitement de l'information (FIPS) sont un ensemble de normes ouvertement publiées élaborées par le gouvernement fédéral des États-Unis pour établir des exigences à diverses fins, comme la sécurité informatique et l'interopérabilité.

## BouncyCastle à la rescousse

Aspose.Words pour Java et Aspose.Words pour Android utiliser le Château de Bouncy FIPS JAR pour le chiffrement, le décryptage et la signature des documents. Les JAR a été conçu et mis en oeuvre pour satisfaire aux exigences de niveau 1 de la norme FIPS 140-2.

FIPS 140-2 est une norme de sécurité informatique du gouvernement américain utilisée pour approuver les modules cryptographiques. Cette norme précise les exigences de sécurité qui seront satisfaites par un module cryptographique et fournit des niveaux élevés de sécurité destinés à couvrir un large éventail d'applications et d'environnements potentiels. Pour plus de détails sur FIPS 140-2, voir la [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words pour .NET utilise la version générale de Bouncy Castle sans support pour FIPS.

## Activation du mode FIPS

A partir de la version 18.10 Aspose.Words permet de travailler en deux modes: Général et FIPS.

Par défaut Aspose.Words fonctionne en mode général, donc il n'y a pas de restrictions sur l'utilisation des algorithmes et des clés dans ce cas.

Vous pouvez changer Aspose.Words du mode général au mode FIPS en utilisant la méthode suivante:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Pour des raisons de sécurité, vous ne pouvez pas changer le mode de retour à General à l'exécution.

Veuillez également noter que Aspose.Words ne peut pas automatiquement reconnaître si votre système d'exploitation est en mode FIPS, vous devez donc changer Aspose.Words au mode FIPS explicitement

Utilisez la méthode suivante pour vous assurer Aspose.Words pour Java est en mode FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Lorsque le mode FIPS est activé, Aspose Words vous empêchera d'utiliser des algorithmes de cryptographie et des clés avec des longueurs non approuvées.

Par exemple, lorsque vous essayez d'ouvrir un document chiffré ODT pendant que le mode FIPS est actif, vous pouvez voir l'exception suivante:

{{% alert color="primary" %}}

Opération de sécurité non approuvée Exception: Une tentative d'ouvrir un fichier ODT qui utilise l'algorithme Blowfish. Cet algorithme n'est pas sur la liste des algorithmes approuvés par le FIPS.

{{% /alert %}}

Cela se produit parce que l'algorithme Blowfish n'est pas sur la liste des algorithmes approuvés par le FIPS.

La même exception peut se produire si des touches de longueur inappropriée sont utilisées:

Opération de sécurité non approuvée Exception: Vous ne pouvez pas utiliser une clé avec la taille 1024 pour RSA en mode FIPS.

Pour plus de détails sur la liste des algorithmes approuvés, voir [Bénédiction Guide de l'utilisateur du Château](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), (Symmétrique)


