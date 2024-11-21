---
title: Check Format in Python
second_title: Aspose.Words for Java
articleTitle: Check Format in Python
linktitle: Check Format in Python
description: "Check Document Format using Python."
type: docs
weight: 40
url: /java/check-format-in-python/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Check Format

**Python Code**

{{< highlight csharp >}}
supportedDir = self.dataDir + '/OutSupported/'
fileObj = self.File(self.dataDir)
filesList  = fileObj.listFiles()
for file in filesList:
    if file.isDirectory:
continue
    nameOnly  = file.getName()
    print nameOnly
    fileName = file.getPath()
    print fileName
    info = self.infoObj.detectFileFormat(fileName)
    if (info.getLoadFormat() == self.LoadFormat.DOC):
print "Microsoft Word 97-2003 document."
    elif (info.getLoadFormat() == self.LoadFormat.DOT):
print "Microsoft Word 97-2003 template."
    elif (info.getLoadFormat() == self.LoadFormat.DOCX):
print "Office Open XML WordprocessingML Macro-Free Document."
    elif (info.getLoadFormat() == self.LoadFormat.DOCM):
print "Office Open XML WordprocessingML Macro-Enabled Document."
    elif (info.getLoadFormat() == self.LoadFormat.DOTX):
print "Office Open XML WordprocessingML Macro-Free Template."
    elif (info.getLoadFormat() == self.LoadFormat.DOTM):
print "Office Open XML WordprocessingML Macro-Enabled Template."
    elif (info.getLoadFormat() == self.LoadFormat.FLAT_OPC):
print "Flat OPC document."
    elif (info.getLoadFormat() == self.LoadFormat.RTF):
print "RTF format."
    elif (info.getLoadFormat() == self.LoadFormat.WORD_ML):
print "Microsoft Word 2003 WordprocessingML format."
    elif (info.getLoadFormat() == self.LoadFormat.HTML):
print "HTML format."
    elif (info.getLoadFormat() == self.LoadFormat.MHTML):
print "MHTML (Web archive) format."
    elif (info.getLoadFormat() == self.LoadFormat.ODT):
print "OpenDocument Text."
    elif (info.getLoadFormat() == self.LoadFormat.OTT):
print "OpenDocument Text Template."
    elif (info.getLoadFormat() == self.LoadFormat.DOC_PRE_WORD_97):
print "MS Word 6 or Word 95 format."
    elif (info.getLoadFormat() == self.LoadFormat.UNKNOWN):
print "Unknown format."
    else :
print "Unknown format."
    destFileObj = self.File(supportedDir + nameOnly)
    destFile = destFileObj.getPath()
    shutil.copy(fileName, destFile)
{{< /highlight >}}

## Download Running Code

Download **Check Format (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/loadandsaving/checkformat/CheckFormat.py)
