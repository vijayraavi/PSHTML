---

@snap[west span-50]
## PSHTML
@snapend

@snap[east span-50]
in 60 seconds
@snapend

---

## What is PSHTML?

---

@snap[west span-50]
PSHTML is a PowerShell DSL (Domain Specific Language) to generate HTML language.

@snapend

@snap[east span-50]
![](/Images/Example01.jpg)
@snapend

---
Create websites using *powershell* syntax __only__
---

@snap[west span-50]
![](/Images/Example02.jpg)
@snapend

@snap[east span-50]
![](PSHTML/Examples/Example6/tribute_snover.png)
@snapend

--- 


@snap[west span-33]
## Create beautifull graphs in seconds
@snapend

@snap[east span-33]

```powershell
#Preparing data
$Data3 = @(4,1,6,12,17,25,18,17,22,30,35,44)
$Labels = @("January","February","Mars","April","Mai","June","July","August","September","October","November","december")

#Creating a DataSet
$dsb3 = New-PSHTMLChartBarDataSet -Data $data3 -label "2018" -BackgroundColor ([Color]::blue )

#Generating the chart
New-PSHTMLChart -type bar -DataSet $dsb3 -title "Bar Chart Example" -Labels $Labels -CanvasID $BarCanvasID

```

@snapend

@snap[east span-33]
![](PSHTML/Examples/Charts/Chart01/BarChartExample.png)
@snapend

---

@snap[west span-55]
## Out of the box support for
@snapend

@snap[east span-50]
- BootStrap
- ChartJs
- Query
@snapend

---
@snap[west span-50]

Take advantage of your existing HTML / CSS knowledge
@snapend

@snap[east span-50]

## Image of HTML Table creation
@snapend

---
@snap[west span-50]

Or benefit of abastractions, and focus only on your Powershell knowledge.
@snapend

@snap[east span-50]
## Image of ConvertTo-PSHTMLTable
@snapend
