SELECT
  P1.name ,
  P1.price ,
  (
    SELECT
      COUNT(P2.price)
    FROM
      Products P2
    WHERE
      P2.price > P1.price
  )
  +1 AS rank_1
FROM
  Products P1
ORDER BY
  P1.price DESC ;
SELECT
  P1.name ,
  P2.name
  -- ,(
  --   SELECT COUNT(P2.price)
  --     FROM Products P2
  --     WHERE
  --      P2.price > P1.price) +1 AS rank_1
FROM
  Products P1 ,
  Products P2
WHERE
  P1.name   IN ('りんご','みかん','バナナ')
AND P2.name IN ('りんご','みかん','バナナ')
AND P1.NAME >= P2.NAME
ORDER BY
  P1.NAME DESC ;
  
SELECT
  DP1.district ,
  DP1.NAME ,
  Dp1. price ,
  (
    SELECT
      COUNT(DP2.price)
    FROM
      DistrictProducts DP2
    WHERE
      DP1.DISTRICT = DP2.DISTRICT
    AND DP2.PRICE  > DP1.price
  )  + 1 AS rank_1
FROM
  DistrictProducts DP1
 ;