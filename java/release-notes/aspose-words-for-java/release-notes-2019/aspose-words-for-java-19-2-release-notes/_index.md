---
title: Aspose.Words for Java 19.2 Release Notes
type: docs
weight: 110
url: /java/aspose-words-for-java-19-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 19.2](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.2).

{{% /alert %}} 

## Major Features

- Supported inlining of syntax error messages into templates instead of exception throwing for LINQ Reporting Engine.
- Improved font fetching and substitution mechanism with corresponding API changes.
- Improved warnings for image processing issues when rendering to PDF.
- Improved font fallback rendering for full-width character Unicode ranges.
- Metafiles with "HeaderPlaceable" structure is now rendering regardless of structure checksum. (MS Word behavior).
- The width of the DrawingML outline is now normalized if it is below the minimum value while rendering. (MS Word behavior).
- Fixed a bug with incorrect calculation of DrawingML TextBox shape bounds.
- Fixed a bug with the calculation of the shape boundaries if the document contains the attribute.ShapeLayoutLikeWW8 (the behavior of MS WORD 97 should be emulated).
- Fixed a bug that caused an exception when rendering ultra-small text boxes in GDI+.
- Fixed a bug with the distorted filling of the DrawingML shape outline when rendering grouped shapes.
- Fixed a bug causing the creation of blank images with zero sizes while rendering into HTML.
- Improved ordering of number in RTL list labels.
- Improved checkbox size calculation when active form fields are exported to PDF.
- Fixed issue when a document has “printer metrics” enabled and Windows has no printer driver installed.
- Fixed hang when the table cell is broken across pages when there is a floating shape anchor in it.
- Fixed issue when text which has borders is wrapped around a shape and does not fit

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-14532|Improve font substitution API|Feature|
|WORDSNET-16111|Error handling in LINQ Reporting|Feature|
|WORDSNET-15203|Add more useful exception message when LINQ Reporting syntax is incorrect|Feature|
|WORDSJAVA-1865|Group shape with invalid height causes Out Of Memory Error.|Enhancement|
|WORDSJAVA-1941|Incorrect text width when the PrinterMetrics option is enabled.|Enhancement|
|WORDSJAVA-1974|Space in Hijri month names should be non-breaking.|Enhancement|
|WORDSJAVA-1975|New hryvnia currency suffix.|Enhancement|
|WORDSJAVA-1979|MailMerge loses DateTime formatting in complex setting of thread-local System and current MergeField Cultures.|Enhancement|
|WORDSNET-17047|ActiveX controls cold rendering // Radio buttons are jagged when saved as PDF|Enhancement|
|WORDSNET-17725|Border has zero width after importing from HTML|Enhancement|
|WORDSNET-11331|Empty row appears conversion from DOCX to DOC/ PDF|Enhancement|
|WORDSNET-17405|The text is rendered to the next page|Enhancement|
|WORDSNET-14851|Layout in PDF is not the same as in the WORD document|Enhancement|
|WORDSNET-15008|Table content overlaps footer and does not go to next page in PDF|Enhancement|
|WORDSNET-16413|Content control is rendered on next in output PDF|Enhancement|
|WORDSNET-17532|Cell break is wrapped to the next page|Enhancement|
|WORDSNET-13756|Throw meaningful exception for ReportingEngine.BuildReport|Enhancement|
|WORDSNET-17950|Extract common test code from Aspose.Words.Tests|Enhancement|
|WORDSNET-17809|ReportingEngine.buildReport throws java.lang.IllegalStateException|Enhancement|
|WORDSNET-17404|Content is pushed down to the next page in output PDF|Enhancement|
|WORDSNET-18018|DOC/X to PDF - consumes a lot of memory and takes too much time|Performance|
|WORDSNET-17911|Loading big ODT file consumes too much time|Performance|
|WORDSNET-17623|The issue with Aspose Memory Usage|Performance|
|WORDSJAVA-1963|File /META-INF/versions/9/module-info.class need be compiled by JDK 6|Exception|
|WORDSJAVA-1980|java.lang.IllegalArgumentException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-18017|DOCX to HTML - Metafile checksum is an invalid exception is thrown|Exception|
|WORDSNET-17803|MailMerge.ExecuteWithRegions throws System.InvalidOperationException|Exception|
|WORDSNET-17823|MailMerge.ExecuteWithRegions throws System.IndexOutOfRangeException|Exception|
|WORDSNET-17849|System.ArgumentOutOfRangeException is thrown when DOC is converted to PDF|Exception|
|WORDSNET-18042|InteropServices.ExternalException occurs when saving DOCX to an image|Exception|
|WORDSNET-18063|Aspose.Words.FileCorruptedException is thrown while loading RTF file|Exception|
|WORDSJAVA-1965|Missed image (lost codec?).|Regression|
|WORDSNET-17999|Wrong page numbers in PDF|Regression|
|WORDSNET-18039|System.NullReferenceException is thrown while saving DOCX to PDF|Regression|
|WORDSNET-18055|Cell's text is not wrapped in output PDF|Regression|
|WORDSJAVA-1976|Month name bug on Hebrew locale thread.|Bug|
|WORDSJAVA-1982|ShapeRenderer generates empty TIFFs when using FloydSteinberg dithering|Bug|
|WORDSNET-17655|The table has been moved after rendering|Bug|
|WORDSNET-17841|Extra paragraph added while loading HTML document|Bug|
|WORDSNET-17591|HTML to DOCX - output is not the same|Bug|
|WORDSNET-17521|Section Breaks not preserved during Open/Save an ODT|Bug|
|WORDSNET-17132|Image not rendering in PDF|Bug|
|WORDSNET-9001|Different table rendering for different compatibilityMode values|Bug|
|WORDSNET-17338|Images Breaking When Converting to PDF|Bug|
|WORDSNET-17965|DrawingML shape outline has incorrect width upon rendering|Bug|
|WORDSNET-17897|A gradient line is not rendered in the right bottom part of the page|Bug|
|WORDSNET-17880|Gradient fill of DrawingML shape outline is rendered incorrectly|Bug|
|WORDSNET-17647|Text alignment of SVG text is ignored in output DOCX/PDF|Bug|
|WORDSNET-17455|Merge HTML with word is failing|Bug|
|WORDSNET-17572|The document creator appears at the top of the text|Bug|
|WORDSNET-17989|Thick border around SmartArt appears during conversions|Bug|
|WORDSNET-17830|Converting MHTML to PDF produces no content|Bug|
|WORDSNET-17902|Repeating Content are lost after conversion from DOCX to PDF|Bug|
|WORDSNET-12376|DOCX to PDF conversion issue with image position|Bug|
|WORDSNET-17661|Incorrect calculation of Page numbers in TOC by UpdateFields method|Bug|
|WORDSNET-15996|Incorrect shape position in PDF document|Bug|
|WORDSNET-17855|Checkbox size decreased during DOCX to PDF conversion|Bug|
|WORDSNET-17983|DOCX to PDF conversion issue with shape's position|Bug|
|WORDSNET-18007|A Chart's Bar in SVG missing when inserted via Aspose.Words|Bug|
|WORDSNET-11045|Contents of table does not render correct in output DOC/ PDF|Bug|
|WORDSNET-15311|Bookmarks referenced by fields issue in HTML to DOC conversion|Bug|
|WORDSNET-17994|Mucharacter turns into an invalid Unicode character during converting doc tohtml|Bug|
|WORDSNET-15077|Text with full-width characters is indented incorrectly after import from HTML|Bug|
|WORDSNET-17970|Blank Image Generated during Word to HTML Conversion|Bug|
|WORDSNET-18041|Assertion during layout update|Bug|
|WORDSNET-18047|Footnote color is changed after RTF to DOCX conversion|Bug|
|WORDSNET-17826|HTML to DOCX conversion issue with extra line break|Bug|
|WORDSNET-17629|Vertical lines of SVG are rendered at incorrect position in DOCX/PDF|Bug|
|WORDSNET-17825|Extra spacing issue with paragraph during HTML to Word conversion|Bug|
|WORDSNET-17416|SVG is incorrectly imported into Aspose.Words DOM|Bug|
|WORDSNET-18026|Cell's text is not wrapped in output PDF|Bug|
|WORDSNET-17948|Incorrect shape width metrics prevent table grid re-calculation|Bug|
|WORDSNET-17570|Incorrect font size of the checkbox field|Bug|
|WORDSNET-17969|Numbers in numeric list are reversed when document is converted to PDF|Bug|
|WORDSNET-18054|Document.Save method throws exception|Bug|
|WORDSNET-17944|MailMergeCleanupOptions does notcleanupmail merge fields correctly|Bug|
|WORDSNET-18010|AcceptAllRevisions() method inserts paragraph with white spaces|Bug|
|WORDSNET-17991|DOC to PDF - investigate text misplacement and misalignment|Bug|
|WORDSNET-16496|Foreign language rendering as square boxes|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Adjusted Warnings for Image Processing Issues When Saving to PDF

WORDSNET-17338 has now been resolved.

Previously there was one generic warning with text "Unsupported image format.". Now there is a specific warning for OutOfMemoryException with the text "Not enough memory to load the image." and a generic warning with the text "Image cannot be processed. Possibly unsupported image format.".

### Changes in Font Substitution Process and Public API

WORDSNET-14532 has now been resolved:

### Font fetching and substitution mechanism has been changed

Previously font fetching process was:

1. Exact font name match
1. Embedded font data from the document
1. Font Substitutes specified for the font name
1. AltName from FontInfo (if any) and the substitutes for AltName
1. Font substitution if FontInfo is present and EnableFontSubstitution is set.
1. DefaultFontName and the substitutes for DefaultFontName
1. Any font from available font sources
1. “Fanwood” font embedded into assembly.

Now font fetching process is:

1. Exact font name match
1. Embedded font data from the document
1. AltName from FontInfo (if any)
1. Font Substitution rules
   1. fontconfigsubstitution
   1. Table substitution for the font name and alt name
   1. Font info substitution
   1. Default font substitution
1. Any font from available font sources
1. “Fanwood” font embedded into assembly.

Here are some details about the particular changes:

- Font Substitutes mechanism is replaced with table font substitution rule. Previously Font Substitutes mechanism was not a part of font substitution process. Fonts selected via Font Substitutes was considered properly resolved. Now table substitution rule is a regular part of font substitution process. This implies that table substitution rule is not used now in numerous cases where Font Substitutes previously was used. In particular table substitution is not used now when performing font fallback and checking default font substitution rule. Customers could setup suitable fallback table viaFontSettings.FallbackSettings.
- To better fit MS Word behavior, numerous well-known font aliases used unconditionally by MS Word are removed from default Windows font substitution table. Now Aspose.Words checks them before performing font substitution.
- Added new feature to use thefontconfigutility to get the substitution fonts. fontconfig is designed to provide system-wide font configuration, customization and application access on Linux (and other Unix-like) systems.
- Font substitution warnings messages are changed. Now they are in format "Font '<OriginalFont>' has not been found. Using '<SubstitutionFont>' font instead. Reason: <Reason>." with reasons:
  - "alternative name from the document" for substitution by FontInfo.AltName
  - "fontconfigsubstitution" for substitution by font config rule
  - "table substitution" for substitution by table rule
  - "font info substitution" for substitution by font info rule
  - "default font substitution" for substitution by default font rule
  - "first available font" for substitution with first available font


### Added new public API for font substitution settings. Previous API methods/properties related to font substitution marked as obsolete.

{{< highlight csharp >}}
public class FontSettings
{
    /// <summary>
    /// Settings related to font substitution mechanism.
    /// </summary>
    public FontSubstitutionSettings SubstitutionSettings
    { get; }
    [Obsolete("This property is obsolete. Please use SubstitutionSettings.DefaultFontSubstitution instead.")]
    public string DefaultFontName
    { get; set; }
    [Obsolete("This property is obsolete. Please use SubstitutionSettings.FontInfoSubstitution instead.")]
    public bool EnableFontSubstitution
    { get; set; }
    [Obsolete("This method is obsolete. Please use SubstitutionSettings.TableSubstitution instead.")]
    public string[] GetFontSubstitutes(string originalFontName);
    [Obsolete("This method is obsolete. Please use SubstitutionSettings.TableSubstitution instead.")]
    public void SetFontSubstitutes(string originalFontName, params string[] substituteFontNames);
    [Obsolete("This method is obsolete. Please use SubstitutionSettings.TableSubstitution instead.")]
    public void AddFontSubstitutes(string originalFontName, params string[] substituteFontNames);
}
/// <summary>
/// Specifies font substitution mechanism settings.
/// </summary>
/// <remarks>
/// <para>
/// Font substitution process consists of several rules which are checked one by one in specific order.
/// If the first rule can't resolve the font then second rule is checked and so on.</para>
/// <para>The order of the rules is following:
/// 1. Font config substitution rule (disabled by default)
/// 2. Table substitution rule (enabled by default)
/// 3. Font info substitution rule (enabled by default)
/// 4. Default font rule (enabled by default)
/// </para>
/// <para>
/// Note that font info substitution rule will always resolve the font if <see cref="FontInfo"/> is available
/// and will override the default font rule. If you want to use the default font rule then you should disable the
/// font info substitution rule. 
/// </para>
/// <para>
/// Note that font config substitution rule will resolve the font in most cases and thus overrides all other rules. 
/// </para>
/// </remarks>
public class FontSubstitutionSettings
{        
    /// <summary>
    /// Settings related to table substitution rule.
    /// </summary>
    public TableSubstitutionRule TableSubstitution
    { get; }
    /// <summary>
    /// Settings related to font info substitution rule.
    /// </summary>
    public FontInfoSubstitutionRule FontInfoSubstitution
    { get; }
    /// <summary>
    /// Settings related to default font substitution rule.
    /// </summary>
    public DefaultFontSubstitutionRule DefaultFontSubstitution
    { get; }
    /// <summary>
    /// Settings related to font config substitution rule.
    /// </summary>
    public FontConfigSubstitutionRule FontConfigSubstitution
    { get; }
}
/// <summary>
/// This is an abstract base class for the font substitution rule.
/// </summary>
public abstract class FontSubstitutionRule
{
    /// <summary>
    /// Specifies whether the rule is enabled or not.
    /// </summary>
    public bool Enabled
    { get; set; }
}
/// <summary>
/// Font config substitution rule.
/// </summary>
/// <remarks>
/// <para>
/// This rule uses fontconfig utility on Linux (and other Unix-like) platforms to get the substitution
/// if the original font is not available.
/// </para>
/// <para>
/// If fontconfig utility is not available then this rule will be ignored.
/// </para>
/// </remarks>
public class FontConfigSubstitutionRule : FontSubstitutionRule
{
    /// <summary>
    /// Check if fontconfig utility is available or not.
    /// </summary>
    public bool IsFontConfigAvailable();
    /// <summary>
    /// Resets the cache of fontconfig calling results.
    /// </summary>
    public void ResetCache();
}
/// <summary>
/// Table font substitution rule.
/// </summary>
/// <remarks>
/// This rule defines the list of substitute font names to be used if the original font is not available.
/// Substitutes will be checked for the font name and the <see cref="FontInfo.AltName"/> (if any).
/// </remarks>
public class TableSubstitutionRule : FontSubstitutionRule
{      
    /// <summary>
    /// Loads table substitution settings from XML file.
    /// </summary>
    /// <param name="fileName">Input file name.</param>
    public void Load(string fileName);
    /// <summary>
    /// Loads table substitution settings from XML stream.
    /// </summary>
    /// <param name="stream">Input stream.</param>
    public void Load(Stream stream);
    /// <summary>
    /// Loads predefined table substitution settings for Windows platform.
    /// </summary>
    public void LoadWindowsSettings();
    /// <summary>
    /// Loads predefined table substitution settings for Linux platform.
    /// </summary>
    public void LoadLinuxSettings();
    /// <summary>
    /// Saves the current table substitution settings to file.
    /// </summary>
    /// <param name="fileName">Output file name.</param>
    public void Save(string fileName);
    /// <summary>
    /// Saves the current table substitution settings to stream.
    /// </summary>
    /// <param name="outputStream">Output stream.</param>
    public void Save(Stream outputStream);
    /// <summary>
    /// Returns array containing substitute font names for the specified original font name.
    /// </summary>
    /// <param name="originalFontName">Original font name.</param>
    /// <returns>List of alternative font names.</returns>
    public IEnumerable<string> GetSubstitutes(string originalFontName);
    /// <summary>
    /// Override substitute font names for given original font name.
    /// </summary>
    /// <param name="originalFontName">Original font name.</param>
    /// <param name="substituteFontNames">List of alternative font names.</param>
    public void SetSubstitutes(string originalFontName, IEnumerable<string> substituteFontNames);
    /// <summary>
    /// Override substitute font names for given original font name.
    /// </summary>
    /// <param name="originalFontName">Original font name.</param>
    /// <param name="substituteFontNames">List of alternative font names.</param>
    public void SetSubstitutes(string originalFontName, params string[] substituteFontNames);
    /// <summary>
    /// Adds substitute font names for given original font name.
    /// </summary>
    /// <param name="originalFontName">Original font name.</param>
    /// <param name="substituteFontNames">List of alternative font names.</param>
    public void AddSubstitutes(string originalFontName, IEnumerable<string> substituteFontNames);
    /// <summary>
    /// Adds substitute font names for given original font name.
    /// </summary>
    /// <param name="originalFontName">Original font name.</param>
    /// <param name="substituteFontNames">List of alternative font names.</param>
    public void AddSubstitutes(string originalFontName, params string[] substituteFontNames);
}
/// <summary>
/// Font info substitution rule.
/// </summary>
/// <remarks>
/// According to this rule Aspose.Words evaluates all the related fields in <see cref="FontInfo"/> (Panose, Sig etc) for
/// the missing font and finds the closest match among the available font sources. If <see cref="FontInfo"/> is not
/// available for the missing font then nothing will be done.
/// </remarks>
public class FontInfoSubstitutionRule : FontSubstitutionRule
{ }
/// <summary>
/// Default font substitution rule.
/// </summary>
/// <remarks>
/// This rule defines single default font name to be used for substitution if the original font is not available.
/// </remarks>
public class DefaultFontSubstitutionRule : FontSubstitutionRule
{
    /// <summary>
    /// Gets or sets the default font name.
    /// </summary>
    /// <remarks>
    /// <para>The default value is 'Times New Roman'.</para>
    /// </remarks>
    public string DefaultFontName
    { get; set; }
}
{{< /highlight >}}

### Supported Inlining of Syntax Error Messages into Templates Instead of Exception Throwing for LINQ Reporting Engine

**Issues:** WORDSNET-16111, WORDSNET-15203, WORDSNET-13756

The "Inlining Syntax Error Messages into Templates" section of the engine's documentation was added to describe the change.


### Removed Deprecated Public Property TxtSaveOptions.ExportHeadersFooters

**Issue**: WORDSNET-17560

Removed deprecated public property TxtSaveOptions.ExportHeadersFooters:



{{< highlight csharp >}}

// Specifies whether to output headers and footers when exporting in plain text format.

// Default value is <b>true</b>.
public bool ExportHeadersFooters
{{< /highlight >}}



Please use *TxtSaveOptions.ExportHeadersFootersMode* property instead.
