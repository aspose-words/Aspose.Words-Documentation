---
title: Public API Changes in Aspose.Words 15.9.0
type: docs
weight: 90
url: /java/public-api-changes-in-aspose-words-15-9-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 15.9.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **Added DocumentBuilder Public Methods for Creating EditableRanges.**
We have added following methods in DocumentBuilder class in 15.9.0.

**Java**

{{< highlight csharp >}}
/**
  Marks the current position in the document as an editable range start.
 Editable range in a document can overlap and span any range. To create a valid editable range you need to
 call both <see cref="StartEditableRange"/> and <see cref="EndEditableRange()"/>
 or <see cref="EndEditableRange(EditableRangeStart)"/> methods.
 Badly formed editable range will be ignored when the document is saved.
 Returns the editable range start node that was just created.
 @return
*/
public EditableRangeStart StartEditableRange()
{{< /highlight >}}

{{< highlight csharp >}}
/**
 Marks the current position in the document as an editable range end.
 Use this overload during creating nested editable ranges.
 Editable range in a document can overlap and span any range. To create a valid editable range you need to
 call both <see cref="StartEditableRange"/> and <see cref="EndEditableRange()"/>
 or <see cref="EndEditableRange(EditableRangeStart)"/> methods.
 Badly formed editable range will be ignored when the document is saved.
 @param This editable range start.
 @return the editable range end node that was just created.</returns>
*/
public EditableRangeEnd EndEditableRange(EditableRangeStart start)
{{< /highlight >}}
### **Added Options to Control Image Stretching for LINQ Reporting Engine**
WORDSNET-12077 has now been resolved and the documentation for the engine has been updated appropriately.

Note that there was a lack of documentation about using of charts with LINQ Reporting Engine, although this feature was included to 15.6 as per WORDSNET-10922. Now it is fixed.

The following documentation sections were added/modified:

- [Using Charts to Represent Sequential Data](http://www.aspose.com/docs/display/wordsjava/Using+Charts+to+Represent+Sequential+Data)
- [Inserting Images Dynamically](http://www.aspose.com/docs/display/wordsjava/Inserting+Images+Dynamically)
- [Pie Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-PieChartTemplate)
- [Scatter Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-ScatterChartTemplate)
- [Bubble Chart Template (Appendix C)](http://www.aspose.com/docs/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-BubbleChartTemplate)
- [In-Table Template with Filtering, Grouping, and Ordering (Appendix C)](http://www.aspose.com/docs/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-InTableTemplateFilteringGroupingOrdering)
- [Chart Template with Filtering, Grouping, and Ordering (Appendix C)](http://www.aspose.com/docs/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-ChartTemplateFilteringGroupingOrdering)
### **Added ReportingEngine.Options Property**
WORDSNET-12380 is now resolved. We have introduced following property in Aspose.Words 15.9.0.

**Java**

{{< highlight csharp >}}
/**
 Gets or sets a set of flags controlling behavior of this <see cref="ReportingEngine"/> instance
 while building a report.
 The value of the property is ReportBuildOptions integer constant.
*/
public int getOptions() 
public void setOptions(int value)
{{< /highlight >}}

**Java**

{{< highlight csharp >}}
/**
 ReportBuildOptions Specifies options controlling behavior of <see cref="ReportingEngine"/> while building a report.
*/
NONE = 0
public static final int NONE
/**
Specifies default options. 
*/
ALLOW_MISSING_DATA_FIELDS = 1
public static final int ALLOW_MISSING_DATA_FIELDS
/**
Specifies that fields missing in a data source object should be treated as null literals by the engine. 
This option affects only fields of System.Data.DataTable rows. If this option is not set, the engine throws an exception when encounters a missing data field. 
*/
{{< /highlight >}}
### **Changed the default DrawingML Rendering Mode**
Starting from Aspose.Words 15.9.0, the default DmlRenderingMode has been changed from Fallback to DrawingML.
