---
title: Aspose.Words for .NET 17.8 Release Notes
type: docs
weight: 50
url: /net/aspose-words-for-net-17-8-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 17.8](https://www.nuget.org/packages/Aspose.Words/17.8.0)

{{% /alert %}} 
## **Major Features**
There are 85 improvements and fixes in this regular monthly release. The most notable are:

- A significant optimization of PDF rendering engine has been carried out.
- Compression of document structure data and cross-reference table in PDF 1.5 output. Now the output PDF documents with the logical structure are much smaller.
- Image tag in Fixed HTML documents can now contain an alternative text string.
- API for 'Mark Comment Done' option.
- Sign the signature line in Word document.
- Add feature to set/get "Specify line and character grid".
- Detect comment resolved and comment replies and reply to which comment.
- Added feature to format Data Labels of chart.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-10493|/table grid/ Table's cell width is decreased after conversion from Docx to Pdf|Bug|
|WORDSNET-11904|/character spacing control/ Contents move to next page after conversion from Doc to fixed file format|Bug|
|WORDSNET-11988|/character spacing control/ Japanese content move to next line after conversion from Doc to Pdf|Bug|
|WORDSNET-12248|/character spacing control/ Extra page after DOC to PDF|Bug|
|WORDSNET-12294|/character spacing control/ Some characters are misplaced after DOC to PDF|Bug|
|WORDSNET-12893|/character spacing control/ Chinese text rendering issue in Pdf|Bug|
|WORDSNET-13271|/character spacing control/ Table's row renders on next page. The input document have one page|Bug|
|WORDSNET-13273|/character spacing control/ The compressed punctuation feature is not supported|Bug|
|WORDSNET-13876|/character spacing control/ Chinese text moves to next line and pushes text to next page in HtmlFixed|Bug|
|WORDSNET-13905|3-D Surface chart incorrect rendering in PDF|Bug|
|WORDSNET-14242|Document.Compare ignores delete revision|Bug|
|WORDSNET-14367|/character spacing control/ Chinese text is rendered on next line after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-14419|SVG does not import correctly in Word document|Bug|
|WORDSNET-14460|Docx to Pdf conversion issue with text position|Bug|
|WORDSNET-14716|Chart's band color is changed in output HtmlFixed|Bug|
|WORDSNET-14913|Docx to Html conversion issue with list label|Bug|
|WORDSNET-15028|Doc to Pdf conversion issue with table rendering|Bug|
|WORDSNET-15057|The chart's legend are completely changed in HtmlFixed|Bug|
|WORDSNET-15058|Docx to HtmlFixed conversion issue with chart's legend and lines|Bug|
|WORDSNET-15059|Docx to HtmlFixed conversion issue with surface chart's lines|Bug|
|WORDSNET-15060|Docx to HtmlFixed conversion issue with 3D chart's shading|Bug|
|WORDSNET-15204|Paragraph is moved to next page after re-saving DOCX|Bug|
|WORDSNET-15300|/floater position/ Image distracted in DOCX to PDF conversion|Bug|
|WORDSNET-15302|Docx to Pdf conversion issue with chart rendering (data labels are missed)|Bug|
|WORDSNET-15338|DocumentBuilder.InsertHtml does not insert image from web URI|Bug|
|WORDSNET-15350|Image's color is changed after re-saving DOC|Bug|
|WORDSNET-15388|When DOCX is saved as PDF, the output looks different|Bug|
|WORDSNET-15452|References failed when converting to PDF document.|Bug|
|WORDSNET-15530|Document.UpdateFields changes the left indentation of TOC|Bug|
|WORDSNET-15531|Endnote line is thicker in output PDF|Bug|
|WORDSNET-15535|Footer layout messed up when printing after saving|Bug|
|WORDSNET-15555|BuiltInDocumentProperties.Words returns incorrect word count|Bug|
|WORDSNET-15557|Exception when setting license under Mono|Bug|
|WORDSNET-15558|Table conversion issue in DOC|Bug|
|WORDSNET-15569|Problems with a Chart Object rendered as an Image|Bug|
|WORDSNET-15575|DOCX does not open in MS Word after re-saving it|Bug|
|WORDSNET-15584|Transparent images are missing in PDF|Bug|
|WORDSNET-15585|Comparing documents with AW gives different revision from Word compare.|Bug|
|WORDSNET-15600|DOCX to PDF, references missing|Bug|
|WORDSNET-15601|Converting Word to PDF produces black squares|Bug|
|WORDSNET-15603|Aspose.Words 17.06 Incorrect signing OpenDocument file formats (.odt) with Digital Signature|Bug|
|WORDSNET-15606|Extra spaces issue at the end of the bookmark value in IF field|Bug|
|WORDSNET-15618|FileFormatUtil.DetectFileFormat method returns wrong value|Bug|
|WORDSNET-15620|When Document.UpdateFields() is used, PDF output is incorrect.|Bug|
|WORDSNET-15662|AW produces slightly different TOC than MS Word|Bug|
|WORDSNET-15672|Pie chart the value numbers show as [VALUE] after printing.|Bug|
|WORDSNET-15677|Formula is clipped in PDF rendition.|Bug|
|WORDSNET-15709|TextBox.InternalMarginXXX returns incorrect values|Bug|
|WORDSNET-15714|Empty pages are generated when DOCX is converted to PDF|Bug|
|WORDSNET-15724|Charts appearance changes upon open and resave DOCX|Bug|
|WORDSNET-4917|Page number is incorrect in TOC for items after exlicit column break in a multicolumn section.|Bug|
|WORDSNET-5173|Formatting restrictions are lost after open/save DOCX document.|Bug|
|WORDSNET-5990|Docx to PDF conversion problem with table layout|Bug|
|WORDSNET-6178|/table grid/ Table width is incorrect while converting docx to Pdf/XPS/Tiff|Bug|
|WORDSNET-6627|MERGEFIELD located in page header is not updated properly during mail merge.|Bug|
|WORDSNET-6628|Page header is present at multipage IF field content.|Bug|
|WORDSNET-6629|IF field containing condition with MERGEFIELD involved seems not to be updated properly.|Bug|
|WORDSNET-13878|Extra spaces render after conversion from Doc to HtmlFixed/Pdf|Enhancement|
|WORDSNET-14164|Ins/del tags missing on equations when converting docx to html|Enhancement|
|WORDSNET-14574|Vertical space added between header and body content on 2nd page in HtmlFixed|Enhancement|
|WORDSNET-14575|Header content is different on 3rd page of HtmlFixed|Enhancement|
|WORDSNET-14947|Question about values of margins in tables|Enhancement|
|WORDSNET-15196|Add alt text information into images tag in FixedHtml|Enhancement|
|WORDSNET-15412|Text is rendered on next page in output PDF|Enhancement|
|WORDSNET-15497|DOCX to tagged PDF conversion file size issue|Enhancement|
|WORDSNET-15628|Chart created in MS Word 2016 looks incorrect after open/save with AW.|Enhancement|
|WORDSNET-7508|Extra empty space appears in output fixed file format after conversion from Dotx|Enhancement|
|WORDSNET-9200|Spacing between words is increaed in fixed page formats|Enhancement|
|WORDSNET-14687|/ SvmReader/Overflow Exception occurs while reading the odt file|Exception|
|WORDSNET-15427|NullReferenceException occurs upon DOCX export.|Exception|
|WORDSNET-15568|UpdatePageLayout throws NullReference Exception|Exception|
|WORDSNET-15680|Loading RTF throws FileCorruptedException|Exception|
|WORDSNET-10901|Provide API for 'Mark Comment Done' option|Feature|
|WORDSNET-10992|Position of DrawingML is changed after conversion from Docx to Pdf|Feature|
|WORDSNET-11879|/layoutRawTableWidth compat option/ Tight Wrap Text for Image is not preserved in PDF|Feature|
|WORDSNET-12844|Ability to sign a signature line with adding a digital signature|Feature|
|WORDSNET-14378|Add feature to set/get "Specify line and character grid"|Feature|
|WORDSNET-14471|Detect comment resolved and comment replies and reply to which comment|Feature|
|WORDSNET-15521|Adding the data labels format in a chart.|Feature|
|WORDSNET-15576|Add feature to format Data Labels of chart|Feature|
|WORDSNET-15641|Sign the signature line in Word document|Feature|
|WORDSNET-15512|NodeImporter is removing the shapes|Regression|
|WORDSNET-15573|Aspose.Words.FileCorruptedException occurs upone loading a RTF|Regression|
|WORDSNET-15648|MathML throws NullReferenceException in rendering|Regression|
|WORDSNET-15702|DOCX to PDF conversion throws NullReferenceException in 17.7|Regression|

Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.
### **WORDSNET-14378 - New Properties Added into the PageSetup Class Allowing to Define Document Grid**
The following new public properties have been added into the PageSetup class to allow defining document grid behavior:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the layout mode of this section.
/// </summary>
public SectionLayoutMode LayoutMode { get; set; }
/// <summary>
/// Gets or sets the number of characters per line in the document grid.
/// </summary>
/// <remarks>
/// Minimum value of the property is 1. Maximum value depends on page width and font size of the Normal
/// style. Minimum character pitch is 90 percent of the font size. For example, maximum number of characters
/// per line of a Letter page with one-inch margins is 43.
/// By default, the property has a value, on which character pitch equals to font size of the Normal style.
/// </remarks>
public int CharactersPerLine { get; set; }
/// <summary>
/// Gets or sets the number of lines per page in the document grid.
/// </summary>
/// <remarks>
/// Minimum value of the property is 1. Maximum value depends on page height and font size of the Normal
/// style. Minimum line pitch is 136 percent of the font size. For example, maximum number of lines per page of
/// a Letter page with one-inch margins is 39.
/// By default, the property has a value, on which line pitch is in 1.5 times greater than font size of the Normal style.
/// </remarks>
public int LinesPerPage { get; set; }
{{< /highlight >}}

Also the following public enum has been implemented:

{{< highlight csharp >}}
/// <summary>
/// Specifies the layout mode for a section allowing to define the document grid behavior.
/// </summary>
public enum SectionLayoutMode
{
    /// <summary>
    /// Specifies that no document grid shall be applied to the contents of the corresponding section in the document.
    /// </summary>
    Default,
    /// <summary>
    /// Specifies that the corresponding section shall have both the additional line pitch and character pitch added to
    /// each line and character within it in order to maintain a specific number of lines per page and characters per line.
    /// Characters will not be automatically aligned with gridlines on typing.
    /// </summary>
    Grid,
    /// <summary>
    /// Specifies that the corresponding section shall have additional line pitch added to each line within it in order
    /// to maintain the specified number of lines per page.
    /// </summary>
    LineGrid,
    /// <summary>
    /// Specifies that the corresponding section shall have both the additional line pitch and character pitch added to
    /// each line and character within it in order to maintain a specific number of lines per page and characters per line.
    /// Characters will be automatically aligned with gridlines on typing.
    /// </summary>
    SnapToChars
}
{{< /highlight >}}

The Document Grid tab becomes visible in the Page Setup dialog of MS Word if any Asian language is defined as editing language.


### **WORDSNET-14471. Detect Comment Resolved and Comment Replies and Reply to Which Comment**
Added read-only public API to get extended comment properties.

Following methods were added to the **Comment** class.

{{< highlight csharp >}}

// Returns the parent Comment object. Returns null for top-level comments.
public Comment Ancestor

// Returns a collection of <see cref="Comment"/> objects that are immediate children of the specified comment.
public CommentCollection Replies

// Gets or sets flag indicating that the comment has been marked done.
public bool Done
{{< /highlight >}}

Added new public class **CommentCollection** which represents collection of Comment nodes.

**UC**

{{< highlight csharp >}}
Document doc = new Document(filename);
NodeCollection comments = doc.GetChildNodes(NodeType.Comment, true);
Comment parentComment = (Comment)comments[0];
foreach (Comment childComment in parentComment.Replies)
{
    // Get comment parent and status.
    Console.WriteLine(childComment.Ancestor.Id);
    Console.WriteLine(childComment.Done);

    // And update comment Done mark.
    childComment.Done = true;
}
{{< /highlight >}}
### **WORDSNET-14947. DistanceLeft, DistanceRight, DistanceTop, DistanceBottom Properties Added in Table Class**
Added new public read-only properties to the **Table** class.

{{< highlight csharp >}}
// Gets distance between table left and the surrounding text, in points.
public double DistanceLeft

// Gets distance between table right and the surrounding text, in points.
public double DistanceRight

// Gets distance between table top and the surrounding text, in points.
public double DistanceTop

// Gets distance between table bottom and the surrounding text, in points.
public double DistanceBottom
{{< /highlight >}}

**Typical UC**

{{< highlight csharp >}}
Table table = doc.FirstSection.Body.Tables[0];
Console.WriteLine(table.DistanceTop);
Console.WriteLine(table.DistanceBottomTop);
Console.WriteLine(table.DistanceRight);
Console.WriteLine(table.DistanceLeft);
{{< /highlight >}}
### **WORDSNET-15497 - Compression of Document Structure Data and Cross-Reference Table in PDF 1.5 Output**
Now document structure data and cross-reference table are compressed when saving to PDF 1.5. This changes do not affect PDF/A-1 output due to limitations in specification.
### **WORDSNET-15521 - New Property NumberFormat Added to the ChartDataLabel Object**


New public property NumberFormat is available in the ChartDataLabel class:

{{< highlight csharp >}}
/// <summary>
/// Returns number format of the parent element.
/// </summary>
public ChartNumberFormat NumberFormat
{{< /highlight >}}

ChartNumberFormat class represents number formatting of the parent element and contains the following public properties:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the format code applied to a data label.
/// </summary>
/// <remarks>
/// Number formatting is used to change the way a value appears in data label and can be used in some very creative ways.
/// The examples of number formats:
/// <para>Number - "#,##0.00"</para>
/// <para>Currency - "\"$\"#,##0.00"</para>
/// <para>Time - "\[$-x-systime\]h:mm:ss AM/PM"</para>
/// <para>Date - "d/mm/yyyy"</para>
/// <para>Percentage - "0.00%"</para>
/// <para>Fraction - "# ?/?"</para>
/// <para>Scientific - "0.00E+00"</para>
/// <para>Text - "@"</para>
/// <para>Accounting - "_-\"$\"\* #,##0.00_-;-\"$\"\* #,##0.00_-;_-\"$\"\* \"-\"??_-;_-@_-"</para>
/// <para>Custom with color - "\[Red\]-#,##0.0"</para>
/// </remarks>
public string FormatCode
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the format code is linked to a source cell.
/// Default is true.
/// </summary>
/// <remarks>The NumberFormat will be reset to general if format code is linked to source.</remarks>
public bool IsLinkedToSource
{{< /highlight >}}

**UC:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Add chart with default data.
Shape shape = builder.InsertChart(ChartType.Line, 432, 252);
Chart chart = shape.Chart;
chart.Title.Text = "Data Labels With Different Number Format";

// Delete default generated series.
chart.Series.Clear();

// Add new series
ChartSeries series0 = chart.Series.Add("AW Series 0", new string[] {"AW0", "AW1", "AW2"}, new double[] {2.5, 1.5, 3.5});

// Add DataLabel to the first point of the first series.
ChartDataLabel chartDataLabel0 = series0.DataLabels.Add(0);
chartDataLabel0.ShowValue = true;

// Set currency format code.
chartDataLabel0.NumberFormat.FormatCode = "\"$\"#,##0.00";
ChartDataLabel chartDataLabel1 = series0.DataLabels.Add(1);
chartDataLabel1.ShowValue = true;

// Set date format code.
chartDataLabel1.NumberFormat.FormatCode = "d/mm/yyyy";
ChartDataLabel chartDataLabel2 = series0.DataLabels.Add(2);
chartDataLabel2.ShowValue = true;

// Set percentage format code.
chartDataLabel2.NumberFormat.FormatCode = "0.00%";

// Or you can set format code to be linked to a source cell,

// in this case NumberFormat will be reset to general and inherited from a source cell.
chartDataLabel2.NumberFormat.IsLinkedToSource = true;
{{< /highlight >}}
### **WORDSNET-15641 - Implemented Signing Signature Line in Word Documents**


\1. Added new public property for SignatureLine class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets identifier for this signature line.
/// <p>This identifier can be associated with a digital signature, when signing document using <see cref="DigitalSignatureUtil"/>.
/// This value must be unique and by default it is randomly generated with <see cref="Guid.NewGuid"/>.</p>
/// </summary>
public Guid Id
{{< /highlight >}}

\2. Added new public class SignOptions:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify options for document signing.
/// </summary>
public class SignOptions
{{< /highlight >}}

It has the following public properties:

{{< highlight csharp >}}
/// <summary>
/// Specifies comments on the digital signature.
/// Default value is <see cref="string.Empty"/>.
/// </summary>
public string Comments
/// <summary>
/// The date of signing.
/// Default value is <see cref="DateTime.Now"/>.
/// </summary>
public DateTime SignTime
/// <summary>
/// Signature line identifier.
/// Default value is <see cref="Guid.Empty"/>.
/// </summary>
/// <remarks>
/// When set, it associates <see cref="SignatureLine"/> with corresponding <see cref="DigitalSignature"/>.
/// </remarks>
public Guid SignatureLineId
/// <summary>
/// The image that will be shown in associated <see cref="SignatureLine"/>.
/// Default value is <c>null</c>.
/// </summary>
public byte[] SignatureLineImage
/// <summary>
/// The password to decrypt source document.
/// Default value is <see cref="string.Empty"/>.
/// </summary>
/// <remarks>
/// If OOXML document is encrypted, you should provide decryption password
/// to decrypt source document before it will be signed.
/// This is not required for documents in binary DOC format.
/// </remarks>
public string DecryptionPassword
{{< /highlight >}}

\3. New public methods are introduced in DigitalSignatureUtil class for signing documents:

{{< highlight csharp >}}
/// <summary>
 /// Signs source document using given <see cref="CertificateHolder"/> and <see cref="SignOptions"/>
 /// with digital signature and writes signed document to destination stream.
 /// <p>Document should be either <see cref="LoadFormat.Doc"/> or <see cref="LoadFormat.Docx"/>.</p>
 /// <p><b>Output will be written to the start of stream and stream size will be updated with content length.</b></p>
 /// </summary>
 /// <param name="srcStream">The stream which contains the document to sign.</param>
 /// <param name="dstStream">The stream that signed document will be written to.</param>
 /// <param name="certHolder"><see cref="CertificateHolder"/> object with certificate that used to sign file.
 /// <ms>The certificate in holder MUST contain private keys and have the X509KeyStorageFlags.Exportable flag set.</ms></param>
 /// <param name="signOptions"><see cref="SignOptions"/> object with various signing options.</param>
 public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, SignOptions signOptions)
/// <summary>
/// Signs source document using given <see cref="CertificateHolder"/> and <see cref="SignOptions"/>
/// with digital signature and writes signed document to destination file.
/// <p>Document should be either <see cref="LoadFormat.Doc"/> or <see cref="LoadFormat.Docx"/>.</p>
/// </summary>
/// <param name="srcFileName">The file name of the document to sign.</param>
/// <param name="dstFileName">The file name of the signed document output.</param>
/// <param name="certHolder"><see cref="CertificateHolder"/> object with certificate that used to sign file.
/// <ms>The certificate in holder MUST contain private keys and have the X509KeyStorageFlags.Exportable flag set.</ms></param>
/// <param name="signOptions"><see cref="SignOptions"/> object with various signing options.</param>
public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, SignOptions signOptions)
/// <summary>
/// Signs source document using given <see cref="CertificateHolder"/> with digital signature
/// and writes signed document to destination stream.
/// <p>Document should be either <see cref="LoadFormat.Doc"/> or <see cref="LoadFormat.Docx"/>.</p>
/// <p><b>Output will be written to the start of stream and stream size will be updated with content length.</b></p>
/// </summary>
/// <param name="srcStream">The stream which contains the document to sign.</param>
/// <param name="dstStream">The stream that signed document will be written to.</param>
/// <param name="certHolder"><see cref="CertificateHolder"/> object with certificate that used to sign file.
/// <ms>The certificate in holder MUST contain private keys and have the X509KeyStorageFlags.Exportable flag set.</ms></param>
public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder)
/// <summary>
/// Signs source document using given <see cref="CertificateHolder"/> with digital signature
/// and writes signed document to destination file.
/// <p>Document should be either <see cref="LoadFormat.Doc"/> or <see cref="LoadFormat.Docx"/>.</p>
/// </summary>
/// <param name="srcFileName">The file name of the document to sign.</param>
/// <param name="dstFileName">The file name of the signed document output.</param>
/// <param name="certHolder"><see cref="CertificateHolder"/> object with certificate that used to sign file.
/// <ms>The certificate in holder MUST contain private keys and have the X509KeyStorageFlags.Exportable flag set.</ms></param>
public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder)
{{< /highlight >}}

\4. Old signing methods in DigitalSignatureUtil are marked as 'Obsolete':

{{< highlight csharp >}}
public static void Sign(string srcFileName, string dstFileName, System.Security.Cryptography.X509Certificates.X509Certificate2 certificate, string comments, DateTime signTime);
public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, string comments,DateTime signTime);
public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);
public static void Sign(Stream srcStream, Stream dstStream, System.Security.Cryptography.X509Certificates.X509Certificate2 certificate, string comments, DateTime signTime);
public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, string comments, DateTime signTime);
public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);
{{< /highlight >}}

**UC1 - simple document signing:**

{{< highlight csharp >}}
CertificateHolder certHolder = CertificateHolder.Create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.Sign("pathToSrcFileName.docx", "pathToDstFileName.docx", certHolder);
{{< /highlight >}}

**UC2 - signing encrypted document:**

{{< highlight csharp >}}
SignOptions signOptions = new SignOptions();
signOptions.DecryptionPassword = "decryptionPassword";
CertificateHolder certHolder = CertificateHolder.Create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.Sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, SignOptions);
{{< /highlight >}}

**UC3 - signing existing signature line:**

{{< highlight csharp >}}
Document doc = new Document("pathToDocument.docx");
SignatureLine signatureLine = doc.FirstSection.Body.Shapes[0].SignatureLine;
SignOptions signOptions = new SignOptions();
signOptions.SignatureLineId = signatureLine.Id;
signOptions.SignatureLineImage = File.ReadAllBytes("pathToSignatureImage.emf");
CertificateHolder certHolder = CertificateHolder.Create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.Sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, signOptions);
{{< /highlight >}}

**UC4 - creating and signing new signature line:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
SignatureLine signatureLine = builder.InsertSignatureLine(new SignatureLineOptions()).SignatureLine;
doc.Save("pathToSrcFile.docx");
SignOptions signOptions = new SignOptions();
signOptions.SignatureLineId = signatureLine.Id;
signOptions.SignatureLineImage = File.ReadAllBytes("pathToSignatureImage.emf");
CertificateHolder certHolder = CertificateHolder.Create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.Sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, signOptions);
{{< /highlight >}}
