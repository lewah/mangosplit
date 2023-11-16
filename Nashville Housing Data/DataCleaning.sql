-- SELECT TOP (100) [UniqueID]
--       ,[ParcelID]
--       ,[LandUse]
--       ,[PropertyAddress]
--       ,[SaleDate]
--       ,[SalePrice]
--       ,[LegalReference]
--       ,[SoldAsVacant]
--       ,[OwnerName]
--       ,[OwnerAddress]
--       ,[Acreage]
--       ,[TaxDistrict]
--       ,[LandValue]
--       ,[BuildingValue]
--       ,[TotalValue]
--       ,[YearBuilt]
--       ,[Bedrooms]
--       ,[FullBath]
--       ,[HalfBath]
--   FROM [Portfolio].[dbo].[Nashville Housing]

-- changing the name of the table Nashville Housing to Nashville_Housing
sp_rename 'Nashville Housing','Nashville_Housing';

------------------------------------------------------ cleaning the date column

SELECT SaleDate
FROM [Nashville_Housing];

Select SaleDate, CONVERT(Date,SaleDate)
From Portfolio.dbo.Nashville_Housing;

Update Nashville_Housing
SET SaleDate = CONVERT(Date,SaleDate);

-- If it doesn't Update properly

ALTER TABLE NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing
SET SaleDateConverted = CONVERT(Date,SaleDate);

-------------------------------------------------- Populate Property Address data

SELECT top (100) *
from [Nashville_Housing];



-- PropertyAddress and ParcelID have a connection , find houses with the same ParcelID but missing PropertyAddress 
-- the houses have unique UniqueID but may have PropertyAddress and ParcelID that are similar
-- joining the table to its self
SELECT *
FROM [Nashville_Housing]
WHERE PropertyAddress IS NULL
ORDER BY ParcelID;
-- 29 rows

Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress
From Nashville_Housing a
JOIN Nashville_Housing b
	on a.ParcelID = b.ParcelID
    -- and the UniqueID is not equal , <> and != - not equal 
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null;
-- 35 rows

SELECT *
FROM [Nashville_Housing]
WHERE ParcelID = '034 03 0 059.00';
-- 3 rows , the only colums that are different are UniqueID, SaleDate, LegalReference

-- populating the NULL PropertyAddress with the PropertyAddress that have the same ParcelID
-- ISNULL(missing value,what to fill the missing value with)

Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress ,ISNULL(a.PropertyAddress,b.PropertyAddress) as propertyaddress_for_a
From Nashville_Housing a
JOIN Nashville_Housing b
	on a.ParcelID = b.ParcelID
    -- and the UniqueID is not equal , <> and != - not equal 
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null;

-- updating
Update a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
From Nashville_Housing a
JOIN Nashville_Housing b
	on a.ParcelID = b.ParcelID
    -- and the UniqueID is not equal , <> and != - not equal 
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null;
-- 29 rows affected

----------------------------Splitting the content of a column into 2 or more columns 
-------------------------------------------splitting the PropertyAddress to Address and city

Select PropertyAddress
From Nashville_Housing;

-- Test splitting  PropertyAddress into two columns 
-- SUBSTRING(TableName, starting point, ending point ) as column_name
SELECT
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 ) as Address
, SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress)) as City
From Nashville_Housing

-- adding the columns Prop_Address and Prop_City to the table
ALTER TABLE Nashville_Housing
Add Prop_Address Nvarchar(255);

Update Nashville_Housing
SET Prop_Address = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 );

ALTER TABLE Nashville_Housing
Add Prop_City Nvarchar(255);

Update Nashville_Housing
SET Prop_City = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress));
-- 
SELECT top (100) *
from Nashville_Housing;

-------------------------------------------splitting the OwnerAddress to Address,city and state
Select OwnerAddress
From Nashville_Housing;

-- parsename looks for periods , and it starts fetching data from last to first 
Select
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From Nashville_Housing;

ALTER TABLE Nashville_Housing
Add OwnerSplitAddress Nvarchar(255);

ALTER TABLE Nashville_Housing
Add OwnerSplitCity Nvarchar(255);

ALTER TABLE Nashville_Housing
Add OwnerSplitState Nvarchar(255);

Update Nashville_Housing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3);

Update Nashville_Housing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2);

Update Nashville_Housing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1);
-- 
SELECT top (100) *
from Nashville_Housing;

----------------------------------------------------clean SoldAsVacant  to have the  values distinct
-- Find the count of the distinct values in the column SoldAsVacant
SELECT distinct SoldAsVacant, COUNT(SoldAsVacant)
FROM Nashville_Housing
GROUP by SoldAsVacant;

-- updating N to No and Y to Yes
Select SoldAsVacant
, CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END
From Nashville_Housing;

-- updating 
Update Nashville_Housing
SET SoldAsVacant = CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END;

---------------------------------- Removing duplicate values , using CTE
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From Nashville_Housing
order by row_num desc;


WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From Nashville_Housing
--order by ParcelID
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress
-- 104 duplicate rows

-- deleting duplicates 
WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From Nashville_Housing
--order by ParcelID
)
Delete
From RowNumCTE
Where row_num > 1
-- 104 rows removed

SELECT *
from Nashville_Housing;
-- 56477 rows

---------------------------------------Drop unused columns 
ALTER TABLE Nashville_Housing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate;