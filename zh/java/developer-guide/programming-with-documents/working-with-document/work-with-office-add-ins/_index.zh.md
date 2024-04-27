---
title: 与办公室的添加工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与办公室的添加合作
linktitle: 与办公室的添加合作
description: "Aspose.Words (单位:千美元) Java 提供各种课程,与办公室的添加工作。 您可以通过 Web 扩展添加 Task Pane 并自定义 paine 和扩展属性 。"
type: docs
weight: 50
url: /zh/java/work-with-office-add-ins/
---

有时,您可能想要给操作代码来修改文档的接口控制器的访问权限. Aspose.Words API 提供 `WebExtensions` namespace,它授予各种类自定义元素和属性,用于扩展XML词汇来代表 Office Add-ins.

WebExtensions 命名空间可以有条件地分为:

* 工作窗格的对象
* 与网页扩展件合作的对象

## 使用任务窗格

任务窗格是窗口右侧显示的界面表面 Microsoft Word。 。 。 任务窗格允许用户访问可以运行代码来修改文档的接口控制.

例如,使用 Aspose.Words API, 您可以添加任务加框并自定义其外观。

## 使用 Web 扩展

Web扩展是扩展Office应用程序能力并与Office文件内容互动的工具. Web扩展为Office客户提供了额外的功能,以改善用户体验.

Aspose.Words 提供使用 [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) 和 [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) ,并允许您自定义窗格和扩展属性。

以下代码示例显示如何创建任务窗体并添加具有基本属性的网络扩展任务窗体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

要看到任务窗格添加列表,请使用 [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) 属性。

以下代码示例显示如何获得这样的添加列表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

