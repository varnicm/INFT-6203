/*
Show the ShipperName, ShipmentID, and DepartureDate of all shipments that have an item that was purchased in Singapore. 
Use a join, but do not use JOIN ON syntax. 
Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.
*/

use Morgan_Importing;

SELECT DISTINCT SHIPMENT.ShipperName, SHIPMENT.ShipmentID, SHIPMENT.DepartureDate
FROM SHIPMENT, SHIPMENT_ITEM, ITEM
WHERE SHIPMENT.ShipmentID = SHIPMENT_ITEM.ShipmentID 
AND SHIPMENT_ITEM.ItemID = ITEM.ItemID 
AND ITEM.City = 'Singapore'
ORDER BY SHIPMENT.ShipperName ASC, SHIPMENT.DepartureDate DESC;
