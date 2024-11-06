---
title: 當載入資源時，網路應用程式的安全
second_title: Aspose.Words for .NET
articleTitle: 在載入外部資源時，網路應用程式的安全性
linktitle: 在載入外部資源時，網路應用程式的安全性
type: docs
description: "加載遠端資源，可能會是安全風險的來源。 使用C#看看常見的安全問題及其解決方案。"
weight: 100
url: /zh-hant/net/web-applications-security-when-loading-external-resources/
---

以預設方式， Aspose.Words for .NET 在進口文件或插入圖像時，可以載入遠端資源，例如圖片、CSS 風格表或外部 HTML 文檔。 這種行為可以讓您在不失去細節的情況下處理文件，但在該圖書館是網路應用程式的一部分的時候，可能會造成一些安全風險。

在這個文章中，我們將來看看在載入外部資源時可能會出現的常見的資訊安全問題，並提供如何避免這些問題的建議。

{{% alert color="primary" %}}

Aspose.Words 沒有作为防毒軟體的功能。 因此，它不提供關於該文件中是否存在惡意組件的資訊。 為確保您的資料安全，請自己檢視從外部取得的文件。 同時，Aspose.Words提供有關如何處理在加載外在資源時可能產生的問題的建議。

{{% /alert %}}

## 安全問題

在載入外部資源時有許多典型的安全問題。

### 透過連結圖像的資格證件揭露

基於 Windows 主機，包含對使用 UNC 路徑的資源的參照的文件，例如 *‘ \\example.com\a\b’* 會預設處理。 在一個域環境中，這會導致主機以散列格式將其域資格證發送至指定伺服器。

如果攻擊者能夠說服使用者或伺服器處理包含指向他們控制的主機之資源連結的文件，則該攻擊者將以 NTLM 密碼格式接收使用者或服務帳戶的憑證。 這樣的資料可以被重新使用在一個经典的傳送密碼攻擊中，讓攻擊者能以受害者用戶或服務帳戶的身份取得任何資源的存取權。

若該帳戶使用弱或可猜測的密碼，攻擊者可以額外進行密碼破解攻擊來恢復該帳戶的密碼，以便用於進一步惡意使用。

### 透過連結圖像的當地影像披露

就像上次那樣，處理一張有當地影像檔案連結的文件會導致該檔案被包含在最終文件中。 這可能會導致敏感資訊外洩。

### 拒絕服務

攻擊者可以上傳一篇文件，該文件會引用或包含極大尺寸的圖形-即所謂解壓炸彈。 當處理這些圖像時，該圖書館會消耗大量記憶體與中央處理器時間。

### Server - 利用連結內容的请求伪造

攻擊者可能建立一系列包含嵌入式連結的文件，這些連結指向內部 IP 位址與連接埠的常見組合，然後使用 Aspose.Words 函式庫將這些檔案提交給網際網路服務。

根據服務處理文件的時間長度，攻擊者可以判斷某個 IP/端口組合是否被防火牆過濾：

更長的處理時間表示伺服器所傳送的 TCP SYN 封包已被防火牆丟棄。
"- 快速處理時間表示已建立成功的連線"

## 安全問題的解決方案

為了解決上文所述的問題，並提高網路應用程式的安安全性，您可以使用 [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) 來控制或禁用外部資源的載入。

以下範例示範如何禁用外部圖像載入。

**`.NET`**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

以下程式碼示例顯示如何禁用遠端資源：

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

這篇文章是建立於獨立安全評估師諮詢公司 [report](ise-aspose-report.pdf) 的基礎上。

{{% /alert %}}
