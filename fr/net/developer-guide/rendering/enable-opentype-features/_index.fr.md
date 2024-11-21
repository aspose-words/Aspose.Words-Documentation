---
title: Activer les fonctionnalités OpenType dans C#
second_title: Aspose.Words pour .NET
articleTitle: Activer les fonctionnalités OpenType
linktitle: Activer les fonctionnalités OpenType
description: "Fonctionnalités typographiques avancées utilisant C#."
type: docs
weight: 25
url: /fr/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType est un format de police introduit pour offrir une meilleure prise en charge des langues et des systèmes d'écriture internationaux par rapport à PostScript et TrueType. Les fonctionnalités de mise en page d'OpenType sont communément appelées fonctionnalités OpenType. Le package Aspose.Words.Shaping.HarfBuzz prend en charge les fonctionnalités OpenType dans Aspose.Words à l'aide du moteur de mise en forme de texte HarfBuzz.

Aspose.Words est capable d'utiliser des objets de mise en forme de texte fournis en externe. Un façonneur de texte représente une police et calcule les informations de mise en forme d'un texte. Un document fait généralement référence à plusieurs polices, une usine de mise en forme de texte est donc nécessaire. Ce package contient une implémentation d'une usine de mise en forme de texte utilisée par la propriété Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

La mise en forme du texte n'est effectuée que lors de l'exportation aux formats PDF ou XPS.

{{% /alert %}}

Dans une application typique, une seule instance d’une usine de mise en forme de texte est partagée entre toutes les instances de document. Chaque fois que le façonneur de texte est créé, un fichier de police est accessible. L'analyse d'un fichier de polices est une opération coûteuse, c'est pourquoi la mise en cache est recommandée. Aspose.Words implémente la classe BasicTextShaperCache qui encapsule l'implémentation de l'usine de mise en forme de texte et met en cache les instances de mise en forme de texte renvoyées par l'usine encapsulée.

L'exemple de code suivant vous montre comment activer la prise en charge des fonctionnalités OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
