---
title: 在 C# 中使用 VBA 巨集
second_title: 「 Aspose.Words for .NET」
articleTitle: 「與VBA巨集一起工作」
linktitle: 「與VBA巨集一起工作」
description: "使用 C# 在 문서 VBA 專案中工作。"
type: docs
weight: 410
url: /zh-hant/net/working-with-vba-macros/
---

「Visual Basic for Applications (VBA) Aspose.Words for Microsoft Word是一個簡單但強大的編程語言，可以用來擴展功能。API提供三個類別來獲取對VBA項目源代碼的訪問:」

"- [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) 類別提供對 VBA 專案資訊的存取"
"- [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) 類別會傳回 VBA 專案模組的集合"
"- [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/)類別提供存取VBA專案模組的服務"
- [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) 枚舉定義了 VBA 專案中模型的類別。 「該模組可以是程序化模組、文件模組、類別模組或設計師模組」。

## 建立 Visual Basic 專案

「Aspose.Words API 在該文件中為 VbaProject 提供 [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) 屬性以獲取或設定。」

以下程式碼示例說明如何建立 VBA 專案與模組，以及基本屬性。 名稱與類型：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## 「讀取宏」

「Aspose.Words 也提供使用者讀取 VBA 程式碼的能力。」

以下程式碼範例示範如何從文件中讀取 VBA 巨集：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## 「撰寫或修改巨集」

「使用 Aspose.Words，使用者可修改 VBA 巨集指令。」

以下範例示範如何透過 [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) 屬性修改 VBA 巨集指令：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## 複製 VBA 專案

「使用 Aspose.Words，也能夠複製 Visual Basic for Applications 專案。」

接下來的程式碼範例示範了如何透過 [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) 屬性複製 Visual Basic for Applications (VBA) 專案，這會建立專案的複本：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## 複製 VBA 模組

「您也可以在需要時複製VBA模組。」

以下代碼示範了如何使用 [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) 屬性克隆 VBA 模塊，形成現有項目的複製：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## 「與 VBA 專案引用一起工作」

Aspose.Words API 提供 [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) 類別與 VBA 專案引用，以表示一組 VBA 專案引用。

接下來的程式碼範例示範如何從 VBA 專案的參照集合中移除某些參照：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}