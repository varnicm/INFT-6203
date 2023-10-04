/*
Show the ShipperName, ShipmentID, and DepartureDate of the shipments for items that were purchased in Singapore. 
Use a subquery. 
Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.
*/
use Morgan_Importing;

SELECT SHIPMENT.ShipperName, SHIPMENT.ShipmentID, SHIPMENT.DepartureDate
FROM SHIPMENT
WHERE SHIPMENT.ShipmentID IN (
    SELECT SHIPMENT_ITEM.ShipmentID
    FROM SHIPMENT_ITEM
    WHERE SHIPMENT_ITEM.ItemID IN (
        SELECT ITEM.ItemID
        FROM ITEM
        WHERE ITEM.City = 'Singapore'
    )
)
ORDER BY SHIPMENT.ShipperName ASC, SHIPMENT.DepartureDate DESC;
