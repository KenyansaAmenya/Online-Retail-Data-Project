create database online_retail_data;

create schema retail_data;

set search_path to online_retail_data;


SELECT *
FROM retail_data."RetailData";

SELECT *
FROM retail_data."RetailData_Cleaned";
