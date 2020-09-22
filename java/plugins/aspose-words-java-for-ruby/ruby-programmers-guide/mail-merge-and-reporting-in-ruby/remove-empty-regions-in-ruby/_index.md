---
title: Remove Empty Regions in Ruby
type: docs
weight: 10
url: /java/remove-empty-regions-in-ruby/
---

## **Aspose.Words - Remove Empty Regions**

To remove empty regions from word document using Aspose.Words Java in Ruby, simply invoke HandleMergeField module.

**Ruby Code**

{{< highlight ruby >}}
def remove_empty_regions()

    # The path to the documents directory.
    data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/mailmerge/'

    # Open the document.
    doc = Rjb::import('com.aspose.words.Document').new(data_dir + "TestFile.doc")

    # Create a dummy data source containing no data.
    data = Rjb::import('com.aspose.words.DataSet').new
    #DataSet data = new DataSet()

    # Set the appropriate mail merge clean up options to remove any unused regions from the document.
    mailmerge_cleanup_options = Rjb::import('com.aspose.words.MailMergeCleanupOptions')
    doc.getMailMerge().setCleanupOptions(mailmerge_cleanup_options.REMOVE_UNUSED_REGIONS)

    # Execute mail merge which will have no effect as there is no data. However the regions found in the document will be removed
    # automatically as they are unused.
    doc.getMailMerge().executeWithRegions(data)

    # Save the output document to disk.
    doc.save(data_dir + "TestFile.RemoveEmptyRegions Out.doc")
end
{{< /highlight >}}

## **Download Running Code**

Download **Remove Empty Regions (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/mergefield.rb)
