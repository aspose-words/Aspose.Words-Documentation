---
title: Public API Changes in Aspose.Words 15.12.0
type: docs
weight: 120
url: /java/public-api-changes-in-aspose-words-15-12-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 15.12.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## **Read-only access to ActiveX Control properties**

WORDSNET-1877 was partially fixed and now you can read properties of Microsoft Forms 2.0 OLE controls. New public property OleControl is exposed in [OleFormat](http://www.aspose.com/api/java/words/com.aspose.words/classes/OleFormat) class.

OleControl is new public class that represents ActiveX Control. OleControl class is base class for all ActiveX objects. You can check whether control is a Forms 2.0 OLE control by OleControl.isForms2OleControl() property. Type of Forms2OleControl is exposed in Forms2OleControlType.getType() property. OleControl.isForms2OleControl() property will return true when control type is Forms 2.0 OLE control.

Forms2OleControl have getCaption(), getValue(), getEnabled(), getChildNodes() and getType() properties for reading.

**Java**

{{< highlight csharp >}}

// Load the document which have ActiveX Control.
Document doc = new Document("filename");

// Retrieve the target shape from the document. In our sample document this is the first shape.
Shape shape = (Shape)doc.getChild(NodeType.SHAPE, 0, true);
OleControl oleControl = shape.getOleFormat().getOleControl();

// Check control type is Forms 2.0 OLE control.
if (oleControl.isForms2OleControl())
{
  Forms2OleControl checkBox = (Forms2OleControl)oleControl;

  // Read ActiveX Control properties.
  System.out.println("Caption: " + checkBox.getCaption());
  System.out.println("Value: " + checkBox.getValue());
  System.out.println("Enabled: " + checkBox.getEnabled());
  System.out.println("Type: " + checkBox.getType());
  System.out.println("ChildNodes: " + checkBox.getChildNodes());
}
{{< /highlight >}}

## **BARCODE field supported**

Now we have supported updating of the legacy BARCODE field.

## **Default page margins, header and footer distance, column spacing depend on current culture**

Now default page margins, header/footer distance and column spacing depend on current culture to mimic MS Word behavior.

For example, now all page margins are 1 for English (United States) and English (United Kingdom).

Left, right, top margins are 2.5 cm; bottom margin is 2 cm for German.

The new defaults are used for a new document and for a loaded document if an explicit value is not set for the mention parameters.

The following code can be used to restore the previous behavior.

**Java**

{{< highlight csharp >}}
Document doc = new Document();

// Retrieve first section from the document.
Section section = doc.getFirstSection();

// Set section page setup properties.
section.getPageSetup().setLeftMargin(90);
 // 3.17 cm
section.getPageSetup().setRightMargin(90);
 // 3.17 cm
section.getPageSetup().setTopMargin(72);
 // 2.54 cm
section.getPageSetup().setBottomMargin(72);
 // 2.54 cm
section.getPageSetup().setHeaderDistance(35.4);
 // 1.25 cm
section.getPageSetup().setFooterDistance(35.4);
 // 1.25 cm
section.getPageSetup().getTextColumns().setSpacing(35.4);
 // 1.25 cm
{{< /highlight >}}

It is possible to change culture for current thread that will cause changing default page margins, header/footer distance and column spacing.

**Java**

{{< highlight csharp >}}
Locale locale = new Locale("GERMANY", "GERMAN");
Document doc = new Document();

// Retrieve first section from the document.
Section section = doc.getFirstSection();

// Set section page setup properties.
section.getPageSetup().setLeftMargin(70.85);
 // 2.5 cm
section.getPageSetup().setRightMargin(70.85);
 // 2.5 cm
section.getPageSetup().setTopMargin(70.85);
 // 2.5 cm
section.getPageSetup().setBottomMargin(56.7);
 // 2 cm
section.getPageSetup().setHeaderDistance(35.4);
 // 1.25 cm
section.getPageSetup().setFooterDistance(35.4);
 // 1.25 cm
section.getPageSetup().getTextColumns().setSpacing(35.4);
 // 1.25 cm
{{< /highlight >}}

## **New insertOleObject method**

Previous implementation of InsertOleObject expects full file name to linked object and chooses ProgId and ClsId depending on file extension. Passing internet URL reveals new use case. We can't extract file type from URL directly, URL can refer to page in very different way. It can be www.aspose.com, www.aspose.com\index.aspx?id=1 and so on. So Aspose.Words now has a new method which allows customer to pass ProgId explicitly.

**Java**

{{< highlight csharp >}}

// Create Document and DocumentBuilder.

// The builder makes it simple to add content to the document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert Ole Object.
builder.insertOleObject("http://www.aspose.com", "htmlfile", true, true, null);
{{< /highlight >}}

## **New public getOleFormat().getSuggestedFileName() property**

Microsoft Word is smart enough to extract file name of embedded OLE object if it is an OutlookAttach OLE object. So Aspose.Words mimics the same behavior. If file name can not be extracted, empty string is returned.

**Java**

{{< highlight csharp >}}

// Load the document.
Document doc = new Document("filename");

// Retrieve the target shape from the document.
Shape oleShape = (Shape) doc.getFirstSection().getBody().getChild(NodeType.SHAPE, 0, true);
System.out.println(oleShape.getOleFormat().getSuggestedFileName());
{{< /highlight >}}

## **Aspose.Words does not populate merge fields inside false part of IF field anymore**

WORDSNET-12622 issue is now resolved. Originally, this issue was about introducing the option to control whether to populate merge field inside false part of IF field or not. However, we eventually decided that the suggested option was too specific. Thus we decided to simply make Aspose.Words avoid populating merge fields inside the false part of the field. The cleanup options are not applied too. So, false part of the IF field remains unchanged, like in MS Word mail merge preview.

This is a behavioral change of the "mimic Word" kind. Therefore it should be presented to the customers.

## **Added option to trim white spaces from mail merge values**

WORDSNET-12650 and WORDSNET-12791 are now resolved. In Aspose.Words 15.12.0 an option is added that allows to trim trailing and leading whitespaces mail merge values:

{{< highlight csharp >}}
Document.getMailMerge().setTrimWhitespaces(false);
{{< /highlight >}}
