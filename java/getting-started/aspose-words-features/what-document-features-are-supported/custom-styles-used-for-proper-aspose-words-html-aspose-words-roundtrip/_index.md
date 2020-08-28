---
title: Custom Styles used for proper Aspose.Words-HTML-Aspose.Words Roundtrip
type: docs
weight: 40
url: /java/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/
---

{{% alert color="primary" %}} 

Please find below a list of custom styles that Aspose.Words uses to save extra information in output HTML and usually this information is used for Aspose.Words-HTML-Aspose.Words roundtrip. The name of such Styles are prefixed with -aw. All -aw properties are used to preserve some important information which can't be saved by other means when document is saved to HTML and back to other formats.

{{% /alert %}} 
## **Comment’s Content**
Comment's content is exported as div container. -aw-comment-author, -aw-comment-datetime and -aw-comment-initial CSS properties can be applied to this div.

**-aw-comment-author** stores author name for the comment. Corresponds to [Aspose.Words.Comment.Author](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Comment.getAuthor+property) property.
**-aw-comment-datetime** stores date and time the comment was made. Corresponds to [Aspose.Words.Comment.DateTime](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Comment.getDateTime+property) property.
**-aw-comment-initial** stores initials of the user associated with the comment. Corresponds to [Aspose.Words.Comment.Initial](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Comment.getInitial+property) property.

Example:

{{< highlight csharp >}}
<div id="_cmnt1" style="-aw-comment-author: 'Author'; -aw-comment-datetime: '2015-01-01T12:00:00'; -aw-comment-initial: 'A'">
    <p style="margin: 0pt 0pt 8pt">
        <a href="#_cmntref1">[A1]</a><span style="font-family: Calibri; font-size: 10pt">Some comment.</span>
    </p>
</div>
{{< /highlight >}}
## **Comment**
In simple case when comment is located within one paragraph, in output HTML this comment's boundaries are marked with anchor tag. In the following example comment's boundaries are marked as bookmark with “_cmntref1” name:

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some </span><a name="_cmntref1"><span style="font-family: Calibri; font-size: 11pt">text</span></a><a href="#_cmnt1">[A1]</a><span style="font-family: Calibri; font-size: 11pt">.</span>
</p>
{{< /highlight >}}

In more complex case when comment is overlapped with other comment or comment’s boundaries are spread over multiple paragraphs additional span element is used to preserve comment’s boundaries (HTML doesn’t allow anchor tags to overlap each other or spread over multiple paragraphs). –aw-comment-start and –aw-comment-end CSS properties can be applied to this span.

**-aw-comment-start** stores name of comment which it starts.
**-aw-comment-end** stores name of comment which it ends.

In the following example first comment’s boundaries are marked as bookmark with “_cmntref1” name and span which –aw-comment-end property’s value is set to “_cmntref1”.

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some </span><a name="_cmntref1"><span style="font-family: Calibri; font-size: 11pt">text 1.</span></a>
</p>
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some</span><span style="-aw-comment-end: _cmntref1"></span><a href="#_cmnt1">[A1]</a><span style="font-family: Calibri; font-size: 11pt"> text 2.</span>
</p>
{{< /highlight >}}
## **Footnote (Endnote)**
Footnote (endnote) is exported as div. –aw-footnote-isauto CSS property can be applied to this div.

**-aw-footnote-isauto** stores a value that specifies whether this is an auto-numbered footnote (endnote) or footnote (endnote) with user defined custom reference mark.

- If value of this property is “1” than footnote (endnote) is auto-numbered.
- If value of this property is “0” than footnote (endnote) has user defined custom reference mark.

Example:

{{< highlight csharp >}}
<div id="_ftn1" style="-aw-footnote-isauto: 1">
    <p style="margin: 0pt">
        <a href="#_ftnref1"><span style="font-family: Calibri; font-size: 7.33pt; vertical-align: super">[3]</span></a><span style="font-family: Calibri; font-size: 10pt"> Some footnote.</span>
    </p>
</div>
<div id="_ftn2" style="-aw-footnote-isauto: 0">
    <p style="margin: 0pt">
        <a href="#_ftnref2"><span style="font-family: Calibri; font-size: 7.33pt; vertical-align: super">[ftn]</span></a><span style="font-family: Calibri; font-size: 10pt"> Some footnote with custom mark.</span>
    </p>
</div>
{{< /highlight >}}
## **Footnotes’ (Endnotes’) Formatting**
All footnotes (endnotes) in a document share formatting. When exported to HTML footnotes (endnotes) are separated from other document’s content with horizontal rule element. –aw-footnote-numberstyle, -aw-footnote-startnumber and –aw-footnote-type CSS properties can be applied to this horizontal rule.

**-aw-footnote-numberstyle** stores the number format for automatically numbered footnotes (endnotes). Corresponds to [Aspose.Words.FootnoteOptions.NumberStyle](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.FootnoteOptions.getNumberStyle+property) property of Document.FootnoteOptions ([Document.EndnoteOptions](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getFootnoteOptions+property)) object.

**-aw-footnote-startnumber** stores the starting number or character for the first automatically numbered footnotes (endnotes). Corresponds to [Aspose.Words.FootnoteOptions.StartNumber](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.FootnoteOptions.getStartNumber+property) property of [Document.EndnoteOptions](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getFootnoteOptions+property) ([Document.EndnoteOptions](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getEndnoteOptions+property)) object.

**-aw-footnote-type** stores value indicating whether this is footnote or endnote.

- If value of this property is “0” than this is footnote.
- If value of this property is “1” than this is endnote.

Example:

{{< highlight csharp >}}
<hr style="width: 33%; height: 1px; text-align: left; -aw-footnote-numberstyle: 0; -aw-footnote-startnumber: 3; -aw-footnote-type: 0" />
<div id="_ftn1" style="-aw-footnote-isauto: 1">
    <p style="margin: 0pt">
        <a href="#_ftnref1"><span style="font-family: Calibri; font-size: 7.33pt; vertical-align: super">[3]</span></a><span style="font-family: Calibri; font-size: 10pt"> Some footnote.</span>
    </p>
</div>
<hr style="width: 33%; height: 1px; text-align: left; -aw-footnote-numberstyle: 2; -aw-footnote-startnumber: 5; -aw-footnote-type: 1" />
<div id="_edn1" style="-aw-footnote-isauto: 1">
    <p style="margin: 0pt">
        <a href="#_ednref1"><span style="font-family: Calibri; font-size: 7.33pt; vertical-align: super">[v]</span></a><span style="font-family: Calibri; font-size: 10pt"> Some endnote.</span>
    </p>
</div>
{{< /highlight >}}
## **Header (Footer)**
Header (footer) is exported as div container. –aw-different-first-page and –aw-headerfooter-type CSS properties can be applied to this div.

**-aw-headerfooter-type** stores value indicating type of header (footer). This propertie’s values partially correspond to [Aspose.Words.HeaderFooterType](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.HeaderFooterType+Class) enum (other values are meaningless in HTML context and are not used). Corresponds to [Aspose.Words.HeaderFooter.HeaderFooterType](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.HeaderFooterType+Class) property.

- If value of this property is “header-primary” than this is primary header.
- If value of this property is “header-first” than this is header for the first page of a section.
- If value of this property is “footer-primary” than this is primary footer.
- If value of this property is “footer-first” than this is footer for the first page of a section.
- If value of this property is “linked” than this header (footer) is linked to the previous section’s header (footer).

**-aw-different-first-page** stores value indicating whether different header (footer) is used on the first page. One possible value for this property is “true”. Corresponds to [Aspose.Words.PageSetup.DifferentFirstPageHeaderFooter](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.PageSetup.getDifferentFirstPageHeaderFooter+property) property of [Aspose.Words.Section.PageSetup](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.PageSetup+class) object.

Example:

{{< highlight csharp >}}
<div style="-aw-headerfooter-type:header-primary">
	<p style="margin:0pt">
		<span style="font-family:Calibri; font-size:11pt">Some header.</span>
	</p>
</div>
{{< /highlight >}}
## **Bookmark**
In simple case when bookmark is located within one paragraph, in output HTML this bookmark's boundaries are marked with anchor tag. In the following example bookmark's boundaries are marked as bookmark with “bm1” name:

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some </span><a name="bm1"><span style="font-family: Calibri; font-size: 11pt">text</span></a><span style="font-family: Calibri; font-size: 11pt">.</span>
</p>
{{< /highlight >}}

In more complex case when bookmark is overlapped with other bookmark or bookmark’s boundaries are spread over multiple paragraphs additional span element is used to preserve bookmark’s boundaries (HTML doesn’t allow anchor tags to overlap each other or spread over multiple paragraphs). –aw-bookmark-start and –aw-bookmark-end CSS properties can be applied to this span.

**-aw-bookmark-start** stores name of bookmark which it starts. Corresponds to [Aspose.Words.Bookmark.Name](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Bookmark.getName+property) property.
**-aw-bookmark-end** stores name of bookmark which it ends. Corresponds to [Aspose.Words.Bookmark.Name](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Bookmark.getName+property) property.

In the following example first bookmark’s boundaries are marked as bookmark with “bm1” name and span which –aw-bookmark-end property’s value is set to “bm1”.

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some </span><a name="bm1"><span style="font-family: Calibri; font-size: 11pt">text 1.</span></a>
</p>
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt">Some</span><span style="-aw-bookmark-end: bm1"></span><span style="font-family: Calibri; font-size: 11pt"> text 2.</span>
</p>
{{< /highlight >}}
## **Tab Stop**
Tab stop is exported as span element. –aw-tabstop-align, -aw-tabstop-leader and –aw-tabstop-pos CSS properties can be applied to this span.

**-aw-tabstop-align** stores value which specifies the alignment/type of a tab stop. Possible values are “left”, “center”, “right” and partially correspond to values of Aspose.Words.TabAlignment enum (other tab stop types can’t be emulated by means of HTML and are exported as span elements with "\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\x20" content). Property corresponds to [Aspose.Words.TabStop.Alignment](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.TabStop.getAlignment+property) property of [Aspose.Words.Paragraph.ParagraphFormat.TabStops](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ParagraphFormat.getTabStops+property) collection object.

**-aw-tabstop-pos** stores position of the tab stop. Corresponds to Aspose.Words.TabStop.Position property of Corresponds to [Aspose.Words.Paragraph.ParagraphFormat.TabStops](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ParagraphFormat.getTabStops+property) collection object.

**-aw-tabstop-leader** stores stores value which specifies the type of the leader line displayed under the tab character. Possible values are “none”, “dots”, “dashes”, “line”, “heavy”, “middledot” and correspond to values of [Aspose.Words.TabLeader](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.TabLeader+Class) enum. Property corresponds to [Aspose.Words.TabStop.Leader](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.TabStop.getLeader+property) property of [Aspose.Words.Paragraph.ParagraphFormat.TabStops](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ParagraphFormat.getTabStops+property) collection object.

Example:

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="width: 64.8pt; text-indent: 0pt; font-family: 'Lucida Console'; font-size: 10pt; display: inline-block; -aw-tabstop-align: left; -aw-tabstop-leader: dots; -aw-tabstop-pos: 64.8pt">..........</span><span style="font-family: Calibri; font-size: 11pt">Some text.</span>
</p>
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="font-family: Calibri; font-size: 11pt"></span><span style="font-family: Calibri; font-size: 11pt">Some text.</span>
</p>
{{< /highlight >}}
## **PAGE Field**
Usually PAGE field is represented as one span element in HTML output, but can be represented with several spans. We enclose these span elements with one span container. –aw-field-code CSS property can be applied to this span.

**-aw-field-code** stores text between field start and field separator (or field end if there is no separator). Corresponds to [Aspose.Words.Fields.Field.GetFieldCode()](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Field.getFieldCode+method) function’s return value.

Example:

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <span style="-aw-field-code: ' PAGE  \\* Arabic  \\* MERGEFORMAT '"><span style="font-family: Calibri; font-size: 11pt">1</span></span>
</p>
{{< /highlight >}}
## **Shape**
Shape is exported as img element. –aw-wrap-type, –aw-left-pos, -aw-top-pos, -aw-rel-hpos and –aw-rel-vpos CSS properties can be applied to this img element.

**-aw-wrap-type** stores value which specifies how text is wrapped around a shape. Possible values are “none”, “inline”, “topbottom”, “square”, “tight”, “through” and correspond to Aspose.Words.Drawing.WrapType enum. Property corresponds to [Aspose.Words.Drawing.ShapeBase.WrapType](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ShapeBase.getWrapType+property) property.

**-aw-left-pos** stores position of the left edge of the containing block of the shape. Corresponds to [Aspose.Words.Drawing.ShapeBase.Left](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ShapeBase.getLeft+property) property.

**-aw-top-pos** stores position of the top edge of the containing block of the shape. Corresponds to [Aspose.Words.Drawing.ShapeBase.Top](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ShapeBase.getTop+property) property.

**-aw-rel-hpos** stores value which specifies to what the horizontal position of a shape or text frame is relative. Possible values are “margin”, “page”, “column”, “character”, “leftmargin”, “rightmargin”, “insidemargin”, “outsidemargin” and correspond to Aspose.Words.Drawing.RelativeHorizontalPosition enum. Property corresponds to [Aspose.Words.Drawing.ShapeBase.RelativeHorizontalPosition](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ShapeBase.getRelativeHorizontalPosition+method) property.

**-aw-rel-vpos** stores value which specifies to what the vertical position of a shape or text frame is relative. Possible values are “margin”, “page”, “paragraph”, “line”, “topmargin”, “bottommargin”, “insidemargin”, “outsidemargin” and correspond to Aspose.Words.Drawing.RelativeVerticalPosition enum. Property corresponds to [Aspose.Words.Drawing.ShapeBase.RelativeVerticalPosition](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.ShapeBase.getRelativeVerticalPosition+property) property.

Example:

{{< highlight csharp >}}
<img src="TestImage Out.001.png" width="193" height="193" alt="" style="margin-top: 27.3pt; margin-left: 46.2pt; -aw-left-pos: 46.2pt; -aw-rel-hpos: column; -aw-rel-vpos: paragraph; -aw-top-pos: 27.3pt; -aw-wrap-type: none; position: absolute; z-index: 0" />
{{< /highlight >}}
## **Insert (Delete) Revision**
Insert (delete) revision is exported as ins (del) element. –aw-revision-author and –aw-revision-datetime CSS properties can be applied to this ins (del) element.

**-aw-revision-author** stores author name for the revision.
**-aw-revision-datetime** stores date and time the revision was made.

Example:

{{< highlight csharp >}}
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <del style="-aw-revision-author: 'Author'; -aw-revision-datetime: '2015-01-01T12:00:00'">
        <span style="font-family: Calibri; font-size: 11pt">Some text 1.</span>
    </del>
</p>
<p style="margin: 0pt 0pt 8pt; line-height: 108%; font-size: 11pt">
    <ins style="-aw-revision-author: 'Author'; -aw-revision-datetime: '2015-01-01T12:00:00'">
        <span style="font-family: Calibri; font-size: 11pt">Some text 2.</span>
    </ins>
</p>
{{< /highlight >}}
## **Structured Document Tag**
Every document element which is content control can be marked in output HTML with special CSS properties –aw-sdt-title and –aw-sdt-tag (p and span elements).

**-aw-sdt-title** stores friendly name associated with structured document tag. Corresponds to [Aspose.Words.Markup.StructuredDocumentTag.Title](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.StructuredDocumentTag.getTitle+property) property.
**-aw-sdt-tag** stores tag associated with structured document tag. Corresponds to [Aspose.Words.Markup.StructuredDocumentTag.Tag](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.StructuredDocumentTag.getTag+property) property.

Example:

{{< highlight csharp >}}
<p style="margin: 0pt; -aw-sdt-tag: TAG; -aw-sdt-title: TAG">
    <span style="font-family: Arial; font-size: 11pt">This text is tagged.</span>
</p>
<p style="margin: 0pt">
    <span style="font-family: Arial; font-size: 11pt">Before.</span>
    <span style="font-family: Arial; font-size: 11pt; -aw-sdt-tag: tag1; -aw-sdt-title: Title1">Plain text</span>
    <span style="font-family: Arial; font-size: 11pt">After.</span>
</p>
{{< /highlight >}}
