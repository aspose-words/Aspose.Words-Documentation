---
title: Public API Changes in Aspose.Words 15.11.0
type: docs
weight: 110
url: /java/public-api-changes-in-aspose-words-15-11-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 15.11.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Added public methods CreatePictureBullet(), DeletePictureBullet() and public property ImageData in ListLevel.

Using ListLevel.ImageData you are getting access to all available ImageData options. Please see the following code example to find out how to work with picture bullets.

**Java**

{{< highlight csharp >}}
String imageSrc = "Bullet1.png";

// Create a document and document builder.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Create a list.
List list = doc.getLists().add(ListTemplate.BULLET_CIRCLE);

// Configure list if necessary.
ListLevel listLevel0 = list.getListLevels().get(0);

// You can check HasPictureBullet property and ImageData (currently ImageData is null).

// listLevel0.HasPictureBullet;

// listLevel0.ImageData;

// Create picture bullet with default red cross image for the current list level.
listLevel0.createPictureBullet();

// Set your own picture bullet image through the ImageData.
listLevel0.getImageData().setImage(imageSrc);

// Configure second level.
list.getListLevels().get(1).setNumberStyle(NumberStyle.ARABIC);
list.getListLevels().get(1).setNumberFormat("\u0001.");

// Configure next levels if necessary.

// Apply the list to the current paragraph.
builder.getListFormat().setList(list);
builder.writeln("item 1");

// Increase level.
builder.getListFormat().listIndent();
builder.writeln("item 1.1");
builder.writeln("item 1.2");
builder.writeln("item 1.3");

// Decrease level.
builder.getListFormat().listOutdent();
builder.write("item 2");

// Save output.
doc.save("out_With_PictureBullet.docx");

// Lets delete picture bullet.

// Default bullet will be shown after deleting.
listLevel0 = doc.getLists().get(0).getListLevels().get(0);

// Delete picture bullet.
listLevel0.deletePictureBullet();

// Save output.
doc.save("out_Without_PictureBullet.docx");
{{< /highlight >}}

## Added public overload DocumentBuilder.InsertCheckBox, public property FormField.Default

WORDSNET-11871 is now resolved. The following overload method of InsertCheckBox has been added to the DocumentBuilder class:

**Java**

{{< highlight csharp >}}
/**
 Inserts a checkbox form field at the current position.
 <p>If you specify a name for the form field, then a bookmark is automatically created with the same name.</p>
 </remarks>
 @param The name of the form field. Can be an empty string.
 @param Default value of the checkbox form field.
 @param Current checked status of the checkbox form field.
 @param Specifies the size of the checkbox in points. Specify 0 for MS Word
 to calculate the size of the checkbox automatically. 
 Returns the form field node that was just inserted.
 @return
*/
public FormField insertCheckBox(String name, boolean defaultValue, boolean checkedValue, int size)
{{< /highlight >}}

It allows defining default value and checked state of inserting check box separately. The behavior of the following existing overload is changed.

**Java**

{{< highlight csharp >}}
public FormField insertCheckBox(String name, boolean checkedValue, int size)
{{< /highlight >}}

Now checkedValue value is also assigned as default value of check box. Default value had the 'false' value in the previous version. The checkedValue parameter of the overload has been renamed (old name: defaultValue).

The following new public property has been added to the FormField class to provide ability to set check box default value:

**Java**

{{< highlight csharp >}}
/**
Gets or sets the default value of the check box form field.
Default value for this property is <b>false</b>.
Applicable for a check box form field only.
*/
public boolean Default
{{< /highlight >}}

## Bookmarks with white-spaces are allowed in PDF, XPS and SWF

WORDSNET-12531 is now resolved. In the previous versions of Aspose.Words it was not allowed to use bookmarks with white spaces in all document formats. All white spaces in the bookmarks were replaced with underscores. This restriction came from MS Word formats, since bookmarks in MS Word formats, like DOCX or DOC cannot have white spaces. However, PDF allows such bookmarks.

So now, if you need to use bookmarks in PDF, XPS or SWF outlines, you can use them with white spaces.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.startBookmark("My Bookmark");
builder.writeln("Text inside a bookmark.");
builder.startBookmark("Nested Bookmark");
builder.writeln("Text inside a NestedBookmark.");
builder.endBookmark("Nested Bookmark");
builder.writeln("Text after Nested Bookmark.");
builder.endBookmark("My Bookmark");
PdfSaveOptions options = new PdfSaveOptions();
options.getOutlineOptions().getBookmarksOutlineLevels().add("My Bookmark", 1);
options.getOutlineOptions().getBookmarksOutlineLevels().add("Nested Bookmark", 2);
doc.save(MyDir + "Out.pdf", options);
{{< /highlight >}}

In the document generated such way bookmarks in outlines will have white-spaces, that make it more convenient to read. Also if you have existing bookmarks and would like to use them in PDF outlines, you can replace underscores in bookmarks with white spaces.

**Java**

{{< highlight csharp >}}
for (Bookmark bookmark : doc.getRange().getBookmarks())
{
    bookmark.setName(bookmark.getName().replace("_", " "));
}
{{< /highlight >}}

Note: behavior for all other formats was not changed. White spaces in bookmarks are replaced with underscores upon saving to all flow formats.

## Document-wide defaults are exposed public.

WORDSNET-4079 is now resolved. We have added new public properties DefaultParagraphFormat and DefaultFont to StyleCollection class:

**Java**

{{< highlight csharp >}}
Font Document.Styles.DefaultFont;
ParagraphFormat Document.Styles.DefaultParagraphFormat;
{{< /highlight >}}

Use Case 1

**Java**

{{< highlight csharp >}}
Document doc = new Document();
doc.getStyles().getDefaultFont().setNameFarEast("PMingLiU");
{{< /highlight >}}

Use Case 2

**Java**

{{< highlight csharp >}}
Document doc = new Document();
doc.getStyles().getDefaultParagraphFormat().setSpaceAfter(20);
{{< /highlight >}}

{{% alert color="primary" %}} 

Note that document-wide defaults were introduced in Microsoft Word 2007 and are fully supported in OOXML formats only. Earlier document formats have limited support for default text formatting (only font names can be stored) and have no support for default paragraph formatting (default paragraph formatting is copied to all top level styles when it is not supported in target document format).

{{% /alert %}}

## OutlineOptions.CreateMissingOutlineLevels now works for bookmarks too

In the previous versions of Aspose.Words with this option enabled missing outline levels was created only for headings. Now missing outline levels are created both for headings and bookmarks.

**Java**

{{< highlight csharp >}}
/**
Gets or sets a value determining whether or not to create missing outline levels when the document is
exported.
Default value for this property is <b>false</b>
*/
public bool createMissingOutlineLevels { get; set; }
{{< /highlight >}}

## New public property UpdateFields has been added to SaveOptions

We have added new public property UpdateFields to SaveOptions class:

**Java**

{{< highlight csharp >}}
/**
Gets or sets a value determining if fields should be updated before saving the document to a fixed page format.
Default value for this property is <b>true</b>
*/
public bool UpdateFields {get;set;}
{{< /highlight >}}

## ReportBuildOptions.AllowMissingDataFields is renamed to ReportBuildOptions.AllowMissingMembers

ReportBuildOptions.AllowMissingDataFields affected only fields of DataRow and IDataRecord instances. The option was introduced per WORDSNET-12380 for a single customer. Then, the customer returned complaining that he also needs master-detail relationships and extension methods to be affected. Thus, the option's purpose had to be changed. That is why, the option was renamed.

**Java**

{{< highlight csharp >}}
/**
Specifies that missing object members should be treated as null literals by the engine. This option
affects only access to instance (that is, non-static) object members and extension methods. If this
option is not set, the engine throws an exception when encounters a missing object member.
*/
AllowMissingMembers = 1
{{< /highlight >}}

We decided simply rename the option instead of introducing a new one, thus bringing a breaking change to the public API.
