---
title: Cara Menerapkan Pemformatan Khusus selama Mail Merge
second_title: Aspose.Words untuk Java
articleTitle: Cara Menerapkan Pemformatan Khusus selama Mail Merge
linktitle: Cara Menerapkan Pemformatan Khusus selama Mail Merge
type: docs
description: "Terapkan pemformatan khusus selama operasi Mail Merge menggunakan Java."
weight: 60
url: /id/java/how-to-apply-custom-formatting-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Kelas [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) menyediakan dua peristiwa yang bisa sangat berguna dalam memperluas kemampuan Mail Merge. Properti [setFieldMergingCallback(IFieldMergingCallback)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#FieldMergingCallback) menerima kelas yang mengimplementasikan metode [fieldMerging(FieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#fieldMerging-com.aspose.words.FieldMergingArgs) dan [imageFieldMerging(ImageFieldMergingArgs)](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/#imageFieldMerging-com.aspose.words.ImageFieldMergingArgs). Ini dapat digunakan untuk mengimplementasikan kontrol kustom atas proses Mail Merge.

Peristiwa **fieldMerging(FieldMergingArgs)** terjadi selama Mail Merge saat bidang Mail Merge sederhana ditemukan dalam dokumen. Ini memberikan kontrol lebih lanjut atas Mail Merge dan Anda dapat melakukan tindakan apa pun saat peristiwa tersebut terjadi. Metode ini dibungkus dalam kelas yang mengimplementasikan antarmuka [IFieldMergingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) dan menerima objek [FieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/fieldmergingargs/) yang menyediakan data untuk peristiwa terkait.

Contoh kode yang diberikan di bawah ini mendemonstrasikan cara menerapkan logika khusus dalam peristiwa `MergeField` untuk menerapkan pemformatan sel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomFormattingDuringMailMerge-ApplyCustomFormattingDuringMailMerge.java" >}}
