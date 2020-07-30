---
title: AWS Lambda
type: docs
weight: 50
url: /net/aws-lambda/
---

This article describes possible scenarios for using Aspose.Words for .NET when building applications for the Amazon Web Services.

In case you are targeting applications in the cloud, and you need Aspose.Words functionality and probably integration with other Amazon services, you may be interested in using Aspose.Words in AWS Lambda.

[MG: What AWS resources does Aspose.Words support when running in AWS Lambda? If there are such resources, describe the scenarios in the main part.]
## **Prerequisites**
- Active AWS account for using Lambda. If you don’t have one, create a new (free?) account before you begin.
- Visual Studio 2019 or Visual Studio 2017 with installed AWS Toolkit for Visual Studio.
## **Requirements and Restrictions for Using Aspose.Words in AWS Lambda**

## **Use Noto Fonts in AWS Lambda**
[WORDSNET-20174](https://issue.auckland.dynabic.com/issues/WORDSNET-20174):

Noto fonts are stored in the Amazon S3 Bucket. To load font information on demand when starting Aspose.Words in AWS Lambda, you need to register the font names when the lambda starts, and then just load the required fonts on demand from Amazon S3 using [StreamFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/streamfontsource).

Loading and parsing a large amount of font information stored in Amazon S3 can take a significant amount of time. Since the cache of font search info is stored in the [FontSetting](https://apireference.aspose.com/net/cells/aspose.cells/fontsetting) instance, you can store the **FontSettings** instance in a lambda context for better performance (static FontSettings.DefaultInstance should probably be fine too). In this case, loading all the fonts will be required only when the lambda context is disposed and have to be recreated.

Possible development (Should we say about it? How soon will it be ready?):
To improve performance, in this case, we could try to implement a function of storing a font search info cache in an external file.

See also [WORDSNET-19925](https://issue.auckland.dynabic.com/issues/WORDSNET-19925)
## **How to Run Aspose.Words Application in AWS Lambda**
[MG: I'm not sure if we need this section.]
## **See Also**
- [AWS Toolkit for Visual Studio](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.AWSToolkitforVisualStudio2017)
