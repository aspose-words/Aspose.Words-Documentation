---
title: اختلافات إصدار Python و.NET
second_title: Aspose.Words لـ Python via .NET
articleTitle: اختلافات إصدار Python و.NET
linktitle: اختلافات إصدار Python و.NET
description: "Aspose.Words for Python via .NET عبارة عن غلاف لـ Aspose.Words لـ .NET، وتصف هذه الصفحة الاختلافات في الميزات وAPI لهذين المنتجين."
type: docs
weight: 15
url: /ar/python-net/python-notes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words for Python via .NET عبارة عن غلاف لـ Aspose.Words لـ .NET، ولهذا السبب يتمتع المنتجان بنفس مجموعة الميزات تقريبًا. ومع ذلك، هناك بعض الفروق الدقيقة في العمل والاختلافات في الميزات وAPI، الموضحة في هذه الصفحة.

## اختلافات الميزات

بسبب عملية التغليف، هناك بعض الميزات غير المتوفرة في إصدار Python. فيما يلي قائمة بأبرز الميزات غير المتوفرة حاليًا في إصدار Python.
* تنفيذ الواجهات غير مدعوم حتى الآن، ولهذا السبب لا يمكن استخدام عمليات الاسترجاعات مثل [IWarningCallback](https://reference.aspose.com/words/python-net/aspose.words/iwarningcallback/)، [IReplacingCallback](https://reference.aspose.com/words/python-net/aspose.words.replacing/ireplacingcallback/)، [IFieldUpdatingCallback](https://reference.aspose.com/words/python-net/aspose.words.fields/ifieldupdatingcallback/)، [IFieldMergingCallback](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/ifieldmergingcallback/) وما إلى ذلك.
* ميزة الطباعة غير متاحة نظرًا لاستخدام إصدار .NET Standard 2.0 من Aspose.Words كواجهة خلفية لإصدار python، والذي لا يوفر هذه الوظيفة أيضًا.
* يتم توفير وظيفة Mail Merge البسيطة فقط مع صفائف أسماء الحقول وقيم الحقول كمصدر بيانات.
* تنفيذ [DocumentVisitor](https://reference.aspose.com/words/python-net/aspose.words/documentvisitor/) غير ممكن حاليًا من كود Python.

## صب كائنات Aspose.Words في Python

على الرغم من أن تحويل الكتابة ليس أمرًا طبيعيًا بالنسبة لمطوري Python، إلا أن بعض المهام لا يمكن إنجازها دون إرسال العقد أو الحقول إلى نوع محدد من المستندات. يوفر Aspose.Words for Python via .NET طرقًا خاصة تتيح إرسال الكائنات عندما يكون ذلك ضروريًا.

### عقد الصب

الفئة الأساسية لجميع عقد المستندات في Aspose.Words DOM هي فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). على سبيل المثال، تقوم طريقة [get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) بإرجاع ومثيل فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)، ولكن إذا كنت بحاجة إلى تعديل العقدة التي تم إرجاعها، فيجب عليك في معظم الحالات تحويلها إلى نوع ملموس. يوضح الكود التالي كيفية تغيير لون خط [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) الأول في المستند:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

# Get the first Run node and cast it to Run object.
run = doc.get_child(aw.NodeType.RUN, 0, True).as_run()

# Make changes to the run 
run.font.color = drawing.Color.red

# Save the result
doc.save(docs_base.artifacts_dir + "WorkingWithNode.change_run_color.docx")
{{< /highlight >}}

قد يكون الإرسال مطلوبًا أيضًا عند استخدام طريقة [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/):

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

clone = doc.clone().as_document()
clone.save(docs_base.artifacts_dir + "CloneAndCombineDocuments.cloning_document.docx")
{{< /highlight >}}

كما قد تلاحظ أين تستخدم `(Paragraph)node` في كود C# للإرسال، في Python يجب عليك استخدام طريقة `node.as_paragraph()`. في إصدار Python لفئة Aspose.Words [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) يقدم الرابط التالي لطرق `as_xxx`:

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

تقوم طريقة `as_xxx` برفع `RuntimeError` برسالة مثل ما يلي إذا تعذر ربط العقدة بالنوع المحدد:

> RuntimeError: Proxy error(InvalidCastException): Unable to cast object of type 'Aspose.Words.XXX' to type 'Aspose.Words.Drawing.YYY'.

### مجالات الصب
وينطبق نفس الوضع على الحقول. يوضح مثال التعليمات البرمجية التالي كيفية استبدال ارتباطات الارتباط التشعبي:

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

كما لاحظت، يوفر كائن [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) أيضًا مجموعة من أساليب `as_xxx`، المدرجة أدناه:

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

### أنماط الصب
الإرسال مطلوب أيضًا للعمل مع أنماط الجدول:
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

### صب الضوابط أولي
يوضح مثال التعليمات البرمجية التالي كيفية قراءة خصائص عنصر تحكم ActiveX:
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

### صب مصادر الخط

توفر فئة [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) مجموعة من أساليب `as_xxx`، وهي مدرجة أدناه:

* [as_file_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_file_font_source/)
* [as_folder_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_folder_font_source/)
* [as_memory_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_memory_font_source/)
* [as_stream_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_stream_font_source/)
* [as_system_font_source()](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/as_system_font_source/)

## الوصول إلى خصائص المفهرس
يسمح Aspose.Words for Python بخصائص المفهرس فقط حسب نوع *int*، في .NET، ومع ذلك من الممكن استخدام أنواع أخرى، على سبيل المثال السلاسل. لملء هذه الفجوة، لدى الفئات التالية طرق إضافية:

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

## تسمية أعضاء API
لكي نكون أقرب إلى عالم Python، يستخدم أعضاء API في Aspose.Words لـ Python via .NET أسلوب الثعبان الثعباني، ولكن في معظم الحالات لديهم تناظري واحد لواحد في Aspose.Words لـ .NET API. يمكنك العثور على هذه التناظرية في [ملف XML](/words/python-net/python-notes/wrapper.zip).
