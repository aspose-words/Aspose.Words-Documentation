---
title: Mail Merge동안 사용자 지정 서식을 적용하는 방법
second_title: Aspose.WordsJava
articleTitle: Mail Merge동안 사용자 지정 서식을 적용하는 방법
linktitle: Mail Merge동안 사용자 지정 서식을 적용하는 방법
type: docs
description: "Java을 사용하여Mail Merge작업 중에 사용자 지정 서식을 적용합니다."
weight: 60
url: /ko/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)클래스는Mail Merge기능을 확장하는 데 매우 유용할 수 있는 두 가지 이벤트를 제공합니다. [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback)속성은[fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs)및[imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs)메서드를 구현하는 클래스를 허용합니다. Mail Merge프로세스에 대한 사용자 지정 제어를 구현하는 데 사용할 수 있습니다.

**fieldMerging(FieldMergingArgs)**이벤트는 문서에서 간단한Mail Merge필드가 발견될 때Mail Merge중에 발생합니다. 이것은Mail Merge에 대한 추가 제어를 제공하며 이벤트가 발생할 때 모든 작업을 수행 할 수 있습니다. 이 메서드는[IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/)인터페이스를 구현하고 해당 이벤트에 대한 데이터를 제공하는[FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/)개체를 허용하는 클래스로 래핑됩니다.

아래의 코드 예제에서는`MergeField`이벤트에서 사용자 지정 논리를 구현하여 셀 서식을 적용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
