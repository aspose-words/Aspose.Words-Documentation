---
title: Activer les fonctionnalités OpenType dans Java
second_title: Aspose.Words pour Java
articleTitle: Activer les fonctionnalités OpenType
linktitle: Activer les fonctionnalités OpenType
description: "Caractéristiques typographiques avancées dans Aspose.Words pour Java."
type: docs
weight: 25
url: /fr/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType est un format de police, introduit pour fournir un meilleur support pour les langues internationales et les systèmes d'écriture par rapport à PostScript et TrueType. Les fonctions de mise en page d'OpenType sont communément appelées fonctions OpenType. Aspose.Words- J'ai changé.HarfBuzz package fournit un support pour les fonctionnalités OpenType dans Aspose.Words utilisant les `HarfBuzz` text façonner le moteur.

Aspose.Words est capable d'utiliser des objets de shaper de texte fournis à l'extérieur. Un shaper de texte représente une police et calcule les informations pour un texte. Un document se réfère généralement à plusieurs polices, donc une usine de shaper de texte est nécessaire. Ce paquet contient une implémentation d'une usine de shaper de texte utilisée par Aspose.Words.Layout.LayoutOptions.TextShaperPropriété de Factory.

{{% alert color="primary" %}}

La mise en forme du texte n'est effectuée que lors de l'exportation vers PDF ou XPS les formats.

{{% /alert %}}

Dans une application typique une seule instance d'une usine de shaper de texte est partagée entre toutes les instances de document. Chaque fois qu'un shaper texte est créé, un fichier de police est accessible. L'analyse d'un fichier de polices est une opération coûteuse, donc la mise en cache est recommandée. Aspose.Words mise en œuvre Configuration textuelle de base Classe de cache qui enveloppe l'implémentation de l'usine de shaper texte et cache les instances de shaper texte retournées par l'usine enveloppée.

L'exemple de code suivant vous montre comment activer les fonctionnalités OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
