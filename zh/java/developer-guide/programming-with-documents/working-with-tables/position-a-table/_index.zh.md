---
title: 表格位置在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 立场a
linktitle: 立场a
description: "指定表格位置 Java。 。 。 。 获得表格对齐,并使用 Java。 。 。 。"
type: docs
weight: 50
url: /zh/java/position-a-table/
---

有浮动表和内置表:

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 **内置表格** 放在与文本相同的层上,并放在只环绕上下表的文本流中。 内置表格将总是出现在您放入的段落之间。
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 **浮动表格** 在文字上分层,表格相对于段落的位置由表格锚定。 因此,浮表在文档中的位置受到垂直和水平定位设置的影响.

有时,您需要以某种方式将表格放在文档中。 要做到这一点,需要使用对齐工具,并在表格和周围文本之间设置缩进.

在本条中,我们将讨论哪些选择 Aspose.Words 提供定位。

## 指定内在表格位置

您可以使用 Aspose.Words API 页:1 [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) 属性。 因此,可以调整表格相对于文档页面的对齐。

以下代码示例显示如何设置内置表格的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## 获得浮动表格对齐

如果将表格文本包装设定为 **Around**, 您可以使用 [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) 和 [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) 属性。

与 **其他类型的文字包装**, 您可以使用 **Alignment** 属性。

以下代码示例显示如何获得表格的对齐:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## 获取浮动表格位置

 使用下列属性确定浮动表的位置:

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - 用于计算浮动表格水平位置的对象
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - 用于计算浮动表格垂直位置的对象
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - 绝对水平浮动表位置
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - 绝对垂直浮动表位置
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - 允许/无法与其他浮动对象重叠的选项
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) --浮动表相对水平对齐.
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) --浮动表相对垂直对齐.

以下代码示例显示如何获得浮动表格的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## 设置浮动表位置

就像得到,你可以设置一个浮动表的位置 用同样的 Aspose.Words API。 。 。 。

重要的是要知道,对齐和水平与垂直距离是结合的属性,一个可以重置另一个属性. 例如,设置 **RelativeHorizontalAlignment** 将重设 **AbsoluteHorizontalDistance** 改为默认值,反之亦然。 也一样 true 用于纵向安排。

以下代码示例显示如何设置浮动表的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## 获取表格和周边文本之间的距离

Aspose.Words 也为了解表格与周围文本之间的距离提供了机会:

- 怎么样? [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - 与以上距离的价值
- 怎么样? [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - 感知距离的价值
- 怎么样? [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - 右边的距离值
- 怎么样? [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - 左边的距离值

以下代码示例显示如何获得表格与其周围文本之间的距离:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
