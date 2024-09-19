---
title: 在C#中工作與形狀
second_title: 「Aspose.Words for .NET」
articleTitle: 與形狀一起工作
linktitle: 與形狀一起工作
description: "「shape markup language 之介紹，如何透過 C# 來創造不同種類的圖形。」"
type: docs
weight: 280
url: /zh-hant/net/working-with-shapes/
---

本篇文章討論如何使用 Aspose.Words 程式化地與形状一起工作。

圖形 Aspose.Words 代表繪圖層中的物件，例如 AutoShape、文字方框、自由形式圖形、OLE 物件、ActiveX 控制或圖像。 「Word 文檔可以包含一個或多個不同形狀。」 「Aspose.Words中的圖形是由 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 類別表示的。」

## 透過 Document Builder 插入形狀

您可以使用 [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) 方法將指定類型和大小的內嵌形狀或以指定位置、大小和文字換行類型浮動的形狀插入文件中。 「**InsertShape**」方法允許在文件模型中插入 DML 形狀。 「該文件必須以支援DML形状的格式儲存，否則在儲存文書時，這些節點會轉換為VML形狀。」

以下程式碼示範了如何將這些形狀插入文件：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## 設定長寬比鎖定

「使用 Aspose.Words，您可以透過 [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) 屬性來指定形状的長寬比是否被鎖定。」

接下來的程式碼範例示範如何使用 **AspectRatioLocked** 屬性。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 「在細胞中設定形狀布局」

「您也可以透過 [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) 屬性來指定圖形的顯示位置是否在表格內或之外。」

「以下範例示範如何使用 **IsLayoutInCell** 屬性：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## 創建剪裁角矩形

您可以使用 Aspose.Words 创建剪裁角矩形。 「這些形状類型是：*SingleCornerSnipped、TopCornersSnipped、DiagonalCornersSnipped、TopCornersOneRoundedOneSnipped、SingleCornerRounded、TopCornersRounded、*以及*DiagonalCornersRounded.*。」

「DML 形狀是以這些形狀類型使用 **InsertShape** 方法所創造的。」 「這些類型不能用來創造 VML 形状。」 「透過使用 Shape 類別的公共構建子嘗試建立形狀會引發 NotSupportedException 例外。」

以下程式碼範例示範如何將此類型的圖形插入至文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## 「取得實際形狀的邊界點」

使用 Aspose.Words API，您可以獲取包含塊的形狀的所在位置和大小，以點為單位，相對於頂部形狀的錨。 要做到這點，請使用 [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) 屬性。

以下範例說明如何使用 **BoundsInPoints** 屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 指定垂直锚點

「您可以在形狀內指定文字的垂直對齊方式，使用 [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) 屬性。」

接下來的程式碼範例示範了如何使用 **VerticalAnchor** 屬性。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## 検測SmartArt形狀

「Aspose.Words」也允許檢查形狀是否具有「`SmartArt`」物件。 要做到這點，請使用 [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) 屬性。

接下來這個程式碼範例示範如何使用 **HasSmartArt** 屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## 「將水平規則插入文檔中」

「您可以用 [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) 方法將水平線插入文件中。」

「以下範例示範如何做：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

「 Aspose.Words API 提供「 [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/)」屬性來存取水平線形狀的屬性。 The [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) 類別會公開基本的性質，例如高度、顏色、NoShadow 等，用於格式化水平線。

以下範例顯示如何設定 **HorizontalRuleFormat**。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## 「將具有數學 XML 的形狀导入到 DOM」

您可以使用「[ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/)」屬性將方程式 XML 中的形狀轉換為 Office Math 物件。 此屬性的預設值對應於 Microsoft Word 行為，即方程式 XML 格式的形狀不會轉換為 Office 數學物件。

以下範例顯示如何將形狀轉換為 Office Math 物件：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
