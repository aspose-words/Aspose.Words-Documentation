---
title: Mail Merge Form Fields
description: "PHP: Mail Merge Form Fields using Aspose.Words for Java."
type: docs
weight: 10
url: /java/mail-merge-form-fields/
---

## Aspose.Words - Mail Merge Form Fields

**Php Code**

{{< highlight csharp >}}
public static function main()
{
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/mailmergeandreporting/mailmergeformfields/data/";
$doc = new Document($dataDir . "Template.doc");
$doc->getMailMerge()->setFieldMergingCallback(new HandleMergeField());
$fieldNames = array("RecipientName","SenderName","FaxNumber","PhoneNumber","Subject","Body","Urgent","ForReview","PleaseComment");
$fieldValues = array("Josh","Jenny","123456789","","Hello","Test Pakistan 1", true, false, true);
$doc->getMailMerge()->execute($fieldNames,$fieldValues);
$doc->save($dataDir . "Template Out.doc");
}
}
class HandleMergeField extends IFieldMergingCallback {
private $mBuilder = null;
private $mF = null;
private $tffT = null;
function __construct()
{
$this->mBuilder = new DocumentBuilder();
$this->mF = new MessageFormat();
$this->tffT = new TextFormFieldType();
}
public function fieldMerging(FieldMergingArgs $e)
{
if($this->mBuilder == null)
$this->mBuilder = new DocumentBuilder($e->getDocument());
if($e->getFieldValue() instanceof Boolean )
{
$this->mBuilder->moveToMergeField($e->getFieldName());
$checkBoxName = $this->mF->format("{0}{1}",$e->getFieldName(),$e->getRecordIndex());
$this->mBuilder->insertCheckBox($checkBoxName, (Boolean) $e->getFieldValue(), 0);
return;
}
if(java_values($e->getFieldName()) == 'Subject')
{
$this->mBuilder->moveToMergeField($e->getFieldName());
$textInputName = $this->mF->format("{0}{1}", $e->getFieldName(), $e->getRecordIndex());
$this->mBuilder->insertTextInput($textInputName, $this->tffT->REGULAR, "", $e->getFieldValue(), 0 );
}
}
}
{{< /highlight >}}

## Download Running Code

Download **Mail Merge Form Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/mailmergeandreporting/mailmergeformfields/php/MailMergeFormFields.php)
