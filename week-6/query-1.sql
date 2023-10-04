/* the ShipperName, ShipmentID, and DepartureDate of all shipments that have an item with a value of $1,000.00 or more. 
Use a subquery. Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.
*/

use Morgan_Importing;

SELECT SHIPMENT.ShipperName, SHIPMENT.ShipmentID, SHIPMENT.DepartureDate
FROM SHIPMENT
WHERE SHIPMENT.ShipmentID IN (
    SELECT SHIPMENT_ITEM.ShipmentID 
    FROM SHIPMENT_ITEM 
    WHERE SHIPMENT_ITEM.Value >= 1000.00
)
ORDER BY SHIPMENT.ShipperName ASC, SHIPMENT.DepartureDate DESC;

