---
title: Configurez le produit dans Visual Studio
second_title: Aspose.Words pour C++
articleTitle: Configurer Aspose.Words pour C++ dans Visual Studio
linktitle: Configurer Aspose.Words pour C++ dans Visual Studio
description: "Configurer manuellement Aspose.Words pour C++ dans Visual Studio."
type: docs
weight: 90
url: /fr/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words pour C++ L'API fonctionne avec Visual Studio 2022 ou version ultérieure. Pour travailler avec Visual Studio, vous devrez peut-être installer Visual C ++ Redistributable disponible sur [Site officiel de Microsoft](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configurez avec MSBuild .fichiers Cibles

Suivez ces étapes pour configurer votre projet avec [MSBuild .fichiers cibles](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Ajoutez des balises d'importation avec Aspose.Words pour C++ cible les fichiers dans votre fichier vcxproj**
1. Ouvrez votre fichier de projet `*.vcxproj` dans l'éditeur de texte
2. Recherchez `<ImportGroup Label="ExtensionTargets"></ImportGroup>` à la fin du fichier
3. Ajoutez les balises `Import` suivantes à l'intérieur de `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Configurer Manuellement

Suivez ces étapes pour configurer manuellement Aspose.Words pour C++ dans Visual Studio:

**Ajoutez les répertoires d'inclusion supplémentaires:**

1. Ouvrir la Propriété du Projet
2. Aller à C / C++ → Général
3. Ajoutez les répertoires d'inclusion supplémentaires suivants:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Ajoutez les Dépendances supplémentaires:**

1. Ouvrir la Propriété du Projet
2. Sélectionnez Configuration → Toutes les configurations et Plate-forme → Toutes les plates-formes
2. Aller à l'éditeur de liens → Entrée
* Pour la configuration de la version:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Pour la configuration de débogage:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Ajouter les Commandes:**

1. Ouvrir la Propriété du Projet
2. Allez dans Créer des événements → Événement post-construction
3. Ajoutez les commandes suivantes:
* Pour la configuration de la version:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Pour la configuration de débogage:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
