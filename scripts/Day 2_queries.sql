
CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN

	PRINT'==========================================';
	PRINT'Loading Bronze layer';
	PRINT'==========================================';

	PRINT'------------------------------------------';
	PRINT'Loading CRM Tables';
	PRINT'------------------------------------------';
TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.crm_cust_info.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.crm_prd_info.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.crm_sales_details.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

	PRINT'------------------------------------------';
	PRINT'Loading ERP Tables';
	PRINT'------------------------------------------';

TRUNCATE TABLE bronze.erp_cust_az12;
BULK INSERT bronze.erp_cust_az12
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.erp_cust_az12.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.erp_loc_a101.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'D:\DataWarehousing\sql-data-analytics-project-main\datasets\csv-files\bronze.erp_px_cat_g1v2.csv'
WITH (
	FIRSTROW = 2, 
	FIELDTERMINATOR = ',',
	TABLOCK 
);

END;


