---
title: 在C#中列印文件
second_title: 「Aspose.Words for .NET」
articleTitle: 「以程式方式列印文件或透過對話方塊」
linktitle: 「以程式方式列印文件或透過對話方塊」
description: "在 Server 上列印文件，使用未管理的 XpsPrint API 或透過選定的印表機以設定和列印預覽對話方塊為 C#。"
type: docs
weight: 55
url: /zh-hant/net/print-a-document-programmatically-or-using-dialogs/
---

這篇文章描述了如何從一個 ASP.NET 或 Windows 服務應用程式列印文字處理文件，使用 Aspose.Words 和 `XpsPrint` API。 「它也示範了如何在設定、列印預覽和列印進度對話方塊中列印文件的方法，以及如何縮短首次呼叫以列印文件所需的時間。」

## 「透過 `XpsPrint` API 在 Server 上列印文件」

「本節是針對希望從.NET應用程式提交 Aspose.Words 之 XPS 文檔給未受管理之 XpsPrint API 的使用者。」

### 「列印文件時在 ASP.NET 或 Windows Service 應用程式所能接受的限制」

「當你開發一個會產生一些列印輸出之 .NET 應用程式時，你通常可以使用 *System.Drawing.Printing* 命名空間中提供的類別或 Windows Presentations Foundation（WPF）類別。」 「然而，如果應用程式是 ASP.NET 或 Windows 的服務應用程式，則列印選項受到限制，因為 Microsoft 不鼓勵使用此方法。」 「.NET Framework 列印類別不受服務應用程式支援。」 「這包括 ASP 頁面，通常會在伺服器服務的背景下運行。」

在 *System.Drawing.Printing* 命名空間中的類別不支援用於 Windows 服務或 ASP.NET 應用程式或服務，嘗試使用它們可能會導致服務表現降低、在執行時出現異常狀況和其他問題。 「使用 WPF 來構建 Windows 服務也是不支援的。」 由於 WPF 是呈現技術，該 Windows 服務需要適當的權限來執行涉及使用者互動的視覚操作。 如果 Windows 服務沒有這些權限，可能會出現意外結果。

「The Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) object提供了一組[Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index)方法來列印文件。」 這些方法使用 *System.Drawing.Printing* 命名空間中定義的 .NET 列印類別。 「許多 Aspose.Words 客戶成功地利用它們在伺服器端應用程式中列印。 「然而，這篇文章展示了符合 Microsoft 建議的列印替代方法。」

### 在 Server 上列印文件的方法

「根據Microsoft的方式來列印文件的最正確方法是使用未管理的XpsPrintAPI。」 「此 API 可在 Windows 年 7 月 Windows 日 Server 年 2008 年 R2 及 Windows 年 Vista 日可用，前提是已安裝平台更新 Windows 年 Vista。

「由於 Aspose.Words 可輕易將任何文件轉換成 XPS，你只需要寫出將 XPS 文件傳遞給 `XpsPrint` API 的程式碼即可。」 「唯一的問題是，這個 `XpsPrint` API 是未管理的，需要對 Platform Invoke 技術有所了解。」

要列印文件，Aspose.Words 提供了一個 **XpsPrintHelper** 類別，其中包含一個简单的 Print 方法，您只需指定以下參數（詳見文章 [Print Document via XPS API](/words/net/missing-features-in-openxml/)）：

你要列印的文件。
"- 印表機名稱。"
「工作名稱（可選）。」
"-布尔值，指定程序是否在打印作业完成之前等待。" 「因此，此系統會檢查文件是否成功列印或在傳送列印工作後立即返回。」 「在最後的案例中，無法辨別列印工作是否成功。」

如果在提交或列印文件時遇到任何問題，此方法會丟出一個例外。

以下範例說明了如何使用 **XpsPrintHelper** 類別列印文件：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

當你執行這個專案，它會列印樣本文件到指定的列印機上，並打開一個控制台來顯示列印結果。 「當列印工作完成或出現錯誤時，系統會顯示成功訊息或已拋出的例外文字。」

您也可以透過 [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) 類別設定一些列印設定。 例如，在 Microsoft Word 中，每個部分都有定義的列印槽，並且是列印機特定的。 「因此，您可以透過 [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) 和 [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) 的屬性來程式化地變更這些值。」

{{% alert color="primary" %}}

在某些情況下，你可能需要使用此範例而不 Aspose.Words。 例如，當你已經有個 XPS 文檔並且只想從 ASP.NET 或 Windows 服務應用程式列印它。 「接著，你可以直接删除 `Print` 這個方法。」

{{% /alert %}}

「**XpsPrintHelper**.**Print**」方法有兩種重載。 「第一個超負載接受一個 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 物件，並將其儲存到 `MemoryStream` 的 XPS 格式。」 「第二個超載接受一個 `Stream` 物件。」 「流必須包含以 XPS 格式的文件。」

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip) 下載方法過載的例子。」

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載這個範例的樣本檔案。」

## 在設定與列印預覽對話框中列印文件。

在處理文書時，經常需要將它們印到指定的印表機上。 透過利用列印預覽對話方塊來視覚性地檢查已列印的文件會如何出現並選擇適當的列印選項是有幫助的。

「Aspose.Words 沒有內建對話方塊或表單，但它實作了 [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) 類別，其基礎是 **PrintDocument** 類別。」 「這個類別的實例，可以傳遞給 **PrintPreviewDialog** 這個樣式來預覽及列印文件。」 「此外，[PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8)類別定義了傳送給印表機的輸出。

以下範例示範如何使用這些類別來列印來自 Aspose.Words 的文件，透過「列印預覽」和「設定」對話方塊：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

「**AllowSomePages**」屬性可讓您選擇要列印的頁面範圍，若此屬性的值為「True」，則會出現。 預設中，該範圍內所有頁面都選取進行列印。

{{% /alert %}}

為了優化列印預覽對話方塊的設定，請指定 **PrintPreviewDialog** 類別的性質。

## 「列印多頁於同一個紙張」

當您要列印文件時，總是好事可以有更多彈性。 透過 .NET 和 Aspose.Words，您可以輕鬆地調整列印作業，以實作您的自訂邏輯，同時定義文件在列印的頁面上會呈現出何種樣貌。

正如前節所述，Aspose.Words 實作 **MultipagePrintDocument** 類別，該類別基於 .NET 的 **PrintDocument** 類別。 這意味著現有的 .NET 列印基礎架構可被用於以方式使用，使得列印與列印預覽對話方塊可用於在列印前可視化文件。 「**MultipagePrintDocument**」這個類別提供了在一個紙張上列印幾頁的能力。

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

「此程式碼範例的結果如圖示：」

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](print-a-document-programmatically-or-using-dialogs-1.png)

## 在列印文件時隱藏列印進度對話方塊

「印刷進度對話方塊在透過 [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) 方法列印文件時不會出現。」 「不過，當用其他 [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) 方法進行列印時，會出現此對話方塊。」 「在這種情況下，若要防止「列印」對話方塊出現，您應在此方法中指定有效的列印設定和標準列印控制器，如下示例所示：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載此範例的樣本檔案。」

## 如何縮短第一通打電話時間以列印一份文件？

「Aspose.Words會讀取並存儲 **PrinterSettings** 的某些欄位，來減少列印時間。」 「你可以透過呼叫 [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) 這個方法來實現。」 此方法在列印開始前會先被呼叫，若之前尚未執行。 「請注意，總共要花的時間，無論是呼叫該方法的或不呼叫都差不多。」 「使用此方法的目的，是為了縮短 [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) 方法第一次調用的時間。」 以下範例顯示了如何使用此方法：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## 見也

- [Platform Update for Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
