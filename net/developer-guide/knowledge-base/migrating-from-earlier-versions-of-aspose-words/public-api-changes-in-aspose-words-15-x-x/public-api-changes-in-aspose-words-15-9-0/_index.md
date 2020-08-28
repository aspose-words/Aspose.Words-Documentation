---
title: Public API Changes in Aspose.Words 15.9.0
type: docs
weight: 90
url: /net/public-api-changes-in-aspose-words-15-9-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 15.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **Added DocumentBuilder Public Methods for Creating EditableRanges.**
We have added following methods in DocumentBuilder class in 15.9.0.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Marks the current position in the document as an editable range start.
/// </summary>
/// <remarks>
/// <p>Editable range in a document can overlap and span any range. To create a valid editable range you need to
/// call both <see cref="StartEditableRange"/> and <see cref="EndEditableRange()"/>
/// or <see cref="EndEditableRange(EditableRangeStart)"/> methods.</p>
/// <p>Badly formed editable range will be ignored when the document is saved.</p>
/// </remarks>
/// <returns>The editable range start node that was just created.</returns>
public EditableRangeStart StartEditableRange()
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Marks the current position in the document as an editable range end.
/// </summary>
/// <remarks>
/// <p>Use this overload during creating nested editable ranges.</p>
/// <p>Editable range in a document can overlap and span any range. To create a valid editable range you need to
/// call both <see cref="StartEditableRange"/> and <see cref="EndEditableRange()"/>
/// or <see cref="EndEditableRange(EditableRangeStart)"/> methods.</p>
/// <p>Badly formed editable range will be ignored when the document is saved.</p>
/// </remarks>
/// <param name="start">This editable range start.</param>
/// <returns>The editable range end node that was just created.</returns>
public EditableRangeEnd EndEditableRange(EditableRangeStart start)
{{< /highlight >}}
### **Added Options to Control Image Stretching for LINQ Reporting Engine**
WORDSNET-12077 has now been resolved and the documentation for the engine has been updated appropriately.

Note that there was a lack of documentation about using of charts with LINQ Reporting Engine, although this feature was included to 15.6 as per WORDSNET-10922. Now it is fixed.

The following documentation sections were added/modified:

- [Using Charts to Represent Sequential Data](http://www.aspose.com/docs/display/wordsnet/Using+Charts+to+Represent+Sequential+Data)
- [Inserting Images Dynamically](http://www.aspose.com/docs/display/wordsnet/Inserting+Images+Dynamically)
- [Pie Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsnet/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-PieChartTemplate)
- [Scatter Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsnet/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-ScatterChartTemplate)
- [Bubble Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsnet/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-BubbleChartTemplate)
- [In-Table Template with Filtering, Grouping, and Ordering (Appendix C)](http://www.aspose.com/docs/display/wordsnet/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-InTableTemplateFilteringGroupingOrdering)
- [Chart Template with Filtering, Grouping, and Ordering (Appendix C)](http://www.aspose.com/docs/display/wordsnet/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-ChartTemplateFilteringGroupingOrdering)
### **Added ReportingEngine.Options Property**
WORDSNET-12380 is now resolved. We have introduced following property in Aspose.Words 15.9.0.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a set of flags controlling behavior of this <see cref="ReportingEngine"/> instance
/// while building a report.
/// </summary>
public ReportBuildOptions Options
{
    get;
    set;
}
{{< /highlight >}}

**C#**

{{< highlight csharp >}}
/// <summary>
/// Specifies options controlling behavior of <see cref="ReportingEngine"/> while building a report.
/// </summary>
[Flags]
public enum ReportBuildOptions
{
    /// <summary>
    /// Specifies default options.
    /// </summary>
    None = 0,
    /// <summary>
    /// Specifies that fields missing in a data source object should be treated as null literals by the engine.
    /// This option affects only fields of <ms><see cref="DataRow"/> and <see cref="IDataRecord"/> objects</ms>
    /// <java><see cref="DataTable"/> rows</java>. If this option is not set, the engine throws an exception
    /// when encounters a missing data field.
    /// </summary>
    AllowMissingDataFields = 1
}
{{< /highlight >}}
### **Changed the default DrawingML Rendering Mode**
Starting from Aspose.Words 15.9.0, the default DmlRenderingMode has been changed from Fallback to DrawingML.
