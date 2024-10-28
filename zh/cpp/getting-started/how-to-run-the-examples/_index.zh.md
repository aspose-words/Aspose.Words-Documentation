---
title: 如何运行示例
second_title: Aspose.Words为C++
articleTitle: 如何运行示例
linktitle: 如何运行示例
description: "下载 Aspose.Words为C++ 来自我们的GitHub存储库的示例，并学习如何运行它们以更熟悉Aspose.Words的可能性和特性。"
type: docs
weight: 110
url: /zh/cpp/how-to-run-the-examples/
---

为了更熟悉Aspose.Words的可能性和特性，我们提供了可以从我们的GitHub存储库下载、运行和详细学习的示例。

在本文中，您可以找到系统要求以及有关如何运行示例的信息。

## Windows与Nuget包

### 软件要求和先决条件

在下载和运行示例之前，请确保您满足以下要求:

1. Visual Studio代码，Visual Studio 2022。
2. 已安装NuGet包管理器和Visual Studio的最新NuGetAPI版本。 （可选）
3. 在"NuGet包管理器→包源"下的"工具→选项"对话框中选择**nuget.org**选项。
4. 在示例项目中使用`NuGet`自动包还原功能的活动Internet连接。 如果要执行示例的计算机上没有活动的Internet连接，请按照Windows和Cmake包中的说明进行操作。

### 下载并运行示例

全部 Aspose.Words为C++ 示例托管在 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 您可以使用您喜欢的GitHub客户端克隆存储库或下载 [ZIP文件](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

获取存储库的副本后，您可能会发现:

- 所有示例都位于**Examples**文件夹中。
- 在Visual Studio 2022中创建了C++的Visual Studio个解决方案文件。

要运行示例，请在Visual Studio中打开解决方案文件并生成项目:

- 对于**API Reference**示例，结构基于类名，对于**Docs**示例，它主要基于 [开发人员受骗](/words/cpp/developer-guide/) 文件科。
- 第一次运行时，依赖项将通过NuGet自动下载。
- **Examples**根文件夹中的**Data**文件夹包含示例中使用的输入文件。
- 所有示例都可以作为单元测试运行。

## Windows与CMake包

### 软件要求和先决条件

在下载和运行示例之前，请确保您满足以下要求:

1. Visual Studio代码，Visual Studio 2022。
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. 从以下网址下载最新CMake软件包https://downloads.aspose.com/words/cpp

### 下载并运行示例

全部 Aspose.Words为C++ 示例托管在 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 您可以使用您喜欢的GitHub客户端克隆存储库，也可以下载 [ZIP文件](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

将文件夹`Aspose.Words.Cpp`和`CodePorting.Native.Cs2Cpp_*`放在存储库副本的根目录中。

所有示例都位于**Examples**文件夹中。

要运行示例，请从存储库副本的根目录运行以下命令:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Visual Studio的解决方案将在`Examples\DocsExamples\build`中生成

要运行示例，请在Visual Studio中打开解决方案文件并生成项目:

- 对于**API Reference**示例，结构基于类名，对于**Docs**示例，它主要基于 [开发人员受骗](/words/cpp/developer-guide/) 文件科。
- **Examples**根文件夹中的**Data**文件夹包含示例中使用的输入文件。
- 所有示例都可以作为单元测试运行。

## Linux

### 软件要求和先决条件

在下载和运行示例之前，请确保您满足以下要求:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. 从以下网址下载最新CMake软件包https://downloads.aspose.com/words/cpp

### 下载并运行示例

全部 Aspose.Words为C++ 示例托管在 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 您可以使用您喜欢的GitHub客户端克隆存储库或下载 [ZIP文件](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

将文件夹`Aspose.Words.Cpp`和`CodePorting.Native.Cs2Cpp_*`放在存储库副本的根目录中。

所有示例都位于**Examples**文件夹中。

要运行示例，请从存储库副本的根目录运行以下命令:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- 对于**API Reference**示例，结构基于类名，对于**Docs**示例，它主要基于 [开发人员受骗](/words/cpp/developer-guide/) 文件科。
- **Examples**根文件夹中的**Data**文件夹包含示例中使用的输入文件。
- 所有示例都可以作为单元测试运行。

{{% alert color="primary" %}}

请随时使用我们的 [Aspose.Words产品系列论坛](https://forum.aspose.com/c/words/8) 如果您在设置或运行示例时遇到任何问题。

{{% /alert %}}

## 有助于改进示例

如果您想添加或改进示例，我们鼓励您为项目做出贡献。 此存储库中的所有示例和展示项目都是开源的，可以在您的应用程序中自由使用。

您可以fork存储库，编辑源代码，并创建一个pull request来contribute。 如果发现有用，我们将查看更改并将其包含在存储库中。

## 请参阅

- [有关如何安装NuGet包管理器的详细信息](https://docs.microsoft.com/nuget/guides/install-nuget)
