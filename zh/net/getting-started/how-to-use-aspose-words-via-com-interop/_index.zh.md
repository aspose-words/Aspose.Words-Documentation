---
title: 通过 COM Interop 的 .NET 格式的 Aspose.Words
second_title: .NET 格式的 Aspose.Words
articleTitle: 如何通过 COM Interop 使用 Aspose.Words 进行 .NET
linktitle: 如何通过 COM Interop 使用 Aspose.Words 进行 .NET
type: docs
description: "通过 Python、PHP、VBScript、JScript 和其他编程语言中的 COM Interop 使用 Aspose.Words for .NET。"
weight: 130
url: /zh/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

本主题中的信息适用于您想要通过以下任一编程语言通过 COM Interop 使用 Aspose.Words for .NET 的场景：

- ASP
- Delphi ([例子](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## 使用 COM Interop

Aspose.Words for .NET 在 .NET Framework 的控制下执行，这称为托管代码。用上述所有语言编写的代码都在 .NET Framework 之外运行，称为非托管代码。非托管代码和 Aspose.Words 之间的交互通过称为 COM Interop 的 .NET 工具进行。

Aspose.Words 对象是 .NET 对象，但当通过 COM Interop 使用时，它们在编程语言中显示为 COM 对象。因此，在开始使用 Aspose.Words 之前，最好确保您知道如何在您的编程语言中创建和使用 COM 对象。

以下是您最终需要掌握的主题：

- 在您的编程语言中使用 COM 对象。请参阅本文档中的编程语言文档和特定于语言的主题。
- 使用 .NET COM Interop 公开的 COM 对象。请参阅 MSDN 中的 [使用非托管代码进行 Interop 操作](https://learn.microsoft.com/en-us/dotnet/framework/interop/) 和 [将 .NET Framework 组件暴露给 COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com)。
- Aspose.Words 文档对象模型。请参阅 Aspose.Words [开发者指南](/words/zh/net/developer-guide/) 和 [API Reference](https://reference.aspose.com/words/zh/net/)。

## 将 Aspose.Words 注册为带有 COM Interop 的 .NET

在 [安装](/words/zh/net/installation/) 之后，您需要使用 `regasm.exe` 实用程序将 Aspose.Words 注册为 COM Interop。

`regasm.exe` 是 .NET Framework SDK 中包含的工具。所有 .NET Framework SDK 工具都位于 `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` 目录中，例如 *C:\Windows\Microsoft .NET\Framework\v4.0.30319*。

要获取 tlb 文件，请在 cmd 中运行 `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase`，其中 `<installdir>` 是安装 Aspose.Words 的目录，通常是 `%USERPROFILE%\.nuget\packages\aspose.words\`。

## 通过 COM Interop 使用 Aspose.Words

### ProgIDs

ProgID 代表"程序标识符"，它是创建对象时需要使用的 `COM` 类的名称。

目前，Aspose.Words 定义了四个可公开创建的 COM 对象。他们的 ProgIDs 是：

- 通讯助手
- 文档
- 文档生成器
- 执照

ProgIDs 由库名称（"Aspose.Words"）和类名称组成。

### 类型库

在安装过程中，Aspose.Words.tlb（COM 类型库）将复制到您的计算机以：

- 适用于 .NET Framework 4.0 到 **<installdir>\lib\net40-客户端**

如果您的编程语言（例如 Visual Basic 或 Delphi）允许您引用 `COM` 类型库，那么添加对 **Aspose.Words.tlb** 的引用，您将能够在对象浏览器中查看所有 Aspose.Words 类、方法、属性和枚举。

### 创建 COM 对象

.NET 对象的创建与普通 COM 对象的创建类似：

**VBScript**

```
昏暗帮手
设置助手 = CreateObject("Aspose.Words.ComHelper")
 
```

创建后，您可以访问该对象的方法和属性，就像它是 `COM` 对象一样：

**VBScript**

```
昏暗的文档
设置 doc = helper.Open("C:\my.doc")
 
```

有些方法具有重载，它们将通过 COM Interop 公开，并添加数字后缀，但第一个方法保持不变。例如，`Document.Save` 方法重载变为 `Document.Save`、`Document.Save_2`、`Document.Save_3` 等。

有关更多信息，请参阅本文档中特定于语言的文章。

### 创建包装器组件

如果您需要使用许多 Aspose.Words 类、方法和属性，请考虑创建包装器程序集（使用 C# 或任何其他 .NET 编程语言），这将有助于避免直接从非托管代码使用 Aspose.Words。

一个好的方法是开发一个 .NET 程序集，该程序集引用 Aspose.Words 并使用它完成所有工作，并且仅向非托管代码公开最少的类和方法集。然后，您的应用程序应该仅与您的包装器库一起使用。

减少需要通过 COM Interop 调用的类和方法的数量可以简化您的项目，因为通过 COM Interop 使用 .NET 类通常需要高级技能。
