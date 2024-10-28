---
title: 如何查找字段属性
second_title: Aspose.Words对于C++
articleTitle: 查找字段属性
linktitle: 查找字段属性
description: "如何在C++中找到一些字段属性，如字段代码和字段结果。"
type: docs
weight: 25
url: /zh/cpp/find-field-properties/
---

使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)插入的字段。[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)返回[Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/)对象。 这是一个facade类，它提供了有用的方法来快速查找字段的某些属性。

下面的代码示例演示如何查找字段代码和字段结果:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

注意如果您只在文档中查找合并字段的名称，则可以改为使用内置的[GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/)方法。

下面的代码示例演示如何获取文档中所有合并字段的名称:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}