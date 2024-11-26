---
title: Manipulation des polices et Problèmes de performances en C++
second_title: Aspose.Words pour C++
articleTitle: Problèmes de Manipulation et de Performances des Polices
linktitle: Problèmes de Manipulation et de Performances des Polices
description: "Aspose.Words pour C++ utilise le nom complet de la police, le nom de famille, la version, le style pour trouver les données de police requises ou un remplacement approprié pour la police demandée. FontSettings vous permet d'accélérer le chargement des documents."
type: docs
weight: 11
url: /fr/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Tous les mécanismes de manipulation de polices disponibles sont contenus dans la classe [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Cette classe est responsable de la récupération des polices dans les sources de polices définies ainsi que du processus de substitution de polices, comme décrit ci-dessous.

## Analyse des polices résolues

Les polices sont analysées en plusieurs étapes:

1. Obtention d'informations pour la police, résolution à partir de toutes les polices disponibles.
1. Analyse des polices résolues pour obtenir les glyphes et métriques disponibles (horizontaux et verticaux).
1. Analyse des polices résolues pour l'incorporation et le sous-ensemble.

Lorsque Aspose.Words rencontre une police dans le document pour la première fois, il tente d'obtenir des informations de police de base, telles que le nom complet de la police, le nom de famille, la version, le style, à partir des fichiers de polices situés dans chaque source de police. Une fois toutes les polices récupérées, Aspose.Words utilise ces détails pour trouver les données de police requises ou un remplacement approprié pour la police demandée.

## Problème De Performances Lors Du Remplacement Des Polices

Étant donné que la procédure décrite ci-dessus prend du temps, elle peut affecter négativement les performances de l'application lors de son premier lancement. Cependant, chaque instance de **FontSettings** possède son propre cache, ce qui pourrait réduire le temps de traitement des documents suivants. Par exemple, vous pouvez partager une instance de la classe **FontSettings** entre différents documents, ce qui vous permet d'accélérer le chargement des documents. L'exemple suivant le démontre:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

Dans le cas où **FontSettings** n'est pas défini explicitement, Aspose.Words utilise l'instance **FontSettings** par défaut. Cette instance est également automatiquement partagée entre les documents et peut être extraite comme suit:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Utilisation de l'instance FontSettings par défaut

Si vous êtes sûr que tous les documents de traitement nécessitent les mêmes paramètres de police, il est recommandé de configurer et d'utiliser l'instance **FontSettings** par défaut. Supposons que vous deviez utiliser les mêmes sources de polices pour tous vos documents. Dans ce cas, vous pouvez simplement modifier l'instance par défaut comme suit:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

La coutume **FontSettings** a une priorité plus élevée que l'instance par défaut.

{{% /alert %}}
