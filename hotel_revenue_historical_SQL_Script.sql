---Combining the data from all tables to prepare for use in PowerBI

with Hotel_data as
 (
    SELECT * FROM [dbo].[Hotel_Data_2018]
    UNION 
    SELECT * FROM [dbo].[Hotel Data 2019]
    UNION 
    SELECT * FROM [dbo].[Hotel Data 2020])


select 
hotel.*
,segment.Discount,
meals.Cost as 'Meal Cost'
from Hotel_data hotel
left join [dbo].[Market Segment] segment on hotel.[market_segment] = segment.market_segment
left join [dbo].[Meal Cost] meals on meals.meal = hotel.meal;

