---
title: Convert Between Measurement Units
description: "Aspose.Words for Java can help you with how to convert between measurement units, for example, inches to points and points to inches, pixels to points, points to pixels."
type: docs
weight: 110
url: /java/convert-between-measurement-units/
---

Most of the object properties provided in the Aspose.Words API that represent some measurement, such as width or height, margins, and various distances, accept values in points, where 1 inch equals 72 points. Sometimes this is not convenient and points need to be converted to other units.

Aspose.Words provides the [ConvertUtil](https://apireference.aspose.com/words/java/com.aspose.words/ConvertUtil) class that provides helper functions to convert between various measurement units. It {enables|allows} converting inches, pixels and millimeters to points, points to inches and pixels, and converting pixels from one resolution to another.Converting pixels to points and vice versa can be performed at 96 dpi (dots per inch) resolutions or specified dpi resolution.

The **ConvertUtil** class is especially useful when setting various page properties because, for instance, inches are more common measurement units than points.

The following code example {shows|demonstrates} how to specify page properties in inches:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
