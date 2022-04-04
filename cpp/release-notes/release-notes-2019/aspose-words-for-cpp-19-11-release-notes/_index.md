---
title: 19.11 Release Notes
second_title: Aspose.Words for C++
articleTitle: Aspose.Words for C++ 19.11 Release Notes
linktitle: Aspose.Words for C++ 19.11 Release Notes
description: "Aspose.Words for C++ 19.11 Release Notes – the latest updates and fixes."
type: docs
weight: 30
url: /cpp/aspose-words-for-cpp-19-11-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 19.11](https://www.nuget.org/packages/Aspose.Words.CPP/19.11)

{{% /alert %}}

## Major Features

This is a regular monthly release, we continue to add features from Aspose.Words for .NET.

- Provided an ability to work with Web Extensions, new classes allow to customize elements and attributes that extend the XML vocabulary for Office Add-ins representation.
- Added an ability to customize the formatting of the horizontal rule shape.
- Improved character spacing calculation when 'use printer metrics' option is set.
- Macros support improved.

## Limitations and API Differences


Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support cryptography features - it cannot verify, sign, encrypt or decrypt documents.
- The current release does not support downloading remote resources from the Internet.
- The current release does not support Metered license.
- The current release does not support a multipage TIFF format.
- The current release does not support LINQ and Reporting features.
- The current release has limited support for database features - C++ does not have common API for DB like .NET System.Data.
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-18182|Add feature to set properties of the horizontal rule|New Feature|
|WORDSNET-19023|Throw warnings about the presence of JavaScript (or any other unsupported Scripts) in HTML|New Feature|
|WORDSNET-19280|Add support for extraction MOL files from OLE object|New Feature|
|WORDSNET-18681|Support for adding dynamic WebExtension element nodes in Word Document|New Feature|
|WORDSNET-19363|Implement unified EMF complex paths rendering|New Feature|
|WORDSNET-6035|Create documentation for using a temporary folder on saving|Enhancement|
|WORDSNET-10301|Add feature to edit macros of a document|Enhancement|
|WORDSNET-11177|Consider adding an ability to read/add/edit/delete macros in documents|Enhancement|
|WORDSNET-13121|Insert Macro into a Document|Enhancement|
|WORDSNET-19153|Improve a VBAProject class to be able to read all project content into the document model|Enhancement|
|WORDSNET-19198|Border of boxes in Shape is changed in output PDF|Enhancement|
|WORDSCPP-797|Exception when using Aspose.Words for C++ with Aspose.PDF for CPP in same project|Bug|
|WORDSNET-19345|Add normalize Istds feature to Document.Cleanup|Bug|
|WORDSNET-19371|The right offset of the chart is changed after converting to PFG|Bug|
|WORDSNET-19372|Axis title is set. Right and left offsets are changed after converting to PDF|Bug|
|WORDSNET-19427|System.ArgumentOutOfRangeException occurs upon comparing documents|Bug|
|WORDSNET-19438|Range.Bookmarks.Count returns incorrect value|Bug|
|WORDSNET-17906|Chart rendered to PDF/HTML does not look the same as the original one in DOCX|Bug|
|WORDSNET-19439|Paragraph alignment is lost when Range.Replace is used with &p|Bug|
|WORDSNET-19308|Paragraph break size does not match MS Word in Aspose.Words DOCX, PDF output|Bug|
|WORDSNET-19301|DOCX to PDF - hyphenation not same|Bug|
|WORDSNET-18077|DOCX to PDF - output chart legend box is bigger|Bug|
|WORDSNET-18118|DOCX to PDF conversion issue with legend|Bug|
|WORDSNET-19007|Strikethrough should be rendered over inline picture in compatibility mode|Bug|
|WORDSNET-19303|Colons on the wrong side of the text after conversion to PDF|Bug|
|WORDSNET-11536|Table is moved to previous page|Bug|
|WORDSNET-17075|Word to RTF conversion with absolute positioned textboxes renders incorrectly|Bug|
|WORDSNET-19382|DOC to DOCX lost fonts|Bug|
|WORDSNET-19027|Image has wrong size after conversion|Bug|
|WORDSNET-19239|MHT to PDF FileCorruptedException  XMLStreamException|Bug|
|WORDSNET-17869|Incorrect width of the plot area and the legend after converting to PDF|Bug|
|WORDSNET-17781|Incorrect rendering of legend markers after converting to PDF|Bug|
|WORDSNET-19389|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Bug|
|WORDSNET-19241|SVG image distorted in document|Bug|
|WORDSNET-19392|System.OverflowException is thrown while loading DOCX|Bug|
|WORDSNET-17779|Text of legend items is clipped after converting to PDF|Bug|
|WORDSNET-18947|DOCX to PDF conversion issue with page number rendering|Bug|
|WORDSNET-19398|PageCount returns the wrong value and after the UpdatePageLayout it increases|Bug|
|WORDSNET-19187|VbaModule.SourceCode does not update the VBA code|Bug|
|WORDSNET-19401|Document.Save throws System.InvalidOperationException|Bug|
|WORDSNET-19271|Font color changes while Word document is saved as PDF|Bug|
|WORDSNET-19209|UpdateFields does not calculate SUM inside FORMTEXT|Bug|
|WORDSNET-18973|Check suspicious code found by PVS studio|Bug|
|WORDSNET-18764|DOC to PDF conversion issue with flow chart rendering|Bug|
|WORDSNET-18855|Remove the MailMergeRtlCleanupMode enum|Bug|
|WORDSNET-19396|On conversion to PDF the code throws NullReferenceException when MemoryOptimization is set to true|Bug|
|WORDSNET-18768|Incorrect placement of the legend items after converting to PDF|Bug|
|WORDSNET-19304|After conversion to PDF one more page added, and wrong page number on the first page|Bug|
|WORDSNET-19310|NumberFormat.FormatCode resets after applying NumberFormat.IsLinkedToSource|Bug|
|WORDSNET-19069|NullReferenceException when saving DOCX to PDF with MemoryOptimization enabled|Bug|
|WORDSNET-19314|The issue with the graph's legends after conversion DOCX to PDF|Bug|
|WORDSNET-19313|DOC to Fixed page format conversion issue with page header|Bug|
|WORDSNET-19316|Numbering disappear during appending documents|Bug|
|WORDSNET-19318|DOC to DOCX lost fonts|Bug|
|WORDSNET-19076|Text is rendered outside the table's cell in output PDF|Bug|
|WORDSNET-19324|Inconsistent behavior of FormatterPal.TryParseInt|Bug|
|WORDSNET-19326|Table loses conditional formatting for cell|Bug|
|WORDSNET-19327|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Bug|
|WORDSNET-19339|BuiltInDocumentProperties.Words returns incorrect words count for Chinese|Bug|
|WORDSNET-19298|Exception is thrown when updating word page layout|Bug|
|WORDSNET-19341|Font AltName is not written when Aspose.Words is running on Linux|Bug|
|WORDSNET-19328|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Bug|
|WORDSNET-19351|List number does not restart when document is inserted using InsertDocument method|Bug|
|WORDSNET-19353|Aspose.Words.FileCorruptedException occurs on loading a DOCX file|Bug|
|WORDSNET-19168|SmartArt to PNG conversion issue with text rendering|Bug|
|WORDSNET-19346|Font of content control is changed after convesion from DOCX to HTML|Bug|
|WORDSNET-19299|Tables incorrectly split after UpdatePageLayout|Bug|
|WORDSNET-12684|Shape's text position is changed in output PDF|Bug|
|WORDSNET-19384|Analyze what it takes to work License.SetLicense with .NET Core 2.2|Bug|
|WORDSNET-13190|Chinese text moves to next line after conversion from DOCX to PDF|Bug|
|WORDSNET-9076|Empty spaces appear after conversion from DOC to HTML|Bug|
|WORDSNET-13414|Table's rows are moved to previous page in output PDF|Bug|
|WORDSNET-13488|Google translate shows different result for Aspose.Words generated PDF content|Bug|
|WORDSNET-13053|Chinese text moves to next lines at each page of TIFF/PDF|Bug|
|WORDSNET-12697|Cell's text is truncated after saving DOCX to PDF|Bug|
|WORDSNET-12420|DOC to PDF conversion issue with image rendering|Bug|
|WORDSNET-12506|The page layout of Chinese text is not correct in output PDF|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added support for Web extension elements

Following public classes and enums were added.

{{< highlight csharp >}}
/// <summary>
/// Represents an add-in task pane object.
/// </summary>
public class TaskPane
{
    /// <summary>
    /// Creates task pane add-in instance.
    /// </summary>
    public TaskPane() { }
    /// <summary>
    /// Specifies the index, enumerating from the outside to the inside, of this task pane among other persisted
    /// task panes docked in the same default location.
    /// </summary>
    public int Row { get; set; }
    /// <summary>
    /// Specifies the default width value for this task pane instance.
    /// </summary>
    public double Width { get; set; }
    /// <summary>
    /// Specifies whether the task pane is locked to the document in the UI and cannot be closed by the user.
    /// </summary>
    public bool IsLocked { get; set; }
    /// <summary>
    /// Specifies whether the task pane shows as visible by default when the document opens.
    /// </summary>
    public bool IsVisible { get; set; }
    /// <summary>
    /// Specifies the last-docked location of this task pane object.
    /// </summary>
    /// <dev>In the spec this value represents as string.</dev>
    public TaskPaneDockState DockState { get; set; }
    /// <summary>
    /// Represents an web extension object.
    /// </summary>
    public WebExtension WebExtension { get; }
}
/// <summary>
/// Specifies a list of persisted task pane objects.
/// </summary>
public class TaskPaneCollection
{
    /// <summary>
    /// Gets the number of elements contained in the collection.
    /// </summary>
    public int Count;
    /// <summary>
    /// Gets or sets an item at the specified index.
    /// </summary>
    /// <param name="index">Zero-based index of the item.</param>
    public T this[int index] { get; set; }
    /// <summary>
    /// Adds specified item to the collection.
    /// </summary>
    /// <param name="item">Item for adding.</param>
    public void Add(T item);
    /// <summary>
    /// Removes all elements from the collection.
    /// </summary>
    public void Clear();
    /// <summary>
    /// Removes the item at the specified index from the collection.
    /// </summary>
    /// <param name="index">The zero-based index of the collection item.</param>
    public void Remove(int index);
}
/// <summary>
/// Represents a web extension object.
/// </summary>
public class WebExtension
{
    /// <summary>
    /// Uniquely identifies the web extension instance in the current document.
    /// </summary>
    public string Id { get; set; }
    /// <summary>
    /// Specifies whether the user can interact with the web extension or not.
    /// </summary>
    public bool IsFrozen { get; set; }
    /// <summary>
    /// Specifies the primary reference to an web extension.
    /// </summary>
    public WebExtensionReference Reference { get; }
    /// <summary>
    /// Specifies a list of web extension bindings.
    /// </summary>
    public WebExtensionBindingCollection Bindings { get; }
    /// <summary>
    /// Specifies alternate references to a web extension.
    /// </summary>
    public WebExtensionReferenceCollection AlternateReferences { get; }
    /// <summary>
    /// Represents a set of web extension custom properties.
    /// </summary>
    public WebExtensionPropertyCollection Properties { get; }
}
/// <summary>
/// Specifies a binding relationship between a web extension and the data in the document.
/// </summary>
public class WebExtensionBinding
{
    /// <summary>
    /// Creates web extension binding with specified parameters.
    /// </summary>
    /// <param name="id">Binding identifier.</param>
    /// <param name="bindingType">Binding type.</param>
    /// <param name="appRef">Binding key used to map the binding entry in this list with the bound data in the document.</param>
    public WebExtensionBinding(string id, WebExtensionBindingType bindingType, string appRef);
    /// <summary>
    /// Specifies the binding identifier.
    /// </summary>
    public string Id { get; set; }
    /// <summary>
    /// Specifies the binding type.
    /// </summary>
    public WebExtensionBindingType BindingType { get; set; }
    /// <summary>
    /// Specifies the binding key used to map the binding entry in this list with the bound data in the document.
    /// </summary>
    /// <dev>It may be, for example, identifier of the SDT.</dev>
    public string AppRef { get; set; }
}
/// <summary>
/// Specifies a web extension custom property.
/// </summary>
public class WebExtensionProperty
{
    /// <summary>
    /// Creates web extension custom property with specified name and value.
    /// </summary>
    /// <param name="name">Property name.</param>
    /// <param name="value">Property value.</param>
    public WebExtensionProperty(string name, string value);
    /// <summary>
    ///  Specifies a custom property name
    /// </summary>
    public string Name { get; set; }
    /// <summary>
    ///  Specifies a custom property value.
    /// </summary>
    public string Value { get; set; }
}
/// <summary>
/// Represents the reference to a web extension. The reference is used to identify the provider location and version of the
/// extension.
/// </summary>
public class WebExtensionReference
{
    /// <summary>
    /// Creates instance of the reference to a web extension.
    /// </summary>
    public WebExtensionReference();
    /// <summary>
    /// Identifier associated with the web extension within a catalog provider.
    /// </summary>
    public string Id { get; set; }
    /// <summary>
    /// Specifies the version of the web extension.
    /// </summary>
    public string Version { get; set; }
    /// <summary>
    ///  Specifies the instance of the marketplace where the web extension is stored.
    /// </summary>
    public string Store { get; set; }
    /// <summary>
    /// Specifies the type of marketplace.
    /// </summary>
    public WebExtensionStoreType StoreType { get; set; }
}
/// <summary>
/// Specifies a list of web extension bindings.
/// </summary>
public class WebExtensionBindingCollection
{
    /// <summary>
    /// Gets the number of elements contained in the collection.
    /// </summary>
    public int Count { get; }
    /// <summary>
    /// Gets or sets an item at the specified index.
    /// </summary>
    /// <param name="index">Zero-based index of the item.</param>
    public T this[int index] { get; set; }
    /// <summary>
    /// Adds specified item to the collection.
    /// </summary>
    /// <param name="item">Item for adding.</param>
    public void Add(T item);
    /// <summary>
    /// Removes all elements from the collection.
    /// </summary>
    public void Clear();
    /// <summary>
    /// Removes the item at the specified index from the collection.
    /// </summary>
    /// <param name="index">The zero-based index of the collection item.</param>
    public void Remove(int index);
}
/// <summary>
/// Specifies a set of web extension custom properties.
/// </summary>
public class WebExtensionPropertyCollection
{
    /// <summary>
    /// Gets the number of elements contained in the collection.
    /// </summary>
    public int Count { get; }
    /// <summary>
    /// Gets or sets an item at the specified index.
    /// </summary>
    /// <param name="index">Zero-based index of the item.</param>
    public T this[int index] { get; set; }
    /// <summary>
    /// Adds specified item to the collection.
    /// </summary>
    /// <param name="item">Item for adding.</param>
    public void Add(T item);
    /// <summary>
    /// Removes all elements from the collection.
    /// </summary>
    public void Clear();
    /// <summary>
    /// Removes the item at the specified index from the collection.
    /// </summary>
    /// <param name="index">The zero-based index of the collection item.</param>
    public void Remove(int index);
}
/// <summary>
/// Specifies a list of web extension references.
/// </summary>
public class WebExtensionReferenceCollection
{
    /// <summary>
    /// Gets the number of elements contained in the collection.
    /// </summary>
    public int Count { get; }
    /// <summary>
    /// Gets or sets an item at the specified index.
    /// </summary>
    /// <param name="index">Zero-based index of the item.</param>
    public T this[int index] { get; set; }
    /// <summary>
    /// Adds specified item to the collection.
    /// </summary>
    /// <param name="item">Item for adding.</param>
    public void Add(T item);
    /// <summary>
    /// Removes all elements from the collection.
    /// </summary>
    public void Clear();
    /// <summary>
    /// Removes the item at the specified index from the collection.
    /// </summary>
    /// <param name="index">The zero-based index of the collection item.</param>
    public void Remove(int index);
}
/// <summary>
/// Enumerates available locations of task pane object.
/// </summary>
public enum TaskPaneDockState
{
    Right,
    Left
}
/// <summary>
/// Enumerates available types of binding between a web extension and the data in the document.
/// </summary>
public enum WebExtensionBindingType
{
    /// <summary>
    /// Tabular data without a header row.
    /// </summary>
    Matrix,
    /// <summary>
    /// Tabular data with a header row.
    /// </summary>
    Table,
    /// <summary>
    /// Plain text.
    /// </summary>
    Text,
    Default = Matrix
}
/// <summary>
/// Enumerates available types of a web extension store.
/// </summary>
public enum WebExtensionStoreType
{
    SPCatalog,
    OMEX,
    SPApp,
    Exchange,
    FileSystem,
    Registry,
    ExCatalog,
    Default = SPCatalog
}
{{< /highlight >}}



Typical Use Case.

{{< highlight csharp >}}
Document doc = new Document();
TaskPane taskPane = new TaskPane();
doc.WebExtensionTaskPanes.Add(taskPane);
taskPane.DockState = TaskPaneDockState.Right;
taskPane.IsVisible = true;
taskPane.Width = 300;
taskPane.WebExtension.Reference.Id = "wa102923726";
taskPane.WebExtension.Reference.Version = "1.0.0.0";
taskPane.WebExtension.Reference.StoreType = WebExtensionStoreType.OMEX;
taskPane.WebExtension.Reference.Store = "th-TH";
taskPane.WebExtension.Properties.Add(new WebExtensionProperty("mailchimpCampaign", "mailchimpCampaign"));
taskPane.WebExtension.Bindings.Add(new WebExtensionBinding("UnnamedBinding_0_1506535429545", WebExtensionBindingType.Text, "194740422"));
{{< /highlight >}}

### Horizontal rule formatting

Related issue: WORDSNET-18182

**Added new public property Shape.HorizontalRuleFormat**

{{< highlight csharp >}}
/// <summary>
/// Provides access to the properties of the horizontal rule shape.
/// For a shape that is not a horizontal rule, returns null.
/// </summary>
public HorizontalRuleFormat HorizontalRuleFormat
{{< /highlight >}}

**Added new public class HorizontalRuleFormat** 
HorizontalRuleFormat class allows to fully customize the formatting of the horizontal rule. This class can only be obtained through the Shape.HorizontRuleFormat property.

{{< highlight csharp >}}
/// <summary>
/// Represents horizontal rule formatting.
/// </summary>
public class HorizontalRuleFormat
{
    /// <summary>
    /// Gets or sets the length of the specified horizontal rule expressed as a percentage of the window width.
    /// </summary>
    /// <remarks>
    /// <p>Valid values range from 1 to 100 inclusive.</p>
    /// <p>The default value is 100.</p>
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when argument was out of the range of valid values.
    /// </exception>
    public double WidthPercent
    {
        get; set;
    }
    /// <summary>
    /// Gets or sets the height of the horizontal rule.
    /// </summary>
    /// <remarks>
    /// <p>This is a shortcut to the <see cref="Aspose.Words.Drawing.ShapeBase.Height"/> property.</p>
    /// <p>Valid values range from 0 to 1584 inclusive.</p>
    /// <p>The default value is 1.5.</p>
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when argument was out of the range of valid values.
    /// </exception>
    public double Height
    {
        get; set;
    }
    /// <summary>
    /// Indicates the presence of 3D shading for the horizontal rule.
    /// If true, then the horizontal rule is without 3D shading and solid color is used.
    /// </summary>
    /// <remarks>
    /// <p>The default value is false.</p>
    /// </remarks>
    public bool NoShade
    {
        get; set;
    }
    /// <summary>
    /// Gets or sets the brush color that fills the horizontal rule.
    /// </summary>
    /// <remarks>
    /// <p>This is a shortcut to the <see cref="Aspose.Words.Drawing.Fill.Color"/> property.</p>
    /// <p>The default value is 
    /// <ms><see cref="System.Drawing.Color.Gray"/>.</ms>
    /// <java><see javaref="T:java.awt.Color.GRAY"/>.</java>
    /// </p>
    /// </remarks>
    public Color Color
    {
        get; set;
    }
    /// <summary>
    /// Gets or sets the alignment of the horizontal rule.
    /// </summary>
    /// <remarks>
    /// <p>The default value is <see cref="HorizontalRuleAlignment.Left"/>.</p>
    /// </remarks>
    public HorizontalRuleAlignment Alignment
    {
        get; set;
    }
}
{{< /highlight >}}

**Added public enum HorizontalRuleAlignment**

{{< highlight csharp >}}
/// <summary>
/// Represents the alignment for the specified horizontal rule. 
/// </summary>
public enum HorizontalRuleAlignment
{{< /highlight >}}



**Use Case:**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Shape shape = builder.InsertHorizontalRule();
HorizontalRuleFormat horizontalRuleFormat = shape.HorizontalRuleFormat;
horizontalRuleFormat.Alignment = HorizontalRuleAlignment.Center;
horizontalRuleFormat.WidthPercent = 70;
horizontalRuleFormat.Height = 3;
horizontalRuleFormat.Color = Color.Blue;
horizontalRuleFormat.NoShade = true;
builder.Document.Save("HorizontalRuleFormat.docx");
{{< /highlight >}}

### Macros support improved

Related issue: WORDSNET-19153

#### Added a new public setter for a Document.VbaProject

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a <see cref="VbaProject" />.
/// </summary>
public VbaProject VbaProject
{{< /highlight >}}


##### Added a new public constructor for a VbaProject class.

{{< highlight csharp >}}
/// <summary>
/// Creates a blank VbaProject.
/// </summary>
public VbaProject()
{{< /highlight >}}


##### Added a new public setter for a VbaProject.Name

{{< highlight csharp >}}
/// <summary>
/// Gets or sets VBA project name.
/// </summary>
public string Name
{{< /highlight >}}

##### Added a new public getter for a VbaProject.CodePage

{{< highlight csharp >}}
/// <summary>
/// Returns the VBA project’s code page.
/// </summary>
public int CodePage
{{< /highlight >}}

##### Added a new public constructor for a VbaModule class.

{{< highlight csharp >}}
/// <summary>
/// Creates an empty module.
/// </summary>
public VbaModule()
{{< /highlight >}}

##### Added a new public setter for a VbaModule.Name

{{< highlight csharp >}}
/// <summary>
/// Gets or sets VBA project module name.
/// </summary>
public string Name
{{< /highlight >}}

##### Added a new public property VbaModule.Type

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the module is a procedural module, document module, class module, or designer module.
/// </summary>
public VbaModuleType Type
{{< /highlight >}}

##### Added a new public void VbaModuleCollection.Add(VbaModule vbaModule)

{{< highlight csharp >}}
/// <summary>
/// Adds a module to the collection.
/// </summary>
public void Add(VbaModule vbaModule)
{{< /highlight >}}

##### Added a new public void VbaModuleCollection.Remove(VbaModule vbaModule)

{{< highlight csharp >}}
/// <summary>
/// Removes the specified module from the collection.
/// </summary>
/// <param name="module">The module to remove.</param>
public void Remove(VbaModule module)
{{< /highlight >}}

##### Added ability to retrieve a module from the VbaModuleCollection by name.

{{< highlight csharp >}}
/// <summary>
/// Retrieves a <see cref="VbaModule"/> object by name, or Null if not found.
/// </summary>
public VbaModule this[string name]
{{< /highlight >}}

##### Added a new public property VbaModuleCollection.Count

{{< highlight csharp >}}
/// <summary>
/// Returns the number of VBA modules in the collection.
/// </summary>
public int Count
{{< /highlight >}}

##### Added public enums for specifying a VbaModule type.

{{< highlight csharp >}}
/// <summary>
/// Specifies the type of a model in a VBA project.
/// </summary>
public enum VbaModuleType
{
  /// <summary>
  /// Specifies a module that extends a document module.
  /// </summary>
  DocumentModule,
  /// <summary>
  /// Specifies a procedural module.
  /// </summary>
  ProceduralModule,
  /// <summary>
  /// Specifies a class module.
  /// </summary>
  ClassModule,
  /// <summary>
  /// Specifies a designer module.
  /// </summary>
  DesignerModule
}
{{< /highlight >}}

##### Use Case: Explains how to create a VbaProject from a scratch, create a VbaModules from a scratch and add it to the project.

{{< highlight csharp >}}
Document doc = new Document();

// Create a new VBA project.
VbaProject project = new VbaProject();
project.Name = "AsposeProject";
doc.VbaProject = project;

// Create a new module and specify a macro source code.
VbaModule module = new VbaModule();
module.Name = "AsposeModule";
module.Type = VbaModuleType.ProceduralModule;
module.SourceCode = "New source code";

// Add module to the VBA project.
doc.VbaProject.Modules.Add(module);
{{< /highlight >}}

### Obsolete enum Aspose.Words.MailMerging.MailMergeRtlCleanupMode was removed

Obsolete enum Aspose.Words.MailMerging.MailMergeRtlCleanupMode was removed.
