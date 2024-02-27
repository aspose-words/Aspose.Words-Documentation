---
title: 在 Python 中使用形状
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用形状
linktitle: 使用形状
description: "使用 Python 创建和管理文档中的形状、ole 对象。"
type: docs
weight: 280
url: /zh/python-net/working-with-shapes/
---

本主题讨论如何使用 Aspose.Words 以编程方式处理形状。

Aspose.Words 中的形状表示绘图层中的对象，例如自选图形、文本框、自由格式、OLE 对象、ActiveX 控件或图片。 Word 文档可以包含一种或多种不同的形状。文档的形状由 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类表示。

## 使用文档生成器插入形状

您可以使用 [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 方法将指定类型和大小的内联形状以及指定位置、大小和文本换行类型的自由浮动形状插入到文档中。 [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 方法允许将 DML 形状插入到文档模型中。文档必须以支持DML形状的格式保存，否则，在保存文档时，此类节点将被转换为VML形状。

以下代码示例演示如何将这些类型的形状插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## 设置宽高比锁定

使用 Aspose.Words，您可以通过 [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) 属性指定是否锁定形状的纵横比。

以下代码示例演示如何使用 **AspectRatioLocked** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## 在单元格中设置形状布局

您还可以使用 [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) 属性指定形状是显示在表格内部还是表格外部。

以下代码示例演示如何使用 **IsLayoutInCell** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## 创建剪角矩形

您可以使用 Aspose.Words 创建剪角矩形。形状类型有 [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped)、[TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped)、[DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped)、[TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped)、[SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded)、[TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) 和 [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded)。

DML 形状是使用 [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) 方法使用这些形状类型创建的。这些类型不能用于创建 VML 形状。尝试使用 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类的公共构造函数创建形状会引发"NotSupportedException"异常。

以下代码示例展示了如何将这些类型的形状插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## 获取实际形状边界点

使用 Aspose.Words API，您可以获得包含块的形状相对于最顶部形状的锚点的位置和大小（以点为单位）。为此，请使用 [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) 属性。

以下代码示例演示如何使用 **BoundsInPoints** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## 指定垂直锚点

您可以使用 [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) 属性指定形状内的文本垂直对齐方式。

以下代码示例演示如何使用 **VerticalAnchor** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## 检测 SmartArt 形状

Aspose.Words 还允许检测 Shape 是否具有 `SmartArt` 对象。为此，请使用 [has_smart_art 属性](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) 属性。

以下代码示例演示如何使用 **HasSmartArt** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## 将水平线插入文档

您可以使用 [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) 方法将水平线形状插入到文档中。

以下代码示例展示了如何执行此操作：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API 提供 [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) 属性来访问水平线形状的属性。 [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) 类公开 [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/)、[color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/)、[no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) 等基本属性，用于水平线的格式设置。

以下代码示例演示了如何设置 [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/)：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## 插入 OLE 对象作为图标

Aspose.Words API 提供 **Shape.insert_ole_object_as_icon** 功能，将嵌入或链接的 OLE 对象作为图标插入到文档中。此功能允许指定图标文件和标题。应使用文件扩展名检测 `OLE` 对象类型。

下面的代码示例演示了如何设置将 OLE 对象作为 Icon 插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

为了正确显示，图标的最大尺寸必须为 32x32。

{{% /alert %}}

## 将带有 Math XML 的形状作为形状导入 DOM

您可以使用 [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) 属性将带有 EquationXML 的形状转换为 Office Math 对象。此属性的默认值对应于 MS Word 行为，即带有方程式 XML 的形状不会转换为 Office 数学对象。

以下代码示例演示如何将形状转换为 Office Math 对象：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
