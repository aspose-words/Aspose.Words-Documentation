---
title: Configurar o produto em Visual Studio
second_title: Aspose.Words Para C++
articleTitle: Configurar Aspose.Words para C++ em Visual Studio
linktitle: Configurar Aspose.Words para C++ em Visual Studio
description: "Configurar manualmente Aspose.Words para C++ em Visual Studio."
type: docs
weight: 90
url: /pt/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words para C++ API funciona com Visual Studio 2022 ou posterior. Para trabalhar com Visual Studio, pode ser necessário instalar Visual C++ Redistributable Disponível em [Microsoft sítio web oficial](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Configurar com MSBuild .ficheiros de destino

Siga estas etapas para configurar seu projeto com [MSBuild .ficheiros de destino](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Adicionar etiquetas de importação com Aspose.Words Para C++ segmenta arquivos em seu arquivo vcxproj**
1. Abra o ficheiro do projecto `*.vcxproj` no editor de texto
2. Encontrar `<ImportGroup Label="ExtensionTargets"></ImportGroup>` no final do ficheiro
3. Adicione as seguintes tags `Import` dentro de `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Configurar Manualmente

Siga estes passos para configurar manualmente Aspose.Words para C++ em Visual Studio:

**Adicionar os directórios de inclusão adicionais:**

1. Propriedade Do Projeto Aberto
2. Ir para C / C++
3. Adicione os seguintes diretórios de inclusão adicionais:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Adicionar as dependências adicionais:**

1. Propriedade Do Projeto Aberto
2. Seleccionar configuração Valuetech todas as configurações e plataforma
2. Ir para o vinculador
* Para a configuração da liberação:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Para configuração de depuração:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Adicionar os comandos:**

1. Propriedade Do Projeto Aberto
2. Ir para os Eventos de Compilação
3. Adicione os seguintes comandos:
* Para a configuração da liberação:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Para configuração de depuração:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
