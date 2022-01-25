---
title: Ruby
description: "How to use Aspose.Words for Java from Ruby."
type: docs
weight: 60
url: /java/aspose-words-java-for-ruby/
---

## Rjb - Ruby Java Bridge

RJB is a bridge program that connect between Ruby and Java with Java Native Interface. Rake + Rjb is the more powerful and useful build tool than both Maven and Ant, I
believe. You can test your Java business logic class itself with Rjb's mock. It helps to migrate Struts's Model Object into your RoR application. But beware to build
Swing application, Ruby (and Rjb) doesn't consider JVM's native threads handling.

## Aspose.Words for Java

Aspose.Words for Java is an advanced class library for Java that enables you to perform a great range of document processing tasks directly within your Java
applications.

Aspose.Words for Java supports processing word (DOC, DOCX, OOXML, RTF) HTML, OpenDocument, PDF, EPUB, XPS, and all image formats. With Aspose.Words you can
generate, modify, and convert documents without using Microsoft Word.

## Aspose.Words Java for Ruby

Project Aspose.Words Java for Ruby shows how different tasks can be performed using Aspose.Words Java APIs in Ruby. This project is aimed to provide useful examples for
Ruby developers who want to utilize Aspose.Words for Java in their Ruby Projects using Rjb (Ruby Java Bridge).

## System Requirements and Supported Platforms

### System Requirements

**Following are the system requirements to use Aspose.Words Java for Ruby:**

- Rjb Gem is configured
- Downloaded Aspose.Words component

### Supported Platforms

**Following are the supported platforms:**

- Ruby 2.2.x or above and respective DevKit.
- Java 1.5 or above

## Downloads

### Download Required Libraries

Download required libraries mentioned below. These are the required for executing Aspose.Words Java for Ruby examples.

- [Aspose.Words for Java Component](https://downloads.aspose.com/)

### Download Examples from Social Coding Sites

Following releases of running examples are available to download on below mentioned social coding sites:

**GitHub**

- [Aspose.Words Java for Ruby](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_Ruby)

## Support, Extend and Contribute

### Support

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words Java for Ruby using any of the following platforms:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/issues)

### Extend and Contribute

Aspose.Words Java for Ruby is open source and its source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and contribute by suggesting or adding new feature or improving the existing ones, so that others could also benefit from it.

### Source Code

You can get the latest source code from one of the following locations:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_Ruby)

## Installation And Usage

### Installing

It is very simple and easy to install Aspose.Words Java for Ruby gem, please follow these simple steps:

1. Add this line to your application's Gemfile.<br>
{{< highlight csharp >}}
gem 'aspose-wordsjavaforruby'
{{< /highlight >}}
1. And then execute.<br>
{{< highlight csharp >}}
$ bundle
{{< /highlight >}}<br>
**OR**
1. Run following command.<br>
{{< highlight csharp >}}
$ gem install aspose-wordsjavaforruby
{{< /highlight >}}

### Using

Include the required files for working with the HelloWorld document.

{{< highlight csharp >}}
require File.dirname(File.dirname(File.dirname(__FILE__))) + '/lib/aspose-wordsjavaforruby'
include Asposewordsjavaforruby
include Asposewordsjavaforruby::HelloWorld
initialize_aspose_words
{{< /highlight >}}

Let's understand the above code.

1. The first line makes sure that the aspose words is loaded and available.
1. Include the files that are required to access the aspose words.
1. Initialize the libraries. The aspose JAVA classes are loaded from the path provided in the aspose.yml file.

## Create Ruby Gem for Aspose.Total Java APIs

If you want to create your own Ruby gem Aspose.Total Java APIs, please follow these simple steps:

- Install Ruby from <https://www.ruby-lang.org/en/downloads/> or from <https://rubyinstaller.org/> (for windows)
- Install Ruby Dev-Kit / Dev Tools (for Windows from <https://www.ruby-lang.org/en/downloads/>)
- Follow this guide for installing Dev-Kit: <https://github.com/oneclick/rubyinstaller/wiki/Development-Kit>
- Install RJB Gem from <https://rubygems.org/gems/rjb>
- Download the template and start developing Aspose.Total for Java APIs based project/gem in Ruby. You can download template from <https://github.com/asposemarketplace/Aspose_Java_for_Ruby>
- Download relevant Aspose.Total Java Component from <https://products.aspose.com/total/java/> and place it in your project "jars" folder
- Upload the created gem to <https://rubyinstaller.org/> for distribution to the world
