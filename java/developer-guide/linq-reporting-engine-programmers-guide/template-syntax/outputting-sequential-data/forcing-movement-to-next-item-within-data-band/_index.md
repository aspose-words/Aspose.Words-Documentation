---
title: Forcing Movement to Next Item within Data Band
type: docs
weight: 50
url: /java/forcing-movement-to-next-item-within-data-band/
---

You can instruct the engine to force movement to the next item within a data band using a next tag. This feature is useful in label-print-like scenarios when you need to output data about a fixed number of items in a single table row like in the following example. Given that Clients is a DataTable instance having a field named "Name", you can use the following template to output three client names per table row while outputting names of all clients in a single table.

|**<<foreach [c in Clients]>><<[c.Name]>>**|**<<next>><<[c.Name]>>**|**<<next>><<[c.Name]>> <</foreach>>**|
| :- | :- | :- |


In this case, the engine produces a report as follows.

|**A Company**|**B Ltd.**|**C & D** |
| :- | :- | :- |
|**E Corp.**|**F & Partners**|**G & Co.** |
|**H Group**|**I & Sons**|**J Ent.** |

