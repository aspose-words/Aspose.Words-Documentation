---
title: 在Java中使用Office加载项
second_title: Aspose.Words为Java
articleTitle: 使用Office加载项
linktitle: 使用Office加载项
description: "Aspose.WordsforJava提供了用于处理Office加载项的各种类。 您可以通过web扩展添加任务窗格，并自定义窗格和扩展属性。"
type: docs
weight: 50
url: /zh/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

有时您可能希望授予对运行代码以修改文档的接口控件的访问权限。 Aspose.WordsAPI提供`WebExtensions`命名空间，该命名空间授予各种类以自定义扩展XML词汇表以表示Office加载项的元素和属性。

WebExtensions命名空间可以有条件地分为:

* 用于使用任务窗格的对象
* 用于使用web扩展的对象

## 使用任务窗格

任务窗格是在Microsoft Word中显示在窗口右侧的界面表面。 任务窗格允许用户访问可以运行代码来修改文档的界面控件。

例如，使用Aspose.WordsAPI，您可以添加任务窗格外接程序并自定义其外观。

## 使用Web扩展

Web扩展是扩展Office应用程序功能并与Office文档内容交互的工具。 Web扩展为Office客户端提供了额外的功能，以改善用户体验。

Aspose.Words提供了使用[WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/)和[TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/)类添加任务窗格类型的Web扩展的功能，还允许您自定义窗格和扩展属性。

下面的代码示例演示如何创建任务窗格并添加到具有基本属性的web扩展任务窗格:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

要查看任务窗格外接程序的列表，请使用[WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes)属性。

下面的代码示例演示如何获取此类加载项列表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

