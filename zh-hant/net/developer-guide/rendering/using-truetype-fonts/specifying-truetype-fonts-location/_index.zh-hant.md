---
title: 在C#中指定TrueType字體位置
second_title: 「Aspose.Words for .NET」
articleTitle: 請指定 TrueType 字型位置。
linktitle: 請指定 TrueType 字型位置。
description: "指定各種 TrueType 字型來源：系統資料夾、使用者來源、透過 C#從串流載入字型、檔案系統或記憶體。"
type: docs
weight: 30
url: /zh-hant/net/specifying-truetype-fonts-location/
---

「本主題描述在查詢 TrueType 字型時 Aspose.Words 的預設動作，包括作業系統的特定差異，並示範如何指定使用者字型來源。」

「 [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/)」類別用於指定各種字體來源。 有幾個 **FontSourceBase** 類別的實作。

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

部分類別的實作細節如下述。

## 從系統載入字型 {#loading-fonts-from-system}

「有一個特色的 [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) 類別，總是用來預設使用。」 它代表系統上所有已安裝的 TrueType 字型。 「因此，只要以 **SystemFontSource** 和其他任何所需的資料源來創建一個資料源清單：」

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "fonts-folders.cs" >}}

預設在 [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) 中定義了一個 **SystemFontSource** 類別的單一實例。 在不同的作業系統上，字型可能位於不同的位置。 「不過，每個文件使用一個 **FontSettings** 實例並非最佳解決方案。」 在大多數情況下，使用 [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) 應該就夠了。

「每份文件的實例只需要在有必要的時候才使用不同的字體來源來服務於不同文件，這是一個罕見的情况。」 使用多個 **FontSettings** 物件會降低效能，因為它們沒有共享記憶體。

### Where Aspose.Words Looks for TrueType Fonts on Windows

在多數情況下，Windows 使用者不會因為字體缺失或排版錯誤而遇到重大問題。 一般來說，Aspose.Words會通過一個文件，當它遇到字體聯結時，成功從系統目錄中獲取字體資料。

在 Windows，Aspose.Words 首先從 %windir%\Fonts 文件夹中取得所有可用字體。 這樣的設定大部分情況下都能讓你成功。 「如果你需要，就只指定你自己的字體目錄。 Aspose.Words為.NET還會尋找在HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts реє程鍵中註冊的其他字體。」 此外，Windows 10 可讓使用者目前使用者的字體安裝。 字體被放入 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 文件夹中，也指定在 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 登錄目錄，其中 Aspose.Words 會尋找這些字體。

「如果一篇文件包含嵌入字型，Aspose.Words可以從該文件中讀取相應的字型資料，並以此來製作文件的排版。」 「文件也可能包含在系統目錄中不存在的字體之連結，在這種情況下，下面的案例會發生。」

「- 使用者可以透過 **FontSettings** 類別來設定新的字體來源」
- Aspose.Words可以嘗試用類似的字體來取代缺失的字體

{{% alert color="primary" %}}

「Aspose.Words 在伺服器上呈现通常無法與配置在具有中度信任層級的 ASP.NET 應用程式一起使用，因為它禁止存取登錄檔並限制存取檔案系統。」

{{% /alert %}}

### 「非Windows系統中的字體」

「Aspose.Words 會在系統字體資料夹中尋找字體。」 這些資料夾的清單可以用 [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) 方法來看。 若無支援的字體，Aspose.Words將使用內建預設字體 Fanwood.ttf。

因為 Windows 和非 Windows OS 的字體計量不同，Aspose.Words 盡一切可能尋找與原稿相似的字體並建立類似的原稿排版。 「然而，這並不總是可能的。」 在這些情況下，應該使用 **FontSettings** 類別來加入自訂字型或替換規則。

#### Where Aspose.Words Looks for TrueType Fonts on Linux

不同 Linux 分發商可能會將字體儲存在不同的資料夾中。 Aspose.Words 在多個位置尋找字體。 預設 Aspose.Words 在所有以下位置中搜尋字型：* /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts這個預設動作會在大多數 Linux 版本上有效，但並非保證會每次都有效；在這種情況下，你可能需要指定 true 字型的位置。 「要做到這一點，您必須知道您的 Linux 分發版中 TrueType 字體是安裝在哪裡。」

#### 「在 Mac OS X 中，Where Aspose.Words Looks for TrueType Fonts」

在Mac OS X中，Aspose.Words 在「/Library/Fonts」資料夾中尋找字體，這是Mac OS X中TrueType字體的標準位置。 「雖然此設定大部分情況下都能為您提供服務，但在某些特定情況下，您可能需要自己指定字體目錄。」

## 從文件夹中加載字體 {#loading-fonts-from-folder}

「如果正在處理的文件包含系統上沒有的字体連結，或您不想將它們加到系統的目錄中，或是您沒有權限，那麼最好的解決方法就是使用 [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) 方法加入您自己的字體目錄。」 這將讓系統源文件替換為用戶源文件。Aspose.Words不再在登錄表或 Windows\Font 文件夹中尋找字體，而是只掃描指定的文件夹（或文件夹）中的字體。 這個 [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) 方法會傳回對應的值。

### 指定單個或多個字體資料夾

「第 [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) 及 [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) 方法是對第 **SetFontSources** 方法的捷徑，使用一個或多個 [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) 實例。」 這些方法是用來指示Aspose.Words該在哪裡尋找字型。 如果資料夾不存在或無法存取，Aspose.Words 只是忽略此資料夾。 如果所有文件，包括字型替換的來源，都被忽略，Aspose.Words 將會使用 Fanwood 字型作為預設。

以下範例示範了如何設定目錄或來源，以便在字體渲染或嵌入時，Aspose.Words 會使用它來尋找 TrueType 字體：

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "true-type-fonts-folder.cs" >}}

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載這個範例的範本檔案。」

額外的布林參數控制字體是否會掃描到所有子文件夹，因此掃描指定文件夹的所有子文件夹。 「以下範例示範如何設定 Aspose.Words 在渲染或嵌入字體時在多個目錄中搜尋 TrueType 字體：」

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "multiple-folders.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載此範例的範本檔案。

{{% /alert %}}

請注意這些優先權。 若在不同的字體來源中，有相同家族名稱及風格的字體，Aspose.Words會從優先順序較高的來源中選擇字體。 請參閱下面「優先級」欄的描述。

如果你根本不想要用系統字型，Aspose.Words 讓你可以忽略它們並使用自己的字型：

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "default-instance.cs" >}}

### 優先權財產

「[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/)」屬性是在不同字體來源中，具有相同家族名稱和風格的字體時使用。 在這種情況下，Aspose.Words從具有較高優先值的來源中選擇字體。 例如，在系統文件夹裡有一種舊版本的字體，而客戶在一個自訂的文件夹中加上了一個新版本的相同的字體。

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "fonts-folders-with-priority.cs" >}}

## 從流{#loading-fonts-from-stream}載字體

Aspose.Words 提供 [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) 類別，它讓我們可以從流中加載字體。 「若要使用串流字型資料源，使用者必須從 **StreamFontSource** 建立一個派生類別並提供 [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) 方法的實作。」 「**OpenFontDataStream** 方法可以幾次都叫。」 「它將會在第一次被調用，當Aspose.Words掃描提供的字體來源來獲取可用字體的清單。」 在文件中使用了字型時，它會用來解析字型資料並將其嵌入到某些輸出格式中。**StreamFontSource**可能會有用，因為它只會在需要時載入字型資料，而不是在 [FontSettings](https://fontsettings/) 的生命週期內將它們儲存在記憶體中。

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "resource-steam.cs" >}}

**StreamFontSource** 是 [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) 的替代品，因為總是可以將流載入記憶體並傳給 **MemoryFontSource**。 「差別在於，**MemoryFontSource**是儲存在記憶體中，而**StreamFontSource**是一需要的時候才會載入，並且立刻被丟棄。」 「但它可能像上文所述的那樣被加載幾次。」 在有些情況下，**MemoryFontSource**更佳，而在另一些情況下，**StreamFontSource**。

## 儲存和載入字型搜尋快取

「當第一次搜尋字體時，Aspose.Words會循環這些由使用者指定的字體來源並根據這些來源的資料形成字體搜尋快取。」 因此，緩存將收集有關可用字體的資訊：字體家族、樣式、完整字體名稱等等。 在接下來的呼叫中，Aspose.Words 在字型查找快取中透過字型名稱搜尋所需的字型，然後解析指定的檔案以使用該字型。

「從所有可用字體檔案中解析的過程，以初始化緩存是相當耗時。Aspose.Words 讓您透過 [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) 方法儲存並載入緩存，以解決效能問題。」 也就是說，使用者可以從一個檔案中載入之前保存的快取資料，跳過解析所有可用字型檔的步驟。

{{% alert color="primary" %}}

使用相同的 **SaveSearchCache** 方法來更新緩存。

{{% /alert %}}

以下範例顯示如何預先準備字體來源並產生字體搜尋快取：

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

以下範例說明在處理文件之前，如何設定字型來源並載入搜尋快取：

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

「字体搜索快取对于 Aspose.Words 在 AWS Lambda 的集成非常有用，但会受到一些限制。」 例如，在主容器大小上，因此也在字體數量上。

「此緩存也是當字型透過網路載入時適合的其他場景。」 「或是在沒有方式儲存已載入的 `FontSettings` 實例時，」

{{% /alert %}}

## 取得可用的字体列表 {#get-a-list-of-available-fonts}

如果你想要取得可用的字型清單，例如可以用來呈現 PDF 文檔的字型，你可以使用 [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) 方法，如下面的程式碼範例所示。 「[PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/)」這類別指定了為「Aspose.Words」字體引擎可用之物理字體的資訊。

{{< gist "aspose-words-gists" "7e64f6d40825be58a8c12f1307c12964" "available-fonts.cs" >}}
