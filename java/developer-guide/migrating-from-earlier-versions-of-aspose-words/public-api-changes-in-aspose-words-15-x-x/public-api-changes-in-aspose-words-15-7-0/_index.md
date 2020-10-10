---
title: Public API Changes in Aspose.Words 15.7.0
type: docs
weight: 70
url: /java/public-api-changes-in-aspose-words-15-7-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.7.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## **Font.AutoColor Property Added**

WORDSNET-2768 is now resolved. Aspose.Words now can determine actual color of text output that will be used for the "auto color" using the following property:

**Java**

{{< highlight csharp >}}
public Color AutoColor;
{{< /highlight >}}

It returns the present calculated color of the text (black or white) to be used for 'auto color'. If the color is not 'auto' then it returns Color. 

When text has 'automatic color', the actual color of text is calculated automatically so that it is readable against the background color. As you change the background color, the text color will automatically switch to black or white in MS Word to maximize legibility.

Usage example is as follows:

**Java**

{{< highlight csharp >}}
Run run = new Run(new Document());
run.getFont().setColor(new java.awt.Color(0, true));
 // Remove direct color, so it can be calculated automatically with Font.AutoColor.
run.getFont().getShading().setBackgroundPatternColor(Color.BLACK);
 // Set dark background for the text.
System.out.println(run.getFont().getAutoColor());
 // returns Color.White.
run.getFont().getShading().setBackgroundPatternColor(Color.WHITE);
 // Set light background for the text.
System.out.println(run.getFont().getAutoColor());
 // returns Color.Black.
{{< /highlight >}}

## **Basic API to Programmatically Manipulate Themes Added**

WORDSNET-10513 is now resolved. We have added basic API to access document theme properties. For now, this API includes following public objects:

- Theme
- ThemeFonts
- ThemeColors

Here is how you can get theme properties:

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
Theme theme = doc.getTheme();
System.out.println(theme.getMajorFonts().getLatin());
        // Major (Headings) font for Latin characters.
System.out.println(theme.getMinorFonts().getEastAsian());
    // Minor (Body) font for EastAsian characters.
System.out.println(theme.getColors().getAccent1());
          // Color for theme color Accent 1.
{{< /highlight >}}

And here is how you can set theme properties:

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
Theme theme = doc.getTheme();
theme.getMinorFonts().setLatin("Times New Roman");
     // Set Times New Roman font as Body theme font for Latin Character.
theme.getColors().setHyperlink(Color.GREEN);
           // Set Color.GREEN for theme color Hyperlink.
{{< /highlight >}}

## **TextOrientation.VERTICAL_ROTATED_FAR_EAST Option Added**

WORDSNET-12039 is now implemented and the following property added to the API:

**Java**

{{< highlight csharp >}}
public TextOrientation.VERTICAL_ROTATED_FAR_EAST = 7;
{{< /highlight >}}

It specifies orientation of text on a page, in a table cell or a text frame as following:
Far East characters appear vertical, other text is rotated 90 degrees to the right to appears from top to bottom vertically, then left to right horizontally (tb-lr-v).
Use-case is as follows:

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
Cell cell = (Cell) doc.getChild(NodeType.CELL, 0, true);

// Set text orientation for Far East characters appear vertical, other text is rotated 90 degrees to the right to appears from top to bottom vertically, then left to right horizontally.
cell.getCellFormat().setOrientation(TextOrientation.VERTICAL_ROTATED_FAR_EAST);
{{< /highlight >}}

## **SaveOptions.UpdateSdtContent is added.**

WORDSNET-12111 is now resolved. This option controls whether content of StructuredDocumentTag is updated before document saving. Default value is TRUE.

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
SaveOptions so = SaveOptions.createSaveOptions(SaveFormat.DOCX);
so.setUpdateSdtContent(false);
doc.save("C:\test.pdf", so);
            // SDT content will not be updated and rendered as is.
{{< /highlight >}}
