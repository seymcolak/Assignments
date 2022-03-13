
CREATE TABLE Actions
(
    Visitor_ID BIGINT,
    Adv_Type  VARCHAR(20),
    Action VARCHAR(20)
);

INSERT Actions VALUES
(1,'A','Left'),
(2,'A','Order'),
(3,'B','Left'),
(4,'A','Order'),
(5,'A','Review'),
(6,'A','Left'),
(7,'B','Left'),
(8,'B','Order'),
(9,'B','Review'),
(10,'A','Review');

SELECT *
from Actions


WITH table1 AS
(
SELECT Adv_Type,
sum(CASE WHEN [Action] = 'Left' THEN 1 ELSE 0 END) AS Lefts,
sum(CASE WHEN [Action] = 'Order' THEN 1 ELSE 0 END) AS Orders,
sum(CASE WHEN [Action] = 'Review' THEN 1 ELSE 0 END) AS Reviews
FROM Actions
GROUP BY Adv_Type
)

select *
from tbl


WITH tbl as (
SELECT Adv_Type,
sum(CASE WHEN [Action] = 'Left' THEN 1 ELSE 0 END) AS Lefts,
sum(CASE WHEN [Action] = 'Order' THEN 1 ELSE 0 END) AS Orders,
sum(CASE WHEN [Action] = 'Review' THEN 1 ELSE 0 END) AS Reviews
FROM Actions
GROUP BY Adv_Type
)




SELECT [Adv_Type],1.0 * Orders/(Lefts+Orders+Reviews) AS [Conversion Rate]
FROM tbl
