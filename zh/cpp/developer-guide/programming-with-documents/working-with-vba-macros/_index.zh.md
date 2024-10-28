---
title: 在C++中使用VBA宏
second_title: Aspose.Words对于C++
articleTitle: 使用VBA宏
linktitle: 使用VBA宏
description: "使用 C++ 处理文档 VBA 项目。"
type: docs
weight: 410
url: /zh/cpp/working-with-vba-macros/
---

Visual BasicFor Applications(VBA)forMicrosoft Word是一种简单但功能强大的编程语言，可用于扩展功能。 Aspose.WordsAPI提供了三个类来访问VBA项目源代码:

- [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/)类提供对VBA项目信息的访问
- [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/)类返回VBA项目模块的集合
- [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/)类提供对VBA项目模块的访问

## 创建VBA项目

Aspose.WordsAPI提供`Document.VbaProject`属性以获取或设置文档中的VbaProject。

下面的代码示例演示如何创建VBA项目和VBA模块以及基本属性，例如Name和Type:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## 读取宏

Aspose.Words还为用户提供了读取VBA宏的能力。

下面的代码示例演示如何从文档中读取VBA宏:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## 编写或修改宏

使用Aspose.Words，用户可以修改VBA宏。

下面的代码示例演示如何使用[SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/)属性修改VBA宏:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## 克隆VBA项目

使用Aspose.Words也可以克隆VBA项目。

下面的代码示例演示如何使用创建现有项目副本的[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)属性克隆VBA项目:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## 克隆VBA模块

如果需要，您还可以克隆VBA模块。

下面的代码示例演示如何使用创建现有项目副本的[Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/)属性克隆VBA模块:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
