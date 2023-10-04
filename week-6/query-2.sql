/*Show the ShipperName, ShipmentID, and DepartureDate of all shipments that have an item with a value of $1,000.00 or more. 
Use a join. Present results sorted by ShipperName in ascending order and then DepartureDate in descending order */
use Morgan_Importing;

SELECT SHIPMENT.ShipperName, SHIPMENT.ShipmentID, SHIPMENT.DepartureDate
FROM SHIPMENT
JOIN SHIPMENT_ITEM ON SHIPMENT.ShipmentID = SHIPMENT_ITEM.ShipmentID 
WHERE SHIPMENT_ITEM.Value >= 1000.00
ORDER BY SHIPMENT.ShipperName ASC, SHIPMENT.DepartureDate DESC;
