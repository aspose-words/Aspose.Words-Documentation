---
title: 什麼新?
second_title: Aspose.Words for .NET
articleTitle:  Aspose.Words for .NET的新功能是什麼？
linktitle:  Aspose.Words for .NET的新功能是什麼？
type: docs
description: "Aspose.Words for .NET 每天都擴展和提升。 在這個頁面，你可以學習關於產品巨大的和最令人感興趣的特點。"
weight: 10
url: /zh-hant/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-11-18-12-56-02
---

本頁面描述最近版本引入的最有趣新 Aspose.Words 功能。

## Aspose.Words for .NET 24.9、24.10

Aspose.Words 24.9 透過DocumentBuilder 引入了群組形狀插入和StructuredDocumentTag 插入，增強了帶有刻度的徑向圖表渲染，透過XAdES-EPES 支援改進了數位簽名，添加了Markdown 下劃線識別，並提供了對腳註/尾註分隔符的存取。

Aspose.Words 24.10 引入了增強的ActiveX 控制項支持，包括CommandButton 創建、新的形狀可見性控制、形狀分組功能、改進的表格Markdown 導出、餅圖和圓環圖的圖表格式、更好的Big5 編碼處理以及對過時的台灣字體的支援。

Aspose.Words 24.11 引入了人工智慧驅動的文件摘要、增強的渲染選項、改進的文件屬性存取和 ActiveX 控制項標題。

### AI 驅動的功能<sup>24.11</sup>

透過新增 [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) 命名空間及其公共成員，整合了對使用 OpenAI 和 Google 生成語言模型的文件摘要的支援。

### 渲染與列印

#### 徑向圖表上的刻度 <sup>24.9</sup>

已實現在放射狀圖表上呈現刻度。

#### CommandButton ActiveX 控制項 <sup>24.10</sup>

透過新增新的公共方法 [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) 和新的公共類別 [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/) 引入了建立 CommandButton ActiveX 控制項的功能。

#### 控制形狀可見性 <sup>24.10</sup>

新增了新的公共屬性 [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) 來控制形狀的可見性。

#### 圓餅圖與圓環圖的變化 <sup>24.10</sup>

新增了幾個新的公共屬性來格式化餅圖和圓環圖。

#### 控制 PDF 選擇表單欄位邊框的呈現 <sup>24.11</sup>

透過新增新的公共選項 [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/)，實現了控制 PDF 選擇表單欄位邊框渲染的新選項。

#### 取得並設定圖表資料的格式代碼<sup>24.11</sup>

透過在 [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) 和 [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/) 類別中實作 [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) 屬性，新增了取得和設定圖表資料格式程式碼的功能。

#### 使用 bin 和標籤渲染直方圖 <sup>24.11</sup>

透過允許指定數量的容器和標籤，直方圖渲染得到了改進。

### 轉換、載入和儲存文檔

#### 載入 Markdown 檔案時的底線格式 <sup>24.9</sup>

透過新增新的公共屬性 [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/)，納入了載入 Markdown 文件時識別下劃線格式的選項。

#### 儲存到 Markdown 時將表格匯出為 HTML <sup>24.10</sup>

透過新增新的公共屬性[ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) ，實現了將文件儲存為Markdown 格式時將表格匯出為HTML的選項 和枚舉 [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/)。

#### 匯出具有更新邏輯結構的 PDF <sup>24.11</sup>

透過將表格標題屬性包含為 PDF 邏輯結構元素標題，PDF 匯出得到了增強。

### 數位簽名

#### 使用 XAdES-EPES 簽署文件 <sup>24.9</sup>

透過新增新的公共屬性[XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/)，引入了使用XAdES-EPES 層級XML-DSig 簽章對文件進行簽署的功能 和一個新的公開枚舉 [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/)。

### 其他

* 一個新的公共方法 [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) 已新增至群組形狀中。 <sup>24.9</sup>
* 新增了一個新的公共方法 [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/)，用於將 **StructuredDocumentTags** 插入文件中。 <sup>24.9</sup>
* 透過添加一些公共類別和屬性，提供了對腳註/尾註分隔符的公共存取。 <sup>24.9</sup>
* 透過新增 [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1) 引入了對單一形狀進行分組、將形狀分組以及直接對形狀和群組形狀進行分組的功能 方法。 <sup>24.10</sup>
* TrueType cmap 表的 Big5 編碼處理已改進。 <sup>24.10</sup>
* 增強了對過時台灣字體的支援。 <sup>24.10</sup>
* 為了存取擴展文件屬性，已將唯讀屬性新增至 [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/) 類別中。 <sup>24.11</sup>
* 透過在 [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/) 屬性中新增新的公共設定器，可以設定 ActiveX 控制項的標題。 <sup>24.11</sup>

{{% alert color="primary" %}}

更多了解[Aspose.Words for .NET 24.9 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/)。

更多了解[Aspose.Words for .NET 24.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/)。

更多了解[Aspose.Words for .NET 24.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/)。

{{% /alert %}}

## Aspose.Words For .NET 24.5、24.6、24.7、24.8

Aspose.Words 24.5 擴大了集體選項，改善了渲染功能並擴大了一些其他選項。

Aspose.Words 24.6 提升了顯示選項、增強了搜尋與比擬功能，並擴展了其他幾個功能。

Aspose.Words 24.7 改變您與 ActiveX 的工作方式、擴展渲染功能以及以 Markdown 和 XLSX 格式輸出。

Aspose.Words 24.8 在軸標籤的精確控制上強化圖表自訂功能，擴大字體管理、改善文件結構處理，並為 HTML/XAML 輸出、PDF 功能、文件轉換和數字簽名新增新功能。

### 支援的格式

從 24.7 版本開始，支援以 PDF/UA-2 輸出，確保使身障使用者能夠存取。

### 平台 <sup>24.5</sup>

.Net 7.0/8.0組件已被包含在Aspose.Words NuGet套件中。

### 渲染與列印

#### 圖表、圖形和DrawingML <sup>24.5</sup> 的更改

"*為 SVG 圖形的 DrawingML 效果渲染，以前的機能僅限於圖像，已被實作。"
* 本程式碼支援在系列組中建立結合圖表和調整空隙寬度、重疊與氣泡比例等屬性，並透過添加 [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) 和 [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) 類別及 [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) 屬性來達成。
* 透過添加 [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) 類別來修改形狀的 SoftEdge 效果功能已實作。
"* 可調整形狀值的能力已透過添加 [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) 和 [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) 公共類別及 [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) 屬性來實作。"

#### 圖表、形狀和繪圖的更改 <sup>24.6</sup>

* 可繪圖功能已強化。 您現在可以製作更多樣化的圖表，包括 *Treemaps*、*Sunbursts*、*Histograms*、*Pareto* 圖表，*Box & Whisker* 圖表、*Waterfalls* 和 *Funnels*。 這讓您能夠以更具多樣性和資訊量的方式來可視化您的資料。
"* 陰影格式化之顏色控制已改善。" 您可以透過存取陰影色來更準確地控制文件的外觀。
* 背景渲染的效能已提高。 您可以使用本機拼圖技術大幅加快背景渲染速度，尤其是包含小元素的背景。
* 对形状有逼真的渐变 telah ditambahkan。 您現在可以用非線性渐變來創建DML形狀，模擬 Microsoft Word 的視覺風格，看起來更專業。

#### 圖表數據標籤自訂 <sup>24.7</sup>

可以自訂圖表標籤的能力，如 **Orientation** 和 **Rotation** 已被新增。

#### 清單層級的自訂數字樣式 <sup>24.7</sup>

一個用來設定公有屬性 [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) 的設定器已被加入。 您現在可以為清單層級定義自訂的數字格式。

#### 與 ActiveX 一起工作所發生的改變 <sup>24.7</sup>

"* ActiveX物件的特性現在可以修改，讓您對它們的行為更有控制權。"
"* 能修改廣播按鈕ActiveX 控制項的值，以啟用動態互動功能的功能已新增。"
* 能將 ActiveX 選項框切換為 "已勾選" 或 "未勾選" 的功能已被新增。

#### 控制圖表軸刻度標籤的方向和旋轉 <sup>24.8</sup>

圖表軸標籤的方向和旋轉的精確控制已被添加，以便更方便地定制圖表-- [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) 類已被擴展為新的 [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) 和 [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) 屬性。

#### 以圓幣記號取代反斜線 <sup>24.8</sup>

將反斜線替換為圓零號符的向下相容性HTML和XAML輸出已改進。 為了達到這一點，我們為 **ReplaceBackslashWithYenSign** 屬性添加到 [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) 和 [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/) 類別。

#### 使用 SDT 標籤作為輸出到 PDF 时的表單欄位名稱 <sup>24.8</sup>

支援使用 SDT標籤作為表單欄位名稱的 PDF 輸出功能，已透過在 [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) 類別中新增新的 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 屬性來強化。

### 轉換、載入和儲存文件

#### 將連結輸出至 Markdown 格式 <sup>24.7</sup>

能控制以 Markdown 格式輸出連結的能力已通過實作 [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/) 屬性而增添。

#### LowCode 24.8 <sup>24.8</sup>

一個新的 [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) 類別，旨在提供一系列方法來透過單一行碼來轉換各種文件類型，已被引入。

### 搜尋與比較

#### 進階比較選項<sup>24.6</sup>
透過改良的比較功能來簡化資料分析工作流程的能力已被新增。  इसमें新 [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) विकल्प और उन्नत तुलना के लिए रीडाइंग इंटरफ़ेस शामिल हैं।

### 其他

* 透過新增 [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/) 方法，已實作從文件中删除空白頁面的功能。 <sup>24.5</sup>
* 可以檢查 VBA 巨集而無需載入檔案的能力已由添加 [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) 屬性來提供。 <sup>24.5</sup>
* 使用 LINQ 報表引擎插入文件時保持來源號碼已獲支援。 <sup>24.5</sup>
"* 新增了一項 [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) 屬性 – 這會為評論提供更準確的時間標記，從而改善組織和可追溯性。" <sup>24.6</sup>
"* LINQ 報告引擎已進行改進。" 選擇性移除空白段落，以及為缺失的物件成員定義自訂訊息，已使報告更乾淨且更有資訊。 <sup>24.6</sup>
"* 日期時間格式現在會自動檢測，以順暢地輸出為 XLSX 格式。" <sup>24.7</sup>
(* 已新增能驗證是否有保護 VBA 專案的公共屬性 [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/) )。 <sup>24.7</sup>
"*字體資訊已擴展，因為將 **EmbeddingLicensingRights** 屬性添加至 [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) 和 [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) 類別。" <sup>24.8</sup>
"* 一種能有效清除分頁標頭和页脚，同時保留水印的方式已添加到更準確地工作於文件結構。" 要清除分欄標頭和底欄，請使用新的公開方法 [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/)。 <sup>24.8</sup>
* 在 [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) 中已啟用 XPS 份文件的數位簽名 – 已為此目的新增特性 [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/)。 <sup>24.8</sup>

{{% alert color="primary" %}}

更多了解[Aspose.Words for .NET 24.5 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/)。

了解更多關於 [Aspose.Words for .NET 24.6 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 24.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 24.8 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/) 的資訊。

{{% /alert %}}

## Aspose.Words for .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 提升了管理字體顏色的體驗，強化了 OLE 物件和 LINQ 報告功能，並引入了一種新的 `Bibliography Sources` 公共 API 。

Aspose.Words 24.2 擴充了圖表 API、風格管理和 LINQ 選項。 此版本 של Aspose.Words也引入了指定 SvgSaveOptions 的功能，在渲染時提供了更靈活的對 Markdown 檔案進行加載的控制，以及與腳註和尾注的參考文字工作。

 Aspose.Words 24.3  提供新的 TIFF 讀取器/寫入器，並為 WMF 元文件實作二進位圖形操作的模擬。  Aspose.Words 24.3  也持續增加 Chart API 。

Aspose.Words 24.4 強化儲存格式、一些渲染選項以及改善數位簽名工作。

### 支援的格式 <sup>24.4</sup>

現代 **WebP** 影像格式現在支援 Aspose.Words 在 .NET Framework 4.6.2 和更高版本。 你現在可以在文件中讀取並插入 WebP 張圖像，也可以以 WebP 格式儲存圖像。

請注意，WebP 目前只有在 .NET Standard 和 .NET Framework v4.6.2 以上版本可用。

### 渲染和列印

#### ストロークカラーコントロール <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/)類別已新增與管理筆紋顏色相關的公共屬性集：[ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) 和 [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/)，[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) 和 [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)。

#### 繪圖ML圖表 API 拡張子 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**持續被擴展。

#### 嵌入在 @font-face 規則中宣告的字型 <sup>24.4</sup>

新增了能將@font-face規則中 deklar 的字型嵌入到輸出文件的字型定義中的功能，透過添加新的 [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) 屬性來達成。

#### 與Glow和Reflection格式化 <sup>24.4</sup>

能為繪圖物件設定光澤和反射格式的能力已經實施。

### 載入與儲存文件

#### 在渲染期間指定 SvgSaveOptions <sup>24.2</sup>

在渲染時指定[SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/)的能力已透過[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)及[OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)方法加入。

#### 在載入 Markdown 個檔案時保留空白行 <sup>24.2</sup>

在加載 Markdown 個檔案時，能保存空白行這個功能已經被加入。

#### 新 TIFF 讀取器/寫入器 <sup>24.3</sup>

一個新的 TIFF 讀取器/寫入器已被開發給 Aspose.Words 給 .NET Standard，.NET 6 和後來的版本。 Aspose.Words 給 .NET 24.3 增加了對閱讀 TIFF 圖像與 JPEG 和舊的 JPEG 壓縮類型的支持，也大大改善了讀取和寫入運算的品質。

### 其他

* 本機能修改 `TextBox` OLE 控制項的文字，方法是將新的 [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) 屬性加入新 [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) 類別。 <sup>24.1</sup>
Bibliography Sources *{public {3} } 透過新增一個新的命名空間{0}、以及新類別與列舉型別，以及新增一個新的{1}屬性到{2}類別來實作。 <sup>24.1</sup>
*一個 API 來限制使用模板語法來存取類別 membres 的 `LINQ Reporting Engine` 已提供。 <sup>24.1</sup>
* 新增的公共屬性 [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/)、[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) 和 [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) 可強化樣式管理，並新增到 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 類別中。 <sup>24.2</sup>
* 已強化檢索腳注和尾注的實際參考標記文本的功能，使用 [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) 屬性和 [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) 方法。 <sup>24.2</sup>
* `Word 2016`圖表與 `LINQ Reporting Engine` 的相容性已開啟。 <sup>24.2</sup>
*對 WMF 元檔案二進位陣列運算的模擬已實作。 <sup>24.3</sup>
*. 在 **SaveOptions** 中設定文件簽名選項的能力已被启用，方法是添加新的 [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) 類別和新的公開成員，以及將新的屬性添加到 [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) 和 [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) 類別。 <sup>24.4</sup>

{{% alert color="primary" %}}

了解更多關於 [Aspose.Words for .NET 24.1 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 24.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 24.3 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 24.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/) 的資訊。

{{% /alert %}}

## Aspose.Words for .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 擴大了顯示選項、元檔案的顯示仿真以及 markdown 的儲存選項。

Aspose.Words 23.10 改善了渲染，擴展了載入和儲存文件的選項，並允許使用者以新方式合併文件。

Aspose.Words 23.11 可透過修訂、XLSX 格式和圖例字體，強化圖表的選擇。

Aspose.Words 23.12 導入了處理 PDF 和 OOXML 文檔的新屬性和枚舉，以及支援 WebP 圖像。

### 渲染與列印

#### 在 DrawingML 圖表中自訂軸名稱 <sup>23.9</sup>

在 DrawingML 圖表中自訂軸標題的能力是由實作新的公共類別 [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) 和 [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) 特性而引入的。

#### 段落內字體垂直位置的決定 <sup>23.9</sup>

現在可以使用新的公共 [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) 屬性和新的 [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) 列舉來定義段落內字型的垂直位置。

#### 前景顏色控制 <sup>23.10</sup>

無修飾即可取得前景顏色的能力已新增至 [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) 和 [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) 類別的 **BaseForeColor** 屬性。

#### 將圖表功能擴展到 <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 和 [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) 類別的功能已經透過新的方法和屬性而得到擴展。

#### 自動調整並將圖像嵌入形狀 <sup>23.10</sup>

透過新 [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) 方法，自動調整及使圖形內圖片適當的大小的方式已提供。

#### 繪圖ML图表中的預設字體格式化 <sup>23.11</sup>

在 DrawingML 圖表的圖例項目中指定預設字型格式的能力，已透過 [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) 屬性新增。 這個功能使圖表元素的線條和一致性更好，讓整份文件看起來更美觀。

#### 在 Reader 中打開 PDF 時指定頁面排版 <sup>23.12</sup>

在開啟 PDF 讀取器時指定要使用的頁面格式的能力，已藉由將新的 [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) 屬性加入 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 類別以及新增新的 [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) 列舉來增加。

### 載入與儲存文件

#### 在 Markdown 中指定資料夾名稱，以建構圖像 URI<sup>23.9</sup>

[MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/)類別已被包含 [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) 屬性而擴張，它容許指定用於構建由 Markdown 文檔寫成的圖像 URI 的用字目錄名稱。

#### 縮放PDF輸出大小 <sup>23.10</sup>

已實作各種的 PDF 渲染優化，以降低在利用 [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 設定時之輸出大小。

#### 在加載 TXT 文檔時識別超連結 <sup>23.10</sup>

在載入 TXT 文檔時識別超連結的功能，已由添加一個新的 [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) 屬性來實現。

### 其他

* Metafile render emul ation to determine rasterization siz has been implemented, specifcally for WMF pen withd and EFM cosmetic pen width. 為了達到這個目的，**ScaleWmfFontsToMetafileSize** 屬性被 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) 屬性取代，而 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) 屬性也被加入。 <sup>23.9</sup>
* 在當前光標位置插入一文件到另一文件的簡化方法已用[InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/)方式引入。 <sup>23.10</sup>
* 新添加的特性，可透過新 [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) 屬性來存取和修改样式特性。 <sup>23.10</sup>
* 已為 [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 類別的方法添加了通用的型別參數。 <sup>23.10</sup>
* 在使用 [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) 和 [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) 的方法时实现了一种控制何时接受/拒绝特定修订的方法。 此功能的強化讓使用者更能掌控修訂過程。 <sup>23.11</sup>
* 能將文件的所有部分都寫入一個 XLSX 工作表的能力，透過新的 [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) 列舉類型和新的 [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) 屬性而得到提供。 <sup>23.11</sup>
* 一種方式是透過新 `OoxmlSaveOptions` 類別的 Zip64Mode 屬性和新的 Zip64Mode 列舉，來控制 ZIP64 格式擴展名會如何用於 OOXML 文檔。 <sup>23.12</sup>
* 支援 WebP 圖片的功能已被新增。 請注意此功能僅適用於 .NetStandart 和 .NET6+ 版本。 <sup>23.12</sup>

{{% alert color="primary" %}}

了解更多關於 [Aspose.Words for .NET 23.9 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/) 的信息。

了解更多關於 [Aspose.Words for .NET 23.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 23.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/) 的資訊。

了解更多有關[Aspose.Words for .NET 23.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/)的資訊。

{{% /alert %}}

## Aspose.Words For .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 強化了處理圖表系列資料的能力，以及能處理 ODT 文檔的能力。同時改善了標題/页脚及其文字對齊的方式。

Aspose.Words 23.6 擴展了渲染選項、新增一個新的輸出格式、改善了 LINQ 報表，以及 LowCode 的工具。

Aspose.Words 23.7 強化了報告功能、新增新的輸出格式，以及提供了改善處理資料表和數位簽名的方式。

Aspose.Words 23.8 能擴展各種格式的能力，改善顯示效果，以及為處理欄位增添新的選項。

### 支援的格式

*自23.6版開始，可以儲存文件為XLSX格式。 現在你可以將你的文件轉換成 Excel 格式。 <sup>23.6</sup>
*從版本 23.7 開始，您可以以 EPS 格式保存文件頁面或形狀。 <sup>23.7</sup>

### 新格式功能

* 自動為 MOBI 文檔生成目錄表 (TOC) 的功能已加入。 <sup>23.8</sup>
"* "這個 [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) 建構子已經增加了一個 [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/) 。 <sup>23.8</sup>
* EMF元文件的垂直文字格式已經實作。 <sup>23.8</sup>

### 渲染與列印

#### 取得並修改圖表系列資料 <sup>23.5</sup>

取得並修改圖表系列資料的功能，透過加入以下程式碼來提供：

* 新的班級： [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/)、 [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/)、 [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/)、 [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/)、 [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/)、 [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* 新列挙型：[ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/)、[ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### 進階字型支援 <sup>23.6</sup>

支援 WMF、EMF 和 EMF+ 渲染中的進階排版功能已增加。

#### 頁面上彩繪內容 <sup>23.6</sup>

表示頁面是否有色或無色的公有屬性[PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/)已被新增。

#### 圖表數據標籤的格式化 <sup>23.6</sup>

設定圖表數據標籤的填充、筆觸和呼叫格式化功能已實作。

### Mail Merge 和報告

#### Dynamic HTML 插入為 LINQ 報表引擎 <sup>23.6</sup>

使用 LINQ 報表引擎的新動態 HTML 插入方式已被加入。

#### Mustache 標籤支援 <sup>23.7</sup>

Mustache標籤現在在[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/)和[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion)方法中都支援。

#### LINQ 報表引擎範本語法更新 <sup>23.7</sup>

LINQ 報表引擎範本語法現在支援 `ElementAt` 和 ElementAtOrDefault 延伸方法。

#### 指定渲染後的圖像大小 <sup>23.8</sup>

一個新的public property [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/)以指定渲染圖片的大小，其單位為像素，已經被引入。

#### 為 JSON 字串值保留空白 – LINQ <sup>23.8</sup>

已將一個選項新增至 LINQ 報告引擎，以保存 JSON 字串值中的空白。

### LowCode <sup>23.6</sup>

新 LowCode 方法旨在將不同類型文件合併成單個輸出文件。

### 其他

* 標題/底線中支援文字換行已實作。 <sup>23.5</sup>
* 已透過 [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) 方法增加可從 ODT 文檔中移除此類數位簽名的能力。 <sup>23.5</sup>
* 已新增公有屬性[PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/)來取得語音指南[Run](https://reference.aspose.com/words/net/aspose.words/run/)的底線與ruby文字。 <sup>23.5</sup>
* 透過將新 [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 屬性導入，已增加了從有數位簽名的文件中檢索數位簽名值的能力。 <sup>23.7</sup>
* [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 類別已被擴展新的公有成員 - [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/)、[Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/)、[Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) 和 [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/)。 <sup>23.7</sup>
"* 支援 CITATION 和 BIBLIOGRAPHY 欄位功能已新增" <sup>23.8</sup>

{{% alert color="primary" %}}

了解更多關於[Aspose.Words for .NET 23.5 Release Notes](/words/net/aspose-words-for-net-23-5-release-notes/)的資訊。

了解更多關於 [Aspose.Words for .NET 23.6 Release Notes](/words/net/aspose-words-for-net-23-6-release-notes/) 的訊息。

了解更多關於 [Aspose.Words for .NET 23.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 23.8 Release Notes](/words/net/aspose-words-for-net-23-8-release-notes/) 的資訊。

{{% /alert %}}

## Aspose.Words for .NET 23.1、23.2、23.3、23.4

Aspose.Words 23.1 改善了位圖運算仿真器的效能，以及提升了文件輸出和渲染品質。

Aspose.Words 23.2 在 Mobi 格式中保存文件、改善圖表渲染和對文檔外觀細節進行重大更改。

Aspose.Words 23.3 透過新的屬性，提升文件的進口與儲存、並改善背景與前景色與線條梯度的工作品質。

Aspose.Words 23.4改善了某些參數的計算以及資料表及周圍文字的定位。

### 效能改進

#### 位圖運算的模擬 <sup>23.1</sup>

在以元文件進行的點陣運算的效能與品質已大幅提升。

### 支援的格式

#### 將輸出至 MOBI <sup>23.2</sup>

從版本 23.2 開始，可以將文件儲存在 MOBI 格式中（也稱為 PRC、AZW – Amazon Kindle 的自有電子書檔案格式）。 現在您不僅能讀 MOBI 文檔，也能將您的文件以 MOBI 格式輸出。

### 渲染

#### 與陰影主題顏色工作 <sup>23.1</sup>

能與陰影主題顏色工作的能力已實作。

#### 支援 R² 係數於 DML 圖表 <sup>23.1</sup>

在渲染圖形趨勢線標籤時，已添加支援 R-squared係數。

#### 圖表渲染改進 <sup>23.2</sup>

自 23.2 版本以來，圖表渲染已有大幅提升。

#### 背景與前景色調控制 <sup>23.3</sup>

[Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/)類別已被擴展成一個與背景和前景顏色相關的新公共屬性集：[ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/)和[BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/)，[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/)和[BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/)。

#### 原件圖形的線性漸變 `SkiaSharp` Native Shader <sup>23.3</sup>

使用 `SkiaSharp` 本機陰影器為 .NET 標準 render 圓弧漸變已實作。

#### 桌和周圍文字之間的距離 <sup>23.4</sup>

透過新增 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 類別的新屬性，設定桌面與周圍文字之間的距離的能力已被添加：[DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/)、[DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/)、[DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) 和 [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/)。

### 載入與儲存文件

#### 生成 `TOC` 給 AZW3 文檔 <sup>23.1</sup>

透過使用 [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) 屬性，已新增對 AZW3 文檔的 `TOC` (目錄) 生成能力。

#### 將清單項目轉出到 Markdown <sup>23.1</sup>

如何控制清單項目的輸出至 Markdown 格式，已通過向 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 類別增加 [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) 屬性而提供。

#### 文件儲存進度通知 <sup>23.3</sup>

保存 MOBI 和 AZW3 格式的進度通知已實作。

#### 句子和字間距調整　<sup>23.3</sup>

在文件輸入時自動調整句子和字間隔的能力已加入，透過引入 [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) 屬性。

### 其他

* 本身能指定文件的字符間距調整功能已由 [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) 屬性實作 <sup>23.2</sup>
.* 提供的方式是如何讓 Aspose.Words 包含文字方框、脚注和尾注在字數統計中，透過增加 [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) 屬性 <sup>23.2</sup>
"* 一種新選項，可指定檔案風格是否根據適當的值自動重新定義，已透過[AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/)屬性 <sup>23.2</sup>引入。
"* 本機能判斷[Run](https://reference.aspose.com/words/net/aspose.words/run/)是否為語音導航，新增 [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) 屬性 <sup>23.4</sup>"
* 透過導入 [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) 類別以及新增 [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) 屬性 <sup>23.4</sup>，已實作了如何處理組合圖表中的系列與軸的簡單方式。
"* 新增加的公共屬性，與形状相對於定位和大小有關，已被加入到 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 類別 <sup>23.4</sup>"
"* 自動文字顏色解決方案的顏色明度計算準確性和效能已根據 Microsoft Word <sup>23.4</sup> 版本中提供的最新版本進行改善"

{{% alert color="primary" %}}

了解更多關於[Aspose.Words for .NET 23.1 Release Notes](/words/net/aspose-words-for-net-23-1-release-notes/)的資訊。

了解更多關於 [Aspose.Words for .NET 23.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/) 的資訊。

瞭解更多關於 [Aspose.Words for .NET 23.3 Release Notes](/words/net/aspose-words-for-net-23-3-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 23.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/) 的資訊。

{{% /alert %}}

## Aspose.Words for .NET 22.9、22.10、22.11、22.12

Aspose.Words 22.9 增加了載入和儲存文件的選項，並改善了與某些其他選項之間的互動。

Aspose.Words 22.10 改善了找尋與替換選項、強化了 OLE 物件，並擴展了清單功能。

Aspose.Words 22.11 透過新的選項增強其功能，以便更方便地處理熟悉的物件：欄位、列印、OLE 和結構化文件標籤。

Aspose.Words 22.12 在載入/儲存文件時，可提升顯示能力並提供處理頁邊的選項。

### 效能改進 <sup>22.12</sup>

在以 PDF 進行渲染的同時，為了維持符合規格而大幅減少圖層狀態嵌套的情況，已引入了優化。

### 渲染和列印

#### 非彩色頁面列印於彩色印表機 <sup>22.11</sup>

已實作一種自訂的彩色/灰度列印模式，方法是將新的 **GrayscaleAuto** 值加入 [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) 列舉。

新的列印屬性允許使用者控制如果裝置支援顏色列印，非彩色頁面是如何列印的。 此功能可讓使用者自動列印非彩色頁面，僅使用黑白列印模式。

#### 新邊框渲染屬性 <sup>22.12</sup>

新的公開屬性 [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) 和 [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) 已被引入。

#### 圖形化ML渲染的線性趨勢式公式 <sup>22.12</sup>

描圖ML圖表的線性趨勢線公式顯示已實作。

#### 字體備選設定，對 Google Noto 字體 <sup>22.12</sup>

對於 Google Noto 字體的預設字型備援設定已經更新。

### 載入及儲存文件

#### 儲存頭或腳列形狀以減少 PDF 大小 <sup>22.9</sup>

透過新增 **CacheHeaderFooterShapes** 屬性，已實作將標頭/底圖形狀儲存於緩冲區以減少輸出 PDF 檔案大小的功能。

#### 載入文件時自動數字偵測<sup>22.9</sup>

指定文字載入時之 [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) 屬性的能力已透過拡張 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) 類別而實現。

#### 指定特定的邊距類型 <sup>22.12</sup>

指定特定 [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) 類型予該區段的能力已實作。

### 搜尋與比較 <sup>22.10</sup>

在找到並替換選項中忽略 [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) 的功能已實作，方法是將新的 [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) 屬性附加到 [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) 類別。

### 其他

"* 新增一個功能，讓 FieldEQ 成為 OfficeMath 的附加功能。" <sup>22.9</sup>
* 允許在行層級上建立具有 Group 類型結構化文件標籤。 <sup>22.9</sup>
"* OLE 物件和控制現在在將文件轉換為 HTML 時被視為 metafile 圖形。" <sup>22.10</sup>
* 新增一個功能來檢查特定清單是否由與比較清單相同的模板來建立，透過在 [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) 類別中導入新的 [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) 方法。 <sup>22.10</sup>
已新增 * 新的結構化文件標籤之 [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) 類型。 <sup>22.11</sup>
* 可追蹤欄位更新進度功能已提供。 <sup>22.11</sup>
* 一種新的 **EmbedAttachments** 屬性，讓使用者可以將來自來源文件的 OLE 附件嵌入輸出 PDF 文檔。 <sup>22.11</sup>

{{% alert color="primary" %}}

更多了解[Aspose.Words for .NET 22.9 Release Notes](/words/net/aspose-words-for-net-22-9-release-notes/)。

了解更多有關 [Aspose.Words for .NET 22.10 Release Notes](/words/net/aspose-words-for-net-22-10-release-notes/) 的訊息。

了解更多關於 [Aspose.Words for .NET 22.11 Release Notes](/words/net/aspose-words-for-net-22-11-release-notes/) 的資訊。

了解更多關於 [Aspose.Words for .NET 22.12 Release Notes](/words/net/aspose-words-for-net-22-12-release-notes/) 的資訊。

{{% /alert %}}

## 見也

{{% alert color="primary" %}}

此頁面包含過去2年內最新的發行新聞。 對於早期版本，請參閱相關部分中的 [Release Notes'](https://releases.aspose.com/words/net/release-notes/) 頁面。

{{% /alert %}}
