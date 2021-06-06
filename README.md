# Sales Taxes Processor

## Overview

This repository contains elements of an application that applies sales tax and import duty to products.

### Requirements

Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical


### Solution

RSpec tests show that: 

- expected prices are calculated for a variety of products. The logic is captured in a `Product` class.
- expected receipts are generated for a selection of shopping baskets. Receipts are generated in a `TaxProcessor` class.

An extension to this solution would add a script that would process an input CSV file and generate a receipt via the `TaxProcessor` class.
