---
title: 转换为PDF/A和PDF/UA
second_title: Aspose.Words对于C++
articleTitle: 了解转换为PDF/A和PDF/UA的功能
linktitle: 了解转换为PDF/A和PDF/UA的功能
description: "转换为PDF/A-1, PDF/A-2, PDF/A-4 和PDF/UA使用C++。 选择使用С++转换文档的最佳PDF标准。"
type: docs
weight: 35
url: /zh/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF是一种固定的页面格式，在用户中非常流行，并受到各种应用程序的广泛支持，因为PDF文档在任何设备上看起来都是一样的。 出于这个原因，转换为PDF是Aspose.Words的一个重要特征。

PDF本身是一种复杂的格式，因为它具有特定的文件结构，图形模型，字体嵌入和一些复杂的输出功能，如文档结构标签，加密，数字签名和可编辑表单。 此外，将文档转换为PDF需要多个计算阶段，这些阶段既复杂又耗时。

在本节中，我们将考虑使用各种PDF标准的文档时可能出现的主要问题，并描述解决这些问题的选项。

## PDF标准Aspose.Words支持哪些

Aspose.Words现在允许用户使用PDF/A-1，PDF/A-2和PDF/A-4格式以及PDF/UA-1:

* PDF/A-1有严重的限制，如透明度和一些压缩选项被禁止
* PDF/A-2消除了PDF/A-1的一些限制，例如支持透明度和图层效果或嵌入OpenType字体
* PDF/A-4假定修订的一致性级别：常规的PDF/A-4一致性等同于以前版本的U级一致性，并且删除了a级一致性
* PDF/UA-1内容应根据ISO32000-1:2008进行标记和标准化

PDF/A是PDF的ISO-标准化版本，用于电子文件的归档和长期存储。 与此同时，PDF/UA是PDF的另一个ISO标准化版本，旨在确保使用辅助技术的残疾人的无障碍性。 要指定符合PDF标准的级别，请使用[Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/)属性。 由于存储条件，PDF/A文档必须嵌入所有字体并禁用加密，而PDF/UA只能嵌入所有字体。

在本节中，我们将仔细研究使用PDF/A或PDF/UA-1文档。

## 有关ISO的PDF标准

要了解有关不同PDF标准的更多信息，请查看以下ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## 请参阅

* [如何在Adobe Acrobat中编辑文档结构标签](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [如何在Microsoft Word中检查或编辑文本语言](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [如何更改Adobe Acrobat中的文本语言](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [如何在Microsoft Word中向形状、图片、图表、SmartArt图形或其他对象添加替代文本](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [如何向标签添加替代文本和补充信息](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) （或在阅读相同的信息 [Adobe Acrobat用户指南](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [如何为文本设置ActualText条目](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)，"为缩写术语、公式或非Unicode符号添加实际文本"部分
* [通用Windows符号字体的Unicode映射](http://www.alanwood.net/demos/webdings.html)

