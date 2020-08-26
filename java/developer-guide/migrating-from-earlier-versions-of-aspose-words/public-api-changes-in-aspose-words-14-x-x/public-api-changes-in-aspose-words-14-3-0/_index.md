---
title: Public API Changes in Aspose.Words 14.3.0
type: docs
weight: 30
url: /java/public-api-changes-in-aspose-words-14-3-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 14.3.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **Best Fit Position of Data Labels Partially Supported**
Starting from 14.3.0, Best Fit position of data labels in Pie chart is partially supported. In previous versions labels with best fit position were rendered as if they have inside end position. Currently we use a little modified Open Office algorithm to set best fit position of data labels. The algorithm is as follows:

1. Data label is rendered inside the corresponding slice of pie chart.
1. Code checks whether label fits slice, if so - that's it no further processing is required.
1. If not data labels is rendered outside slice and is marked as one that requires position update.
1. After all data labels are processed the Open Office's algorithm starts: 
   1. The labels are being placed as if 'outside' would have been selected (this step was done in 3rd step)
   1. Groups of overlapping labels are detected.
   1. The first group of overlapping labels is being handled as follows: 
      1. The algorithm starts with the central label. Two cases have to be distinguished: 
         1. The count of overlapping labels in the group is uneven: the central label is not moved at all.
         1. The count of overlapping labels in the group is even: the central label per define is that one at position (1+count/2). For example having 4 overlapping labels we have the positions 1,2,3 and 4 and the central label is that at  position 3. The so defined central label is moved only half the way that would be necessary to avoid the overlap with the former neighbour. Labels are not moved at all if they are not marked as ones that required position update (see step 3).
      1. All labels following after the central label are moved away from the central label and all their previous neighbours between the central label and themselves. Labels are not moved at all if they are not marked as ones that required position update (see step 3).
      1. All labels before the central label are moved away from the central label and all their following neighbours between the central label and themselves. Labels are not moved at all if they are not marked as ones that required position update (see step 3).
      1. The direction to move away is given by this rule: 
         1. Labels at the top or at the bottom of the pie are moved to the left or right side.
         1. Labels at the left or right side of the pie are moved upwards or downwards.
1. If after processing data label was moved outside the chart's rectangle, it is moved inside it even if this leads in labels overlapping.
1. Leader lines are drawn to all moved data labels.

Here are few examples:

\1. Best fit position of data labels of 2D Pie chart:

![todo:image_alt_text](/download/thumbnails/2884694/1149111684)

\2. Best fit position of data labels of 3D Pie chart:

![todo:image_alt_text](/download/thumbnails/2884694/1795045600)
### **EUDC Fonts Partial Support Added**
Aspose.Words' rendering engine now partially supports EUDC (End-User-Defined-Characters) fonts. Please find below the description of how EUDC fonts works on Windows (Microsoft Word also seems to follow this logic in general):

[End-User-Defined and Private Use Area Characters](http://msdn.microsoft.com/en-us/library/windows/desktop/dd317802\(v=vs.85\).aspx)

In first implementation, Aspose.Words currently uses a single EUDC font. During rendering document to fixed-page formats, this font is searched among the specified font sources by "EUDC" family name.
### **DocumentBuilder.insertOleObject Method Added to the Public API**
Aspose.Words now supports insertion of embedded OLE objects such as another Word document or an Excel chart. Following two methods are added to DocumentBuilder class:

**Overload 1**

{{< highlight csharp >}}

 public Shape DocumentBuilder.insertOleObject(InputStream stream, String progId, boolean asIcon, BufferedImage presentation)

{{< /highlight >}}

**stream -** Binary data of OLE object. It is up to the user what this data is. Note that this method has no 'isLinked' parameter contrary to the next method. It is impossible to insert object linked to stream.

**progId -** Programmatic Identifier of OLE object. This is something like 'Word.Document.12' string which identifies OLE object. If 'progId' is known to Aspose.Words, it will be inserted the same way OLE host application inserts it. If 'progId' is unknown to Aspose.Words, it will be inserted as Packager OLE object which is legacy way to insert OLE object if host application is missed for this 'progId'.

**asIcon -** Used to specify view mode for object being inserted. It can be either Icon or Normal view mode.

**presentation -** Used to specify presentation image for object being inserted. Can be null. If null is passed then one of predefined images is loaded and used.

**Overload 2**

{{< highlight csharp >}}

 public Shape DocumentBuilder.insertOleObject(String fileName, boolean isLinked, boolean asIcon, BufferedImage presentation)

{{< /highlight >}}

**fileName -** The file being inserted as OLE object. Note that 'progId' is missed in this method because Aspose.Words detects it using file extension. So, file extension should be valid. Otherwise object is inserted as Packager OLE object.

**isLinked -** If true, object is inserted as linked OLE object otherwise embedded object is inserted.

The usage of above two methods is as follows:

**UC1 Insert embedded Excel 97-2003 document as iconic OLE object from stream using predefined image**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

InputStream stream = new FileInputStream(MyDir + "Book1.xls");

Shape oleObject = builder.insertOleObject(stream, "Excel.Sheet.8", true, null);

doc.save(MyDir + "out.docx");

{{< /highlight >}}

**UC2 Insert linked Word document from file as normal OLE object using custom presentation image**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

BufferedImage image = ImageIO.read(new File(MyDir + "Aspose.Words.png"));

Shape oleObject = builder.insertOleObject(MyDir + "ActualOutput.docx", true, false, image);

doc.save(MyDir + "out.docx");

{{< /highlight >}}
