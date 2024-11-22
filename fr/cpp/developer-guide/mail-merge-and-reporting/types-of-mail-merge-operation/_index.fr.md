---
title: Types d'opérations Mail Merge en C++
second_title: Aspose.Words pour C++
articleTitle: Types d'opération Mail Merge
linktitle: Types d'opération Mail Merge
type: docs
description: "Effectuez deux types différents d'opérations mail merge: simples Mail Merge et Mail Merge avec des régions utilisant C++. Simple Mail Merge répète l'intégralité du document pour chaque enregistrement de source de données, tandis que Mail Merge avec régions répète uniquement les régions désignées par enregistrement."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /fr/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

L'idée principale de Mail Merge est de créer automatiquement un document ou plusieurs documents en fonction de votre modèle et des données extraites de votre source de données. Aspose.Words vous permet d'effectuer deux types différents d'opérations mail merge: simples Mail Merge et Mail Merge avec des régions.

L'exemple le plus courant d'utilisation de simple Mail Merge est lorsque vous souhaitez envoyer un document à différents clients en incluant leurs noms au début du document. Pour ce faire, vous devez créer des champs de fusion tels que *First Name* et *Last Name* dans votre modèle, puis les remplir avec des données de votre source de données. Alors que l'exemple le plus courant d'utilisation de Mail Merge avec des régions est lorsque vous souhaitez envoyer un document qui inclut des commandes spécifiques avec la liste de tous les éléments de chaque commande. Pour ce faire, vous devrez créer des régions de fusion dans votre propre région de modèle pour chaque commande, afin de la remplir avec toutes les données requises pour les articles.

La principale différence entre les deux opérations de fusion est que la simple Mail Merge (sans régions) répète l'intégralité du document pour chaque enregistrement de source de données, tandis que Mail Merge avec des régions répète uniquement les régions désignées par enregistrement. Vous pouvez considérer une simple opération Mail Merge comme un cas particulier de fusion avec des régions où la seule région est le document entier.

{{% alert color="primary" %}}

La classe [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) représente une fonctionnalité mail merge. Avec ses propriétés, vous pouvez personnaliser le comportement requis avant d'exécuter une opération mail merge.

{{% /alert %}}

