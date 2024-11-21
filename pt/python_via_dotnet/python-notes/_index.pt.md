---
title: Diferenças de versão Python e .NET
second_title: Aspose.Words para Python via .NET
articleTitle: Diferenças de versão Python e .NET
linktitle: Diferenças de versão Python e .NET
description: "Aspose.Words para Python via .NET é um wrapper de Aspose.Words para .NET, esta página descreve as diferenças de recursos e API desses dois produtos."
type: docs
weight: 15
url: /pt/python-net/python-notes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words para Python via .NET é um wrapper de Aspose.Words para .NET, por isso os dois produtos possuem quase o mesmo conjunto de recursos. No entanto, existem algumas nuances de trabalho e diferenças de recursos e API, que são descritas nesta página.

## Diferenças de recursos

Devido ao processo de empacotamento, existem alguns recursos que não estão disponíveis na versão Python. Aqui está uma lista dos recursos mais notáveis que atualmente não estão disponíveis na versão Python.
* A implementação de interfaces ainda não é suportada, por isso não é possível utilizar callbacks como [IWarningCallback](https://reference.aspose.com/words/python-net/aspose.words/iwarningcallback/), [IReplacingCallback](https://reference.aspose.com/words/python-net/aspose.words.replacing/ireplacingcallback/), [IFieldUpdatingCallback](https://reference.aspose.com/words/python-net/aspose.words.fields/ifieldupdatingcallback/), [IFieldMergingCallback](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/ifieldmergingcallback/) etc.
* O recurso de impressão não está disponível porque a versão .NET Standard 2.0 do Aspose.Words é usada como back-end da versão python, que também não oferece esta funcionalidade.
* Apenas a funcionalidade Mail Merge simples é fornecida com matrizes de nomes de campos e valores de campos como fonte de dados.
*A implementação [DocumentVisitor](https://reference.aspose.com/words/python-net/aspose.words/documentvisitor/) atualmente não é possível a partir do código Python.

## Transmitindo objetos Aspose.Words em Python

Embora a conversão de tipo não seja natural para desenvolvedores Python, algumas tarefas não podem ser realizadas sem a conversão de nós ou campos de documentos para um tipo concreto. Aspose.Words para Python via .NET fornece métodos especiais que permitem converter objetos onde for necessário.

### Nós de fundição

A classe base para todos os nós de documento em Aspose.Words DOM é a classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Por exemplo, o método [get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) retorna uma instância da classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), mas se você precisar modificar o nó retornado, na maioria dos casos você deverá convertê-lo para um tipo concreto. O código a seguir demonstra como alterar a cor da fonte do primeiro [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) do documento:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

# Get the first Run node and cast it to Run object.
run = doc.get_child(aw.NodeType.RUN, 0, True).as_run()

# Make changes to the run 
run.font.color = drawing.Color.red

# Save the result
doc.save(docs_base.artifacts_dir + "WorkingWithNode.change_run_color.docx")
{{< /highlight >}}

A conversão também pode ser necessária quando o método [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) é usado:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

clone = doc.clone().as_document()
clone.save(docs_base.artifacts_dir + "CloneAndCombineDocuments.cloning_document.docx")
{{< /highlight >}}

Como você deve ter notado onde no código C# você usaria `(Paragraph)node` para conversão, em Python você deve usar o método `node.as_paragraph()`. Na versão Python da classe Aspose.Words [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) apresenta o seguinte link de métodos `as_xxx`:

* [as_document()](https://reference.aspose.com/words/python-net/aspose.words/node/as_document/)
* [as_section()](https://reference.aspose.com/words/python-net/aspose.words/node/as_section/)
* [as_body()](https://reference.aspose.com/words/python-net/aspose.words/node/as_body/)
* [as_header_footer()](https://reference.aspose.com/words/python-net/aspose.words/node/as_header_footer/)
* [as_table()](https://reference.aspose.com/words/python-net/aspose.words/node/as_table/)
* [as_row()](https://reference.aspose.com/words/python-net/aspose.words/node/as_row/)
* [as_cell()](https://reference.aspose.com/words/python-net/aspose.words/node/as_cell/)
* [as_paragraph()](https://reference.aspose.com/words/python-net/aspose.words/node/as_paragraph/)
* [as_bookmark_start()](https://reference.aspose.com/words/python-net/aspose.words/node/as_bookmark_start/)
* [as_bookmark_end()](https://reference.aspose.com/words/python-net/aspose.words/node/as_bookmark_end/)
* [as_editable_range_start()](https://reference.aspose.com/words/python-net/aspose.words/node/as_editable_range_start/)
* [as_editable_range_end()](https://reference.aspose.com/words/python-net/aspose.words/node/as_editable_range_end/)
* [as_group_shape()](https://reference.aspose.com/words/python-net/aspose.words/node/as_group_shape/)
* [as_shape()](https://reference.aspose.com/words/python-net/aspose.words/node/as_shape/)
* [as_comment()](https://reference.aspose.com/words/python-net/aspose.words/node/as_comment/)
* [as_footnote()](https://reference.aspose.com/words/python-net/aspose.words/node/as_footnote/)
* [as_run()](https://reference.aspose.com/words/python-net/aspose.words/node/as_run/)
* [as_field_start()](https://reference.aspose.com/words/python-net/aspose.words/node/as_field_start/)
* [as_field_separator()](https://reference.aspose.com/words/python-net/aspose.words/node/as_field_separator/)
* [as_field_end()](https://reference.aspose.com/words/python-net/aspose.words/node/as_field_end/)
* [as_form_field()](https://reference.aspose.com/words/python-net/aspose.words/node/as_form_field/)
* [as_special_char()](https://reference.aspose.com/words/python-net/aspose.words/node/as_special_char/)
* [as_smart_tag()](https://reference.aspose.com/words/python-net/aspose.words/node/as_smart_tag/)
* [as_structured_document_tag()](https://reference.aspose.com/words/python-net/aspose.words/node/as_structured_document_tag/)
* [as_structured_document_tag_range_start()](https://reference.aspose.com/words/python-net/aspose.words/node/as_structured_document_tag_range_start/)
* [as_structured_document_tag_range_end()](https://reference.aspose.com/words/python-net/aspose.words/node/as_structured_document_tag_range_end/)
* [as_glossary_document()](https://reference.aspose.com/words/python-net/aspose.words/node/as_glossary_document/)
* [as_building_block()](https://reference.aspose.com/words/python-net/aspose.words/node/as_building_block/)
* [as_comment_range_start()](https://reference.aspose.com/words/python-net/aspose.words/node/as_comment_range_start/)
* [as_comment_range_end()](https://reference.aspose.com/words/python-net/aspose.words/node/as_comment_range_end/)
* [as_office_math()](https://reference.aspose.com/words/python-net/aspose.words/node/as_office_math/)
* [as_sub_document()](https://reference.aspose.com/words/python-net/aspose.words/node/as_sub_document/)
* [as_composite_node()](https://reference.aspose.com/words/python-net/aspose.words/node/as_composite_node/)

O método `as_xxx` gera um `RuntimeError` com a mensagem como a seguinte se o nó não puder ser caseado para o tipo especificado:

> RuntimeError: Proxy error(InvalidCastException): Unable to cast object of type 'Aspose.Words.XXX' to type 'Aspose.Words.Drawing.YYY'.

### Campos de Fundição
A mesma situação se aplica aos campos. O exemplo de código a seguir demonstra como substituir links de hiperlink:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Hyperlinks.docx")

for field in doc.range.fields :
            
    if field.type == aw.fields.FieldType.FIELD_HYPERLINK:
                
        hyperlink = field.as_field_hyperlink()
    
        # Some hyperlinks can be local (links to bookmarks inside the document), ignore these.
        if hyperlink.sub_address != None :
            continue
    
        hyperlink.address = "https:#www.aspose.com"
        hyperlink.result = "Aspose - The .net & Java Component Publisher"

doc.save(docs_base.artifacts_dir + "WorkingWithFields.replace_hyperlinks.docx")
{{< /highlight >}}

Como você deve ter notado, o objeto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) também fornece um conjunto de métodos `as_xxx`, listados abaixo:

* [as_field_unknown()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_unknown/)
* [as_field_merge_barcode()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_merge_barcode/)
* [as_field_display_barcode()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_display_barcode/)
* [as_field_print()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_print/)
* [as_field_private()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_private/)
* [as_field_advance()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_advance/)
* [as_field_form_check_box()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_form_check_box/)
* [as_field_form_drop_down()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_form_drop_down/)
* [as_field_index()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_index/)
* [as_field_rd()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_rd/)
* [as_field_ta()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_ta/)
* [as_field_toa()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_toa/)
* [as_field_ask()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_ask/)
* [as_field_auto_text()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_auto_text/)
* [as_field_auto_text_list()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_auto_text_list/)
* [as_field_bibliography()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_bibliography/)
* [as_field_citation()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_citation/)
* [as_field_dde()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_dde/)
* [as_field_dde_auto()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_dde_auto/)
* [as_field_fill_in()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_fill_in/)
* [as_field_glossary()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_glossary/)
* [as_field_import()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_import/)
* [as_field_include()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_include/)
* [as_field_shape()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_shape/)
* [as_field_database()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_database/)
* [as_field_skip_if()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_skip_if/)
* [as_field_list_num()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_list_num/)
* [as_field_rev_num()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_rev_num/)
* [as_field_section()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_section/)
* [as_field_section_pages()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_section_pages/)
* [as_field_data()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_data/)
* [as_field_embed()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_embed/)
* [as_field_ocx()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_ocx/)
* [as_field_auto_num()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_auto_num/)
* [as_field_auto_num_lgl()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_auto_num_lgl/)
* [as_field_auto_num_out()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_auto_num_out/)
* [as_field_add_in()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_add_in/)
* [as_field_barcode()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_barcode/)
* [as_field_bidi_outline()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_bidi_outline/)
* [as_field_eq()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_eq/)
* [as_field_footnote_ref()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_footnote_ref/)
* [as_field_info()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_info/)
* [as_field_user_address()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_user_address/)
* [as_field_user_initials()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_user_initials/)
* [as_field_user_name()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_user_name/)
* [as_field_include_picture()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_include_picture/)
* [as_field_page()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_page/)
* [as_field_create_date()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_create_date/)
* [as_field_edit_time()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_edit_time/)
* [as_field_print_date()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_print_date/)
* [as_field_save_date()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_save_date/)
* [as_field_go_to_button()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_go_to_button/)
* [as_field_author()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_author/)
* [as_field_comments()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_comments/)
* [as_field_file_name()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_file_name/)
* [as_field_file_size()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_file_size/)
* [as_field_keywords()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_keywords/)
* [as_field_last_saved_by()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_last_saved_by/)
* [as_field_num_chars()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_num_chars/)
* [as_field_num_pages()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_num_pages/)
* [as_field_num_words()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_num_words/)
* [as_field_subject()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_subject/)
* [as_field_template()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_template/)
* [as_field_title()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_title/)
* [as_field_formula()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_formula/)
* [as_field_symbol()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_symbol/)
* [as_field_quote()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_quote/)
* [as_field_set()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_set/)
* [as_field_address_block()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_address_block/)
* [as_field_compare()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_compare/)
* [as_field_date()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_date/)
* [as_field_doc_property()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_doc_property/)
* [as_field_doc_variable()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_doc_variable/)
* [as_field_greeting_line()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_greeting_line/)
* [as_field_hyperlink()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_hyperlink/)
* [as_field_if()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_if/)
* [as_field_include_text()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_include_text/)
* [as_field_link()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_link/)
* [as_field_macro_button()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_macro_button/)
* [as_field_merge_field()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_merge_field/)
* [as_field_merge_rec()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_merge_rec/)
* [as_field_merge_seq()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_merge_seq/)
* [as_field_next()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_next/)
* [as_field_next_if()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_next_if/)
* [as_field_note_ref()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_note_ref/)
* [as_field_page_ref()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_page_ref/)
* [as_field_ref()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_ref/)
* [as_field_seq()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_seq/)
* [as_field_style_ref()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_style_ref/)
* [as_field_tc()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_tc/)
* [as_field_time()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_time/)
* [as_field_toc()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_toc/)
* [as_field_xe()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_xe/)
* [as_field_form_text()](https://reference.aspose.com/words/python-net/aspose.words.fields/field/as_field_form_text/)

### Estilos de elenco
A conversão também é necessária para trabalhar com estilos de tabela:
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

### Fundindo controles Ole
O exemplo de código a seguir demonstra como ler propriedades de controle ActiveX:
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

### Transmitindo fontes de fontes

A classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) fornece um conjunto de métodos `as_xxx`, listados abaixo:

* [as_file_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_file_font_source/)
* [as_folder_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_folder_font_source/)
* [as_memory_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_memory_font_source/)
* [as_stream_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_stream_font_source/)
* [as_system_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_system_font_source/)

## Acessando propriedades do indexador
Aspose.Words para Python permite propriedades do indexador apenas por tipo *int*, em .NET porém é possível utilizar outros tipos, por exemplo strings. Para preencher essa lacuna, as seguintes classes possuem métodos adicionais:

* [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/)
		* [get_by_name(bookmark_name)](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/get_by_name/#str)
* [FontInfoCollection](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfocollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfocollection/get_by_name/#str)
* [CustomXmlPartCollection](https://reference.aspose.com/words/python-net/aspose.words.markup/customxmlpartcollection/)
		* [get_by_id(id)](https://reference.aspose.com/words/python-net/aspose.words.markup/customxmlpartcollection/get_by_id/#str)
* [CustomXmlPropertyCollection](https://reference.aspose.com/words/python-net/aspose.words.markup/customxmlpropertycollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.markup/customxmlpropertycollection/get_by_name/#str)
* [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/get_by_name/#str)
* [CustomDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/get_by_name/#str)
* [BookmarksOutlineLevelCollection](https://reference.aspose.com/words/python-net/aspose.words.saving/bookmarksoutlinelevelcollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.saving/bookmarksoutlinelevelcollection/get_by_name/#str)
* [VbaModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/get_by_name/#str)
* [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/)
		* [get_by_name(bookmark_name)](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/get_by_name/#str)
* [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/)
		* [get_by_border_type(border_type)](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/get_by_border_type/#bordertype)
* [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/)
		* [get_by_header_footer_type(header_footer_type)](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/get_by_header_footer_type/#headerfootertype)
* [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/get_by_name/#str)
		* [get_by_style_identifier(sti)](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/get_by_style_identifier/#styleidentifier)
* [VariableCollection](https://reference.aspose.com/words/python-net/aspose.words/variablecollection/)
		* [get_by_name(name)](https://reference.aspose.com/words/python-net/aspose.words/variablecollection/get_by_name/#str)

## Nomeação de membros API
Para estar mais próximo do mundo Python, os membros API do Aspose.Words para Python via .NET usam o estilo python python, porém na maioria dos casos eles têm um para um análogo em Aspose.Words para .NET API. Você pode encontrar esses análogos no [arquivoxml](/words/python-net/python-notes/wrapper.zip).
