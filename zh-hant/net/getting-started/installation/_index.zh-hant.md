---
title: 「安裝」
second_title: 「Aspose.Words為.NET」
articleTitle: 「安裝」
linktitle: 「安裝」
description: "使用 Visual Studio 工具（如 Manage NuGet Packages 或 Package Manager Console）以及 MSI 安裝器，安裝 .NET 的 Aspose.Words。 在 C# 中使用 Full Trust 權限組。"
type: docs
weight: 10
url: /zh-hant/net/installation/
---

在開始之前，請確定您的機器符合 [system requirements](/words/net/system-requirements/) 的要求。

「本文說明如何在您的電腦上安裝 Aspose.Words for .NET。」

## 以 Manage NuGet Packages 安裝或更新 Aspose.Words .NET 的 {#install-or-update-aspose-words-for-net-using-nuget}

「 NuGet 是下載和安裝 [Aspose.Words for .NET](https://www.nuget.org/packages/Aspose.Words/) API 的最簡單方式。」 「要做到這點，請按照以下步驟：」

1. 「從選單中打開 * Microsoft Visual Studio * 和 * Manage NuGet Packages * 以打開包管理員」
2. 搜尋"aspose"或"aspose.words"來找到所需的Aspose API<br>
      <img src="aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3。 選擇所需的 Aspose API，並按一下 "安裝"

「選取的 API 會下載並引用在您的專案中。」

「您也可以透過 Aspose.Words 使用 *Manage NuGet Packages* 來更新 .NET 到所需的版本。」

## 安裝或更新 Aspose.Words 用的 Package Manager Console

您也可以透過「* Package Manager Console *」來安裝或更新 Aspose.Words for .NET API。 要做到這點，請按照以下步驟進行：

1. 「從選單中打開 * Microsoft Visual Studio * 和 * Package Manager Console * 以打開套件管理員控制台 <br>」
      <img src="aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. 輸入命令`Install-Package Aspose.Words` 并按 Enter 在您的應用程式中安裝最新的全放<br/>
   <img src="aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/> <br>
   「{{% alert color="primary" %}}此外，您還可以在命令中加入`-prerelease`後缀來指定應安裝最新的版本，包括熱修檔。{{% /alert %}}」
3。 一旦下載, 你就會看到確認訊息<br/>
   <img src="aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/> <br>
   「{{% alert color="primary" %}}如果您不熟悉該 [Aspose EULA](https://about.aspose.com/legal/eula/)，建議先閱讀網址中提供的許可證。{{% /alert %}}」
4. 您現在可能會發現 Aspose.Words 在您的應用程式中已成功新增和參考<br/>
      <img src="aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

「在 * Package Manager Console * 中，您也可以使用 `Update-Package Aspose.Words` 命令來檢查 Aspose.Words 套件是否有更新，如果有的話，就可以安裝。」 「您也可以加上 `-prerelease` 修飾字尾來更新最新的發行。」

## 以安裝程序安裝 Aspose.Words for .NET

「 Aspose.Words for .NET可透過直接從 [downloads section](https://releases.aspose.com/words/) 下載 MSI 安裝程式來安裝。」

{{% alert color="primary" %}}

您必須登入才能下載安裝程式。 如果您尚未註冊，您可以免費註冊。

{{% /alert %}}

「要安裝 Aspose.Words for .NET，請按照以下步驟進行：」

1. 從 [downloads section](https://releases.aspose.com/words/) 下載 `Aspose.Words_`{LatestVersion}.msi
2. 點擊已下載的檔案, 以啟動設定精靈, 遵循設定精靈指令<br/>
      <img src="aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. 當設定精靈完成安裝，要求的檔案將會在提供之目錄路径中的資料夾中可用<br>
      <img src="aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4 在「Visual Studio」中打開您的方案/專案。
5. 在 *解決方案探索器* 中右鍵點擊您的項目並添加已安裝組件的參考
6. Aspose.Words 已安裝的 .NET 組件將出現在 Assembly 部分的延伸下– 僅選擇所需的 DLL 元件<br>
      <img src="aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. 工 作 「最後，點選OK」

## 在共享 Server 環境運行的考慮因素

所有Aspose .NET組件都建議用 *Full Trust* 權限組來執行。 「這是因為Aspose .NET元件有時需要存取位於虛擬目錄以外的地方的registry設定和檔案，例如閱讀字體。」 「此外，`Aspose.NET`組件是基於核心 .NET 系統類別的，有些也需要 * Full Trust * 權限才能在某些情況下執行。」

網路服務供應商提供不同公司多個應用程式時，通常會強制執行 *中等信任* 的安全層級。 在 .NET 2.0 的情況下，這樣的資訊安全層會對以下限制施加要求，可能會影響 Aspose.Words 的運作能力：

- **RegistryPermission** 不可用。 這意味著您無法存取註冊表，而該註冊表是必要的，以便在輸出文件時列印已安裝的字體。
「- **FileIOPermission** 被限制。」 這意味著你只能在你的應用程式的虛擬目錄階層中存取檔案。 「這也意味著在出口時字體無法被讀取。」

「上述原因，建議以 Aspose.Words 的權限運行 Full Trust 」。 你可能會發現有些庫功能在具有中等信任權限的不同任務中會正常工作，但有些則不會，例如渲染。 這可能與 GDIP+ 影像處理呼叫有關。
