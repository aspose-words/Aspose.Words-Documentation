---
title: Public API Changes in Aspose.Words 16.1.0
type: docs
weight: 10
url: /net/public-api-changes-in-aspose-words-16-1-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 16.01.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## HtmlSaveOptions.ExportPageMargins Property Added

We have now added a new public property to HtmlSaveOptions class: 

**C#**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether page margins is exported to HTML, MHTML or EPUB.
/// Default is <c>false</c>.
/// </summary>
/// <remarks>
/// Aspose.Words does not show area of page margins by default.
/// If any elements are completely or partially clipped by the document edge the displayed area can be extended with this option.
/// </remarks>
public bool ExportPageMargins
{
   get { return mExportPageMargins; }
   set { mExportPageMargins = value; }
}
{{< /highlight >}}

### ImageSaveOptions.UseGdiEmfRenderer Property Added

Now Aspose.Words could save metafiles directly without using GDI+. For now only saving to EmfPlusOnly format is supported. In Aspose.Words for .NET version this is controlled by the flag in ImageSaveOptions.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
/// </summary>
/// <remarks>
/// <para>If set to <c>true</c> GDI+ metafile renderer is used. I.e. content is written to GDI+ graphics
/// object and saved to metafile.</para>
/// <para>If set to <c>false</c> Aspose.Words metafile renderer is used. I.e. content is written directly
/// to the metafile format with Aspose.Words.</para>
/// <para>The default value is <c>true</c>.</para>
/// <para>Has effect only when saving to EMF.</para>
/// </remarks>
public bool UseGdiEmfRenderer;
{{< /highlight >}}

### HtmlFixedSaveOptions.ExportFormFields Property Added

We have now added a new public property to HtmlFixedSaveOptions class: 

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets indication of whether form fields are exported as interactive
/// items (as 'input' tag) rather than converted to text or graphics.
/// </summary>
public bool ExportFormFields
{
   get { return mExportFormFields; }
   set { mExportFormFields = value; }
}
{{< /highlight >}}

### Ancient Legacy Binary DOC files supported Now.

We have added support for older binary DOC format for Word6.0/Word95 documents import. Public enum LoadFormat.DocPreWord97 renamed to DocPreWord60 to avoid confusion.

### Public Methods Added in DocumentBuilder class to Insert Signature Lines.

Following two methods are added to DocumentBuilder class to insert signature lines. 

**C#**

{{< highlight csharp >}}
/// <summary>
/// Inserts a signature line at the current position.
/// </summary>
/// <param name="signatureLineOptions">The object that stores parameters of creating signature line .</param>
/// <returns>The signature line node that was just inserted.</returns>
public Shape InsertSignatureLine(SignatureLineOptions signatureLineOptions);
/// <summary>
/// Inserts a signature line at the specified position.
/// </summary>
/// <param name="signatureLineOptions">The object that stores parameters of creating signature line.</param>
/// <param name="horzPos">Specifies where the distance to the signature line is measured from.</param>
/// <param name="left">Distance in points from the origin to the left side of the signature line.</param>
/// <param name="vertPos">Specifies where the distance to the signature line measured from.</param>
/// <param name="top">Distance in points from the origin to the top side of the signature line.</param>
/// <param name="wrapType">Specifies how to wrap text around the signature line.</param>
/// <returns>The signature line node that was just inserted.</returns>
public Shape InsertSignatureLine(SignatureLineOptions signatureLineOptions, RelativeHorizontalPosition horzPos,
    double left, RelativeVerticalPosition vertPos, double top, WrapType wrapType);
{{< /highlight >}}

Following code example {shows|demonstrates} how to insert signature line.

**C#**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
SignatureLineOptions options = new SignatureLineOptions();
options.Signer = "John Doe";
options.SignerTitle = "Manager";
options.ShowDate = false;
builder.InsertSignatureLine(options);
{{< /highlight >}}

### Shape.SignatureLine Property Added

We have now added a new public property to Shape class. **Note! Now it is not possible to sign a signature line by digital signature in Aspose.Words.**

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets <see cref="SignatureLine"/> object if the shape is a signature line. Returns <b>null</b> otherwise.
/// </summary>
/// <remarks>You can insert new SignatureLines into the document using <see cref="DocumentBuilder.InsertSignatureLine(SignatureLineOptions)"/> and
/// <seealso cref="DocumentBuilder.InsertSignatureLine(SignatureLineOptions, RelativeHorizontalPosition, double, RelativeVerticalPosition, double, WrapType)"/></remarks>
public SignatureLine SignatureLine;
{{< /highlight >}}

Public properties of the SignatureLine class:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets suggested signer of the signature line.
/// Default value for this property is <see cref="string.Empty"/>.
/// </summary>
public string Signer { get; set; }
/// <summary>
/// Gets or sets suggested signer's title (for example, Manager).
/// Default value for this property is <see cref="string.Empty"/>.
/// </summary>
public string SignerTitle { get; set; }
/// <summary>
/// Gets or sets suggested signer's e-mail address.
/// Default value for this property is <see cref="string.Empty"/>.
/// </summary>
public string Email { get; set; }
/// <summary>
/// Gets or sets a value indicating that default instructions is shown in the Sign dialog.
/// Default value for this property is <b>true</b>.
/// </summary>
public bool DefaultInstructions { get; set; }
/// <summary>
/// Gets or sets instructions to the signer that are displayed on signing the signature line.
/// This property is ignored if <see cref="DefaultInstructions"/> is set.
/// Default value for this property is <see cref="string.Empty"/>.
/// </summary>
public string Instructions { get; set; }
/// <summary>
/// Gets or sets a value indicating that the signer can add comments in the Sign dialog.
/// Default value for this property is <b>false</b>.
/// </summary>
public bool AllowComments { get; set; }
/// <summary>
/// Gets or sets a value indicating that sign date is shown in the signature line.
/// Default value for this property is <b>true</b>.
/// </summary>
public bool ShowDate { get; set; }
/// <summary>
/// Indicates that signature line is signed by digital signature.
/// </summary>
public bool IsSigned { get; }
/// <summary>
/// Indicates that signature line is signed by digital signature and this digital signature is valid.
/// </summary>
public bool IsValid { get; }
{{< /highlight >}}

Following code example {shows|demonstrates} how to use SignatureLine's properties.

**C#**

{{< highlight csharp >}}
Document doc = new Document(@"C:\MyDir\Document1.docx");
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
SignatureLine signatureLine = shape.SignatureLine;
signatureLine.Signer = "John Doe2";
signatureLine.SignerTitle = "Manager2";
signatureLine.ShowDate = true;
{{< /highlight >}}

### A New Feature Added to Configure Document Hyphenation Options

New HyphenationOptions class has added in Aspose.Words. HyphenationOptions instance is available as a readonly property on the Document class and contains the following properties to configure document hyphenation options:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets value determining whether automatic hyphenation is turned on for the document.
/// Default value for this property is <b>false</b>.
/// </summary>
public bool AutoHyphenation {get;set;}
/// <summary>
/// Gets or sets the maximum number of consecutive lines that can end with hyphens.
/// Default value for this property is 0.
/// </summary>
/// <remarks>
/// <p>If value of this property is set to 0, any number of consecutive lines can end with hyphens.</p>
/// <p>The property does not have effect when saving to fixed page formats e.g. PDF.</p>
/// </remarks>
public int ConsecutiveHyphenLimit {get;set;}
/// <summary>
/// Gets or sets the distance in 1/20 of a point from the right margin within which you do not want
/// to hyphenate words.
/// Default value for this property is 360 (0.25 inch).
/// </summary>
public int HyphenationZone {get;set;}
/// <summary>
/// Gets or sets value determining whether words written in all capital letters are hyphenated.
/// Default value for this property is <b>true</b>.
/// </summary>
public bool HyphenateCaps {get;set;}
{{< /highlight >}}

Following code example {shows|demonstrates} how to use HyphenationOptions's properties. 

**C#**

{{< highlight csharp >}}
Document doc = new Document();
doc.HyphenationOptions.AutoHyphenation = true;
doc.HyphenationOptions.ConsecutiveHyphenLimit = 2;
doc.HyphenationOptions.HyphenationZone = 720;
 // 0.5 inch
doc.HyphenationOptions.HyphenateCaps = false;
{{< /highlight >}}

### Font Substitution Warnings Improved

|Substitution case |Warning text |Previous warning text |
| :- | :- | :- |
|Font substitution per AltName from document FontInfos. |"Font '<font_name>' has not been found. Using '<alt_name>' font instead. Reason: alternative name from document." |No warning |
|Font substitution per FontSettings.DefaultFontName. |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: default font setting." |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead." |
|Font substitution per first available font. |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: first available font." |"Font '<font_name>' has not been found. Using '<substitution_name>' font instead." |
|Font substitution per specified font substitutes. |"Font substitutes: '<font_name>' replaced with '<substitute_name>'." |No warning |
|Font substitution when saving to image |"GDI+ can't load '<font_name>' font. Using '<substitution_name>' font instead." |"GDI+ doesn't support OpenType fonts with PostScript outlines. '<font_name>' font has been substituted." |

### A New Feature Added to Get Mail Merge Regions Hierarchy

We have added the **MailMergeRegionInfo** public class and the **MailMerge.GetRegionsHierachy** public method. These allow to obtain mail merge hierarchy including child regions and fields.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Returns a full hierarchy of regions (with fields) available in the document.
/// </summary>
/// <remarks>
/// <p>Hierarchy is returned in the form of the <see cref="MailMergeRegionInfo"/> class.</p>
/// </remarks>
/// <returns>Regions' hierarchy.</returns>
public MailMergeRegionInfo GetRegionsHierarchy()
/// <summary>
/// Contains information about a mail merge region.
/// </summary>
public class MailMergeRegionInfo
{
    /// <summary>
    /// Returns a list of child regions.
    /// </summary>
    public ArrayList Regions { get; }
    /// <summary>
    /// Returns a list of child merge fields.
    /// </summary>
    public ArrayList Fields { get; }
    /// <summary>
    /// Returns the name of region.
    /// </summary>
    public string Name { get; }
    /// <summary>
    /// Returns a start field for the region.
    /// </summary>
    public FieldMergeField StartField { get; }
    /// <summary>
    /// Returns an end field for the region.
    /// </summary>
    public FieldMergeField EndField { get; set; }
}
{{< /highlight >}}

Following code example {shows|demonstrates} how to extract full hierarchy of regions available in the document.

**C#**

{{< highlight csharp >}}
ArrayList /*<MailMergeRegionInfo>*/ topRegions = regionInfo.Regions;
Assert.AreEqual(2, topRegions.Count);
Assert.AreEqual(((MailMergeRegionInfo)topRegions[0]).Name, "Region1");
Assert.AreEqual(((MailMergeRegionInfo)topRegions[1]).Name, "Region2");
ArrayList /*<MailMergeRegionInfo>*/ nestedRegions = ((MailMergeRegionInfo)topRegions[0]).Regions;
Assert.AreEqual(2, nestedRegions.Count);
Assert.AreEqual(((MailMergeRegionInfo)nestedRegions[0]).Name, "NestedRegion1");
Assert.AreEqual(((MailMergeRegionInfo)nestedRegions[1]).Name, "NestedRegion2");
nestedRegions = ((MailMergeRegionInfo)topRegions[1]).Regions;
Assert.AreEqual(2, nestedRegions.Count);
Assert.AreEqual(((MailMergeRegionInfo)nestedRegions[0]).Name, "NestedRegion1");
Assert.AreEqual(((MailMergeRegionInfo)nestedRegions[1]).Name, "NestedRegion2");
{{< /highlight >}}

### A New Feature Added to Work Without Static Font Cache and can Use Per-document Font Settings

All methods of FontSettings class made instance methods. Static methods are replaced with static DefaultInstance property. **This is a breaking change.**

**C#**

{{< highlight csharp >}}
/// <summary>
/// Specifies font settings for a document.
/// </summary>
/// <remarks>
/// <para>Aspose.Words uses font settings to resolve the fonts in the document. Fonts are resolved mostly when building document layout
/// or rendering to fixed page formats. But when loading some formats, Aspose.Words also may require to resolve the fonts. For example, when
/// loading HTML documents Aspose.Words may resolve the fonts to perform font fallback. So it is recommended that you set the font settings in
/// <see cref="LoadOptions"/> when loading the document. Or at least before building the layout or rendering the document to the fixed-page format.</para>
///
/// <para>By default all documents uses single static font settings instance. It could be accessed by
/// <see cref="DefaultInstance"/> property.</para>
///
/// <para>Changing font settings is safe at any time from any thread. But it is recommended that you do not change the font settings while
/// processing some documents which uses this settings. This can lead to the fact that the same font will be resolved differently
/// in different parts of the document.</para>
/// </remarks>
public class FontSettings
{
    public void SetFontsFolder(string fontFolder, bool recursive);
    public void SetFontsFolders(string[] fontsFolders, bool recursive);
    public void SetFontsSources(FontSourceBase[] sources);
    public FontSourceBase[] GetFontsSources();
    public void ResetFontSources();
    public string DefaultFontName;
    public string[] GetFontSubstitutes(string originalFontName);
    public void SetFontSubstitutes(string originalFontName, params string[] substituteFontNames);
    public void AddFontSubstitutes(string originalFontName, params string[] substituteFontNames);
    /// <summary>
    /// Static default font settings.
    /// </summary>
    /// <remarks>
    /// This instance is used by default in a document unless <see cref="Document.FontSettings"/> is specified.
    /// </remarks>
    public static FontSettings DefaultInstance
    {
        get { return gDefaultInstance; }
    }
}
{{< /highlight >}}

FontSettings properties added to Document class

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets document font settings.
/// </summary>
/// <remarks>
/// <para>This property {allows|enables} to specify font settings per document. If set to null, default static font settings
/// <see cref="Aspose.Words.Fonts.FontSettings.DefaultInstance"/> will be used.</para>
///
/// <para>The default value is null.</para>
/// </remarks>
public FontSettings FontSettings
{
    get { return mFontSettings; }
    set { mFontSettings = value; }
}
{{< /highlight >}}

and LoadOptions class

**C#**

{{< highlight csharp >}}
/// <summary>
/// Allows to specify document font settings.
/// </summary>
/// <remarks>
/// <para>When loading some formats, Aspose.Words may require to resolve the fonts. For example, when loading HTML documents Aspose.Words
/// may resolve the fonts to perform font fallback.</para>
///
/// <para>If set to null, default static font settings <see cref="Aspose.Words.Fonts.FontSettings.DefaultInstance"/> will be used.</para>
///
/// <para>The default value is null.</para>
/// </remarks>
public FontSettings FontSettings
{
    get { return mFontSettings; }
    set { mFontSettings = value; }
}
{{< /highlight >}}

**Use Case 1:** 
If users used static font settings and want to keep it they should use FontSettings.DefaultInstance now.

**C#**

{{< highlight csharp >}}

// Before 16.01.0
FontSettings.SetFontSources(fontSources};
Document doc = new Document(inFile);
doc.Save(outFile);

// After 16.01.0
FontSettings.DefaultInstance.SetFontSource(fontSources);
Document doc = new Document(inFile);
doc.Save(outFile);
{{< /highlight >}}

**Use Case 2:** 
If users want to use document settings they could pass it either to LoadOptions or to Document.

**C#**

{{< highlight csharp >}}
FontSettings fontSettings = new FontSettings();
fontSettings.SetFontSource(fontSources);

// Using load options
LoadOptions loadOptions = new LoadOptions();
loadOptions.FontSettings = fontSettings;
Document doc = new Document(inFile, loadOptions);
doc.Save(outFile);

// Using Document.FontSettings
doc = new Document(inFile);
doc.FontSettings = fontSettings;
doc.Save(outFile);
{{< /highlight >}}

### FormField.RemoveField() method Added

We have added a capability to remove the whole form field right from the FormField object.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Removes the complete form field, not just the form field special character.
/// </summary>
/// <remarks>
/// If there is a bookmark associated with the form field, the bookmark is not removed.
/// </remarks>
public void RemoveField()
{{< /highlight >}}

### MailMerge.PreserveUnusedTags option Added

We have added a capability to preserve mustache tags that haven't been populated.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether the unused "mustache" tags should be preserved.
/// </summary>
/// <remarks>
/// The default value is <b>false</b>.
/// </remarks>
/// <seealso cref="UseNonMergeFields"/>
public bool PreserveUnusedTags
{{< /highlight >}}

### A New Feature Added to Control Global Mail Merge Events

We have added the **IMailMergeCallback** interface and **MailMerge.MailMergeCallback** property. This {allows|enables} to respond to different global mail merge events. Currently it supports a single event, **TagsReplaced**, which is fired when mustache fields are replaced with merge fields but not yet merged. In the future we may consider introducing other events.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Allows to handle particular events during mail merge.
/// </summary>
public IMailMergeCallback MailMergeCallback
/// <summary>
/// Implement this interface if you want to receive notifications while mail merge is performed.
/// </summary>
public interface IMailMergeCallback
{
    /// <summary>
    /// Called when "mustache" text tags are replaced with MERGEFIELD fields.
    /// </summary>
    /// <seealso cref="MailMerge.UseNonMergeFields"/>
    void TagsReplaced();
}
{{< /highlight >}}

**Use Case**

**C#**

{{< highlight csharp >}}
/// <summary>
/// The <see cref="IMailMergeCallback.TagsReplaced"/> event should rised when mail merge is performed with the <see cref="MailMerge.UseNonMergeFields"/> option.
/// </summary>
[Test]
public void TestTagsReplacedEventShouldRisedWithUseNonMergeFieldsOption()
{
    Document document = new Document();
    document.MailMerge.UseNonMergeFields = true;
    MailMergeCallbackStub mailMergeCallbackStub = new MailMergeCallbackStub();
    document.MailMerge.MailMergeCallback = mailMergeCallbackStub;
    document.MailMerge.Execute(
        new string[0],
        new object[0]);
        Assert.AreEqual(1, mailMergeCallbackStub.TagsReplacedCounter);
}
private class MailMergeCallbackStub : IMailMergeCallback
{
    public void TagsReplaced()
    {
        mTagsReplacedCounter++;
    }
    public int TagsReplacedCounter
    {
        get { return mTagsReplacedCounter; }
    }
    private int mTagsReplacedCounter;
}
{{< /highlight >}}

### Public Fields API v2.0 - Building Arbitrary Field Using FieldBuilder

We have now provided typed access to all Microsoft Word fields, it is a good time to allow users build an arbitrary field code. We can insert a complete field code via **DocumentBuilder**, or we can insert a field of a certain type and access its code using the typed properties of a **FieldXXX** class. 

Below are skeletons of proposed classes responsible for building a field. They support nested fields and arbitrary document nodes. They also expose a bunch of methods for convenient insertion of field argument and switches.

**C#**

{{< highlight csharp >}}
using System;
namespace Aspose.Words.Fields
{
    /// <summary>
    /// Builds a field from field code tokens(arguments and switches).
    /// </summary>
    public class FieldBuilder
    {
        /// <summary>
        /// Initializes an instance of the <see cref="FieldBuilder"/> class.
        /// </summary>
        /// <param name="fieldType"></param>
        public FieldBuilder(FieldType fieldType)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's argument.
        /// </summary>
        /// <remarks>
        /// Unlike <see cref="AddText"/>, separates the text with spaces and encloses it into double quotes if needed.
        /// </remarks>
        /// <param name="argument"></param>
        public FieldBuilder AddArgument(string argument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's argument.
        /// </summary>
        /// <param name="argument"></param>
        public FieldBuilder AddArgument(int argument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's argument.
        /// </summary>
        /// <param name="argument"></param>
        public FieldBuilder AddArgument(double argument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a child field represented by another <see cref="FieldBuilder"/> to the field's code.
        /// </summary>
        /// <remarks>
        /// This overload is used when the argument consists of a single child field.
        /// </remarks>
        /// <param name="childField"></param>
        /// <returns></returns>
        public FieldBuilder AddArgument(FieldBuilder argument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a child field represented by another <see cref="FieldBuilder"/> to the field's code.
        /// </summary>
        /// <remarks>
        /// This overload is used when the argument consists of a mixture of different parts such as child fields, nodes, and plain text.
        /// </remarks>
        /// <param name="argument"></param>
        /// <returns></returns>
        public FieldBuilder AddArgument(FieldArgumentBuilder argument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's switch.
        /// </summary>
        /// <remarks>
        /// This overload adds a flag (switch without argument).
        /// </remarks>
        /// <param name="switchName"></param>
        public FieldBuilder AddSwitch(string switchName)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's switch.
        /// </summary>
        /// <param name="switchName"></param>
        /// <param name="switchArgument"></param>
        public FieldBuilder AddSwitch(string switchName, string switchArgument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's switch.
        /// </summary>
        /// <param name="switchName"></param>
        /// <param name="switchArgument"></param>
        public FieldBuilder AddSwitch(string switchName, int switchArgument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field's switch.
        /// </summary>
        /// <param name="switchName"></param>
        /// <param name="switchArgument"></param>
        public FieldBuilder AddSwitch(string switchName, double switchArgument)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Builds and inserts a field into the document.
        /// </summary>
        /// <param name="refNode"></param>
        /// <param name="isAfter"></param>
        /// <returns></returns>
        public Field BuildAndInsert(Node refNode, bool isAfter)
        {
            throw new NotImplementedException();
        }
    }
    /// <summary>
    /// Builds a complex field argument consisting of fields, nodes, and plain text.
    /// </summary>
    public class FieldArgumentBuilder
    {
        /// <summary>
        /// Adds a plain text to the argument.
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public FieldArgumentBuilder AddText(string text)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds an arbitrary node to the argument.
        /// </summary>
        /// <param name="node"></param>
        /// <returns></returns>
        public FieldArgumentBuilder AddNode(Node node)
        {
            throw new NotImplementedException();
        }
        /// <summary>
        /// Adds a field represented by a <see cref="FieldBuilder"/> to the argument.
        /// </summary>
        /// <param name="fieldBuilder"></param>
        /// <returns></returns>
        public FieldArgumentBuilder AddField(FieldBuilder fieldBuilder)
        {
            throw new NotImplementedException();
        }
    }
}
{{< /highlight >}}

Following code snippet {shows|demonstrates} how to use FieldBuilder.

**C#**

{{< highlight csharp >}}
FieldBuilder builder = new FieldBuilder(FieldType.FieldIf);
builder
    .AddArgument(new FieldBuilder(FieldType.FieldMergeField).AddArgument("CustomerName"))
    .AddArgument("=")
    .AddArgument("John Smith")
    .AddArgument(10)
    .AddArgument(20)
    .BuildAndInsert(refNode, true);
{{< /highlight >}}
