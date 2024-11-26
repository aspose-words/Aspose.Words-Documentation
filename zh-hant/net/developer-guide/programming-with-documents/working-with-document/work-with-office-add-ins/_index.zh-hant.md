---
title: 在 C# 中工作於 Office 配件中
second_title: Aspose.Words for .NET
articleTitle: 在 Office 程式補件中工作
linktitle: 在 Office 程式補件中工作
description: ".NET 的 Aspose.Words 提供各種 C# 工作於 Office Add-in 的類別。 您可以透過網路 Erweiterung來新增 Task Pane，並可自訂 Task Pane 和 Extension 的設定。"
type: docs
weight: 50
url: /zh-hant/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

有時你可能會想讓使用者可以存取會執行程式碼的介面控制項，以修改文件。Aspose.Words API 提供`WebExtensions`命名空間，這會授予各種類別來客製化元素和屬性，以擴充代表 Office 附加程式的 XML 詞彙。

WebExtensions命名空間可以條件性地分為：

* 在任務欄工作時使用的物件
工作於網路 επέκταση的物件*

## 使用任務列

任務面板是 Microsoft Word 中顯示在視窗右邊的介面表面。 工作面板允許使用者存取可以執行程式碼以修改文件的介面控制。

舉例來說，使用 Aspose.Words API，你可以加入一個工作表增補程式並自訂它的樣子。

## 使用網頁拡張套件

Web 拡張機能是能強化 Office 應用程式功能並與 Office 文檔內容互動的工具。 Web Extension 在改善使用者體驗時為 Office 客戶端提供額外的功能。

Aspose.Words 提供使用 [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) 和 [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) 類別在作業欄中加入 Web Extension 的功能，也讓您可以自訂分層和 Extension 的設定。

以下程式碼示例說明如何建立並加入網路擴充功能的任務面板，其具有基本的屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

要查看工作表外掛程式清單，請使用 [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) 屬性。

接下來的程式碼範例示範了如何取得這些附加程式的清單。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
