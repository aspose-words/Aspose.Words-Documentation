---
title: Activer OpenType Fonctionnalités dans Java
second_title: Aspose.Words pour Java
articleTitle: Activer les fonctionnalités OpenType
linktitle: Activer les fonctionnalités OpenType
description: "Fonctionnalités de typographie avancées dans Aspose.Words pour Java."
type: docs
weight: 25
url: /fr/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType est un format de police, introduit pour fournir un meilleur support pour les langues et les systèmes d'écriture internationaux par rapport à PostScript et TrueType. Les entités de mise en page de OpenType sont communément appelées entités OpenType. Aspose.Words.Mise en forme.le package HarfBuzz prend en charge les fonctionnalités OpenType dans Aspose.Words à l'aide du moteur de mise en forme de texte `HarfBuzz`.

Aspose.Words est capable d'utiliser des objets de mise en forme de texte fournis en externe. Un façonneur de texte représente une police et calcule les informations de mise en forme d'un texte. Un document fait généralement référence à plusieurs polices, une fabrique de mise en forme de texte est donc nécessaire. Ce paquet contient une implémentation d'une fabrique de mise en forme de texte utilisée par Aspose.Words.Mise en page.LayoutOptions.TextShaperFactory propriété.

{{% alert color="primary" %}}

La mise en forme du texte n'est effectuée que lors de l'exportation vers les formats PDF ou XPS.

{{% /alert %}}

Dans une application typique, une instance unique d'une fabrique de mise en forme de texte est partagée entre toutes les instances de document. Chaque fois qu'un façonneur de texte est créé, un fichier de police est consulté. L'analyse d'un fichier de polices est une opération coûteuse, c'est pourquoi la mise en cache est recommandée. Aspose.Words implémente la classe BasicTextShaperCache qui encapsule l'implémentation de la fabrique de façonnage de texte et met en cache les instances de façonnage de texte renvoyées par la fabrique encapsulée.

L'exemple de code suivant vous montre comment activer la prise en charge des fonctionnalités OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
