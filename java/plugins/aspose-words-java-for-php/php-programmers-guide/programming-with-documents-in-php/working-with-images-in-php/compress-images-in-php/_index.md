---
title: Compress Images in PHP
type: docs
weight: 20
url: /java/compress-images-in-php/
---

## **Aspose.Words - Compress Images**
**Php Code**

{{< highlight csharp >}}

 public static function main(){

// The path to the documents directory.

$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithimages/compressimages/data/";

$srcFileName = $dataDir . "Test.docx";

$messageFormat = new Java("java.text.MessageFormat");

$file_size = CompressImages::getFileSize($srcFileName);

echo java_values($messageFormat->format("Loading {0}. Size {1}.", $srcFileName, $file_size));

die("I M HERE");

$doc = new Java("com.aspose.words.Document",$srcFileName);

// 220ppi Print - said to be excellent on most printers and screens.

// 150ppi Screen - said to be good for web pages and projectors.

// 96ppi Email - said to be good for minimal document size and sharing.

$desiredPpi = 150;

// In Java this seems to be a good compression / quality setting.

$jpegQuality = 90;

// Resample images to desired ppi and save.

$resampler = new Java("com.aspose.words.Resampler");

$count = $resampler->resample($doc, $desiredPpi, $jpegQuality);

echo $MessageFormat->format("Resampled {0} images.", $count);

if ($count != 1)

echo "<br> We expected to have only 1 image resampled in this test document!";

$dstFileName = $srcFileName . "Resampled Out.docx";

$doc->save($dstFileName);

echo $messageFormat->format("Saving {0}. Size {1}.", $dstFileName, CompressImages::getFileSize($dstFileName));

// Verify that the first image was compressed by checking the new Ppi.

$doc = new Java("com.aspose.words.Document",$dstFileName);

$nodeType = new Java("com.aspose.words.NodeType");

$shape = $doc->getChild($nodeType->DRAWING_ML, 0, true);

$convertUtil = new Java("com.aspose.words.ConvertUtil");

$imagePpi = $shape->getImageData()->getImageSize()->getWidthPixels() / $convertUtil->pointToInch($shape->getSize()->getX());

if($imagePpi < 150) {

echo "Image was not resampled successfully.";

}

}

public static function getFileSize($fileName) {

$file = new Java("java.io.File",$fileName);

return (int) java_values($file->length());

}

{{< /highlight >}}

**Download Running Code**

Download **Compress Images (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithimages/compressimages/php/CompressImages.php)
