---
title: Inserting Images Dynamically
type: docs
weight: 60
url: /net/inserting-images-dynamically/
aliases: [/net/template-syntax/#inserting-images-dynamically]
---

You can insert images to your reports dynamically using `image` tags. To declare a dynamically inserted image within your template, do the following steps:

1. Add a textbox to your template at the place where you want an image to be inserted.
1. Set common image attributes such as frame, size, and others for the textbox, making the textbox look like a blank inserted image.
1. Specify an `image` tag within the textbox using the following syntax.

{{< highlight csharp >}}
<<image [image_expression]>>
{{< /highlight >}}

The expression declared within an `image` tag is used by the engine to build an image to be inserted. The expression must return a value of one of the following types:

- A byte array containing an image data
- A [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream\(v=vs.110\).aspx) instance able to read an image data
- An [Image](http://msdn.microsoft.com/en-us/library/system.drawing.image\(v=vs.110\).aspx) object
- A string containing an image URI, path, or Base64-encoded image data

While building a report, the following procedure is applied to an `image` tag:

1. The expression declared within the tag is evaluated and its result is used to form an image.
1. The corresponding textbox is filled with this image.
1. The tag is removed from the textbox. 

**Note –** If the expression declared within an `image` tag returns a stream object, then it is closed by the engine as soon as the corresponding image is built.

By default, the engine stretches an image filling a textbox to the size of the textbox without preserving the ratio of the image. However, you can change this behavior in the following ways:

- To keep the size of the textbox and stretch the image within bounds of the textbox preserving the ratio of the image, use the `keepRatio` switch as follows.
{{< highlight csharp >}}
<<image [image_expression] -keepRatio>>
{{< /highlight >}}
- To keep the width of the textbox and change its height according to the ratio of the image, use the `fitHeight` switch as follows.
{{< highlight csharp >}}
<<image [image_expression] -fitHeight>>
{{< /highlight >}}
- To keep the height of the textbox and change its width according to the ratio of the image, use the `fitWidth` switch as follows.
{{< highlight csharp >}}
<<image [image_expression] -fitWidth>>
{{< /highlight >}}
- To change the size of the textbox according to the size of the image, use the `fitSize` switch as follows.
{{< highlight csharp >}}
<<image [image_expression] -fitSize>>
{{< /highlight >}}
- To change the size of the textbox according to the size of the image without increasing the size of the textbox, use the `fitSizeLim` switch as follows.
{{< highlight csharp >}}
<<image [image_expression] -fitSizeLim>>
{{< /highlight >}}

**Note –** If the size of the image is greater than the size of the textbox, then the `fitSizeLim` switch acts like `fitHeight` or `fitWidth`. Otherwise, the `fitSizeLim` switch acts like `fitSize`.