---
title: Aspose.Words for Java 17.11 Release Notes
type: docs
weight: 20
url: /java/aspose-words-for-java-17-11-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 17.11](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.11/)

{{% /alert %}} 
## **Major Features**
There are 106 improvements and fixes in this regular monthly release. The most notable are:

- LINQ Reporting Engine supports dynamic shape background coloring.
- Improved optional hyphen handling and fixed related infinite loop issue.
- Improved floating table re-breaking in specific scenarios where content of a table used to be lost outside of a page.
- Improved table grid computation when cells contain tab characters.
- Further improved character spacing control handling.
- PCL documents rendering improved. UCS-2 symbol sets can now be mapped to the printer built-in fonts – it allows to print non-ascii symbols with built-in fonts if supported by printer.
- A ‘cosmetic’ pen (i.e. pen with fixed 1-pixel width) rendering improved in metafile output documents.
- Font metrics calculation affecting the vertical positioning of text for GDI+ output rendering improved.
- Added fallback for strokes with unsupported binary raster operations in metafile rendering.
- Gamma-correction flag is now taken into account while rendering metafiles brushes.
- Metafile warnings improved:
  Added warnings for unsupported binary raster operations.
  Removed warnings about unsupported metafile records which do not affect the output.

Full List of Issues Covering all Changes in this Release

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAVA-1679|DOCX to PDF conversion issue with Khmer text. Not loaded font resource.|Bug|
|WORDSJAVA-1662|Image border is appeared after conversion from DOCX to PDF|Bug|
|WORDSJAVA-1303|Slightly changed gray color after applying grayscale image color settings.|Regression|
|WORDSJAVA-1678|The character MICRO SIGN (U+00B5) should not change in the uppercase form.|Bug|
|WORDSNET-10454|Contents move down to the page after conversion from Docx to Pdf|Bug|
|WORDSNET-10455|Position of table's rows is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-12453|Table truncates in PDF - only one page in rendered|Bug|
|WORDSNET-12489|Font changed in saved .rtf document|Bug|
|WORDSNET-12908|Table on edge of page is mangled in PDF|Bug|
|WORDSNET-13313|Multipage table content cutting off on transforming Word to PDF|Bug|
|WORDSNET-13594|Blank pages appear in generated ODT|Bug|
|WORDSNET-13744|/character spacing control/ Chinese text moves to next line after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-13930|Row's contents are truncated after conversion from Docx to Pdf|Bug|
|WORDSNET-13931|Row's contents are truncated after conversion from Docx to Pdf|Bug|
|WORDSNET-14119|Docx to Pdf conversion issue with table's rendering|Bug|
|WORDSNET-14120|Cell's contents are truncated at the bottom of page in output Pdf|Bug|
|WORDSNET-14252|Table's cells are completely lost after re-saving Odt|Bug|
|WORDSNET-14340|Html save as Odt - tables display incorrectly|Bug|
|WORDSNET-14885|Distance between list item marker and text increases after saving to HTML|Bug|
|WORDSNET-14927|"DOCX to WML" conversion result has wrong output.|Bug|
|WORDSNET-15108|DOCX to PDF conversion losing pages|Bug|
|WORDSNET-15137|Incorrect table/page layout // DOCX to PDFA: some text is missing in resultant PDFA document|Bug|
|WORDSNET-15147|TOC paragraph spacing difference in Aspose.Words and MS Word|Bug|
|WORDSNET-15205|MS Word 2016 shows page number incorrectly in status bar after saving RTF To DOCX|Bug|
|WORDSNET-15414|Formatting issue in PDF printing|Bug|
|WORDSNET-15551|Process hangs during rendering DOCX to PDF|Bug|
|WORDSNET-15660|/character spacing control/ Position of line break changes in rendered document|Bug|
|WORDSNET-15720|DOCX to PDF conversion issue with Khmer text|Bug|
|WORDSNET-15721|Text is wrapped to next line in table after conversion from DOCX to PDF|Bug|
|WORDSNET-15748|Images are overlapped after conversion from DOCX to HtmlFixed|Bug|
|WORDSNET-15788|List label values are incorrect after joining documents|Bug|
|WORDSNET-15806|DOCX to PDF conversion issue with SmartArt rendering|Bug|
|WORDSNET-15827|DOCX to PNG conversion issue with text formatting|Bug|
|WORDSNET-15853|DOCX to Image conversion issue with text formatting|Bug|
|WORDSNET-15859|Greek letter µ converted to M when DOCX saved as PDF|Bug|
|WORDSNET-15862|Text overlaps on header row border in resultant Image|Bug|
|WORDSNET-15863|DOCX to Image conversion issue with content position|Bug|
|WORDSNET-15864|DOCX to PNG conversion issue with text position inside text-box|Bug|
|WORDSNET-15876|Font color issue in PDF rendering|Bug|
|WORDSNET-15877|Highlighted text issue in Rendered PDF|Bug|
|WORDSNET-15887|/character spacing control/ Incorrect line wrapping in a callout text box|Bug|
|WORDSNET-15888|Aspose.Words generated PCL document is not printing|Bug|
|WORDSNET-15889|Blank Output Produced when Trying to Skip Images or CssStyleSheet during HTML Load|Bug|
|WORDSNET-15894|UTF8 encoding Text to PDF rendering issue|Bug|
|WORDSNET-15901|DOCX to PDF conversion issue with font of chart's title|Bug|
|WORDSNET-15913|/infinite loop/ DOCX with formatting symbol can't convert to PDF|Bug|
|WORDSNET-15914|When DOCX is saved as PDF, gradient becomes different.|Bug|
|WORDSNET-15917|Image quality not preserved when saving DOCX to HTML|Bug|
|WORDSNET-15927|DOCX to PDF conversion issue with chart's rendering|Bug|
|WORDSNET-15930|Adjacent faces of the bevel have different normals in the shared vertices|Bug|
|WORDSNET-15950|Incorrect TOC numbers and index|Bug|
|WORDSNET-15957|Rendering issue of Chinese number list|Bug|
|WORDSNET-15960|Do not read LineSpacing when its Value part is not specified.|Bug|
|WORDSNET-15964|Incorrect exception on password protected document|Bug|
|WORDSNET-15973|MailMergeCleanupOptions.RemoveStaticFields updates the FileName field codes incorrectly|Bug|
|WORDSNET-15976|Document.UpdateFields does not update the TOC field|Bug|
|WORDSNET-15977|Docx to Pdf conversion issue with chart legend items|Bug|
|WORDSNET-15978|Empty PieChart rendering issue|Bug|
|WORDSNET-15983|VML shape fill is lost upon saving to DOCX|Bug|
|WORDSNET-16031|Strange behavior of the text parts in table cells after Mail Merge|Bug|
|WORDSNET-16036|Shape changed during DOC to DOCX conversion|Bug|
|WORDSNET-16056|Support text kerning for ODT|Bug|
|WORDSNET-6624|Extra amount of spacing is added between characters in a word|Bug|
|WORDSNET-7040|Font changes from Arial to Times new Roman during importing nodes|Bug|
|WORDSNET-13098|Applying simple textures (such as Color, Gradient, Picture, etc.) for 3D shapes (hardware rendering)|Enhancement|
|WORDSNET-14901|Issue when loading HTML with incorrect namespace declarations|Enhancement|
|WORDSNET-14948|Incorrect table position in DOM API and resultant HTML|Enhancement|
|WORDSNET-15616|To set file name and extension when inserting ole object using MemoryStream|Enhancement|
|WORDSNET-15903|Support to evaluate IF condition|Enhancement|
|WORDSNET-15915|Shading.BackgroundPatternColor returns incorrect value after updating Theme color|Enhancement|
|WORDSNET-15967|Demo code of Page Splitter has to be simplified and reviewed.|Enhancement|
|WORDSNET-15750|Temporary license implementation issue|Exception|
|WORDSNET-15824|AcceptAllRevisions method thorws InvalidOperationException|Exception|
|WORDSNET-15916|Loading Mhtml file into API is throwing Exception|Exception|
|WORDSNET-15949|Metadata embedding into a document fails when saving|Exception|
|WORDSNET-15953|System.InvalidOperationException throws StructuredDocumentTag.PlaceholderName|Exception|
|WORDSNET-15966|DocumentBuilder.InsertHtml throws System.NullReferenceException when HTML is inserted in table's cell|Exception|
|WORDSNET-15975|DOCX to DOC conversion throws InvalidOperationException|Exception|
|WORDSNET-15980|Appending document is throwing NullReferenceException|Exception|
|WORDSNET-16014|Calling UpdatePageLayout method throwing exception|Exception|
|WORDSNET-16016|System.InvalidOperationException is thrown while saving DOC to RTF|Exception|
|WORDSNET-16029|Appending RTF documents is throwing NullReferenceException|Exception|
|WORDSNET-16039|Shading formatting of cloned Cell throws NullReferenceException|Exception|
|WORDSNET-13709|Table width is changed after conversion from Docx to Pdf.|Feature|
|WORDSNET-14360|Add feature to include all styles in Resources\AllStyles2007.docx from StyleIdentifier Enum|Feature|
|WORDSNET-14653|Shifted text in a document after conversion from MS Word to PDF|Feature|
|WORDSNET-14722|When DOCX is saved as PDF, table columns have incorrect width|Feature|
|WORDSNET-14970|Add feature to fill shape (text-box) color in Linq Reporting Engine|Feature|
|WORDSNET-15358|Built-in styles in MSW 2013 are different than in MSW 2007.|Feature|
|WORDSNET-15624|Provide method that returns Text in the same order as we see in MS Word, Google Docs, LibreOffice etc|Feature|
|WORDSNET-15739|Applying a radial gradient fill (hardware rendering).|Feature|
|WORDSNET-15740|Applying a rectangular gradient fill (hardware rendering).|Feature|
|WORDSNET-15885|Implement support of transform for radial gradient fill (hardware rendering).|Feature|
|WORDSNET-15893|TOC line spacing is changed in PDF output.|Feature|
|WORDSNET-15900|Empty table appears in ouput PDF|Feature|
|WORDSNET-15981|Get position of floating table in public API|Feature|
|WORDSNET-7575|/revision marks/ Support revision marks upon rendering|Feature|
|WORDSNET-9453|Shape gets overlapped due to its incorrect position|Feature|
|WORDSNET-15746|/performance/ Support to load document partially in DOM|Performance|
|WORDSNET-15910|/infinite loop/ Performance issue with Document.PageCount|Performance|
|WORDSNET-14087|Incorrect table width on page 144|Regression|
|WORDSNET-14088|Document.UpdateFields does not update page field|Regression|
|WORDSNET-15971|Hebrew text conversion issue in DOCX to MHTML|Regression|
|WORDSNET-16024|IFieldMergingCallback.FieldMerging is not called when mail merge field is inside DISPLAYBARCODE field|Regression|
|WORDSNET-8531|Field.Update method return incorrect value for Page field|Regression|
|WORDSNET-9149|MailMerge.Execute takes very long time to complete|Regression |
## **Public API and Backward Incompatible Changes**


This section lists public API changes that were introduced in Aspose.Words 17.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.
### **Supported Dynamic Shape Fill Color Setting for LINQ Reporting Engine**
The "Setting Text Background Color Dynamically" section of the engine's documentation was renamed to "[Setting Background Color Dynamically](/words/java/setting-background-color-dynamically/)" and updated to describe the change.
### **Added Word2016 Constant into MsWordVersion Enumeration Type**
Related issue WORDSNET-14771.

The following constant is added into the MsWordVersion enumeration type.

{{< highlight java >}}

 /// <summary>

/// Optimize Aspose.Words behavior to match MS Word 2016 version.

/// </summary>

WORD_2016

{{< /highlight >}}

It can be passed into the CompatibilityOptions.OptimizeFor method to optimize the document contents as well as Aspose.Words behavior to match MS Word 2016 version.

{{< highlight java >}}

 doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

{{< /highlight >}}
### **To Set File Name and Extension when Inserting Ole Object using MemoryStream**
Related Issue: WORDSNET-15616

The public property OlePackage was added to the OleFormat class to provide ability to set file name, extension and display name for OLE Package.
The OlePackage class has 2 public properties:

{{< highlight java >}}

 public class OlePackage

{

    /// <summary>

    /// Gets or sets OLE Package file name.

    /// </summary>

    java.lang.String	getFileName()	

    void	setFileName(java.lang.String value)

    /// <summary>

    /// Gets or sets OLE Package display name.

    /// </summary>

    java.lang.String	getDisplayName()	

    void	setDisplayName(java.lang.String value)

}

{{< /highlight >}}

The example:

{{< highlight java >}}

 //use case

Document document = new Document();

DocumentBuilder builder = new DocumentBuilder(document);

InputStream stream = null;

FileInputStream fis = new FileInputStream("aaa.zip");

stream = fis;

Shape shape = builder.insertOleObject(stream, "Package", true, null);

OlePackage olePackage = shape.getOleFormat().getOlePackage();

olePackage.setFileName("aaa.zip");

olePackage.setDisplayName("aaa.zip");

document.save("output.docx");


{{< /highlight >}}
### **Changed Behavior of Range.Replace Methods**
Related issue WORDSNET-15624

Behaviour of the following methods of the Range class is changed.

{{< highlight java >}}

 public int Replace(string pattern, string replacement, FindReplaceOptions options);

public int Replace(Regex pattern, string replacement, FindReplaceOptions options)

{{< /highlight >}}

Now headers/footers of a section are processed in this order:

- If Section.PageSetup.DifferentFirstPageHeaderFooter is ‘True’:
  - First header
  - First footer
  - Even header
  - Even footer
  - Primary header
  - Primary footer
- If Section.PageSetup.DifferentFirstPageHeaderFooter is ‘False’:
  - Primary header
  - Primary footer
  - Even header
  - Even footer
### **Remove Obsolete Methods in DigitalSignatureUtil**
Related issue: WORDSNET-15712

Removed obsolete public methods from DigitalSignatureUtil class:

{{< highlight java >}}

 public static void Sign(string srcFileName, string dstFileName, System.Security.Cryptography.X509Certificates.X509Certificate2 certificate, string comments, DateTime signTime);

public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, string comments,DateTime signTime);

public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);

public static void Sign(Stream srcStream, Stream dstStream, System.Security.Cryptography.X509Certificates.X509Certificate2 certificate, string comments, DateTime signTime);

public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, string comments, DateTime signTime);

public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);

{{< /highlight >}}

Instead, the methods with SignOptions class should be used. See following headings:

- [Implemented Signing Signature Line in Word Documents](/words/java/aspose-words-for-java-17-8-release-notes/) (17.8 release notes)
- [Provided API Similar to SignatureSet.AddSignatureLine Method in MS Office](/words/java/aspose-words-for-java-17-10-release-notes/) (17.10 release notes)
### **Metafile Warnings Improved**
Related issue: WORDSNET-15969

- Added warnings for unsupported binary raster operations. Also added fallback to bitmap rendering in this case on .NET platform.
- Removed warnings about unsupported metafile records which do not affect the output.
- Changed type of warnings about unsupported metafile records from DataLoss/UnexpectedContent to more appropriate MinorFormattingLoss.
### **Get Position of Floating Table in Public API**
Related issue: WORDSNET-15981 

Added new public property for floating tables in Table class:

{{< highlight java >}}

 /// <summary>

/// Gets the base object from which the horizontal positioning in the <see cref="AbsoluteHorizontalDistance"/>

/// and/or <see cref="RelativeHorizontalAlignment"/> attribute should be calculated.

/// Default value is <see cref="RelativeHorizontalPosition.Column"/>.

/// </summary>

public int getHorizontalAnchor()

/// <summary>

/// Gets the base object from which the vertical positioning in the <see cref="AbsoluteVerticalDistance"/>

/// attribute should be calculated.

/// Default value is <see cref="RelativeVerticalPosition.Margin"/>.

/// </summary>

public int getVerticalAnchor()

/// <summary>

/// Gets table absolute horizontal position relative to the horizontal anchor

/// specified by the <see cref="HorizontalAnchor"/>, in points.

/// Default value is 0.

/// </summary>

public double getAbsoluteHorizontalDistance()

/// <summary>

/// Gets table absolute vertical position relative to the vertical anchor

/// specified by the <see cref="VerticalAnchor"/>, in points.

/// Default value is 0.

/// </summary>

public double getAbsoluteVerticalDistance()

/// <summary>

/// Gets whether a floating table shall allow other floating tables in the document

/// to overlap its extents when displayed.

/// Default value is <c>true</c>.

/// </summary>

public boolean AllowOverlap

{{< /highlight >}}

**UC:**

{{< highlight java >}}

 Document doc = new Document("document.xml");

for (Table table: (Iterable<Table>) doc.getFirstSection().getBody().getTables())

{

    // If table is floating type then print its positioning properties.

    if (table.getTextWrapping() == TextWrapping.AROUND)

    {

    	System.out.println(table.getHorizontalAnchor());

    	System.out.println(table.getVerticalAnchor());

    	System.out.println(table.getAbsoluteHorizontalDistance());

    	System.out.println(table.getAbsoluteVerticalDistance());

    	System.out.println(table.getAllowOverlap());

    }

}

{{< /highlight >}}
### **Added the FieldIf.EvaluateCondition() Method**
Related issue: WORDSNET-15903

Customer wanted to evaluate IF condition after mail merge and was requesting some API for it. Since the ComparisonOperator, LeftExpression and RightExpression properties of FieldIf did not fulfill customer requirements, we have introduced the FieldIf.EvaluateCondition() method that immediately returns the result of expression's evaluation.

{{< highlight java >}}

 /// <summary>

/// Evaluates the condition.

/// </summary>

/// <returns>

/// A <see cref="FieldIfComparisonResult"/> value that represents the result of the condition evaluation.

/// </returns>

public int evaluateCondition()

{{< /highlight >}}

FieldIfComparisonResult enumeration:

{{< highlight java >}}

 /// <summary>

/// Specifies result of the IF field condition evaluation.

/// </summary>

public enum FieldIfComparisonResult

{

    /// <summary>

    /// There is an error in condition.

    /// </summary>

    ERROR,

    /// <summary>

    /// The condition is <c>true</c>.

    /// </summary>

    TRUE,

    /// <summary>

    /// The condition is <c>false</c>.

    /// </summary>

    FALSE

}

{{< /highlight >}}

Usage:

{{< highlight java >}}

 DocumentBuilder builder = new DocumentBuilder();

FieldIf field = (FieldIf)builder.insertField("IF 1 = 1", null);

int actualResult = field.evaluateCondition();

switch (actualResult) {

    case 0:

        System.out.println("ERROR");

        break;

    case 1:

        System.out.println("TRUE");

        break;

    case 2:

        System.out.println("FALSE");

        break;

}

{{< /highlight >}}
