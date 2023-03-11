use master
SELECT v.VendorID, v.VendorName,
COUNT(i.InvoiceID) as TotalInvoices,
SUM(i.InvoiceTotal) as TotalAmount
FROM Vendors v join Invoices i on v.VendorID = i.VendorID
where v.VendorState = 'CA'
GROUP BY
	v.VendorID, v.VendorName
