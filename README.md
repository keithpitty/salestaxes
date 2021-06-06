# Sales Taxes Processor

## Overview

This repository contains elements of an application that applies sales tax and import duty to products.

### Requirements

Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medicalproducts that are exempt. Import duty is an additional sales tax applicable on all importedgoods at a rate of 5%, with no exemptions.
When I purchase items, I receive a receipt that lists the name of all the items and their price(including tax), finishing with the total cost of the items, and the total amounts of sales taxespaid. The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains(np/100 rounded up to the nearest 0.05) amount of sales tax.

### Solution

RSpec tests show that: 

- expected prices are calculated for a variety of products. The logic is captured in a `Product` class.
- expected receipts are generated for a selection of shopping baskets. Receipts are generated in a `TaxProcessor` class.

An extension to this solution would add a script that would process an input CSV file and generate a receipt via the `TaxProcessor` class.

