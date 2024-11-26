---
title: 授權與訂閱
second_title: Aspose.Words for .NET
articleTitle: 授權與訂閱
linktitle: 授權與訂閱
description: "Aspose.Words for .NET提供不同的購買方案，並提供免費試用和使用 C# ライセンス及訂閱政策進行評估的 30 天臨時授權。"
type: docs
weight: 55
url: /zh-hant/net/licensing/
timestamp: 2024-10-24-11-44-28
---

有時，為了更好地了解系統，你想盡快地進入程式中。 為了使此過程更簡單，Aspose.Words提供不同的購買方案或提供免費試用和30天臨時使用許可證。

{{% alert color="primary" %}}

請注意，有一些一般性的政策和做法來引導您如何評估、正確地授權以及購買我們的產品。 您可以在 [Purchase Policies and FAQ](https://purchase.aspose.com/policies/) 部分中找到他們。

{{% /alert %}}

## 免費試用或臨時授權

Aspose.Words是開發人員可以在購買前試用的驚人軟體。

### 免費試用

試用版與購買版相同 – [Trial version](https://releases.aspose.com/words/) 在您加入一些程式碼以適用該許可證時即會自動取得許可證。

試用版 Aspose.Words 在指定的許可證中不包含功能，提供完整的產品功能，但在加載和儲存文件時在文件的上方插入評估水印，限制文件的最大大小為幾百個段落。

### 臨時使用許可證

若您欲在試用版限制下測試 Aspose.Words，也可以請求 30 天的臨時許可。 有關更多詳細資訊，請參閱 [Get a Temporary License](https://purchase.aspose.com/temporary-license/) 頁面。

## 購買的授權

在購買後，您需要申請許可證檔案或將許可證檔案包含為嵌入資源。 本節說明如何做到這一點的選項，並對一些常見的疑問進行評論。

{{% alert color="primary" %}}

您必須設定許可證：

* 僅限於每個應用程式領域一次

* 在使用其他任何 Aspose.Words 類別之前

{{% /alert %}}

{{% alert color="primary" %}}

您可以在 [Pricing Information](https://purchase.aspose.com/pricing/words/family/) 頁面中找到定價資訊。

{{% /alert %}}

### 保護您購買的授權

購買了許可證後，您需要仔細閱讀第 [Protecting Your Purchased License](https://purchase.aspose.com/orders/protecting-your-license-file) 頁面上的資訊，來保護您的許可證檔案。 請注意，此頁面僅在您持付費授權時可用看。

### 申請選項

許可證可以在各種位置應用：

"* 顯式路徑"
*包含 `Aspose.Words.dll` 的文件夹
*包含從 `Aspose.Words.dll` 調用之組件的資料夾
* 包含進入組件的資料夾 (你的 `.exe`)
* 該組件中的內嵌資源稱為 `Aspose.Words.dll`。
* 計量許可證 – 新的授權機制

當您在應用程式中參考 `Aspose.Words.dll` 時，此程式庫會複製到您的輸出目錄（除非該筆記錄的特性的 *Copy Local* 設定為 false）。 最簡單的方式通常是將執照檔放在與 `Aspose.Words.dll` 相同的資料夾中，只需指定檔案名稱而不指定路徑即可。

{{% alert color="primary" %}}

請使用 [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) 方法授權一個組件。

點擊 **SetLicense** 多次並不傷人，但會浪費 CPU 時間。

呼叫 [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) 多次也沒有害處，但它會浪費 CPU 時間，而且會讓消耗累積得不正確。

{{% /alert %}}

#### 透過檔案或串流物件申請使用許可

在開發你的應用程式時，在使用 Aspose.Words 類別之前，請先在開機程式碼中調用 **SetLicense**。

##### 從檔案中載入許可證

透過 [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) 方法，您可以試著在嵌入資源或組件目錄中找到執照檔以供進一步使用。

接下來的程式碼範例示範了如何從資料夾初始化許可證：

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### 從串流物件載入許可證

以下程式碼範例示範了如何透過另一個 [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) 方法從串流初始化執照：

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### 將許可證檔包含為內嵌資源

您可以將授權憑證與應用程式打包，確保不會遺失，方法是將其包含在呼叫 Aspose.Words 的組件之一中的內嵌資源中。 若要將檔案以內嵌資源包含在裡面，請按照以下步驟：

1. 在 Visual Studio 中，透過選單中的 **檔案 | 新增現有項目.** 將 .lic 檔案加入到專案中。
2. 選取解決方案視窗中的檔案，然後在屬性視窗中設定『**嵌入資源的構建動作**。
3. 在您的程式碼中，請呼叫 **SetLicense** 該傳送資源檔簡短名稱給它。

#### 適用計量版授權

Aspose.Words 讓開發者能夠应用計量鍵。 這是一個新的授權機制。

新的許可證機制將與現有的許可證方法一起使用。 那些想要根據使用 API 功能而計費的客戶，可以使用計量授權。

完成所有取得此類許可證所需的步驟後，您將收到密鑰，而非許可證檔案。 這個計量鍵能透過特別為此目的而設的 [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) 類別來適用。

請不要經常使用 **SetMeteredKey** 方法，以使此許可方法正確的累積消耗並將其報告給我們。 只需实例化 Aspose.Words 库，调用 **SetMeteredKey** 一次，然后留下实例化的库进行重复利用。

以下程式碼範例示範了如何設定限定的公開及私鑰：

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

通常只需在程式啟動時，就一次性應用計量授權。 不過，如果計量式授權機制在 24 小時內無法與 Aspose 伺服器溝通，Aspose.Words 將退出授權模式並切換到試用模式。 為了避免這樣的案例，您應該定期檢查授權狀態--如果 Aspose.Words 轉為試用模式，請重新申請計量授權。

{{% alert color="primary" %}}

請注意，您必須在正確使用計量版時有穩定的網際網路連線，因為計量機制需要與我們服務的不斷互動來進行正確的計算。 詳細資料請參閱[Metered Licensing FAQ](https://purchase.aspose.com/faqs/licensing/metered/)部分。

{{% /alert %}}

### 更改授權檔案名稱

許可證檔案名稱不需要是Aspose.Words .lic。 你可以根據喜好替它改名，然後在您的應用程式中設定授權時使用該名稱。

### 無法找到授權檔名" 例外狀況

當您購買並下載許可證時，Aspose網站會將許可證檔案名為*Aspose.Words.LIC*。 您透過瀏覽器下載許可證檔案。 在这种情况下，有些浏览器会把该许可证文件认定为 XML，并附加 .xml 扩展名，所以您电脑中的完整文件名为 *Aspose.Words.lic.XML*。

當 Microsoft Windows 設定隱藏已知檔案類型的檔案擴展名（不幸的是，這是大多數 Windows 安裝預設的），授權文件會顯示為 *"Aspose.Words"。 LIC* 在 Windows 探索者。 您可能會認為這是一個真實的檔案名稱，並傳入 **SetLicense** *Aspose.Words.lic* 來呼叫它，但其實沒有這樣一個檔案，因此產生了這個異常狀況。

若要解決問題，請將檔案改名，並移除隱形的 ".xml" 擴展名。 我們也建議您在 Microsoft Windows 中關閉隱藏拡張名選項。

## 使用多個Aspose產品

如果您在應用程式中使用多個Aspose產品，例如 Aspose.Words 和 `Aspose.Cells`，以下是幾個有用的小貼士：

* 個別為 Aspose 的每個產品設定授權。 即使您拥有所有组件的单个许可文件，例如 "Aspose.Total.lic"，但您仍需要为您在应用程序中使用的所有 Aspose 产品分别调用 **SetLicense** 。
* 使用完全修飾的許可類別名稱。 每個Aspose產品都有自己的命名空間中一個 **License** 類別。 例如， Aspose.Words 有 [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/)，而 `Aspose.Cells` 有 `Aspose.Cells`。许可证类。 使用完全資格的類別名稱，可以避免關於哪個許可證適用於哪個產品的混淆。
