SELECT *
FROM Bakery$

---Figuring out what and how many items are sold by the bakery
SELECT DISTINCT Items
from Bakery$

SELECT COUNT(Items) Num_Of_Bakery_Items
from Bakery$

---Seeing How Many Dayparts Are There
SELECT DISTINCT Daypart
FROM Bakery$

---Top Five (5) Items That Had The Most Transcations
---TABLEAU VIZULIZATION
SELECT TOP 5 Items, SUM(TransactionNo) as total_num_of_transactions
FROM Bakery$
GROUP BY Items
ORDER BY total_num_of_transactions DESC

---Seeing all the transctions made by the baketry items
---TABLEAU VIZULIZATION
SELECT Items, SUM(TransactionNo) as total_num_of_transactions
FROM Bakery$
GROUP BY Items
ORDER BY total_num_of_transactions DESC

----------------------ANALYZING THE #1 ITEM COFFEE TO FIND INSIGHTS (TABLEAU VIZULIZATION)

---Analyzing if either weekday or weekend was more popular for coffee either in the Morning, Afternoon, (Evening OVERALL)

---DayType (Weekday)

--- # Of Morning Transactions (1679)
SELECT COUNT(*) AS Morning
FROM Bakery$
WHERE Daypart = 'Morning'
AND DayType = 'Weekday'
AND Items = 'Coffee'

---# Of Afternoon transactions (1798) (Is More Likely To Have People To Buy Coffee This Time Of The Day)
SELECT COUNT(*) AS Afternoon
FROM Bakery$
WHERE Daypart = 'Afternoon'
AND DayType = 'Weekday'
AND Items = 'Coffee'

---# Of Evening Transactions (66)
SELECT COUNT(*) AS Evening
FROM Bakery$
WHERE Daypart = 'Evening'
AND DayType = 'Weekday'
AND Items = 'Coffee'

---# Of Night Transactions (0)
SELECT COUNT(*) AS Night
FROM Bakery$
WHERE Daypart = 'Night'
AND DayType = 'Weekday'
AND Items = 'Coffee'


---DayType (Weeknd)

--- # Of Morning Transactions (882)
SELECT COUNT(*) AS Morning
FROM Bakery$
WHERE Daypart = 'Morning'
AND DayType = 'Weekend'
AND Items = 'Coffee'

---# Of Afternoon transactions (1025) (Is More Likely To Have People To Buy Coffee This Time Of The Day)
SELECT COUNT(*) AS Afternoon
FROM Bakery$
WHERE Daypart = 'Afternoon'
AND DayType = 'Weekend'
AND Items = 'Coffee'

---# Of Evening Transactions (21)
SELECT COUNT(*) AS Evening
FROM Bakery$
WHERE Daypart = 'Evening'
AND DayType = 'Weekend'
AND Items = 'Coffee'

---# Of Night Transactions (0)
SELECT COUNT(*) AS Night
FROM Bakery$
WHERE Daypart = 'Night'
AND DayType = 'Weekend'
AND Items = 'Coffee'

------Analyzing the times when coffee were transacted on a weekday
SELECT Items, TransactionNo, DateTime, Daypart, DayType
FROM Bakery$
WHERE Items = 'Coffee'
AND Daypart = 'Morning'
AND DayType = 'Weekday'
ORDER BY 2,3 ASC

---------Analyzing the times when coffee were transacted on a weekend
----TABLEAU VIZULIZATION
SELECT Items, TransactionNo, DateTime, Daypart, DayType
FROM Bakery$
WHERE Items = 'Coffee'
AND Daypart = 'Morning'
AND DayType = 'Weekend'
ORDER BY 2,3 ASC


-----Overall  times when coffee were transacted
SELECT Items, TransactionNo, DateTime, Daypart, DayType
FROM Bakery$
WHERE Items = 'Coffee'

----Finding out the max transactions for coffee
SELECT Items, MAX(TransactionNo) AS Maximum_Transactions
FROM Bakery$
WHERE Items = 'Coffee'
GROUP BY Items
ORDER BY 2 DESC

----Finding out the MIN transactions for coffee
SELECT Items, MIN(TransactionNo) AS Minimum_Transactions
FROM Bakery$
WHERE Items = 'Coffee'
GROUP BY Items
ORDER BY 2 ASC

---What is the avg transaction for coffe
SELECT Items, AVG(TransactionNo) AS Avg_Coffee_Transactions
FROM Bakery$
WHERE Items = 'Coffee'
GROUP BY Items
ORDER BY 2 ASC

-----Getting a the max transaction for each item from the bakery
SELECT Items, MAX(TransactionNo) AS Items_Maximum_Transactions
FROM Bakery$
GROUP BY Items
ORDER BY 2 DESC

-----Getting a the min transaction for each item from the bakery
SELECT Items, MIN(TransactionNo) AS Items_Minumum_Transactions
FROM Bakery$
GROUP BY Items
ORDER BY 2 ASC

