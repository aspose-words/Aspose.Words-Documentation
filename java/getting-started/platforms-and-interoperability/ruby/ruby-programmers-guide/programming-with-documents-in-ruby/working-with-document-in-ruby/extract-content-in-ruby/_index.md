---
title: Extract Content in Ruby – Aspose.Words for Java
articleTitle: Extract Content in Ruby
linktitle: Extract Content in Ruby
description: "Ruby: extract contents from Word document using Aspose.Words for Java."
type: docs
weight: 10
url: /java/extract-content-in-ruby/
---

## Aspose.Words - Extract Content

To extract contents from word document using Aspose.Words Java in Ruby, simply invoke the different methods of ExtractContent module. Below you can see few methods.

**Ruby Code**

{{< highlight ruby >}}
def extract_content_between_paragraphs(doc)

    # Gather the nodes. The GetChild method uses 0-based index
    node_type = Rjb::import("com.aspose.words.NodeType")
    start_para = doc.getFirstSection().getChild(node_type.PARAGRAPH, 6, true)
    end_para =   doc.getFirstSection().getChild(node_type.PARAGRAPH, 10, true)

    # Extract the content between these nodes in the document. Include these markers in the extraction.
    extracted_nodes = extract_contents(start_para, end_para, true)

    # Insert the content into a new separate document and save it to disk.
    dst_doc = generate_document(doc, extracted_nodes)
    dst_doc.save(@data_dir + "TestFile.Paragraphs Out.doc")
end    
def extract_content_between_block_level_nodes(doc)

    # Gather the nodes. The GetChild method uses 0-based index
    node_type = Rjb::import("com.aspose.words.NodeType")
    start_para = doc.getLastSection().getChild(node_type.PARAGRAPH, 2, true)
    end_table = doc.getLastSection().getChild(node_type.TABLE, 0, true)

    # Extract the content between these nodes in the document. Include these markers in the extraction.
    extracted_nodes = extract_contents(start_para, end_table, true)

    # Lets reverse the array to make inserting the content back into the document easier.
    collections = Rjb::import("java.util.Collections")
    collections.reverse(extracted_nodes)
    while extracted_nodes.size() > 0 do

        # Insert the last node from the reversed list
        end_table.getParentNode().insertAfter(extracted_nodes.get(0), end_table)

        # Remove this node from the list after insertion.
        extracted_nodes.remove(0)
    end

    # Save the generated document to disk.
    doc.save(@data_dir + "TestFile.DuplicatedContent Out.doc")
end    
def extract_content_between_paragraph_styles(doc)

    # Gather a list of the paragraphs using the respective heading styles.
    paras_style_heading1 = paragraphs_by_style_name(doc, "Heading 1")
    paras_style_heading3 = paragraphs_by_style_name(doc, "Heading 3")

    # Use the first instance of the paragraphs with those styles.
    start_para1 = paras_style_heading1.get(0)
    end_para1 = paras_style_heading3.get(0)

    # Extract the content between these nodes in the document. Don't include these markers in the extraction.
    extracted_nodes = extract_contents(start_para1, end_para1, false)

    # Insert the content into a new separate document and save it to disk.
    dst_doc = generate_document(doc, extracted_nodes)
    dst_doc.save(@data_dir + "TestFile.Styles Out.doc")
end
def extract_content_between_runs(doc)

    # Retrieve a paragraph from the first section.
    node_type = Rjb::import("com.aspose.words.NodeType")
    para = doc.getChild(node_type.PARAGRAPH, 7, true)

    # Use some runs for extraction.
    start_run = para.getRuns().get(1)
    end_run = para.getRuns().get(4)

    # Extract the content between these nodes in the document. Include these markers in the extraction.
    extracted_nodes = extract_contents(start_run, end_run, true)

    # Get the node from the list. There should only be one paragraph returned in the list.
    node = extracted_nodes.get(0)

    # Print the text of this node to the console.
    save_format = Rjb::import("com.aspose.words.SaveFormat")
    puts node.toString(save_format.TEXT)
end
{{< /highlight >}}

## Download Running Code

Download **Extract Content (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/extractcontent.rb)
