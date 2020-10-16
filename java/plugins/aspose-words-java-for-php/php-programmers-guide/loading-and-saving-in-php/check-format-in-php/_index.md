---
title: Check Format in PHP
type: docs
weight: 10
url: /java/check-format-in-php/
---

## Aspose.Words - Check Format

**Php Code**

{{< highlight csharp >}}
public static function check()
{
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/loadingandsaving/checkformat/data/";
$supportedDir = $dataDir . '/OutSupported/';
$fileObj = new Java("java.io.File",$dataDir);
$filesList  = $fileObj->listFiles();
$loadFormat = java('com.aspose.words.LoadFormat');
foreach($filesList as $file)
{
if(java_values($file->isDirectory()))
{
continue;
}
$nameOnly  = $file->getName();
echo $nameOnly . '<br/>';
$fileName = $file->getPath();
echo $fileName . '<br/>';
$infoObj = new Java('com.aspose.words.FileFormatUtil');
$info = $infoObj->detectFileFormat($fileName);
switch(java_values($info->getLoadFormat()))
{
case java_values($loadFormat->DOC):
echo ("Microsoft Word 97-2003 document.");
break;
case java_values($loadFormat->DOT):
echo ("Microsoft Word 97-2003 template.");
break;
case java_values($loadFormat->DOCX):
echo ("Office Open XML WordprocessingML Macro-Free Document.");
break;
case java_values($loadFormat->DOCM):
echo ("Office Open XML WordprocessingML Macro-Enabled Document.");
break;
case java_values($loadFormat->DOTX):
echo ("Office Open XML WordprocessingML Macro-Free Template.");
break;
case java_values($loadFormat->DOTM):
echo ("Office Open XML WordprocessingML Macro-Enabled Template.");
break;
case java_values($loadFormat->FLAT_OPC):
echo ("Flat OPC document.");
break;
case java_values($loadFormat->RTF):
echo ("RTF format.");
break;
case java_values($loadFormat->WORD_ML):
echo ("Microsoft Word 2003 WordprocessingML format.");
break;
case java_values($loadFormat->HTML):
echo ("HTML format.");
break;
case java_values($loadFormat->MHTML):
echo ("MHTML (Web archive) format.");
break;
case java_values($loadFormat->ODT):
echo ("OpenDocument Text.");
break;
case java_values($loadFormat->OTT):
echo ("OpenDocument Text Template.");
break;
case java_values($loadFormat->DOC_PRE_WORD_97):
echo ("MS Word 6 or Word 95 format.");
break;
case java_values($loadFormat->UNKNOWN):
default:
echo ("Unknown format.");
break;
}
echo '<br/>';
$destFileObj = new Java("java.io.File",$supportedDir . $nameOnly);
$destFile = $destFileObj->getPath();
copy(java_values($fileName), java_values($destFile));
}
}
{{< /highlight >}}

**Download Running Code**

Download **Check Format (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/loadingandsaving/checkformat/php/CheckFormat.php)
