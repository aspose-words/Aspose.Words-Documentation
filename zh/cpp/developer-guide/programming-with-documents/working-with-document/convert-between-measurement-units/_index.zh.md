---
title: 在C++中的测量单位之间转换
second_title: Aspose.Words对于C++
articleTitle: 在测量单位之间转换
linktitle: 在测量单位之间转换
description: "Aspose.Words对于C++ 可以帮助您如何在测量单位之间进行转换，例如，英寸到点和点到英寸，像素到点，点到像素。"
type: docs
weight: 20
url: /zh/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Aspose.WordsAPI中提供的大多数表示某些度量的对象属性（如宽度或高度、边距和各种距离）都接受以点为单位的值，其中1英寸等于72点。 有时这不方便，需要将积分转换为其他单位。

Aspose.Words提供[ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util)类，该类提供帮助函数以在各种测量单位之间进行转换。 它可以将英寸，像素和毫米转换为点，点转换为英寸和像素，并将像素从一种分辨率转换为另一种分辨率。将像素转换为点，反之亦然，可以在96dpi（每英寸点数）分辨率或指定的dpi分辨率下执行。

**ConvertUtil**类在设置各种页面属性时特别有用，因为例如，英寸是比点更常见的测量单位。

下面的代码示例演示如何以英寸为单位指定页面属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

