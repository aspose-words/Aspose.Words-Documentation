---
title: 使用 Python 中的 Office 加载项
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用 Office 加载项
linktitle: 使用 Office 加载项
description: "Aspose.Words for Python via .NET 提供了用于使用 Office 加载项的各种类。您可以通过 Web 扩展添加任务窗格并自定义窗格和扩展属性。"
type: docs
weight: 50
url: /zh/python-net/work-with-office-add-ins/
---

有时您可能希望授予对运行代码以修改文档的界面控件的访问权限。 Aspose.Words API 提供 [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) 模块，该模块授予各种类来自定义元素和属性，扩展用于表示 Office 加载项的 XML 词汇表。

WebExtensions命名空间可以有条件地分为：

* 用于使用任务窗格的对象
* 用于使用 Web 扩展的对象

## 使用任务窗格

任务窗格是显示在 Microsoft Word 窗口右侧的界面表面。任务窗格允许用户访问可以运行代码来修改文档的界面控件。

例如，使用 Aspose.Words API，您可以添加任务窗格加载项并自定义其外观。

## 使用网络扩展

Web 扩展是扩展 Office 应用程序功能并与 Office 文档内容交互的工具。 Web 扩展为 Office 客户端提供附加功能以改善用户体验。

Aspose.Words 提供了使用 [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) 和 [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) 类添加任务窗格类型的 Web 扩展的功能，并且还允许您自定义窗格和扩展属性。

以下代码示例演示如何创建任务窗格并添加到具有基本属性的 Web 扩展任务窗格：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

要查看任务窗格加载项的列表，请使用 [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) 属性。

以下代码示例展示了如何获取此类加载项列表：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
