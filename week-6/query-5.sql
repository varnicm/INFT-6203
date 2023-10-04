/*
Show the ShipperName, ShipmentID, and DepartureDate of all shipments that have an item that was purchased in Singapore. 
Use a join using JOIN ON syntax. 
Present results sorted by ShipperName in ascending order and then DepartureDate in descending order
*/

use Morgan_Importing;

SELECT DISTINCT SHIPMENT.ShipperName, SHIPMENT.ShipmentID, SHIPMENT.DepartureDate
FROM SHIPMENT
JOIN SHIPMENT_ITEM ON SHIPMENT.ShipmentID = SHIPMENT_ITEM.ShipmentID
JOIN ITEM ON SHIPMENT_ITEM.ItemID = ITEM.ItemID
WHERE ITEM.City = 'Singapore'
ORDER BY SHIPMENT.ShipperName ASC, SHIPMENT.DepartureDate DESC;