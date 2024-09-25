---
title: 内存要求
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 内存要求
linktitle: 内存要求
description: "有多少记忆 Aspose.Words (单位:千美元) Java 是否需要与文件合作? 学习细节."
type: docs
weight: 10
url: /zh/java/memory-requirements/
---

Aspose.Words 提供多种特点,与不同格式的文件合作。 必须指出,对文档文件的最大大小没有限制。 Aspose.Words 可以处理或渲染。 唯一的限制是您一方可用的RAM( 记忆) 数量 。

## 多少记忆 Aspose.Words 需求

通常情况下 Aspose.Words 需要比文档大小多几倍的内存才能在内存中构建文档模型. 例如,如果文档大小为 1 MB, Aspose.Words 需要 10-20 MB 内存来构建其 Document Object Model (单位:千美元)DOM在记忆中。 乘数取决于格式,因为有些格式比其他格式更紧凑. 例如,DOCX比DOC和RTF更紧凑,DOC比RTF更紧凑.

没有确切的方法来估计有多少记忆 Aspose.Words 在处理任何特定文档文件时实际消耗。 如你所见 Java 在类中存储数据, 每个类实例都使用 JVM 的一些内存 (单位:千美元)Java 虚拟机)内部目的. 因此,任何段落或格式化文本(甚至包含一个字符)在加载到 DOM。 。 。 。 此外, Java 垃圾收集引擎使用一个复杂的算法来确定执行内存收集的最佳时间,使得难以确定真正的内存消耗.

## 如何计算内存量

让我们考虑两份文件:

1. DOCX "A" 文件 - 0.35 MB大小(2 000页),仅文本
2. DOCX "B" 文档 – 0.35 MB 大小(仅1页),内部有 PNG 图像

众所周知,DOCX,ODT等许多现代格式都是简单的ZIP档案. 因此,我们得到以下计算算法:
1. 解脱。 未zipped文档"A"有20 MB大小,文档"B"有0.4 MB大小
2. 国家 将文档装入模型(构建其 Document Object Model - 说吧 DOM:
* 创建 DOM 第一个文档"A"需要49 MB 大小
* 创建 DOM 第二文档"B"只需要2 MB大小。
3个 测量将这些文件提交PDF所需的内存量. 为了这次行动 Aspose.Words 要求:
  * "A"文档中的294 MB
  * 用于"B"文件的7 MB

因此,如你所见,对输入文档大小没有线性依赖. 有许多因素可以影响所需的RAM大小--文档格式,其复杂性和结构,图像数量及其格式,以及许多其他因素.

## 如何精确计算内存乘数

数千份真实文件的实验显示 Aspose.Words 需要比平均文档大小多几倍的内存才能在内存中构建一个文档模型,并进行简单的操作,如流格式之间的转换, mail merge, 剖析,替换等. 有时我们说的是乘数2,有时是20。

更复杂的操作,如渲染(转换成固定的页面格式),更新字段,分页等,对于一些文档来说,比装入的文档所分配的内存需要20倍的资源 Aspose.Words DOM。 。 。 。

如果您的剖析结果显示可能存在内存问题 Aspose.Words, 请联系我们 [技术支助](/words/zh/java/technical-support/) 并包括所有诊断信息。

## 另见

* [渲染](/words/zh/java/rendering/)
* [Mail Merge 报告](/words/java/mail-merge-and-reporting/)
* [与外地合作](/words/zh/java/working-with-fields/)