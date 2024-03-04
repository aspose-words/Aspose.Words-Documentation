---
title: 打印 C# 格式的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 以编程方式或使用对话框打印文档
linktitle: 以编程方式或使用对话框打印文档
description: "使用非托管 XpsPrint API 或通过具有 C# 格式的设置和打印预览对话框的选定打印机打印 Server 上的文档。"
type: docs
weight: 55
url: /zh/net/print-a-document-programmatically-or-using-dialogs/
---

本文介绍如何使用 Aspose.Words 和 `XpsPrint` API 从 ASP.NET 或 Windows 服务应用程序打印字处理文档。它还演示了使用"设置"、"打印预览"和"打印进度"对话框打印文档的方法，并解释了如何减少首次调用打印文档的时间。

## 通过 `XpsPrint` API 打印 Server 文档

本部分适用于想要使用 Aspose.Words 从 .NET 应用程序向非托管 XpsPrint API 提交 XPS 文档的用户。

### 在 ASP.NET 或 Windows 服务应用程序中打印文档的限制

在开发生成一些打印输出的 .NET 应用程序时，通常可以使用 *System.Drawing.Printing* 命名空间中提供的类或 Windows Presentation Foundation (WPF) 类。但是，如果应用程序是 ASP.NET 或 Windows 服务应用程序，则打印选项会受到限制，因为 Microsoft 不鼓励使用此方法。服务应用程序不支持 .NET Framework 打印类。这包括 ASP 页面，它们通常在服务器服务的上下文中运行。

不支持在 Windows 服务或 ASP.NET 应用程序或服务中使用 *System.Drawing.Printing* 命名空间中的类，尝试使用它们可能会导致服务性能下降、运行时异常和其他问题。同样不支持使用 WPF 构建 Windows 服务。由于 WPF 是一种演示技术，因此 Windows 服务需要适当的权限才能执行涉及用户交互的可视化操作。如果Windows服务没有这样的权限，可能会出现意想不到的结果。

Aspose.Words [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 对象提供了一系列 [Print](https://reference.aspose.com/words/zh/net/aspose.words/document/methods/print/index) 方法来打印文档。这些方法使用 *System.Drawing.Printing* 命名空间中定义的 .NET 打印类。有许多 Aspose.Words 客户成功地利用它们在服务器端应用程序中进行打印。尽管如此，本文演示了一种符合 Microsoft 建议的替代打印方法。

### 打印 Server 文档的方法

根据 Microsoft 打印文档的正确方法是使用非托管 XpsPrint API。如果安装了 Windows Vista 平台更新，则此 API 可用于 Windows 7、Windows Server 2008 R2 和 Windows Vista。

由于 Aspose.Words 可以轻松地将任何文档转换为 XPS，因此您只需编写将 XPS 文档传递为 `XpsPrint` API 的代码。唯一的问题是 `XpsPrint` API 不受管理，并且需要一些平台调用技术的知识。

为了打印文档，Aspose.Words 提供了一个 **XpsPrintHelper** 类，其中包含一个简单的 Print 方法，您只需在其中指定以下参数（更多详细信息请参阅文章 [通过 XPS API 打印文档](/words/net/missing-features-in-openxml/)）：

- 您要打印的文档。
- 打印机名称。
- 职位名称（可选）。
- 布尔值，指定程序是否应等待打印作业完成。因此，系统要么检查文档是否打印成功，要么在发送打印作业后立即返回。在后一种情况下，无法确定打印作业是否成功。

当提交或打印文档时遇到任何问题时，该方法将抛出异常。

下面的代码示例显示了如何使用 **XpsPrintHelper** 类打印文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

当您运行该项目时，它会在指定的打印机上打印示例文档，并打开控制台窗口以显示打印结果。当打印作业完成或出错时，系统将显示成功消息或抛出异常的文本。

您还可以使用 [PageSetup](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/) 类设置一些打印设置。例如，在 Microsoft Word 中，打印机托盘是为每个部分定义的并且是特定于打印机的。因此，您可以通过 [FirstPageTray](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/firstpagetray/) 和 [OtherPagesTray](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/otherpagestray/) 属性以编程方式更改每个部分的这些值。

{{% alert color="primary" %}}

在某些情况下，您可能需要在没有 Aspose.Words 的情况下使用此示例。例如，当您已有 XPS 文档并且只想从 ASP.NET 或 Windows 服务应用程序打印它时。然后，您可以删除 `Print` 方法。

{{% /alert %}}

**XpsPrintHelper**.**Print** 方法有两个重载。第一个重载采用 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 对象并将其保存为 XPS 格式的 `MemoryStream`。第二个重载接受 `Stream` 对象。该流必须包含 XPS 格式的文档。

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip) 下载方法重载的示例。

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下载本示例的示例文件。

## 使用设置和打印预览对话框打印文档

在处理文档时，通常需要将其打印到选定的打印机。利用打印预览对话框直观地检查打印文档的显示方式并选择相关的打印选项会很有帮助。

Aspose.Words 没有内置对话框或表单，但基于 .NET **PrintDocument** 类实现了 [AsposeWordsPrintDocument](https://reference.aspose.com/words/zh/net/aspose.words.rendering/asposewordsprintdocument/) 类。可以将此类的实例传递到 **PrintPreviewDialog** 表单以预览和打印文档。此外，[打印预览对话框](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) 类定义了传输到打印机的输出。

以下示例演示如何使用这些类通过"打印预览"和"设置"对话框从 Aspose.Words 打印文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

如果 **AllowSomePages** 属性的值为 True，则您可以选择要打印的页面范围。默认情况下，选择该范围内的所有页面进行打印。

{{% /alert %}}

要优化"打印预览"对话框设置的外观，请指定 **PrintPreviewDialog** 类的属性。

## 在一张纸上打印多页

打印文档时具有更大的灵活性总是有益的。使用 .NET 和 Aspose.Words，您可以轻松地微调打印操作，通过定义文档在打印页面上的显示方式来实现您的自定义逻辑。

与上一节一样，Aspose.Words 实现了 **MultipagePrintDocument** 类，该类基于 .NET **PrintDocument** 类。这意味着现有的 .NET 打印基础设施可以通过打印和打印预览对话框在打印之前实现文档的可视化。 **MultipagePrintDocument** 类提供了在一张纸上打印多个页面的能力。

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

该代码示例的结果如下所示：

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## 打印文档时隐藏打印进度对话框

通过 [Print](https://reference.aspose.com/words/zh/net/aspose.words/document/print/) 方法打印文档时，不会出现打印进度对话框。但是，在使用其他 [Print](https://reference.aspose.com/words/zh/net/aspose.words.rendering/asposewordsprintdocument/) 方法打印时会出现此对话框。在这种情况下，为了防止出现"打印"对话框，您应该在此方法中指定有效的打印机设置和标准打印控制器，如下例所示：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下载本示例的示例文件。

## 如何减少第一次调用打印文档的时间

Aspose.Words 读取并缓存 **PrinterSettings** 的某些字段以减少打印时间。您可以通过调用 [CachePrinterSettings](https://reference.aspose.com/words/zh/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) 方法来实现此目的。如果之前没有执行过该方法，则在打印开始之前调用该方法。请注意，调用和不调用此方法的打印总时间几乎相同。使用该方法的目的是减少第一次调用[Print](https://reference.aspose.com/words/zh/net/aspose.words/document/print/)方法的时间。以下代码示例展示了如何使用此方法：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## 也可以看看

- [Windows Vista 平台更新](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
