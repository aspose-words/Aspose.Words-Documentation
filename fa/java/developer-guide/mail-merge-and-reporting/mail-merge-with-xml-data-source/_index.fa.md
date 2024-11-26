---
title: Mail Merge با XML منبع داده در Java
second_title: Aspose.Words برای Java
articleTitle: Mail Merge با XML منبع داده
linktitle: Mail Merge با XML منبع داده
type: docs
description: "هنگام انجام عملیات Mail Merge از منابع مختلف داده استفاده کنید، از جمله یک فایل XML. مزیت اصلی استفاده از XML توانایی تعریف سلسله مراتب به طور مستقیم در سند در Java است."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /fa/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

شما می توانید از منابع داده های مختلف در هنگام انجام یک عملیات Mail Merge، از جمله یک فایل XML استفاده کنید. مزیت اصلی استفاده از XML توانایی تعریف سلسله مراتب درست در سند و سپس به سادگی آن را به Aspose.Words منتقل می کند.

این مقاله نحوه خواندن داده ها از یک فایل XML را به جای مستقیما از یک پایگاه داده توصیف می کند و XML را به عنوان منبع داده برای انجام یک عملیات Mail Merge شامل می شود.

## مزایای XML به عنوان منبع داده

XML منابع داده برای ذخیره داده ها بدون هزینه یک پایگاه داده بسیار مفید هستند. آنها برای برنامه های آفلاین که کاربران نیاز به اضافه کردن، ویرایش و حذف داده ها دارند، زمانی که نمی توانند به یک پایگاه داده متصل شوند، عالی هستند.

XML داده ها می توانند یک منبع داده خوب جایگزین پایگاه داده های رابطه ای باشند، به خصوص اگر با برنامه های کاربردی وب کار کنید. اکثر سرویس های وب از XML برای تبادل اطلاعات استفاده می کنند. پایگاه داده های XML گرا به طور فعال در بازار فعلی استفاده می شوند و توسعه دهندگان پایگاه داده های رابطه ای XML سازگاری را به محصولات خود اضافه می کنند تا یک بازگشت پایگاه داده XML داشته باشند.

از آنجا که XML داده ها را در قالب متن ساده ذخیره می کند، ذخیره سازی مستقل از پلتفرم است. بنابراین، داده ها می توانند به راحتی صادر، وارد یا به سادگی منتقل شوند. XML به عنوان یک منبع داده محبوب است زیرا راهی برای حفظ معنای معنایی داده ها در هنگام برقراری ارتباط بین برنامه های مختلف ارائه می دهد.

## پر کردن قالب ادغام با داده های XML با استفاده از DataSet

XML استاندارد جهانی برای تبادل داده ها است و Microsoft Word فرمت های سند محبوب ترین فرمت ها برای Mail Merge قالب ها هستند. بنابراین، توانایی اجرای یک فایل Mail Merge از یک فایل XML به یک سند قالب Word به یک نیاز رایج تبدیل شده است.

Microsoft Word یک روش مستقیم برای کار با XML داده ها به عنوان یک منبع داده برای یک عملیات Mail Merge ارائه نمی دهد، در حالی که Aspose.Words به شما اجازه می دهد تا یک عملیات Mail Merge را با داده های یک منبع داده XML انجام دهید. توجه داشته باشید که ساختار سند XML نیز می تواند متنوع باشد و داده ها همچنان به درستی خوانده می شوند. این اجازه می دهد تا انواع مختلف اسناد XML به راحتی ادغام شوند.

از روش `ReadXML` برای خواندن طرح XML و داده ها در شیء `DataSet` استفاده کنید. این شی سپس به عنوان یک منبع داده برای mail merge استفاده می شود.

{{% alert color="primary" %}}

شما می توانید از همان قالب ها برای منابع داده های مختلف استفاده کنید.

{{% /alert %}}

XML زیر شامل داده هایی است که برای پر کردن یک قالب ادغام مورد نیاز است:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

مثال کد زیر نشان می دهد که چگونه داده های XML را به DataSet بارگذاری کنیم و سپس از آن به عنوان یک منبع داده استفاده کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

قبل از اجرای عملیات Mail Merge می توانید تفاوت بین قالب را مشاهده کنید:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

و پس از اجرای عملیات Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
