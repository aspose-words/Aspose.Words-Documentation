---
title: 与 VBA Macros 合作于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与 VBA Macros 合作
linktitle: 与 VBA Macros 合作
description: "使用 VBA 文件项目 Java。 。 。 。"
type: docs
weight: 410
url: /zh/java/working-with-vba-macros/
---

Visual Basic 申请(VBA) Microsoft Word 是一种简单但强大的编程语言,可用于扩展功能. Aspose.Words API 提供三个类,以获取 VBA 项目源代码:

- 那个 [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) 课程提供 VBA 项目信息的获取
- 那个 [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) 类返回 VBA 项目模块的收藏
- 那个 [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) 类提供 VBA 项目模块的访问权限

## 创建 VBA 项目

Aspose.Words API 提供 [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) 在文档中获取或设置 Vba 项目的属性。

以下代码示例说明了如何创建VBA项目和VBA模块以及基本属性,例如. 名称和类型:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## 读取宏

Aspose.Words 也为用户提供了读取VBA宏的能力.

以下代码示例显示如何从文档中读取 VBA Macros:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## 修改宏

使用 Aspose.Words, 用户可以修改 VBA 宏.

以下代码示例显示如何使用 VBA Macros 修改 [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## 克隆 VBA 项目

与 Aspose.Words 也可以克隆VBA项目.

以下代码示例说明如何使用 VBA 项目克隆 [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) 创建现有工程副本的属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## 克隆 VBA 模块

如果需要,您也可以克隆 VBA 模块 。

以下代码示例说明如何使用 VBA 模块克隆 [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) 属性创建现有工程的复制件。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
