---
title: OOXML Chart Rendering Supported Features
type: docs
weight: 60
url: /net/ooxml-chart-rendering-supported-features/
---

[kvk: You should contact Ilya Egorov about OOXML Charts rendering status]

<RK Do we really need this article in Programmers Guide? What is the purpose of this article? It will require frequent updates because the work on chart rendering is active.>

<RK What I would prefer is a more marketing article that briefly explains what OOXML charts are, shows some screenshots of MS Word of beatiful charts, then mention how hard we have been working to make Aspose.Words render these charts and show some good examples of Aspose.Words output. Also tell that we are still actively working on this feature. Tell briefly what challenges we still have. Such article can be included in Getting Started I suppose and promoted in the product blogs.>



[mg to Ilya: please rewrite this article in accordance with the comments above. Extend the article with additional information on the topic, if necessary.

Please feel free to ask me any questions:

1. rocketchat: mary.gerasimova
1. e-mail: [mary.gerasimova@aspose.com](/words/net/mailto-mary-gerasimova@aspose-com/)

How to add a comment: use the highlighting in orange and place it in square brackets (text text [comment] text) or angle brackets (text text <comment> text).]

[mg to Ilya: Please don't worry about headlines. Write the "draft" headlines. If necessary, we will correct them after writing the article.]

This topic contains the features supported when rendering OOXML charts to fixed page formats.
## **Data Visualization**

|**Feature/Element**|**Level of support**|**Comments**|
| :- | :- | :- |
|**Area Chart**|Supported| |
|**Line Chart**|Supported| |
|**Stock Chart**|Supported| |
|**Radar Chart**|Supported| |
|**Scatter Chart**|Supported| |
|**Pie Chart**|Supported| |
|**Doughnut Chart**|Supported| |
|**Bar Chart**|Supported| |
|**Bubble Chart**|Supported| |
|**Area 3D Chart**|Supported| |
|**Line 3D Chart**|Supported| |
|**Pie 3D Chart**|Supported| |
|**Bar 3D Chart**|Supported| |
|**Of Pie Chart**|Supported| |
|**Surface Chart**|Supported| |
|**Surface 3D Chart**|Supported| |
## **Chart features**

|**Feature/Element**|**Level of support**|**Comments**|
| :- | :- | :- |
|**Legend**|Supported|Rendering of chart legend is supported including custom formatting and manual layout.|
|**Chart Title**|Supported|Rendering of chart title is supported including custom formatting and manual layout.|
|**Axis Title**|Supported|Rendering of axis tiles is supported.|
|**Data Labels**|Partially Supported|<p>Data labels are rendered. Almost all features of data labels are supported.<br>Currently we do not support:</p><p>- Best Fit position of data labels (**WORDSNET-7245**);</p>|
|**Data Table**|Not Supported|Currently data table is not rendered. (**WORDSNET-6943**)|
|**Trend Lines**|Supported|Rendering of trend lines is supported.|
|**Error Bars**|Supported|Rendering of error bars is supported.|
|**Pictures, Shapes, Textboxes**|Supported|Rendering of Pictures, Shapes and Textboxes are supported.|
## **Formatting**

|**Feature/Element**|**Level of support**|**Comments**|
| :- | :- | :- |
|**Chart Style**|Supported|There are 48 chart styles, these styles define the formatting of chart elements. All styles are supported and used as a default source of chart elements formatting upon rendering.|
|**Series**|Supported|Series formatting specifies formatting of all data points within this series and overrides formatting applied to them using chart style.|
|**Plot Area**|Supported|Fill and borders of the plot area are supported.|
|**Chart Area**|Supported|Fill and borders of chart area are supported.|
|**Data Point**|Supported|Using data point formatting you can override formatting of a concrete data point.|
|**Axis**|Supported| |
|**Legend**|Supported|Custom fill and line formatting for the legend is supported.|
|**Font**|Supported|Custom font formatting is supported.|
|**Manual Layout**|Supported|You can drag and drop chart elements on the chart area. In this case, elements become absolutely positioned.|
|**Overlapping**|Supported|Overlapping of elements within the chart area is supported.|

