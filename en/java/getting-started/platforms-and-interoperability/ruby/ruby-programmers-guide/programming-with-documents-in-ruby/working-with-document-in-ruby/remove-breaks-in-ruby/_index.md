---
title: Remove Breaks in Ruby
second_title: Aspose.Words for Java
articleTitle: Remove Breaks in Ruby
linktitle: Remove Breaks in Ruby
description: "Remove breaks using Ruby."
type: docs
weight: 20
url: /java/remove-breaks-in-ruby/
---

## Aspose.Words - Remove Breaks

To remove breaks using Aspose.Words Java in Ruby, simply invoke the remove_page_breaks() & remove_section_breaks() methods of RemoveBreaks module.

**Ruby Code**

{{< highlight ruby >}}
def remove_page_breaks(doc)

    # Retrieve all paragraphs in the document.
    node_type = Rjb::import("com.aspose.words.NodeType")
    paragraphs = doc.getChildNodes(node_type.PARAGRAPH, true)
    paragraphs_count = paragraphs.getCount()
    i = 0
    while (i < paragraphs_count) do
        paragraphs = doc.getChildNodes(node_type.PARAGRAPH, true)
        para = paragraphs.get(i)
        if (para.getParagraphFormat().getPageBreakBefore()) then
            para.getParagraphFormat().setPageBreakBefore(false)
        end
        runs = para.getRuns().toArray()
        runs.each do | run |
            control_char = Rjb::import("com.aspose.words.ControlChar")
            p run.getText().contains(control_char.PAGE_BREAK)
            abort()
            #if (run.getText().contains(control_char.PAGE_BREAK)) then
                run_text = run.getText()
                run_text = run_text.gsub(control_char.PAGE_BREAK, '')
                run.setText(run_text)
            #end
        end
        i = i + 1
    end
end
def remove_section_breaks(doc)

    # Loop through all sections starting from the section that precedes the last one

    # and moving to the first section.
    i = doc.getSections().getCount()
    i = i - 2
    while (i >= 0) do

        # Copy the content of the current section to the beginning of the last section.
        doc.getLastSection().prependContent(doc.getSections().get(i))

        # Remove the copied section.
        doc.getSections().get(i).remove()
        i = i - 1
    end
end   
{{< /highlight >}}

## Download Running Code

Download **Remove Breaks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/removebreaks.rb)
