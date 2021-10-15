---
title: Public API Changes in Aspose.Words 16.1.0
type: docs
weight: 10
url: /java/public-api-changes-in-aspose-words-16-1-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 16.01.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## HtmlSaveOptions.ExportPageMargins Property Added

We have now added a new public property to HtmlSaveOptions class: 

**Java**

{{< highlight csharp >}}
/**
 Specifies whether page margins is exported to HTML, MHTML or EPUB.
 Default is <c>false</c>.
 Aspose.Words does not show area of page margins by default.
 If any elements are completely or partially clipped by the document edge the displayed area can be extended with this option.
*/
public boolean getExportPageMargins() 
public void setExportPageMargins(boolean value)
{{< /highlight >}}

## ImageSaveOptions.UseGdiEmfRenderer Property Added

Now Aspose.Words could save metafiles directly without using GDI+. For now only saving to EmfPlusOnly format is supported. In Aspose.Words for .NET version this is controlled by the flag in ImageSaveOptions.

**Java**

{{< highlight csharp >}}
/**
 Gets or sets a value determining whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
 If set to <c>true</c> GDI+ metafile renderer is used. I.e. content is written to GDI+ graphics
 object and saved to metafile.
 If set to <c>false</c> Aspose.Words metafile renderer is used. I.e. content is written directly
 to the metafile format with Aspose.Words.
 The default value is <c>true</c>.
 Has effect only when saving to EMF.
*/
public boolean UseGdiEmfRenderer;
{{< /highlight >}}

## HtmlFixedSaveOptions.ExportFormFields Property Added

We have now added a new public property to HtmlFixedSaveOptions class: 

**Java**

{{< highlight csharp >}}
/**
 Gets or sets indication of whether form fields are exported as interactive
 items (as 'input' tag) rather than converted to text or graphics.
*/
public boolean getExportFormFields() 
public void setExportFormFields(boolean value)
{{< /highlight >}}

## Ancient Legacy Binary DOC files supported Now.

We have added support for older binary DOC format for Word6.0/Word95 documents import. Public enum LoadFormat.DocPreWord97 renamed to DocPreWord60 to avoid confusion.

## Public Methods Added in DocumentBuilder class to Insert Signature Lines.

Following two methods are added to DocumentBuilder class to insert signature lines. 

**Java**

{{< highlight csharp >}}
/** 
 Inserts a signature line at the current position.
 @param signatureLineOptions The object that stores parameters of creating signature line .
 @return The signature line node that was just inserted.
*/
public Shape insertSignatureLine(SignatureLineOptions signatureLineOptions);
/** 
 Inserts a signature line at the specified position.
 @param signatureLineOptions The object that stores parameters of creating signature line.
 @param horzPos Specifies where the distance to the signature line is measured from.
 @param left Distance in points from the origin to the left side of the signature line.
 @param vertPos Specifies where the distance to the signature line measured from.
 @param top Distance in points from the origin to the top side of the signature line.
 @param wrapType Specifies how to wrap text around the signature line.
 @return The signature line node that was just inserted.
*/
public Shape insertSignatureLine(SignatureLineOptions signatureLineOptions, RelativeHorizontalPosition horzPos, double left, RelativeVerticalPosition vertPos, double top, WrapType wrapType);
{{< /highlight >}}

Following code example shows how to insert signature line.

**Java**

{{< highlight csharp >}}
  Document doc = new Document();
  DocumentBuilder builder = new DocumentBuilder(doc);
  SignatureLineOptions options = new SignatureLineOptions();
  options.setSigner("John Doe");
  options.setSignerTitle("Manager");
  options.setShowDate(false);
  builder.insertSignatureLine(options);
{{< /highlight >}}

## Shape.SignatureLine Property Added

We have now added a new public property to Shape class. **Note! Now it is not possible to sign a signature line by digital signature in Aspose.Words.**

**Java**

{{< highlight csharp >}}
/** 
 Gets <see cref="SignatureLine"/> object if the shape is a signature line. Returns <b>null</b> otherwise.
 You can insert new SignatureLines into the document using <see cref="DocumentBuilder.InsertSignatureLine(SignatureLineOptions)"/> and
 {@link DocumentBuilder.InsertSignatureLine(SignatureLineOptions, RelativeHorizontalPosition, double, RelativeVerticalPosition, double, WrapType)}
*/
public SignatureLine getSignatureLine() 
public void setSignatureLine(SignatureLine line)
{{< /highlight >}}

Public properties of the SignatureLine class:

**Java**

{{< highlight csharp >}}
/**
  Gets or sets suggested signer of the signature line.
   Default value for this property is <see cref="string.Empty"/>.
*/  
public String getSigner() 
public void setSigner(String value)
/** 
   Gets or sets suggested signer's title (for example, Manager).
   Default value for this property is <see cref="string.Empty"/>.
*/  
public String getSignerTitle() 
public void setSignerTitle(String value)
/** 
   Gets or sets suggested signer's e-mail address.
   Default value for this property is <see cref="string.Empty"/>.
*/  
public String getEmail() 
public void setEmail(String value)
/** 
   Gets or sets a value indicating that default instructions is shown in the Sign dialog.
   Default value for this property is <b>true</b>.
*/  
public boolean getDefaultInstructions() 
public void setDefaultInstructions(boolean value)
/** 
   Gets or sets instructions to the signer that are displayed on signing the signature line.
   This property is ignored if <see cref="DefaultInstructions"/> is set.
   Default value for this property is <see cref="string.Empty"/>.
*/  
public String getInstructions() 
public void setInstructions(String value)
/** 
   Gets or sets a value indicating that the signer can add comments in the Sign dialog.
   Default value for this property is <b>false</b>.
*/  
public boolean getAllowComments() 
public void setAllowComments(boolean value)
/** 
   Gets or sets a value indicating that sign date is shown in the signature line.
   Default value for this property is <b>true</b>.
*/  
public boolean getShowDate() 
public void setShowDate(boolean value)
/** 
   Indicates that signature line is signed by digital signature.
*/  
public boolean isSigned()
/**  
   Indicates that signature line is signed by digital signature and this digital signature is valid.
*/  
public boolean isValid()
{{< /highlight >}}

Following code example shows how to use SignatureLine's properties.

**Java**

{{< highlight csharp >}}
Document doc = new Document("c:/input/.docx");
Shape shape = (Shape)doc.getChild(NodeType.SHAPE, 0, true);
SignatureLine signatureLine = shape.getSignatureLine();
signatureLine.setSigner("John Doe2");
signatureLine.setSignerTitle("Manager2");
signatureLine.setShowDate(true);
{{< /highlight >}}

## A New Feature Added to Configure Document Hyphenation Options

New HyphenationOptions class has added in Aspose.Words. HyphenationOptions instance is available as a readonly property on the Document class and contains the following properties to configure document hyphenation options:

**Java**

{{< highlight csharp >}}
/**
 Gets or sets value determining whether automatic hyphenation is turned on for the document.
 Default value for this property is <b>false</b>.
*/
public boolean getAutoHyphenation() 
public void setAutoHyphenation(boolean value)
/** 
 Gets or sets the maximum number of consecutive lines that can end with hyphens.
 Default value for this property is 0.
 <p>If value of this property is set to 0, any number of consecutive lines can end with hyphens.</p>
 <p>The property does not have effect when saving to fixed page formats e.g. PDF.</p>
*/
public int getConsecutiveHyphenLimit() 
public void setAutoHyphenation(int value)
/** 
 Gets or sets the distance in 1/20 of a point from the right margin within which you do not want
 to hyphenate words.
 Default value for this property is 360 (0.25 inch).
*/
public int getHyphenationZone() 
public void setHyphenationZone(int value)
/** 
 Gets or sets value determining whether words written in all capital letters are hyphenated.
 Default value for this property is <b>true</b>.
*/
public boolean getHyphenateCaps() 
public void setHyphenateCaps(boolean value)
{{< /highlight >}}

Following code example demonstrates how to use HyphenationOptions's properties. 

**Java**

{{< highlight csharp >}}
Document doc = new Document();
doc.getHyphenationOptions().setAutoHyphenation(true);
doc.getHyphenationOptions().setConsecutiveHyphenLimit(2);
doc.getHyphenationOptions().setHyphenationZone(720);
 // 0.5 inch
doc.getHyphenationOptions().setHyphenateCaps(false);
{{< /highlight >}}

## Font Substitution Warnings Improved

|Substitution case |Warning text |Previous warning text |
| :- | :- | :- |
|Font substitution per AltName from document FontInfos. |"Font '<font_name>' has not been found. Using '<alt_name>' font instead. Reason: alternative name from document." |No warning |
|Font substitution per FontSettings.DefaultFontName. |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: default font setting." |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead." |
|Font substitution per first available font. |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: first available font." |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead." |
|Font substitution per specified font substitutes. |"Font substitutes: '<font_name>' replaced with '<substitute_name>'." |No warning |
|Font substitution when saving to image |"GDI+ can't load '<font_name>' font. Using '<substitution_name>' font instead." |"GDI+ doesn't support OpenType fonts with PostScript outlines. '<font_name>' font has been substituted." |

## A New Feature Added to Get Mail Merge Regions Hierarchy

We have added the **MailMergeRegionInfo** public class and the **MailMerge.GetRegionsHierachy** public method. These allow to obtain mail merge hierarchy including child regions and fields.

**Java**

{{< highlight csharp >}}
/** 
 Returns a full hierarchy of regions (with fields) available in the document.
 <p>Hierarchy is returned in the form of the <see cref="MailMergeRegionInfo"/> class.</p>
 @return Regions' hierarchy.
*/
public MailMergeRegionInfo GetRegionsHierarchy()
/**
Contains information about a mail merge region.
*/
public class MailMergeRegionInfo
{
    /**
     Returns a list of child regions.
    */
    public ArrayList getRegions();
    /**
    Returns a list of child merge fields.
    */
    public ArrayList getFields();
    /**
    Returns the name of region.
    */
    public string getName();
    /**
    Returns a start field for the region.
    */
    public FieldMergeField getStartField();
    /**
    Returns an end field for the region.
    */
    public FieldMergeField getEndField();
}
{{< /highlight >}}

Following code example demonstrates how to extract full hierarchy of regions available in the document.

**Java**

{{< highlight csharp >}}
ArrayList /*<MailMergeRegionInfo>*/ topRegions = regionInfo.getRegions();
assert 2 == topRegions.size();
assert ((MailMergeRegionInfo)topRegions.get(0)).getName().equals("Region1");
assert ((MailMergeRegionInfo)topRegions.get(1)).getName().equals("Region2");
ArrayList /*<MailMergeRegionInfo>*/ nestedRegions = ((MailMergeRegionInfo)topRegions.get(0)).getRegions();
assert 2 == nestedRegions.size();
assert ((MailMergeRegionInfo)nestedRegions.get(0)).getName().equals("NestedRegion1");
assert ((MailMergeRegionInfo)nestedRegions.get(1)).getName().equals("NestedRegion2");
nestedRegions = ((MailMergeRegionInfo)topRegions.get(1)).getRegions();
assert 2 == nestedRegions.size();
assert ((MailMergeRegionInfo)nestedRegions.get(0)).getName().equals("NestedRegion1");
assert ((MailMergeRegionInfo)nestedRegions.get(1)).getName().equals("NestedRegion2");
{{< /highlight >}}

## A New Feature Added to Work Without Static Font Cache and can Use Per-document Font Settings

All methods of FontSettings class made instance methods. Static methods are replaced with static DefaultInstance property. **This is a breaking change.**

**Java**

{{< highlight csharp >}}
/** 
 Specifies font settings for a document.
 <p>Aspose.Words uses font settings to resolve the fonts in the document. Fonts are resolved mostly when building document layout
 or rendering to fixed page formats. But when loading some formats, Aspose.Words also may require to resolve the fonts. For example, when
 loading HTML documents Aspose.Words may resolve the fonts to perform font fallback. So it is recommended that you set the font settings in
 <see cref="LoadOptions"/> when loading the document. Or at least before building the layout or rendering the document to the fixed-page format.</p>
 <p>By default all documents uses single static font settings instance. It could be accessed by
 <see cref="DefaultInstance"/> property.</p>
 <p>Changing font settings is safe at any time from any thread. But it is recommended that you do not change the font settings while
 processing some documents which uses this settings. This can lead to the fact that the same font will be resolved differently
 in different parts of the document.</p>
*/
public class FontSettings
{
    public void setFontsFolder(string fontFolder, boolean recursive);
    public void setFontsFolders(string[] fontsFolders, boolean recursive);
    public void setFontsSources(FontSourceBase[] sources);
    public FontSourceBase[] getFontsSources();
    public void resetFontSources();
    public String getDefaultFontName();
    public String[] getFontSubstitutes(string originalFontName);
    public void setFontSubstitutes(string originalFontName, params string[] substituteFontNames);
    public void addFontSubstitutes(string originalFontName, params string[] substituteFontNames);
    /**	    
    Static default font settings.
    This instance is used by default in a document unless <see cref="Document.FontSettings"/> is specified.
    */
    public static FontSettings getDefaultInstance();
}
{{< /highlight >}}

FontSettings properties added to Document class

**Java**

{{< highlight csharp >}}
/** 
 Gets or sets document font settings.
 <p>This property enables to specify font settings per document. If set to null, default static font settings
 <see cref="Aspose.Words.Fonts.FontSettings.DefaultInstance"/> will be used.</p>
 <p>The default value is null.</p>
*/
public FontSettings getFontSettings() 
public void setFontSettings(FontSettings value)
{{< /highlight >}}

and LoadOptions class

**Java**

{{< highlight csharp >}}
/** 
 Allows to specify document font settings.
 <p>When loading some formats, Aspose.Words may require to resolve the fonts. For example, when loading HTML documents Aspose.Words
 may resolve the fonts to perform font fallback.</p>
 <p>If set to null, default static font settings <see cref="Aspose.Words.Fonts.FontSettings.DefaultInstance"/> will be used.</p>
 <p>The default value is null.</p>
*/
public FontSettings getFontSettings() 
public void setFontSettings(FontSettings value)
{{< /highlight >}}

**Use Case 1:** 
If users used static font settings and want to keep it they should use FontSettings.DefaultInstance now.

**Java**

{{< highlight csharp >}}

// Before 16.01.0
FontSettings.setFontSources(fontSources};
Document doc = new Document(inFile);
doc.save(outFile);

// After 16.01.0
FontSettings.getDefaultInstance().setFontsSources(fontSources);
Document doc = new Document(inFile);
doc.save(outFile);
{{< /highlight >}}

**Use Case 2:** 
If users want to use document settings they could pass it either to LoadOptions or to Document.

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = new FontSettings();
fontSettings.setFontsSources(fontSources);

// Using load options
LoadOptions loadOptions = new LoadOptions();
loadOptions.setFontSettings(fontSettings);
Document doc = new Document(inFile, loadOptions);
doc.save(outFile);
//Using Document.FontSettings
doc = new Document(inFile);
doc.setFontSettings(fontSettings);
doc.save(outFile);
{{< /highlight >}}

## FormField.removeField() method Added

We have added a capability to remove the whole form field right from the FormField object.

**Java**

{{< highlight csharp >}}
/**
Removes the complete form field, not just the form field special character.
If there is a bookmark associated with the form field, the bookmark is not removed.
*/
public void removeField()
{{< /highlight >}}

## MailMerge.PreserveUnusedTags option Added

We have added a capability to preserve mustache tags that haven't been populated.

**Java**

{{< highlight csharp >}}
/** 
 Gets or sets a value indicating whether the unused "mustache" tags should be preserved.
 The default value is <b>false</b>.
 {@link UseNonMergeFields}
*/
public boolean getPreserveUnusedTags() 
public void setPreserveUnusedTags(boolean value)
{{< /highlight >}}

## A New Feature Added to Control Global Mail Merge Events

We have added the **IMailMergeCallback** interface and **MailMerge.MailMergeCallback** property. This allows to respond to different global mail merge events. Currently it supports a single event, **TagsReplaced**, which is fired when mustache fields are replaced with merge fields but not yet merged. In the future we may consider introducing other events.

**Java**

{{< highlight csharp >}}
/**
Allows to handle particular events during mail merge.
*/
public interface IMailMergeCallback 
/**
Implement this interface if you want to receive notifications while mail merge is performed.
*/
public interface IMailMergeCallback
{
    /**
    Called when "mustache" text tags are replaced with MERGEFIELD fields.
    <seealso cref="MailMerge.UseNonMergeFields"/> 
    */	
    void tagsReplaced();
}
{{< /highlight >}}

**Use Case**

**Java**

{{< highlight csharp >}}
/**
The <see cref="IMailMergeCallback.TagsReplaced"/> event should rised when mail merge is performed with the <see cref="MailMerge.UseNonMergeFields"/> option.
*/
[Test]
public void TestTagsReplacedEventShouldRisedWithUseNonMergeFieldsOption()
{
    Document document = new Document();
    document.getMailMerge().setUseNonMergeFields(true);
    MailMergeCallbackStub mailMergeCallbackStub = new MailMergeCallbackStub();
    document.getMailMerge().setMailMergeCallback(mailMergeCallbackStub);
    document.getMailMerge().execute(
        new String[0],
        new Object[0]);
    assert 1 == mailMergeCallbackStub.getTagsReplacedCounter();
}
private class MailMergeCallbackStub implements IMailMergeCallback
{
    public void tagsReplaced()
    {
        mTagsReplacedCounter++;
    }
    public int getTagsReplacedCounter()
    {
    	return mTagsReplacedCounter;
    }
    private int mTagsReplacedCounter;
}
{{< /highlight >}}

## Public Fields API v2.0 - Building Arbitrary Field Using FieldBuilder

We have now provided typed access to all Microsoft Word fields, it is a good time to allow users build an arbitrary field code. We can insert a complete field code via **DocumentBuilder**, or we can insert a field of a certain type and access its code using the typed properties of a **FieldXXX** class. 

Below are skeletons of proposed classes responsible for building a field. They support nested fields and arbitrary document nodes. They also expose a bunch of methods for convenient insertion of field argument and switches.

**Java**

{{< highlight csharp >}}
/** 
 Builds a field from field code tokens(arguments and switches).
*/
public class FieldBuilder
{
	/** 
	 Initializes an instance of the <see cref="FieldBuilder"/> class.
	 @param fieldType
	*/
	public FieldBuilder(FieldType fieldType)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's argument.
	 Unlike <see cref="AddText"/>, separates the text with spaces and encloses it into double quotes if needed.
	 @param argument
	*/
	public final FieldBuilder AddArgument(String argument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's argument.
	 @param argument
	*/
	public final FieldBuilder AddArgument(int argument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's argument.
	 @param argument
	*/
	public final FieldBuilder AddArgument(double argument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a child field represented by another <see cref="FieldBuilder"/> to the field's code.
	 This overload is used when the argument consists of a single child field.
	 @param childField
	 @return 
	*/
	public final FieldBuilder AddArgument(FieldBuilder argument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a child field represented by another <see cref="FieldBuilder"/> to the field's code.
	 This overload is used when the argument consists of a mixture of different parts such as child fields, nodes, and plain text.
	 @param argument
	 @return 
	*/
	public final FieldBuilder AddArgument(FieldArgumentBuilder argument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's switch.
	 This overload adds a flag (switch without argument).
	 @param switchName
	*/
	public final FieldBuilder AddSwitch(String switchName)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's switch.
	 @param switchName
	 @param switchArgument
	*/
	public final FieldBuilder AddSwitch(String switchName, String switchArgument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's switch.
	 @param switchName
	 @param switchArgument
	*/
	public final FieldBuilder AddSwitch(String switchName, int switchArgument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field's switch.
	 @param switchName
	 @param switchArgument
	*/
	public final FieldBuilder AddSwitch(String switchName, double switchArgument)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Builds and inserts a field into the document.
	 @param refNode
	 @param isAfter
	 @return 
	*/
	public final Field BuildAndInsert(Node refNode, boolean isAfter)
	{
		throw new UnsupportedOperationException();
	}
}
/** 
 Builds a complex field argument consisting of fields, nodes, and plain text.
*/
public class FieldArgumentBuilder
{
	/** 
	 Adds a plain text to the argument.
	 @param text
	 @return 
	*/
	public final FieldArgumentBuilder AddText(String text)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds an arbitrary node to the argument.
	 @param node
	 @return 
	*/
	public final FieldArgumentBuilder AddNode(Node node)
	{
		throw new UnsupportedOperationException();
	}
	/** 
	 Adds a field represented by a <see cref="FieldBuilder"/> to the argument.
	 @param fieldBuilder
	 @return 
	*/
	public final FieldArgumentBuilder AddField(FieldBuilder fieldBuilder)
	{
		throw new UnsupportedOperationException();
	}
}
{{< /highlight >}}

Following code snippet shows how to use FieldBuilder.

**Java**

{{< highlight csharp >}}
FieldBuilder builder = new FieldBuilder(FieldType.FIELD_IF);
builder
    .addArgument(new FieldBuilder(FieldType.FIELD_MERGE_FIELD).addArgument("CustomerName"))
    .addArgument("=")
    .addArgument("John Smith")
    .addArgument(10)
    .addArgument(20)
    .BuildAndInsert(refNode, true);
{{< /highlight >}}
