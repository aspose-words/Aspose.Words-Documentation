---
title: Insert Image using docx4j and Aspose.Words
type: docs
weight: 70
url: /java/insert-image-using-docx4j-and-aspose-words/
---

## **Aspose.Words - Insert Image**
This example inserts a floating image from a file or URL at a specified position and size.

**Java**

{{< highlight csharp >}}
builder.insertImage(dataDir + "background.jpg");
builder.insertImage(dataDir + "background.jpg",
        RelativeHorizontalPosition.MARGIN,
        100,
        RelativeVerticalPosition.MARGIN,
        200,
        200,
        100,
        WrapType.SQUARE);
{{< /highlight >}}
## **docx4j - Insert Image**
Adding images to a DOCX.

FileInputStream is to read image and below mentioned code shows how the image is to be added in DOCX.

**Java**

{{< highlight csharp >}}
WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();

// The image to add
File file = new File(dataDir + "java_logo.png" );

// Our utility method wants that as a byte array
java.io.InputStream is = new java.io.FileInputStream(file );
long length = file.length();

// You cannot create an array using a long type.

// It needs to be an int type.
if (length > Integer.MAX_VALUE) {
	System.out.println("File too large!!");
}
byte[] bytes = new byte[(int)length];
int offset = 0;
int numRead = 0;
while (offset < bytes.length
       && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
    offset += numRead;
}

// Ensure all the bytes have been read in
if (offset < bytes.length) {
    System.out.println("Could not completely read file "+file.getName());
}
is.close();
String filenameHint = null;
String altText = null;
int id1 = 0;
int id2 = 1;

// Image 1: no width specified
org.docx4j.wml.P p = newImage( wordMLPackage, bytes,
		filenameHint, altText,
		id1, id2 );
wordMLPackage.getMainDocumentPart().addObject(p);

// Image 2: width 3000
org.docx4j.wml.P p2 = newImage( wordMLPackage, bytes,
		filenameHint, altText,
		id1, id2, 3000 );
wordMLPackage.getMainDocumentPart().addObject(p2);

// Image 3: width 6000
org.docx4j.wml.P p3 = newImage( wordMLPackage, bytes,
		filenameHint, altText,
		id1, id2, 6000 );
wordMLPackage.getMainDocumentPart().addObject(p3);

// Now save it
wordMLPackage.save(new java.io.File(dataDir + "OUT_AddImage.docx") );
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/featurescomparison/documents/addimage/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/addimage)

{{% alert color="primary" %}} 

For more details, visit [Inserting Document Elements](/words/java/use-documentbuilder-to-insert-document-elements/).

{{% /alert %}}
