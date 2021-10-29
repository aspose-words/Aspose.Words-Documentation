---
title: Enable OpenType Features
type: docs
weight: 95
url: /java/enable-opentype-features/
aliases: [/java/how-to-use-opentype-features/]
---



OpenType is a font format, introduced to provide better support for international languages and writing systems as compared to PostScript and TrueType. The layout features of OpenType are commonly known as OpenType features. Aspose.Words.Shaping.Harfbuzz package provides support for OpenType features in Aspose.Words using the HarfBuzz text shaping engine.

Aspose.Words is capable of using text shaper objects provided externally. A text shaper represents a font and computes shaping information for a text. A document typically refers to many fonts thus a text shaper factory is necessary. This package contains an implementation of a text shaper factory utilized by Aspose.Words.Layout.LayoutOptions.TextShaperFactory property.

{{% alert color="primary" %}} 

Text shaping is only performed when exporting to PDF or XPS formats.

{{% /alert %}} 

In a typical application single instance of a text shaper factory is shared among all document instances. Whenever a text shaper is created a font file is accessed. Parsing a font file is an expensive operation thus caching is recommended. Aspose.Words implements BasicTextShaperCache class which wraps text shaper factory implementation and caches text shaper instances returned by the wrapped factory.

The following code example shows you how to turn on the support of OpenType features.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
