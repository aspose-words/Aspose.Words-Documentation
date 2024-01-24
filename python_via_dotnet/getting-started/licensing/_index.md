---
title: Licensing and Subscription
second_title: Aspose.Words for Python via .NET
articleTitle: Licensing and Subscription
linktitle: Licensing and Subscription
description: "Aspose.Words for Python via .NET provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation using Licensing and Subscription policies."
type: docs
weight: 40
url: /python-net/licensing/
aliases: [/python/licensing/]
---

Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, Aspose.Words provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{% alert color="primary" %}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.aspose.com/policies/) section.

{{% /alert %}}

## Free Trial or Temporary License

Aspose.Words is incredible software that developers can try before purchasing.

### Free Trial

The evaluation version is the same as the purchased one – the trial version simply becomes licensed when you add a few lines of code to apply the license.

The Trial version of Aspose.Words without the specified license provides full product functionality, but inserts an evaluative watermark at the top of the document upon loading and saving and limits the maximum document size to a few hundred paragraphs.

### Temporary License

If you wish to test Aspose.Words without the limitations of the Trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.aspose.com/temporary-license/) page.

## Purchased License

After purchase, you need to apply the license file or stream. This section describes options of how this can be done, and also comments on some common questions.

{{% alert color="primary" %}}

You need to set the license:

* only once per application domain

* before using any other Aspose.Words classes

{{% /alert %}}

{{% alert color="primary" %}}

You can find pricing information on the [“Pricing Information”](https://purchase.aspose.com/pricing/words/family) page.

{{% /alert %}}

### Protecting Your Purchased License

After purchasing a license, you need to carefully read the information on page ["Protecting Your Purchased License"](https://purchase.aspose.com/orders/protecting-your-license-file) to protect your license file. Please note that this page is available for viewing only if you have a paid license.

### License Applying Options

Licenses can be applied from various locations:

* Explicit path
* The folder containing the python script that calls Aspose.Words for Python via .NET
* Stream
* As a Metered License – a new licensing mechanism

{{% alert color="primary" %}}

Use the [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) method to license a component.

Calling [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) multiple times is not harmful, it just wastes processor time.

Calling [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) multiple times is not harmful either, but just wastes processor time and can accumulate consumption improperly.

{{% /alert %}}

#### Apply License Using a File or Stream Object

When developing your application, call [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) in your startup code before using Aspose.Words classes.

##### Load a License from a File

Using the [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) method, you can try to find the license file in the embedded resources or assembly folders for further use.

The following code example shows how to initialize a license from a folder:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Load a License from a Stream Object

The following code example shows how to initialize a license from a stream using another [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) method:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Apply Metered License

Aspose.Words allows developers to apply a metered key. This is a new licensing mechanism.

The new licensing mechanism will be used along with the existing licensing method. Those customers who want to be billed based on the use of API features can use the Metered Licensing.

After completing all the necessary steps to obtain this type of license, you will receive the keys, not the license file. This metered key can be applied using the [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) class specially introduced for this purpose.

Do not call the **SetMeteredKey** method frequently so that this licensing method properly accumulates consumption and reports it to us. Just instantiate the Aspose.Words library, call **SetMeteredKey** once, then leave the library instantiated and reuse it.

The following code example shows how to set metered public and private keys:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Please note that you must have a stable Internet connection for the correct use of the Metered license, since the Metered mechanism requires the constant interaction with our services for correct calculations. For more details, refer to the [“Metered Licensing FAQ”](https://purchase.aspose.com/faqs/licensing/metered/) section.

{{% /alert %}}

### Changing the License File Name

The license filename does not have to be "Aspose.Words.Python.NET.lic". You can rename it to your liking and use that name when setting a license in your application.

### “Cannot find license filename” Exception

When you purchase and download a license, the Aspose website names the license file *"Aspose.Words.Python.NET.lic"*. You download the license file using your browser. In this case, some browsers recognize the license file as XML and append the .xml extension to it, so the full file name on your computer becomes *"Aspose.Words.Python.NET.lic.XML"*.

When Microsoft Windows is configured to hide extensions for known file types (unfortunately, this is the default in most Windows installations), the license file will appear as *"Aspose.Words.Python.NET.lic"* in Windows Explorer. You will probably think that this is the real file name and call [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) passing it *"Aspose.Words.Python.NET.lic"*, but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows.

## Using Multiple Aspose Products

If you use multiple Aspose products in your application, such as Aspose.Words and `Aspose.Cells`, here are a few useful tips:

* Set the License for each Aspose product separately. Even if you have a single license file for all components, for example, "Aspose.Total.lic", you still need to call [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) separately for each Aspose product that you use in your application.
* Use the Fully Qualified License Class Name. Each Aspose product has a **License** class in its own namespace. For example, Aspose.Words has [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) and `Aspose.Cells` has **aspose.cells.License** class. Using the fully qualified class name allows you to avoid confusion as to which license applies to which product.
