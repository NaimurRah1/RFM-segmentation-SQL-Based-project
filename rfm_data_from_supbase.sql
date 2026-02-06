
select * from rfm_data;

-- RFM SEGMENTATION QUERY
CREATE materialized VIEW customer_rfm_view1 AS
WITH CT AS (
		select "CUSTOMERNAME",
				"QUANTITYORDERED"*"PRICEEACH" AS REV,
				TO_DATE("ORDERDATE",'DD-MM-YY') as DAT,
				"ORDERNUMBER"
		from rfm_data),
CT2 AS (
		SELECT 
				"CUSTOMERNAME",
				SUM(REV) AS SUM_OF_REV,
				MAX(DAT) AS MAX_DATE,
				COUNT(DISTINCT "ORDERNUMBER")AS TOTAL_ORDER 
		FROM CT GROUP BY 1),
CT3 AS (
		SELECT  *,
				(SELECT MAX(TO_DATE("ORDERDATE",'DD-MM-YYYY'))-MAX_DATE FROM rfm_data) as DATE_DIF
		FROM CT2),
CT4 AS ( 
		SELECT *,
		NTILE(4) OVER (ORDER BY DATE_DIF desc) AS R,
		NTILE(4) OVER (ORDER BY TOTAL_ORDER ASC) AS F,
		NTILE (4) OVER (ORDER BY SUM_OF_REV ASC) AS M
		FROM CT3),
CT5 AS (
		SELECT 
			*,
			CONCAT(R,F,M) AS RFM  FROM CT4)
		SELECT 
			"CUSTOMERNAME",RFM, 
			CASE 
				WHEN RFM IN ('455','542','544','552','553','452','545','554','555') THEN 'CHAMPION'
				WHEN RFM IN ('344','345','353','354','355','443','451','342','351','352','441','442','444','445','453','454','541','543','515','551') THEN 'LOYAL CUSTOMER'
				WHEN RFM IN ('513','413','511','411','512','341','412','343','514') THEN 'Potential Loyalists'
		        WHEN RFM IN ('414','415','214','211','212','213','241','251','312','314','311','313','315','243','245','252','253','255','242','244','254') THEN 'Promising Customers'
		        WHEN RFM IN ('141','142','143','144','151','152','155','145','153','154') THEN 'Needs Attention'
		        WHEN RFm IN ('113','111','112','114','115','215') THEN 'About to Sleep'
				ELSE 'OTHER' END AS CUSTOMER_SEGMENT
		FROM CT5;

	--SAW VIEW
	SELECT * FROM customer_rfm_view1;
	--HOW MANY OF THE CUSTOMER IN EACH CUSTOMER SEGMENT
	SELECT customer_segment, COUNT(*) AS NUMBER_OF_CUSTOMER FROM customer_rfm_view1 group by 1;
