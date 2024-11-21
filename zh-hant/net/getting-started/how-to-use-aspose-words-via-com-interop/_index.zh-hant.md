---
title:  Aspose.Words for .NET via COM Interop
second_title: Aspose.Words for .NET
articleTitle: 如何透過 Aspose.Words 使用 .NET 的 COM Interop
linktitle: 如何透過 Aspose.Words 使用 .NET 的 COM Interop
type: docs
description: "在 .NET 中，透過 COM Interop 使用 Aspose.Words，於 Python、PHP、VBScript、JScript 和其他程式語言中應用。"
weight: 130
url: /zh-hant/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

此主題中的資訊適用於你想透過 Aspose.Words 使用 .NET 的任何以下程式設計語言的場景："COM Interop

- ASP
- Delphi ([Example](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
"- JScript"
- Perl
- PHP
- PowerBuilder
- Python
"- VBScript"
- Visual Basic

## 與 COM Interop 一起工作

Aspose.Words for .NET 在 .NET Framework 的控制下執行，這稱為管理程式碼。 以上述語言撰寫的程式碼會運行在 .NET Framework 之外，被稱為非管理程式碼。 未管理的程式碼與 Aspose.Words 之間的互動透過名為 COM 的 .NET 功能發生在 Interop。

Aspose.Words 個物件是 .NET 物件，但透過 COM Interop 使用時，它們會作為 COM 物件出現在你的程式語言中。 因此，最好先確保你知道如何在你的編程語言中創造和使用 COM 物件，然後再開始使用 Aspose.Words。

以下是你將最終需要掌握的話題：

- 在你編程語言中使用 COM 個物件。 參閱你的程式語言的文件以及此文件中的語言特定主題。
"- 使用 COM 個由 .NET COM Interop 所公開的物件。" 在MSDN中查看 [Interoperating With Unmanaged Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) 和 [Exposing .NET Framework Components to COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com)。
"- Aspose.Words 文檔物件模型。" 請看 Aspose.Words、[Developer Guide](/words/net/developer-guide/) 和 [API Reference](https://reference.aspose.com/words/net/)。

## 以 Aspose.Words 在 .NET 中註冊 COM Interop

在 [installation Aspose.Words for .NET](/words/net/installation/) 之後，您需要使用 `regasm.exe` 工具為 Aspose.Words 註冊 COM Interop。

`regasm.exe`是一個包含在 .NET Framework SDK 的工具。 .NET Framework SDK 工具都位於 `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` 目錄，例如 *C:\Windows\Microsoft.NET\Framework\v4.0.30319*。

要取得 tlb 檔案，請在cmd中執行 `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase`，其中 `<installdir>`為您安裝 Aspose.Words 的目錄，通常為 `%USERPROFILE%\.nuget\packages\aspose.words\`。

## 與 Aspose.Words 透過 COM Interop 合作

### ProgIDs

ProgID stands for “programmatic identifier”, it is a name of a {0} class that you need to use in order to create an object.

目前，Aspose.Words定義了四個公開可創作的 COM 物件。 他們的 ProgIDs are：

"- ComHelper"
- 文檔
"- DocumentBuilder"
- 許可證

第 ProgIDs consist of the library name ("{0}") and the class name。

### 類型圖書館

在安裝時，Aspose.Words.tlb (COM 型式程式庫) 被複製到您的電腦中：

-Для .NET Framework 4.0 до **<installdir>\lib\net40-client**

如果您的編程語言（例如Visual Basic或Delphi）允許您參考`COM`類庫，那麼添加對**Aspose.Words.tlb**的參考，您將能夠在對象檢視器中看到所有Aspose.Words類、方法、屬性和枚舉。

### 建立 COM 個物件

建立一個 .NET 物件與建立一般 COM 物件相似。

**VBScript**

```
dim 助手
Set Helper = CreateObject(""Aspose.Words。ComHelper"")
 
```

一旦建立，你就能存取該物件的方法與屬性，就好像它是個 `COM` 物件：

**VBScript**

```
『 Dim doc』
 Set doc = helper.Open("C:\my.doc")
 
```

有些方法有過載，它們將透過 COM Interop 來公開，並加上數字尾標，但第一條方法會保持不變。 例如，`Document.Save` 方法重載變成 `Document.Save`、`Document.Save_2`、`Document.Save_3` 等。

若要了解更多訊息，請參閱此文件中的語言特定文章。

### 建立 Wrapping Assembly

如果您需要使用許多 Aspose.Words 類別、方法和屬性，請考慮建立一個包裝組（用 C# 或任何其他 .NET 程式語言來完成），以避免從非管理程式碼直接使用 Aspose.Words。

好的方法是開發一個引用 Aspose.Words 的 .NET Assembly，並用它來做所有的工作，只將最少的類別和方法暴露給未經管理的程式碼。 你的應用程式應該只使用你的外套程式庫就好了。

減少你需要透過 COM Interop 調用的類別和方法數量，可以簡化你的專案，因為透過 COM Interop 使用 .NET 類別通常需要高級技能。
