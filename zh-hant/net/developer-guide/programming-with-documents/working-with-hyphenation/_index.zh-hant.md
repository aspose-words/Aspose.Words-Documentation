---
title: 「在 C# 中使用分詞功能」
second_title: 「Aspose.Words for .NET」
articleTitle: 「與分詞一起工作」
linktitle: 「與分詞一起工作」
description: "透過 C# 來使用段落分詞，使文字排列更緊湊。 「它提供了進階演算法來工作與破字詞字典，使用 OpenOffice 字典。」"
type: docs
weight: 220
url: /zh-hant/net/working-with-hyphenation/
---

有時需要使用破折號，以使文件中的文字排列更緊湊。 在同時，很重要的是要理解語言的具体標記法可能會有所不同。

「目前，連字號的使用頻率不像以前高了，尤其是在英語文字中。」 「然而，使用此功能可能會對使用者文件造成嚴重影響，因為標點符號會影響排版，並因此影響輸出檔案的外觀，例如以 PDF 格式的檔案。」

「正確分詞，需要使用語言特定的分詞字典。Aspose.Words利用先進的演算法與這些字典一起工作，並讓你能得到與Microsoft Word相同的分詞。」

## 「斷詞字典」

由於不同語言對字詞破碎有不同的規範與規則，而正確的破碎方式最好的解決方法是使用特殊字典。 Aspose.Words 使用 Open Office 字典。

「在拼字檢查中，OpenOffice使用[Hunspell library](https://hunspell.github.io/)，它是TeX的切割算法的一般化。」 「此演算法允許自動非標準的連字號，使用競爭的標準和自訂的連字號模式。 Hunspell 使用 [Hyphen](https://github.com/hunspell/hyphen) 進行連字號。」

{{% alert color="primary" %}}

「分詞字典可從 [LibreOffice dictionaries GitHub](https://github.com/LibreOffice/dictionaries) 中取得。」 例如，[en-US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)。

{{% /alert %}}

{{% alert color="primary" %}}

由於「Microsoft Word」使用除OpenOffice字典之外的字典來進行破字分詞，由OpenOffice字典定義的一些詞語破字分詞可能和「Microsoft Word」的分詞不同。 「因此，有時我們必須建議顧客將必要的字型加入他們字典中，以便修正特定詞的連接。

{{% /alert %}}

## 「標點符號演算法」

Aspose.Words 支援 [the TeX hyphenation algorithm](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ，且可以重新使用 Open Office 的打字字典。

「以下 Aspose.Words 算法的特點應留意：」

"* 斷詞距離參數（LEFTHYPHENMIN、RIGHTHYPHENMIN、COMPOUNDLEFTHYPHENMIN、COMPOUNDRIGHTHYPHENMIN）在断詞字典中指定，都被忽略。 Aspose.Words 根據文書兼容性模式使用自己的距離參數組。"
「* 在 Aspose.Words 中，分詞算法支持 [composite hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound)。」 「不過，Aspose.Words會將包含字母和非字母字符的字符序列拆分為只包含字母的部分（單字），並分別進行破字。
  請注意，Microsoft Word 在複合字斷詞的邏輯取決於文書相容模式。
「* Aspose.Words 中的分詞算法不實作 [non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)。」 「非標準模式會被忽略。」

## 正在載入分詞詞典

要使用分詞功能，首先先註冊一個分詞字典。以下範例說明如何從檔案中載入特定語言的分詞字典：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載這個範例的範本檔案。」

{{% /alert %}}

「以下範例示範如何從串流載入指定語言的斷字字典：」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載此範例的範本檔案。」

{{% /alert %}}

在預先註冊分詞字典的替代方案中，可以只按需要註冊分詞字典。 「為了達到那個目標，請實作 [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) 介面並使用 [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/) 静态回调。」

接下來的程式碼範例示範了如何實作 **IHyphenationCallback** 介面：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## 「分詞標點對排版的影響」

「當將文字分成行時，Aspose.Words 會檢查每個字是否完全適合當前的行。」 「如果另一個字數太長而無法放在行尾，預設 Aspose.Words 會把它移動到下一行的開頭而不是破碎。」

「然而，分字功能可以用於 Aspose.Words 在字中插入破折號以消除對齊文本中的空隙或維持窄列中一致的行長。」 「這明顯會影響到行數，因此也會影響到頁面數量。」 也就是說，使用破折號功能會影響文件的排版。

## 「標點和對齊」（H&J）

「Microsoft Word 具有選擇打斷點的複雜邏輯，如果文字已對齊且打折線功能啟用。」 「簡而言之，Microsoft Word可能偏好縮小或拉長空間來避免行破損。」 很可能是這個邏輯是基於 [Knuth's article](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf) 的。

「Aspose.Words 實作其自己的 H&J 算法，它會產生與 Microsoft Word 相同的結果，並在輸出文件中提供相同的斷行。」

## 見也

* [Hyphen – hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatic non-standard hyphenation in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
