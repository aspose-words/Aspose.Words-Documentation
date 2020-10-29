---
title: How to Execute Mail Merge
type: docs
weight: 10
url: /cpp/how-to-execute-mail-merge/
---

**How to Set Image Properties during Mail Merge**

Currently, the image width and height properties can only be set using [**ImageFieldMergingArgs**](https://apireference.aspose.com/cpp/words/class/aspose.words.mail_merging.image_field_merging_args/) class. Sometimes it requires controlling various image properties like [**WrapType**](https://apireference.aspose.com/cpp/words/namespace/aspose.words.drawing/#a211270c1edcc434e5a65e88553fa99ba) while merging an image merge field to fine-tune the resulting image. To overcome this issue, Aspose.Words provides [**ImageFieldMergingArgs.Shape**](https://apireference.aspose.com/cpp/words/class/aspose.words.mail_merging.image_field_merging_args/#a0e52ccdbde77472da894ac0a7dfcaad7) property which facilitates to get full control over the image (or any other shape) being inserted.

The following code example demonstrates how to set various image properties. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
