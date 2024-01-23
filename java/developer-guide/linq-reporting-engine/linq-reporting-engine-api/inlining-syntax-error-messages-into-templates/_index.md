---
title: Inlining Syntax Error Messages into Templates in Java
second_title: Aspose.Words for Java
articleTitle: Inlining Syntax Error Messages into Templates
linktitle: Inlining Syntax Error Messages into Templates
description: "Learn how to enable inline syntax error message into the template document at the exact position using LINQ in Java."
type: docs
weight: 80
url: /java/inlining-syntax-error-messages-into-templates/
---

By default, LINQ Reporting Engine throws an exception when encounters a template syntax error. Such an exception provides information on a reason of the error and specifies a tag or expression part where the error is encountered. In most cases, this information is enough to find a place in a template causing the error and fix it.

However, when dealing with complex templates containing a large number of tags, it becomes harder to find an exact place in a template causing an error. To make things easier, the engine supports the `ReportBuildOptions.INLINE_ERROR_MESSAGES` option that enables inlining of a syntax error message into a template document at an exact position where the error occurs during runtime. 

**Note** – A template syntax error message is written using a bold font to make it more apparent.

Consider the following template.

{{< highlight xml >}}
<<var [name]>>
{{< /highlight >}}

By default, such a template causes the engine to throw an exception while building a report. However, when `ReportBuildOptions.INLINE_ERROR_MESSAGES` is applied, no exception is thrown and the report looks as follows then.

{{< highlight xml >}}
<<var [name] Error! An assignment operator is expected. >>
{{< /highlight >}}

**Note** – Only messages describing errors in template syntax can be inlined; messages describing errors encountered during expressions’ evaluation cannot.

When `ReportBuildOptions.INLINE_ERROR_MESSAGES` is applied, a Boolean value returned by a `ReportingEngine.buildReport` overload indicates whether building of a report was finished successfully or was interrupted because of a template syntax error. This enables you to process reports which building succeeded or failed differently as shown in the following code snippet.

{{< highlight java >}}
ReportingEngine engine = new ReportingEngine();
engine.setOptions(ReportBuildOptions.INLINE_ERROR_MESSAGES);

if (engine.buildReport(...))
{
	// Do something with a successfully built report.
}
else
{
	// Do something with a report containing a template syntax error.
}
{{< /highlight >}}

**Note** – When `ReportBuildOptions.INLINE_ERROR_MESSAGES` is not applied, `ReportingEngine.buildReport` overloads return `true` if there were no template syntax errors encountered or throw an exception otherwise.
