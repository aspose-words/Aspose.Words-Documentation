---
title: Difference in Features and API Between Python and .NET Versions
description: "Aspose.Words for Python via .NET is a wrapper of Aspose.Words for .NET, this page describes the differences in features and API of these two products."
type: docs
weight: 15
url: /pythonnet/python-notes/
---

Aspose.Words for Python via .NET is a wrapper of Aspose.Words for .NET, that is why the two products have almost the same set of features. Nevertheless, there are some nuances of work and differences in features and API, which are described on this page.

## Feature Differences

Due to the wrapping process there are some features that are not available in the Python version. Here is a list of most notable features that are currently are not available in the Python version.
* Implementation of interfaces is not supported yet, that is why it is not possible to use callbacks such as [IWarningCallback](https://apireference.aspose.com/words/net/aspose.words/iwarningcallback), [IReplacingCallback](https://apireference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback), [IFieldUpdatingCallback](https://apireference.aspose.com/words/net/aspose.words.fields/ifieldupdatingcallback), [IFieldMergingCallback](https://apireference.aspose.com/words/net/aspose.words.mailmerging/ifieldmergingcallback) etc.
* Printing feature is not available because .NET Standard 2.0 version of Aspose.Words is used as back-end of the python version, which also does not provide this functionality.
* Only simple Mail Merge functionality is provided with arrays of field names and field values as a data source.
* [DocumentVisitor](https://apireference.aspose.com/words/net/aspose.words/documentvisitor) implementation is currently not possible from the Python code.

## Casting Aspose.Words Objects in Python

Though type casting is not natural for Python developers some tasks cannot be accomplished without casting documents nodes or fields to concrete type. Aspose.Words for Python via .NET provides special methods that allow casting objects where this is necessary.

### Casting Nodes

Base class for all document nodes in Aspose.Words DOM is **Node** class. For example **get_child** method returns and instance of **Node** class, but if you need to modify the returned node, in most cases you should to cast it to concrete type. The following code demonstrates how to change font color of the first **Run** in the document:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

# Get the first Run node and cast it to Run object.
run = doc.get_child(aw.NodeType.RUN, 0, True).as_run()

# Make changes to the run 
run.font.color = drawing.Color.red

# Save the result
doc.save(docs_base.artifacts_dir + "WorkingWithNode.change_run_color.docx")
{{< /highlight >}}

Casting might be also required when **clone** method is used:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

clone = doc.clone().as_document()
clone.save(docs_base.artifacts_dir + "CloneAndCombineDocuments.cloning_document.docx")
{{< /highlight >}}

As you might noticed where in C# code you would use `(Paragraph)node` for casting, in Python you have to use `node.as_paragraph()` method. In the Python version of Aspose.Words **Node** class introduces the following link of `as_xxx` methods:

* as_document()
* as_section()
* as_body()
* as_header_footer()
* as_table()
* as_row()
* as_cell()
* as_paragraph()
* as_bookmark_start()
* as_bookmark_end()
* as_editable_range_start()
* as_editable_range_end()
* as_group_shape()
* as_shape()
* as_comment()
* as_footnote()
* as_run()
* as_field_start()
* as_field_separator()
* as_field_end()
* as_form_field()
* as_special_char()
* as_smart_tag()
* as_structured_document_tag()
* as_structured_document_tag_range_start()
* as_structured_document_tag_range_end()
* as_glossary_document()
* as_building_block()
* as_comment_range_start()
* as_comment_range_end()
* as_office_math()
* as_sub_document()
* as_composite_node()

The `as_xxx` method raise a RuntimeError with the message like the following if the node cannot be cased to the specified type:

> RuntimeError: Proxy error(InvalidCastException): Unable to cast object of type 'Aspose.Words.XXX' to type 'Aspose.Words.Drawing.YYY'.

### Casting Fields
The same situation applied to fields. The following code example demonstrates how to replace hyper link links:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Hyperlinks.docx")

for field in doc.range.fields :
            
    if field.type == aw.fields.FieldType.FIELD_HYPERLINK:
                
        hyperlink = field.as_field_hyperlink()
    
        # Some hyperlinks can be local (links to bookmarks inside the document), ignore these.
        if hyperlink.sub_address != None :
            continue
    
        hyperlink.address = "http:#www.aspose.com"
        hyperlink.result = "Aspose - The .net & Java Component Publisher"

doc.save(docs_base.artifacts_dir + "WorkingWithFields.replace_hyperlinks.docx")
{{< /highlight >}}

As you might noticed **Field** object also provides set of `as_xxx` methods, which are listed below:

* as_field_unknown()
* as_field_merge_barcode()
* as_field_display_barcode()
* as_field_print()
* as_field_private()
* as_field_advance()
* as_field_form_check_box()
* as_field_form_drop_down()
* as_field_index()
* as_field_rd()
* as_field_ta()
* as_field_toa()
* as_field_ask()
* as_field_auto_text()
* as_field_auto_text_list()
* as_field_bibliography()
* as_field_citation()
* as_field_dde()
* as_field_dde_auto()
* as_field_fill_in()
* as_field_glossary()
* as_field_import()
* as_field_include()
* as_field_shape()
* as_field_database()
* as_field_skip_if()
* as_field_list_num()
* as_field_rev_num()
* as_field_section()
* as_field_section_pages()
* as_field_data()
* as_field_embed()
* as_field_ocx()
* as_field_auto_num()
* as_field_auto_num_lgl()
* as_field_auto_num_out()
* as_field_add_in()
* as_field_barcode()
* as_field_bidi_outline()
* as_field_eq()
* as_field_footnote_ref()
* as_field_info()
* as_field_user_address()
* as_field_user_initials()
* as_field_user_name()
* as_field_include_picture()
* as_field_page()
* as_field_create_date()
* as_field_edit_time()
* as_field_print_date()
* as_field_save_date()
* as_field_go_to_button()
* as_field_author()
* as_field_comments()
* as_field_file_name()
* as_field_file_size()
* as_field_keywords()
* as_field_last_saved_by()
* as_field_num_chars()
* as_field_num_pages()
* as_field_num_words()
* as_field_subject()
* as_field_template()
* as_field_title()
* as_field_formula()
* as_field_symbol()
* as_field_quote()
* as_field_set()
* as_field_address_block()
* as_field_compare()
* as_field_date()
* as_field_doc_property()
* as_field_doc_variable()
* as_field_greeting_line()
* as_field_hyperlink()
* as_field_if()
* as_field_include_text()
* as_field_link()
* as_field_macro_button()
* as_field_merge_field()
* as_field_merge_rec()
* as_field_merge_seq()
* as_field_next()
* as_field_next_if()
* as_field_note_ref()
* as_field_page_ref()
* as_field_ref()
* as_field_seq()
* as_field_style_ref()
* as_field_tc()
* as_field_time()
* as_field_toc()
* as_field_xe()
* as_field_form_text()

### Casting Styles
Casting is also required to work with table styles:
{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

table = builder.start_table()
builder.insert_cell()
builder.write("Name")
builder.insert_cell()
builder.write("Value")
builder.end_row()
builder.insert_cell()
builder.insert_cell()
builder.end_table()

# Add a table style and modify it's properties.
tableStyle = doc.styles.add(aw.StyleType.TABLE, "MyTableStyle1").as_table_style()
tableStyle.borders.line_style = aw.LineStyle.DOUBLE
tableStyle.borders.line_width = 1
tableStyle.left_padding = 18
tableStyle.right_padding = 18
tableStyle.top_padding = 12
tableStyle.bottom_padding = 12

table.style = tableStyle

doc.save(docs_base.artifacts_dir + "WorkingWithTableStylesAndFormatting.create_table_style.docx")
{{< /highlight >}}

### Casting Ole Controls
The following code example demonstrates how to read ActiveX control properties:
{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "ActiveX controls.docx")

properties = ""
for shape in doc.get_child_nodes(aw.NodeType.SHAPE, True) :
            
    shape = shape.as_shape()
            
    if shape.ole_format == None :
        break
    
    oleControl = shape.ole_format.ole_control
    if oleControl.is_forms2_ole_control :
                
        checkBox =  oleControl.as_forms2_ole_control()
        properties = properties + "\nCaption: " + checkBox.caption
        properties = properties + "\nValue: " + checkBox.value
        properties = properties + "\nEnabled: " + str(checkBox.enabled)
        properties = properties + "\nType: " + str(checkBox.type)
    
        if checkBox.child_nodes != None :
            properties = properties + "\nChildNodes: " + checkBox.child_nodes
    
        properties += "\n"

properties = properties + "\nTotal ActiveX Controls found: " + str(doc.get_child_nodes(aw.NodeType.SHAPE, True).count)
print("\n" + properties)
{{< /highlight >}}

## Accessing Indexer Properties
Python does allow indexer properties only by *int* type, in .NET however it is possible to use other types, for example strings. To fill this gap the following classes has an additional methods:

* FormFieldCollection
	* get_by_name(bookmark_name)
* FontInfoCollection
	* get_by_name(name)
* CustomXmlPartCollection
	* get_by_id(id)
* CustomXmlPropertyCollection
	* get_by_name(name)
* BuiltInDocumentProperties
	* get_by_name(name)
* CustomDocumentProperties
	* get_by_name(name)
* BookmarksOutlineLevelCollection
	* get_by_name(name)
* VbaModuleCollection
	* get_by_name(name)
* BookmarkCollection
	* get_by_name(bookmark_name)
* BorderCollection
	* get_by_border_type(border_type)
* HeaderFooterCollection
	* get_by_header_footer_type(header_footer_type)
* StyleCollection
	* get_by_name(name)
	* get_by_style_identifier(sti)
* VariableCollection
	* get_by_name(name)

## API Members Naming
To be closer to Python world, API members of Aspose.Words for Python via .NET uses pytonic snake style, however in most cases they have one to one analog in Aspose.Words for .NET API. You can find these analog in the [xml file](wrapper.zip).
