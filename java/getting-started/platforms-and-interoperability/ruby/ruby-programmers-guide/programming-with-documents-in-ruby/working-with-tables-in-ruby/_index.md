---
title: Working With Tables in Ruby
description: "Ruby: Working With Tables using Aspose.Words for Java."
type: docs
weight: 80
url: /java/working-with-tables-in-ruby/
---

## Aspose.Words - Auto Fit Tables

**Ruby Code**

{{< highlight ruby >}}
def autofit_table_to_window()
    #data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'

    # Open the document
    doc = Rjb::import('com.aspose.words.Document').new(@data_dir + "TestFile.doc")
    node_type = Rjb::import('com.aspose.words.NodeType')
    table = doc.getChild(node_type.TABLE, 0, true)

    # Autofit the first table to the page width.
    autofit_behavior = Rjb::import("com.aspose.words.AutoFitBehavior")
    table.autoFit(autofit_behavior.AUTO_FIT_TO_WINDOW)

    # Save the document to disk.
    doc.save(@data_dir + "TestFile.AutoFitToWindow Out.doc")

    # ExEnd
    preferred_width_type = Rjb::import("com.aspose.words.PreferredWidthType")
    if (doc.getFirstSection().getBody().getTables().get(0).getPreferredWidth().getType() == preferred_width_type.PERCENT) then
        puts "PreferredWidth type is not percent."
    end
    if (doc.getFirstSection().getBody().getTables().get(0).getPreferredWidth().getValue() == 100) then    
        puts "PreferredWidth value is different than 100."
    end
end
def autofit_table_to_contents()

    # Open the document
    doc = Rjb::import('com.aspose.words.Document').new(@data_dir + "TestFile.doc")
    node_type = Rjb::import('com.aspose.words.NodeType')
    table = doc.getChild(node_type.TABLE, 0, true)

    # Autofit the table to the cell contents
    autofit_behavior = Rjb::import("com.aspose.words.AutoFitBehavior")
    table.autoFit(autofit_behavior.AUTO_FIT_TO_CONTENTS)

    # Save the document to disk.
    doc.save(@data_dir + "TestFile.AutoFitToContents Out.doc")

    # ExEnd
    preferred_width_type = Rjb::import("com.aspose.words.PreferredWidthType")
    if (doc.getFirstSection().getBody().getTables().get(0).getPreferredWidth().getType() == preferred_width_type.AUTO) then
        puts "PreferredWidth type is not auto."
    end
    if (doc.getFirstSection().getBody().getTables().get(0).getFirstRow().getFirstCell().getCellFormat().getPreferredWidth().getType() == preferred_width_type.AUTO) then
        puts "PrefferedWidth on cell is not auto."
    end
    if(doc.getFirstSection().getBody().getTables().get(0).getFirstRow().getFirstCell().getCellFormat().getPreferredWidth().getValue() == 0) then
        puts "PreferredWidth value is not 0."
    end
end
def autofit_table_to_fixed_column_widths()

    # Open the document
    doc = Rjb::import('com.aspose.words.Document').new(@data_dir + "TestFile.doc")
    node_type = Rjb::import('com.aspose.words.NodeType')
    table = doc.getChild(node_type.TABLE, 0, true)

    # Disable autofitting on this table.
    autofit_behavior = Rjb::import("com.aspose.words.AutoFitBehavior")
    table.autoFit(autofit_behavior.AUTO_FIT_TO_CONTENTS)

    # Save the document to disk.
    doc.save(@data_dir + "TestFile.FixedWidth Out.doc")

    # ExEnd
    preferred_width_type = Rjb::import("com.aspose.words.PreferredWidthType")
    if (doc.getFirstSection().getBody().getTables().get(0).getPreferredWidth().getType() == preferred_width_type.AUTO) then
        puts "PreferredWidth type is not auto."
    end
    if (doc.getFirstSection().getBody().getTables().get(0).getPreferredWidth().getValue() == 0) then
        puts "PreferredWidth value is not 0."
    end
    if (doc.getFirstSection().getBody().getTables().get(0).getFirstRow().getFirstCell().getCellFormat().getWidth() == 0) then
        puts "Cell width is not correct."
    end
end
{{< /highlight >}}

## Download Running Code

Download **Auto Fit Tables (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/autofittables.rb)
