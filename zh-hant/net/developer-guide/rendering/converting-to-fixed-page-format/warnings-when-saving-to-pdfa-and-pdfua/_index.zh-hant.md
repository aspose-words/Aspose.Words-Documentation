---
title: 保存為PDF/A和PDF/U時警告
second_title: 「Aspose.Words for .NET」
articleTitle: 儲存到 PDF/A 和 PDF/UA 時，可存取性問題的警告
linktitle: 儲存到 PDF/A 和 PDF/UA 時，可存取性問題的警告
description: "「PDF/A 和 PDF/UA 對文件內容進行存取性要求。 在 C# 中儲存到 PDF/A 或 PDF/UA 時，如果問題違反符合性，則會發出警告。"
type: docs
weight: 29
url: /zh-hant/net/warnings-when-saving-to-pdfa-and-pdfua/
---

「PDF/A和PDF/UA格式對文件內容有許多可存取性要求，無法自動從Word到PDF轉換時來滿足這些要求。」 這些要求在*「與 PDF/A 或 PDF/UA 一起工作」*的上一篇文章中說明。 「這些問題有些已經發出警告了。」

「警告會顯示在儲存到 PDF/A 或 PDF/UA 格式時，如果問題違反符合規定，就會出現。」 例如，如果在儲存為 PDF/UA 時缺少文件標題，則會出現警告；但若是儲存為 PDF/A 時則不會出現。

所有警告都是 [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.輕微格式化損失** 和 [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.pdf**。 「以下是新描述警告值的一覽表：」

| 描述警告值 | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "文件標題缺失。 這違反合規性要求。 輸出文件將不完全符合 。" || {{< emoticons/tick >}} |
| 文件中的标题不是相連的 。 「這違反了合規要求。」 輸出文件將不完全符合 。" || {{< emoticons/tick >}} |
| "文件中有沒有其他文字的形狀. 「這違反了合規性要求。」 輸出文件將不完全符合 。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| 文件裡有沒有其他文字的表格 這違反了合規性要求。 輸出文件將不完全符合 。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| 文件中有超文本。 這違反了合規性要求。 輸出文件將不完全符合 。" || {{< emoticons/tick >}} |
| "文件中有沒有頭列/列的表格. 「違反了合规要求。」 輸出文件將不完全符合 。" || {{< emoticons/tick >}} |
| "文件包含Unicode PUA字符. 這違反了合規性需求。 輸出文件將不完全符合 。" | {{< emoticons/tick >}} ||
| "文件包含... . 不def glyphs. 這違反了合規性要求。 輸出文件將不完全符合 。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |