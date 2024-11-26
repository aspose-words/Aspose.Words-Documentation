---
title: 如何查找字段属性
second_title: Aspose.Words为Java
articleTitle: 查找字段属性
linktitle: 查找字段属性
description: "如何在Java中找到一些字段属性，如字段代码和字段结果"
type: docs
weight: 25
url: /zh/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)插入的字段。[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)返回[Field](https://reference.aspose.com/words/java/com.aspose.words/field/)对象。 这是一个facade类，它提供了快速查找字段的此类属性的有用方法。

下面的代码示例演示如何查找字段代码和字段结果:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

注意如果您只是在文档中查找合并字段的名称，那么您可以改为使用内置方法[GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)。

下面的代码示例演示如何获取文档中所有合并字段的名称。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
