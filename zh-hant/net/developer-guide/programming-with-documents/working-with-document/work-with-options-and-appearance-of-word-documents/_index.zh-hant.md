---
title: 「選項與檔案的外觀」
second_title: 「Aspose.Words for .NET」
articleTitle: 「在 Word 文檔的選項與外觀上工作」
linktitle: 「在 Word 文檔的選項與外觀上工作」
description: "以考慮不同 Microsoft Word 版本之間的差異，使用 C# 控制 Word 文檔的外觀。"
type: docs
weight: 40
url: /zh-hant/net/work-with-word-document-options-and-appearance/
---

「有時你可能需要更改文件的外觀，例如設定語言偏好或每頁的行數。Aspose.Words 提供控制文件如何顯示的能力以及一些額外的選項。」 「本文描述這些可能的情況。」

## 設定文档顯示選項

「您可以使用 [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) 類別控制文件在 Microsoft Word 中的顯示。」 「例如，您可以用 [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) 屬性設定檔案的縮放值，或用 [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) 屬性設定瀏覽模式。」

接下來的程式碼範例示範了如何確保在 Microsoft Word 中開啟文件時，文件會以 50% 的尺寸來顯示。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載此範例的範本檔案。」

{{% /alert %}}

{{% alert color="primary" %}}

「Microsoft Word 2013 不會將任何縮放因子寫入文件，而且不再從文件中寫入的值中設定預設縮放值，而是似乎會使用最後一個打開的文件中的縮放因子。」

{{% /alert %}}

## 「設定頁面顯示選項」

若您想要設定每行文字數，請使用 [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) 屬性。 您也可以為 Word 文檔設定每頁的行數 - 使用 [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/)屬性來取得或設定文檔格子中的每頁行數。

{{% alert color="primary" %}}

「在 Microsoft Word 中，您可以在『頁面設定』對話方塊的『文件格格子』標籤中設定相同的參數，前提是已安裝亞洲語言支援。」

{{% /alert %}}

接下來示範如何為 Microsoft Word 文檔設定每行字數與每頁字數：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## 「設定語言偏好」

在 Microsoft Word 中顯示檔案取決於為此檔案設定哪些語言為預設值。 「如果預設語言沒有設定，Microsoft Word會從『設定Office語言首選』對話方塊中取得資訊，例如您可以在Microsoft Word 2019的『檔案→選項→語言』中找到這個對話方塊。」

「使用 Aspose.Words，您也可以使用 [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) 類別設定語言偏好。」 此外，請注意您的文件的正確顯示，必須將 Microsoft Word 設定為該資料載入過程應當匹配的版本 – 這可以通过使用 [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) 屬性來完成。

{{% alert color="primary" %}}

「如果您的 Aspose.Words 生成的文件看起來不像預期中的樣子，請檢視 **LanguagePreferences** 和 **MswVersion** 的值並根據需要調整它們，使其與 Microsoft Word 版本的設定相符。」

{{% /alert %}}

接下面的範例展示了如何將日文加入編輯語言：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

接下來的程式碼範例展示了如何設定俄語為預設編輯語言：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## 「為特定的字體版本優化文件」

「[OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/)」方法可讓您優化文件內容，以及特定版本-Microsoft Word-的預設-Aspose.Words-行為。 「您可以使用此方法來防止 Microsoft Word 在載入文件時顯示「相容模式」標籤。」 「請注意，您可能還需要將 `Compliance` 屬性設定為 ISO29500_2008_Transitional 或以上版本。」

「以下範例說明如何為 Microsoft Word 2016 年優化文件內容：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
