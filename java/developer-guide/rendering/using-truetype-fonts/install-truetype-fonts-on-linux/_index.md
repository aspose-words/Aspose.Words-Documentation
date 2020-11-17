---
title: Install TrueType Fonts on Linux
type: docs
weight: 20
url: /java/install-truetype-fonts-on-linux/
aliases: [/java/installing-truetype-fonts-on-linux/]
---

Most often, you will use Aspose.Words to convert DOC or DOCX documents to PDF format. If you need to do this on a Linux machine, this topic will help you to learn how to ensure Aspose.Words is rendering your documents with the best accuracy.

Most frequently, the DOC and DOCX documents, which need to be converted were created using Microsoft Word, on a Windows or Mac OS operating system. Therefore, most fonts used in DOC and DOCX documents are "Windows fonts" or "Office fonts", that are the fonts installed with Microsoft Windows or Microsoft Office. These fonts include Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, and many others.

The problem is that the TrueType fonts listed above are not installed by default on Linux distributions. If you take a typical DOCX document that is formatted with the Cambria font and try to convert it to PDF format on Linux, Aspose.Words will use a different font because Cambria is not available. As a result, the PDF document will look different, in comparison to the original DOCX document. To make sure that documents converted by Aspose.Words appear as close as possible to the original, you need to install "Windows fonts" on your Linux system.

There are two main ways to get TrueType fonts on a Linux system:

- Copy .TTF and .TTC files from a Windows machine onto your Linux machine
- Install a TrueType font package, such as *msttcorefonts*

## Copying Fonts from a Windows Machine

An easy and quick way to get TrueType fonts on a Linux system is to copy .TTF and .TTC files from the C:\Windows\Fonts directory on a Windows machine to some directory on your Linux machine. You do not need to install or register these fonts on Linux in any way; you just need to specify the location of the fonts using the [FontSettings](https://apireference.aspose.com/words/java/com.aspose.words/FontSettings) class in Aspose.Words.

{{% alert color="primary" %}} 

Verify whether font licensing is required, and read the EULA carefully before installing MS Fonts on any Linux operating system.

{{% /alert %}} 

## Install a TrueType Fonts Package

There are a number of Linux packages, containing Microsoft TrueType fonts, that you can download and install onto your Linux machine. The exact steps may be different on various Linux distributions.

- On Ubuntu, use Synaptic Package Manager to find and install the *ttf-mscorefonts-installer* package.
- On openSUSE, use Yast2 → Software Management to find and install the *fetchmsttfonts* package.
- Use Liberation Fonts licensed under OFL, as an alternative to standard Windows fonts: Arial, Times New Roman, and Courier New.
- For font packages suitable to other Linux distributions, search available documentation on the internet.

After installing the package, Aspose.Words will find these fonts in the folders on your system and use them when working with documents.

## See Also

- [Liberation Fonts](https://fedorahosted.org/liberation-fonts/) as an alternative to standard Windows fonts
