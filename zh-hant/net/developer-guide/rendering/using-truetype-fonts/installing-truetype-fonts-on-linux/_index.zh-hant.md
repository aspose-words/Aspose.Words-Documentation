---
title: 在C#中安装TrueType字体到Linux
second_title: 「Aspose.Words for .NET」
articleTitle: 在「Linux」上安裝 TrueType 字體。
linktitle: 在「Linux」上安裝 TrueType 字體。
description: "「 Aspose.Words for .NET 可透過以 C# 在最準確的環境下，在 Linux 機器上以 Microsoft Word 所建立的文件進行渲染。 要做到這一點，請從一台 Windows 機器中複製字體檔案，或在您的 Linux 機器上安裝 `TrueType` 的字體套件，使用 C#。"
type: docs
weight: 20
url: /zh-hant/net/installing-truetype-fonts-on-linux/
---

「你經常會用 Aspose.Words 來將 DOC 或 DOCX 文檔轉換成 PDF 格式。」 「如果您需要在 Linux 機器上執行此操作，此主題將協助您學習如何確保 Aspose.Words 以最佳準確度 Render 您的文件。」

「通常，需要轉換的 DOC 和 DOCX 檔案是以 Microsoft Word 在 Windows 或 Mac OS 的作業系統中建立的。」 "因此，用於 DOC 和 DOCX 文檔的字體大多是「Windows 字體」或「Office 字體」，這些字體是 Microsoft Windows 或 Microsoft Office 安裝的字體。」 這些字體包括 Arial、Calibri、Cambria、Century Gothic、Courier New、Garamond、Tahoma、Verdana、Wingdings，以及許多其他。

「問題在於，上面列出的 `TrueType` 字體不是 Linux 分發版預設安裝的。」 「如果你拿一份一般性的 DOCX 文檔，它是以 Cambria 字型格式化過的，並且嘗試將其轉換成 PDF 格式，在 Linux 中，Aspose.Words 將會使用不同的字型，因為 Cambria 並非可用。 因此，PDF 文檔與原始 DOCX 文檔的外觀會有所不同。 為了確保由 Aspose.Words 轉換的文件與原始檔案盡可能相像，您必須在您的 Linux 系統上安裝「Windows」字體。

在 Linux 系統上取得 TrueType 字體有兩種主要方式：

-從 Windows 機器複製 .TTF 和 .TTC 檔案至你的 Linux 機器
- 安裝一個 `TrueType` 字體套件，例如 *msttcorefonts*

## 「從一台 Windows 機器複製字體」

「在 Linux 系統中取得 TrueType 字型快速又簡單的方法，是將 `C:\Windows\Fonts` 機上 Windows 目錄中的 .TTF 和 .TTC 檔案複製到 Linux 機上的某個目錄。」 您不需要在 Linux 上 instal 或註冊這些字體；您只需要透過在 Aspose.Words 中使用 [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) 類別來指定字體的位置即可。

{{% alert color="primary" %}}

「確認是否需要字體授權，並仔細閱讀MS fonts在任何 Linux 作業系統安裝前之使用條款。」

{{% /alert %}}

## 安裝 `TrueType` 字型套件

有許多 Linux 套件，包含 Microsoft TrueType 字型，你可以下載並安裝到你的 Linux 電腦上。 「正確的步驟可能會因各種不同的 Linux 分發而有所不同。」

- 在 Ubuntu 中，使用 Synaptic 包管理器來找到並安裝 *ttf-mscorefonts-installer* 包。
「- 在openSUSE中，使用Yast2 → 軟體管理來找到並安裝 *fetchmsttfonts* 套件。」
"- 採用在 OFPL 下授權的 Liberation 字體，作為標準 Windows（Arial、Times New Roman 和 Courier New）字體的替代品。"
"-對於適合其他 Linux 發行的字體套件，在網路上搜尋可用的檔案。"

「在安裝這個套件之後，Aspose.Words會找到這些字型在你電腦上的資料夾，並在處理文件的時候使用。」

## 另看

「 - [Liberation Fonts](https://github.com/liberationfonts) 為標準 Windows 字型之替代方案」
