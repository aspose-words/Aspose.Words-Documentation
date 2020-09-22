---
title: Aspose.Words for .NET 19.5 Release Notes
type: docs
weight: 80
url: /net/aspose-words-for-net-19-5-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 19.5](https://www.nuget.org/packages/Aspose.Words/19.5.0).

{{% /alert %}} 

## **Major Features**

- Added a new overloaded AppendDocument() method with additional ImportFormatOptions parameter.
- Added a new public property Paragraph.BreakIsStyleSeparator.
- Added feature to get font leading (line spacing).
- Added Field.DisplayResult property to obtain a fake result. 
- Provide a method to check if a particular DML text effect is applied.
- Implemented StreamFontSource class which allows loading fonts from the stream.
- Implemented TOC to logical structure export when rendering PDF.
- Implemented proper rendering of embedded fonts in PDF when different font subsets have the same internal name.
- Text in the format "x...." in the string values of the series category of DrawingML chart is now rendered as a string corresponding to the specified character code.
- Improved rendering of metafiles to XPS.
- Fixed a bug that caused an exception when rendering complex gradient fills to PDF.
- Fixed a bug causing the loss of shapes if 3D effects and the Soft Edge effect were applied at the same time when rendering.
- Fixed a bug with exception when rendering DrawingML chart with grid lines.
- Fixed issue with floating object position when an anchored paragraph has large indents.
- Improved character spacing control handling for not fullwidth characters.
- Improved row height computation when the hidemark property is applied to empty paragraphs.
- Improved performance for a class of documents when very small text wraps around the floating object and does not fit.
- Improved handling of tab stops positioned between right indent and right margin.
- Fixed an exception which happened in some RTL documents when reflow resulted in empty runs

## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-14297|Provide a method to check if particular DML text effect is applied|New Feature|
|WORDSNET-16739|Provide StreamFontSource similar to the FileFontSource|New Feature|
|WORDSNET-16734|Add feature to get font leading/metrics of Run node|New Feature|
|WORDSNET-18436|Provide API to identify Style Separator Paragraph|New Feature|
|WORDSNET-17843|Generate &lt;TOC&gt; tags for Table of contents in PDF|New Feature|
|WORDSNET-18440|Add new 3D parameters to ExtrusionParameters and their processing|New Feature|
|WORDSNET-11952|Performance issue while converting Html to PDF|Bug|
|WORDSNET-18097|A picture in XML occasionally renders as Red Cross in PDF|Bug|
|WORDSNET-13463|Start number of list level is changed after joining RTF files|Bug|
|WORDSNET-18332|Chart x-scale has font problem in PDF|Bug|
|WORDSNET-18444|An exception raises while loading MHTML file|Bug|
|WORDSNET-17401|Saving to pdfA1a does not support TOC and TOC Item (TOCI) tags|Bug|
|WORDSNET-18355|System.NotSupportedException is thrown while importing MHTML|Bug|
|WORDSNET-18512|Foreign language converts a document with tables out of order of original document|Bug|
|WORDSNET-18446|DOCX to PDF - hyphenation not same|Bug|
|WORDSNET-18380|Document.UpdateFields throws System.InvalidOperationException|Bug|
|WORDSNET-7452|Aspose.Words hangs during rendering Text file to PDF|Bug|
|WORDSNET-7588|AW hangs upon loading MHTML file produced with Aspose.Email|Bug|
|WORDSNET-18395|Tables get joined in PDF output|Bug|
|WORDSNET-18386|IndexOutOfRangeException while converting RTF to PDF|Bug|
|WORDSNET-17383|FontSettings.SetFontSubstitutes does not substitute the font|Bug|
|WORDSNET-10368|Performance issue while converting Docx to PDF|Bug|
|WORDSNET-10867|Document.Save method takes time to convert Docx to PDF|Bug|
|WORDSNET-3738|Rendering takes a long time if the document consists of only one paragraph with lots of line breaks|Bug|
|WORDSNET-18171|System.NotSupportedException is thrown while loading MHTML|Bug|
|WORDSNET-18237|Mathematical formula label mi will become italic|Bug|
|WORDSNET-18357|Introduce Field.DisplayResult property to obtain the fake result|Bug|
|WORDSNET-17407|The right edge of the table not rendered in HTML correctly|Bug|
|WORDSNET-18307|"Not a legal OleAut date" Exception Occurs upon DOCX to DOC or PDF Conversions|Bug|
|WORDSNET-12431|Wrong spacing for a header in saving Word as PDF|Bug|
|WORDSNET-18448|List of Tables adds continuation entries in PDF after calling UpdateFields|Bug|
|WORDSNET-12539|Table of contents is misplaced in the output PDF|Bug|
|WORDSNET-13691|A paragraph with a right tab wraps to the next line because of right indent|Bug|
|WORDSNET-13788|Conversion from Word to PDF has some problems with header/footer|Bug|
|WORDSNET-17971|Tab space is increased after comparing document|Bug|
|WORDSNET-18302|Document.Save throws System.IndexOutOfRangeException|Bug|
|WORDSNET-15086|Document.Save method takes time to save Word document to PDF|Bug|
|WORDSNET-18519|Document.AcceptAllRevisions() throws NullReferenceException|Bug|
|WORDSNET-18175|Columns widths and heights are not maintained in the table during HTML to DOCX|Bug|
|WORDSNET-16818|Squares appear between Korean characters in PDF|Bug|
|WORDSNET-18426|DOCX to PDF conversion issue with chart rendering|Bug|
|WORDSNET-18329|Aspose.Words.FileCorruptedException is thrown while loading MHTML|Bug|
|WORDSNET-17336|The text content in PDF output is mixed and the font is changed|Bug|
|WORDSNET-18525|After opening and saving DOCX, the file fails to open|Bug|
|WORDSNET-17980|HTML Ordered List incorrectly numbered when DOCX saved as PDF|Bug|
|WORDSNET-18278|Tabs are incorrectly interpreted in PDF output.|Bug|
|WORDSNET-18430|Low performance in some text wrapping tests|Bug|
|WORDSNET-6208|Aspose.Words hangs during rendering|Bug|
|WORDSNET-18470|Aspose.Words.Document.UpdateFields() causes a System.ArgumentException()|Bug|
|WORDSNET-9277|Performance is slow when converting to PDF|Bug|
|WORDSNET-18467|DoNotVertAlignInTxbx is incorrectly read from WordML document.|Bug|
|WORDSNET-18228|Append Document Destroys Lists|Bug|
|WORDSNET-18534|FileFormatUtil.LoadFormatToExtension() throws on LoadFormat.DocPreWord60|Bug|
|WORDSNET-18475|DOCX to PDF conversion issue with list labels|Bug|
|WORDSNET-18396|The PDF output is different than MS Word output|Bug|
|WORDSNET-18270|Text position of SVG is changed when the document is exported to DOCX/PDF|Bug|
|WORDSNET-18196|Arrow shapes are lost after conversion from DOCX to PDF|Bug|
|WORDSNET-17475|Incorrect Page break import export during Word-HTML-Word roundtrips|Bug|
|WORDSNET-18399|Incorrect rendering of Decimal number in PDF|Bug|
|WORDSNET-3512|Aspose.Words hangs during rendering.|Bug|
|WORDSNET-18479|Calling of UpdateFields method corrupts some TOC entries in PDF output|Bug|
|WORDSNET-18268|Aspose.Words.FileCorruptedException is thrown while loading width of an HTML cell|Bug|
|WORDSNET-18486|Incorrect EMF rendering in XPS|Bug|
|WORDSNET-18030|Remove obsolete font substitution API|Bug|
|WORDSNET-13891|Converting Word to PDF results in indent problem|Bug|
|WORDSNET-18309|Document.UpdatePageLayout changes the list numbers in output PDF|Bug|
|WORDSNET-17471|DOCX to PDF conversion issue with OpenType font.|Bug|
|WORDSNET-17651|Content pushed down in rendered PDF|Bug|
|WORDSNET-17729|Author and Subject are incorrectly imported when converting from MOBI to DOCX|Bug|
|WORDSNET-17750|Fail to save a specific word document to PDF|Bug|
|WORDSNET-17877|PageSetup.PaperSize returns Letter for TXT document|Bug|
|WORDSNET-17978|Colored border is not rendered properly during DOCX to PDF conversion|Bug|
|WORDSNET-18184|Ink annotations disappear|Bug|
|WORDSNET-18267|System.NotSupportedException is thrown while loading MHTML with a "text/plain" part|Bug|
|WORDSNET-18289|Horizontal lines width increases in PDF|Bug|
|WORDSNET-18327|Incorrect shape positions in AW PDF output|Bug|
|WORDSNET-18356|System.NotSupportedException is thrown while importing MHTML|Bug|
|WORDSNET-18336|System.ArgumentException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18361|Check Boxes are not rendered in output PDF|Bug|

## **Public API and Backward Incompatible Changes**

This section lists public API changes that were introduced in Aspose.Words 19.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### **Added a new overloaded AppendDocument() method with additional ImportFormatOptions parameter**

Related issue: WORDSNET-18228.

Added a new overloaded AppendDocument() method into a Document class:

{{< highlight csharp >}}
/// <summary>
/// Appends the specified document to the end of this document.
/// </summary>
/// <param name="srcDoc">The document to append.</param>
/// <param name="importFormatMode">Specifies how to merge style formatting that clashes.</param>
/// <param name="importFormatOptions">Allows to specify options that affect formatting of a result document.</param>
public void AppendDocument(Document srcDoc, ImportFormatMode importFormatMode, ImportFormatOptions importFormatOptions)
{{< /highlight >}}



It allows to specify an additional options that affect the formatting of a result document.

See additional information under added a new ImportFormatOptions class for more flexible control over importing tasks at [Aspose.Words for .NET 19.4 Release Notes](/words/net/aspose-words-for-net-19-4-release-notes/).



` `**UseCase:**

{{< highlight csharp >}}
Document srcDoc = new Document("source.docx");
Document dstDoc = new Document("destination.docx");
ImportFormatOptions options = new ImportFormatOptions();

// Specify that if numbering clashes in source and destination documents, then a numbering from the source document will be used.
options.KeepSourceNumbering = true;
dstDoc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles, importFormatOptions)
{{< /highlight >}}

### **Added a new public property Paragraph.BreakIsStyleSeparator**

Related issue: WORDSNET-18436.

Added a new public property BreakIsStyleSeparator into a Paragraph class.

{{< highlight html >}}
/// <summary>
/// True if this paragraph break is a Style Separator. A style separator allows one
/// paragraph to consist of parts that have different paragraph styles.
/// </summary>
public bool BreakIsStyleSeparator
{{< /highlight >}}





It allows to identify Style Separator Paragraph.

**UseCase:**

{{< highlight csharp >}}
Paragraph paragraph;
if (paragraph.BreakIsStyleSeparator)
{
  // Do smth..
}
{{< /highlight >}}

### **Added feature to get font leading (line spacing)**

Related to WORDSNET-16734.

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The following property was introduced in the Font class to obtain this value:

{{< highlight csharp >}}
/// <summary>
/// Returns line spacing of this font (in points).
/// </summary>
public double LineSpacing { get; }
{{< /highlight >}}



**UseCase:**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(new Document());
builder.Font.Name = "Calibri";
builder.Writeln("qText");

// Obtain line spacing.
Font font = builder.Document.FirstSection.Body.FirstParagraph.Runs[0].Font;
Console.WriteLine($"lineSpacing = {font.LineSpacing}");
{{< /highlight >}}

### **Added Field.DisplayResult property to obtain the fake result**

Related issue: WORDSNET-18357

Inspired by WORDSNET-18165, we have decided to add a property that would allow customers to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model

{{< highlight csharp >}}
/// <summary>
/// Gets the text that represents the displayed field result.
/// </summary>
/// <remarks>
/// The <see cref="Words.Document.UpdateListLabels"/> method must be called to obtain correct value for the
/// <see cref="FieldListNum"/>, <see cref="FieldAutoNum"/>, <see cref="FieldAutoNumOut"/> and <see cref="FieldAutoNumLgl"/> fields.
/// </remarks>
public string DisplayResult
{{< /highlight >}}



**Usage:**

{{< highlight csharp >}}
List<Field> fields = FieldExtractor.ExtractToCollection(document, false);
Assert.AreEqual("111", fields[0].DisplayResult);
Assert.AreEqual("222", fields[1].DisplayResult);
Assert.AreEqual("Multi\rLine\rText", fields[2].DisplayResult);
Assert.AreEqual("%", fields[3].DisplayResult);
Assert.AreEqual("Macro Button Text", fields[4].DisplayResult);
Assert.AreEqual(string.Empty, fields[5].DisplayResult);
document.UpdateListLabels();
Assert.AreEqual("1)", fields[5].DisplayResult);
{{< /highlight >}}

### **Added new StreamFontSource class**

Related issue: WORDSNET-16739

Added new StreamFontSource class which allows loading fonts from the stream:



{{< highlight csharp >}}
    /// <summary>
    /// Base class for user-defined stream font source.
    /// </summary>
    /// <remarks>
    /// <para>In order to use the stream font source you should create a derived class from the <see cref="StreamFontSource"/>
    /// and provide implementation of the <see cref="OpenFontDataStream"/> method.</para>
    /// 
    /// <para><see cref="OpenFontDataStream"/> method could be called several times. For the first time it will be called 
    /// when Aspose.Words scans the provided font sources to get the list of available fonts. Later it may be called if the
    /// font is used in the document to parse the font data and to embed the font data to some output formats.</para>
    /// 
    /// <para><see cref="StreamFontSource"/> may be useful because it allows to load the font data only when it is required
    /// and not to store it in the memory for the <see cref="FontSettings"/> lifetime.</para>
    /// </remarks>
    public abstract class StreamFontSource : FontSourceBase, IFontData
    {
        /// <summary>
        /// Ctor.
        /// </summary>
        protected StreamFontSource()
        {
        }
        /// <summary>
        /// Ctor.
        /// </summary>
        /// <param name="priority">Font source priority. See the <see cref="FontSourceBase.Priority"/> property description for more information.</param>
        protected StreamFontSource(int priority)
            : base(priority)
        {
        }
        /// <summary>
        /// Returns the type of the font source.
        /// </summary>
        public sealed override FontSourceType Type
        {
            get { return FontSourceType.FontStream; }
        }
        /// <summary>
        /// This method should open the stream with font data on demand.
        /// </summary>
        /// <returns>Font data stream.</returns>
        /// <remarks>
        /// Aspose.Words will close the stream after reading. There is no need to close it explicitly.
        /// </remarks>
        public abstract Stream OpenFontDataStream();       
    }
{{< /highlight >}}



**UseCase:**

{{< highlight csharp >}}
class ResourceSteamFontSourceExample : StreamFontSource
{
    public override Stream OpenFontDataStream()
    {
        return Assembly.GetExecutingAssembly().GetManifestResourceStream("resourceName");
    }
}
{{< /highlight >}}

{{< highlight csharp >}}
FontSettings.DefaultInstance.SetFontsSources(new FontSourceBase[] {new SystemFontSource(), new ResourceSteamFontSourceExample()});
{{< /highlight >}}


### **Obsolete properties and methods related to font substitution settings was removed from FontSettings class**

Obsolete property DefaultFontName was removed from FontSettings class. Please use SubstitutionSettings.DefaultFontSubstitution instead.
Obsolete property EnableFontSubstitution was removed from FontSettings class. Please use SubstitutionSettings.FontInfoSubstitution instead.
Obsolete methods GetFontSubstitutes, SetFontSubstitutes, AddFontSubstitutes was removed from FontSettings class. Please use SubstitutionSettings.TableSubstitution instead.




### **WORDSNET-14297 - Provide a method to check if particular Dml text effect is applied**

Font.HasDmlEffect() method have been added to check if particular Dml text effect is applied to the Run.

{{< highlight csharp >}}
/// <summary>
/// Checks if particular Dml text effect is applied.
/// </summary>
/// <param name="dmlEffectType">Dml text effect type.</param>
/// <returns>True if particular Dml text effect is applied.</returns>
public bool HasDmlEffect(TextDmlEffect dmlEffectType)
{{< /highlight >}}



**UseCase:**

{{< highlight csharp >}}
RunCollection runs = doc.FirstSection.Body.FirstParagraph.Runs;
Font runFont = runs[1].Font;

// One run might have several Dml text effects applied.
Debug.WriteLine(runFont.HasDmlEffect(TextDmlEffect.Shadow));
Debug.WriteLine(runFont.HasDmlEffect(TextDmlEffect.Effect3D));
Debug.WriteLine(runFont.HasDmlEffect(TextDmlEffect.Reflection));
Debug.WriteLine(runFont.HasDmlEffect(TextDmlEffect.Outline));
Debug.WriteLine(runFont.HasDmlEffect(TextDmlEffect.Fill));
{{< /highlight >}}




