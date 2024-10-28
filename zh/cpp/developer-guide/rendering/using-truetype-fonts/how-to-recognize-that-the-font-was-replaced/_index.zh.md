---
title: 如何识别字体在C++中被替换
second_title: Aspose.Words对于C++
articleTitle: 如何识别字体被替换
linktitle: 如何识别字体被替换
description: "如果您不确定文档布局发生更改的原因或某些字体看起来不像预期的那样，字体替换警告消息可以提供帮助。"
type: docs
weight: 13
url: /zh/cpp/how-to-recognize-that-the-font-was-replaced/
---

有时，可能不清楚为什么文档布局发生了变化，或者为什么某些字体看起来不像预期的那样。 在这种情况下，IWarningCallback接口实现的字体替换警告消息来拯救。 他们有[FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/)警告类型和标准描述文本格式，"字体'<OriginalFont>'尚未找到。 使用'<SubstitutionFont>'字体代替。 原因：<Reason>"，原因如下:

- "文档中的替代名称–-用于替换[AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig替换"-用于字体配置规则的替换
- "表替换"-用于按表规则替换
- "字体信息替换"-用于按字体信息规则替换
- "默认字体替换"-用于默认字体规则的替换
- "第一个可用字体"-用于替换为第一个可用字体
