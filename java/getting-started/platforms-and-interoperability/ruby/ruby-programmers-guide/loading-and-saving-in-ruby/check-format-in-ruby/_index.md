---
title: Check Format in Ruby
type: docs
weight: 10
url: /java/check-format-in-ruby/
---

## Aspose.Words - Check Format

To check file format using Aspose.Words Java in Ruby, simply invoke the check_fromat() method of CheckFromat module.

**Ruby Code**

{{< highlight ruby >}}
def check_fromat(file)
    files_list  = file.listFiles()
    load_format = Rjb::import('com.aspose.words.LoadFormat')
    files_list.each do |file|
        if(file.isDirectory()) then
            next
        end
        name_only  = file.getName()
        puts name_only
        file_name = file.getPath()
        puts file_name
        info_obj = Rjb::import('com.aspose.words.FileFormatUtil')
        info = info_obj.detectFileFormat(file_name)
        case info.getLoadFormat()
            when load_format.DOC
                puts "Microsoft Word 97-2003 document."
            when load_format.DOT
                puts "Microsoft Word 97-2003 template."
            when load_format.DOCX
                puts "Office Open XML WordprocessingML Macro-Free Document."
            when load_format.DOCM
                puts "Office Open XML WordprocessingML Macro-Enabled Document."
            when load_format.DOTX
                puts "Office Open XML WordprocessingML Macro-Free Template."
            when load_format.DOTM
                puts "Office Open XML WordprocessingML Macro-Enabled Template."
            when load_format.FLAT_OPC
                puts "Flat OPC document."
            when load_format.RTF
                puts "RTF format."
            when load_format.WORD_ML
                puts "Microsoft Word 2003 WordprocessingML format."
            when load_format.HTML
                puts "HTML format."
            when load_format.MHTML
                puts "MHTML (Web archive) format."
            when load_format.ODT
                puts "OpenDocument Text."
            when load_format.OTT
                puts "OpenDocument Text Template."
            when load_format.DOC_PRE_WORD_97
                puts "MS Word 6 or Word 95 format."
            else load_format.UNKNOWN
                puts "Unknown format."
        end
        dest_file_obj = Rjb::import("java.io.File").new(@supported_dir + name_only)
        dest_File = dest_file_obj.getPath()
        FileUtils.cp(file_name, dest_File)
    end
end
{{< /highlight >}}

## Download Running Code

Download **Check Format (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/checkformat.rb)
