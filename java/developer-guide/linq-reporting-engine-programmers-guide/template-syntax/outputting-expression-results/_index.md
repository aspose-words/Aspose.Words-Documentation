---
title: Outputting Expression Results
type: docs
weight: 20
url: /java/outputting-expression-results/
---

You can output expression results to your reports using expression tags. An expression tag denotes a placeholder for an expression result within a template. While building a report, the corresponding expression is evaluated, and this placeholder is replaced with the formatted result of the expression. 

An expression tag has no name and consists of the following elements:

- An expression enclosed by brackets
- An optional format string enclosed by double quotes and preceded by the ":" character
- An optional html switch

**&lt;&lt;[expression]:"format" -html&gt;&gt;**

If html switch is not present, the result of the corresponding expression is written to a document as a plain text at runtime. Font attributes are derived from the first character of the corresponding tag in this case.

If html switch is present, the expression result is considered to be a HTML block and is written as such. This feature is useful, when you need to format text parts of an expression result in different ways. For example, the following tag is replaced with a content like "**Bold** and *italic* text" at runtime.

**&lt;&lt;["&lt;b&gt;Bold&lt;/b&gt; and &lt;i&gt;italic&lt;/i&gt; text"] -html&gt;&gt;**

To format a numeric or date-time expression result, you can specify a format string as an element of the corresponding expression tag. Such format strings are the same as the ones that you pass to [DecimalFormat](http://docs.oracle.com/javase/7/docs/api/java/text/DecimalFormat.html) or [SimpleDateFormat](http://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html) constructors. That is, for example, given that d is a Date value, you can use the following template to format the value using the "yyyy.MM.dd" pattern.

**&lt;&lt;[d]:"yyyy.MM.dd"&gt;&gt;**

LINQ Reporting Engine provides several additional number formats that can not be specified using format strings because these formats are missing in standard  REF platform Java libraries. The following table describes these formats.

|Number Format|Description|
| :- | :- |
|**alphabetic**|Formats an integer number as an upper-case letter (A, B, C, ...)|
|**roman**|Formats an integer number as an upper-case Roman numeral (I, II, III, ...)|
|**ordinal**|Appends an ordinal suffix to an integer number (1st, 2nd, 3rd, ...)|
|**ordinalText**|Converts an integer number to its ordinal text representation (First, Second, Third, ...)|
|**cardinal**|Converts an integer number to its text representation (One, Two, Three, ...)|
|**hex**|Formats an integer number as hexadecimal (8, 9, A, B, C, D, E, F, 10, 11, ...)|
|**arabicDash**|Encloses an integer number with dashes (- 1 -, - 2 -, - 3 -, ...)|


You can specify one of these additional number formats instead of a format string like in the following example. Given that i is an integer number, you can format the number as an upper-case letter using the following template.

**&lt;&lt;[i]:alphabetic&gt;&gt;**

LINQ Reporting Engine provides several additional string formats that can not be specified using format strings because these formats are missing in standard  REF platform Java libraries. The following table describes these formats.

|String Format|Description|
| :- | :- |
|**lower**|Converts a string to lower case ("the string")|
|**upper**|Converts a string to upper case ("THE STRING")|
|**caps**|Capitalizes a first letter of every word in a string ("The String")|
|**firstCap**|Capitalizes the first letter of the first word in a string ("The string")|


You can specify one of these additional string formats instead of a format string like in the following example. Given that s is a string, you can capitalize a first letter of every word in the string using the following template.

**&lt;&lt;[s]:caps&gt;&gt;**

You can also specify one of the additional string formats together with a format string or an additional number format like in the following examples. Given that d is a Date value, you can convert its textual month representation to upper case using the following template.

**&lt;&lt;[d]:"MMMM":upper&gt;&gt;**

Given that i is an integer number, you can convert the number to a lower-case Roman numeral using the following template.

**&lt;&lt;[i]:roman:lower&gt;&gt;**

` `REF note **Note -** In contrast to format strings, additional number and string formats must not be enclosed with double quotes.
