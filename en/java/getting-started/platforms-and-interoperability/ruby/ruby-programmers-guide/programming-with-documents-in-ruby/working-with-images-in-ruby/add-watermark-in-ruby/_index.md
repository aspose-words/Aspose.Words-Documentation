---
title: Add Watermark in Ruby
second_title: Aspose.Words for Java
articleTitle: Add Watermark in Ruby
linktitle: Add Watermark in Ruby
description: "Add watermark to MS Word documents using Ruby."
type: docs
weight: 10
url: /java/add-watermark-in-ruby/
timestamp: 2024-10-21-11-17-44
---

## Aspose.Words - Add Watermark

To add watermark to word documents using Aspose.Words Java for Ruby, simply invoke insert_watermark_text() method of AddWatermark module.

**Ruby Code**

{{< highlight ruby >}}
def insert_watermark_text(doc, watermark_text)
       
    # Create a watermark shape. This will be a `WordArt` shape.

    # You are free to try other shape types as watermarks.
    shape_type = Rjb::import("com.aspose.words.ShapeType")
    watermark = Rjb::import("com.aspose.words.Shape").new(doc,  shape_type.TEXT_PLAIN_TEXT)

    # Set up the text of the watermark.
    watermark.getTextPath().setText(watermark_text)
    watermark.getTextPath().setFontFamily("Arial")
    watermark.setWidth(500)
    watermark.setHeight(100)

    # Text will be directed from the bottom-left to the top-right corner.
    watermark.setRotation(-40)

    # Remove the following three lines if you need a solid black text.
    color = Rjb::import("java.awt.Color")
    watermark.getFill().setColor(color.GRAY)
    
	# Try LightGray to get more Word-style watermark
    watermark.setStrokeColor(color.GRAY)
    
	# Try LightGray to get more Word-style watermark
    # Place the watermark in the page center.
    relativeHorizontalPosition = Rjb::import("com.aspose.words.RelativeHorizontalPosition")
    watermark.setRelativeHorizontalPosition(relativeHorizontalPosition.PAGE)
    watermark.setRelativeVerticalPosition(relativeHorizontalPosition.PAGE)
    wrapType = Rjb::import("com.aspose.words.WrapType")
    watermark.setWrapType(wrapType.NONE)
    verticalAlignment = Rjb::import("com.aspose.words.VerticalAlignment")
    watermark.setVerticalAlignment(verticalAlignment.CENTER)
    horizontalAlignment = Rjb::import("com.aspose.words.HorizontalAlignment")
    watermark.setHorizontalAlignment(horizontalAlignment.CENTER)

    # Create a new paragraph and append the watermark to this paragraph.
    watermarkPara = Rjb::import("com.aspose.words.Paragraph").new(doc)
    watermarkPara.appendChild(watermark)
    sects = doc.getSections().toArray()

    # Insert the watermark into all headers of each document section.
    sects.each do | sect |
        headerFooterType = Rjb::import("com.aspose.words.HeaderFooterType")

        # There could be up to three different headers in each section, since we want

        # the watermark to appear on all pages, insert into all headers.
        insert_watermark_into_header(watermarkPara, sect, headerFooterType.HEADER_PRIMARY)
        insert_watermark_into_header(watermarkPara, sect, headerFooterType.HEADER_FIRST)
        insert_watermark_into_header(watermarkPara, sect, headerFooterType.HEADER_EVEN)
    end
end    
def insert_watermark_into_header(watermarkPara, sect, headerType)
    header = sect.getHeadersFooters().getByHeaderFooterType(headerType)
    if header.nil? then

        # There is no header of the specified type in the current section, create it.
        header = Rjb::import("com.aspose.words.HeaderFooter").new(sect.getDocument(), headerType)
        sect.getHeadersFooters().add(header)
    end

    # Insert a clone of the watermark into the header.
    header.appendChild(watermarkPara.deepClone(true))
end
{{< /highlight >}}

## Download Running Code

Download **Add Watermark (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/addwatermark.rb)
