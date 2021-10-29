---
title: Enable OpenType Features
type: docs
weight: 125
url: /net/enable-opentype-features/
---

OpenType is a font format, introduced to provide better support for international languages and writing systems as compared to PostScript and TrueType. The layout features of OpenType are commonly known as OpenType features. Aspose.Words.Shaping.Harfbuzz package provides support for OpenType features in Aspose.Words using HarfBuzz text shaping engine.

Aspose.Words is capable of using text shaper objects provided externally. A text shaper represents a font and computes shaping information for a text. A document typically refers to numerous fonts thus a text shaper factory is necessary. This package contains an implementation of a text shaper factory utilized by Aspose.Words.Layout.LayoutOptions.TextShaperFactory property.

{{% alert color="primary" %}} 

Text shaping is only performed when exporting to PDF or XPS formats.

{{% /alert %}} 

In a typical application single instance of a text shaper factory is shared among all document instances. Whenever text shaper is created a font file is accessed. Parsing a font file is an expensive operation thus caching is recommended. Aspose.Words implements BasicTextShaperCache class which wraps text shaper factory implementation and caches text shaper instances returned by the wrapped factory.

The following code example shows you how to turn on support of OpenType features.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
