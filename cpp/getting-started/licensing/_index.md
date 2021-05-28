---
title: Licensing and Subscription
description: "Aspose.Words for С++ provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation using Licensing and Subscription policies."
type: docs
weight: 35
url: /cpp/licensing/
---

Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, Aspose.Words provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{% alert color="primary" %}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.aspose.com/policies) section.

{{% /alert %}}

## Free Trial or Temporary License

Aspose.Words is incredible software that developers can try before purchasing.

### Free Trial

The evaluation version is the same as the purchased one – the [Trial version](https://downloads.aspose.com/words) simply becomes licensed when you add a few lines of code to apply the license.

The Trial version of Aspose.Words without the specified license provides full product functionality, but inserts an evaluative watermark at the top of the document upon loading and saving and limits the maximum document size to a few hundred paragraphs.

### Temporary License

If you wish to test Aspose.Words without the limitations of the Trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.aspose.com/temporary-license) page.

## Purchased License

After purchase, you need to apply the license file or include the license file as an embedded resource. This section describes options of how this can be done, and also comments on some common questions.

{{% alert color="primary" %}}

You need to set the license:

* only once per application domain
* before using any other Aspose.Words classes

{{% /alert %}}

### License Applying Options

Licenses can be applied from various locations:

* Explicit path
* The folder containing the Aspose.Words_\*.dll  file
* The folder containing the assembly that called Aspose.Words_\*.dll
* The folder containing the entry assembly (your *.exe*)
* An embedded resource in the assembly is called Aspose.Words_\*.dll

Often the easiest way to set a license is to place the license file in the same folder as Aspose.Words_\*.dll and specify just the filename without the path.

{{% alert color="primary" %}}

Use the [SetLicense](https://apireference.aspose.com/words/cpp/class/aspose.words.license#a652961d209c7ab08dfec68c2a5d3fd4f) method to license a component.

Calling **SetLicense** multiple times is not harmful, it just wastes processor time.

{{% /alert %}}

#### Apply License Using a File or Stream Object

When developing your application, call SetLicense in your startup code before using Aspose.Words classes.

##### Load a License from a File

Using the [SetLicense](https://apireference.aspose.com/words/cpp/class/aspose.words.license#aa5cad7b79177e582eb6dcb4d72d55907) method, you can try to find the license file in the embedded resources or assembly folders for further use.

The following code example shows how to initialize a license from a folder:

{{< highlight csharp >}}
auto license = MakeObject<License>();

// This line attempts to set a license from several locations relative to the executable and Aspose.Words.dll.
// You can also use the additional overload to load a license from a stream, this is useful for instance when the
// license is stored as an embedded resource
try
{
	license->SetLicense(u"Aspose.Words.Cpp.lic");
	std::cout << "License set successfully." << std::endl;
}
catch (System::Exception& e)
{
	// We do not ship any license with this example, visit the Aspose site to obtain either a temporary or permanent license.
	std::cout << "There was an error setting the license: " << e->get_Message().ToUtf8String() << std::endl;
}
{{< /highlight >}}

##### Load a License from a Stream Object

The following code example shows how to initialize a license from a stream using another [SetLicense](https://apireference.aspose.com/words/cpp/class/aspose.words.license#a652961d209c7ab08dfec68c2a5d3fd4f) method:

{{< highlight csharp >}}
auto license = System::MakeObject<License>();

try
{
	// Initializes a license from a stream
	auto stream = System::MakeObject<System::IO::MemoryStream>(System::IO::File::ReadAllBytes(u"Aspose.Words.Cpp.lic"));
	license->SetLicense(stream);
	std::cout << "License set successfully." << std::endl;
}
catch (System::Exception& e)
{
	// We do not ship any license with this example, visit the Aspose site to obtain either a temporary or permanent license.
	std::cout << "There was an error setting the license: " << e->get_Message().ToUtf8String() << std::endl;
}
{{< /highlight >}}

#### Include the License File as an Embedded Resource

A neat way to package a license with your application and make sure it will not be lost is to include it as an embedded resource. The way how to embed and use resources depends on your target platform.

##### Windows

Let’s suppose you have added the license as a resource as shown below.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

You can read about how to work with resource files on the [”Working with Resource Files”](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) page.

{{% /alert %}}

The following code example shows how to initialize a license from an embedded resource using [SetLicense](https://apireference.aspose.com/words/cpp/class/aspose.words.license#a652961d209c7ab08dfec68c2a5d3fd4f) method:

{{< highlight csharp >}}
auto hResource = FindResource(nullptr, MAKEINTRESOURCEA(IDR_ASPOSE_WORDS_LIC), RT_RCDATA);
auto hMemory = LoadResource(nullptr, hResource);

auto size = SizeofResource(nullptr, hResource);
auto ptr = LockResource(hMemory);

auto licResource = System::MakeArray<uint8_t>(size);
std::copy_n(static_cast<const uint8_t*>(ptr), size, licResource->begin());
FreeResource(hMemory);

auto license = System::MakeObject<License>();

try
{
	license->SetLicense(MakeObject<System::IO::MemoryStream>(licResource));
	std::cout << "License set successfully." << std::endl;
}
catch (System::Exception& e)
{
	std::cout << (String(u"\nThere was an error setting the license: ") + e->get_Message()) << std::endl;
}
{{< /highlight >}}

##### Linux

There is a similar way to embed resources on Linux in an executable.

{{% alert color="primary" %}}

For more information, see [”Embedding resources in executable using GCC”](https://stackoverflow.com/a/4158997).

{{% /alert %}}

The following code code example shows how to initialize a license from an embedded resource using [SetLicense](https://apireference.aspose.com/words/cpp/class/aspose.words.license#a652961d209c7ab08dfec68c2a5d3fd4f) method:

{{< highlight csharp >}}
#include <cstdint>

// a file named Aspose.Words.lic is 'imported' into an object file 
// using the following command:
//
//      ld -r -b binary -o aspose.words.lic.o Aspose.Words.lic
//
// That creates an object file named "aspose.words.lic.o" with the following 
// symbols:
//
//      _binary_aspose_words_lic_start
//      _binary_aspose_words_lic_end
//      _binary_aspose_words_lic_size
//
// Note that the symbols are addresses 

extern uint8_t _binary_aspose_words_lic_start[];
extern uint8_t _binary_aspose_words_lic_end[];
extern uint8_t _binary_aspose_words_lic_size[];

std::ptrdiff_t size = &_binary_aspose_words_lic_end - &_binary_aspose_words_lic_start;

auto licResource = System::MakeArray<uint8_t>(size);
std::copy(_binary_aspose_words_lic_start, _binary_aspose_words_lic_end, licResource->begin());

auto license = MakeObject<License>();

try
{
	license->SetLicense(MakeObject<System::IO::MemoryStream>(licResource));
	std::cout << "License set successfully." << std::endl;
}
catch (System::Exception& e)
{
	std::cout << (String(u"\nThere was an error setting the license: ") + e->get_Message()) << std::endl;
}
{{< /highlight >}}

### Changing the License File Name

The license filename does not have to be “Aspose.Words.LIC”. You can rename it to your liking and use that name when setting a license in your application.

### “Cannot find license filename” Exception

When you purchase and download a license, the Aspose website names the license file *"Aspose.Words.LIC"*. You download the license file using your browser. In this case, some browsers recognize the license file as XML and append the .xml extension to it, so the full file name on your computer becomes *"Aspose.Words.lic.XML"*.

When Microsoft Windows is configured to hide extensions for known file types (unfortunately, this is the default in most Windows installations), the license file will appear as *"Aspose.Words. LIC"* in Windows Explorer. You will probably think that this is the real file name and call **SetLicense** passing it *"Aspose.Words.LIC"*, but there is no such file, hence the exception.

To solve the problem, rename the file to remove the invisible .xml extension. We also recommend you disable the "hide extensions" option in Microsoft Windows.

## Using Multiple Aspose Products

If you use multiple Aspose products in your application, such as Aspose.Words and Aspose.Cells, here are a few useful tips:

* Set the License for each Aspose product separately. Even if you have a single license file for all components, for example, "Aspose.Total.lic", you still need to call **SetLicense** separately for each Aspose product that you use in your application.
* Use the Fully Qualified License Class Name. Each Aspose product has a **License** class in its own namespace. For example, Aspose.Words has [Aspose.Words.License](https://apireference.aspose.com/words/cpp/class/aspose.words.license) and Aspose.Cells has Aspose.Cells.License class. Using the fully qualified class name allows you to avoid confusion as to which license applies to which product.