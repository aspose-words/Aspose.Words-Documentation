---
title: Template Syntax
type: docs
weight: 30
url: /java/template-syntax/
---

A typical template for LINQ Reporting Engine is composed of common document contents and tags that describe the template’s structure and data bindings. You can form these tags using just running text that can occupy multiple paragraphs to be more descriptive. 

A tag body must meet the following requirements:

- A tag body must be surrounded by “<<” and “>>” character sequences.
- A tag body must contain only text nodes.
- A tag body must not be located inside markup document nodes such as `StructuredDocumentTag`, `CustomXmlMarkup`, or `SmartTag`.

A tag body typically consists of the following elements:

- A tag name
- An expression surrounded by brackets
- A set of switches available for the tag, each of which is preceded by the “-“ character
- An optional comment providing a human-readable explanation ignored by the engine

{{< highlight xml >}}
<<tag_name [expression] –switch1 –switch2 ... // optional_comment >>
{{< /highlight >}}

Particular tags can have additional elements.

Some tags require closing counterparts. A closing tag has the “/” character that precedes its name. This tag’s name must match to the name of the corresponding opening tag.

{{< highlight xml >}}
<</tag_name>>
{{< /highlight >}}

**Note –** Tag body elements are case-sensitive.

During runtime, after a template syntax tag is processed by the engine, it is typically removed. This can lead to a situation where a paragraph containing the tag becomes empty if it has no other content. If such a paragraph is unwanted, it can be optionally removed by the engine (see “Removing Paragraphs Containing Only Template Syntax Tags” for more information).

**This section includes the following topics:**

- [Composing Expressions](/words/java/composing-expressions/)
- [Outputting Expression Results](/words/java/outputting-expression-results/)
- [Outputting Sequential Data](/words/java/outputting-sequential-data/)
- [Using Conditional Blocks](/words/java/using-conditional-blocks/)
- [Inserting Documents Dynamically](/words/java/inserting-documents-dynamically/)
- [Inserting Images Dynamically](/words/java/inserting-images-dynamically/)
- [Inserting Bookmarks Dynamically](/words/java/inserting-bookmarks-dynamically/)
- [Inserting Hyperlinks Dynamically](/words/java/working-with-fields/)
- [Setting Background Color Dynamically](/words/java/setting-background-color-dynamically/)
- [Merging Table Cells Dynamically](/words/java/merging-table-cells-dynamically/)
- [Restarting List Numbering Dynamically](/words/java/restarting-list-numbering-dynamically/)
- [Using Contextual Object Member Access](/words/java/using-contextual-object-member-access/)
- [Using Variables](/words/java/using-variables/)
- [Working with Content Controls](/words/java/working-with-content-controls/)
