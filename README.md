
# RFM Segmentation - SQL Based Analysis

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm1.jpeg)

---
## 📌 What is RFM Segmentation?
RFM Segmentation is a business analysis technique used to evaluate and classify customers based on their purchasing behavior.  
Customers are analyzed and grouped into different segments according to three key factors:

- **Recency (R):** How recently a customer made their last purchase.  
- **Frequency (F):** How often a customer makes purchases within a given time period.  
- **Monetary (M):** How much money a customer spends in total.
- 
![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm2.jpeg)

---
## 🗄 Data Management
Project data were uploaded and managed using **Supabase**, while **PostgreSQL (PgSQL)** was used as the connected backend database.  
This setup provided a reliable environment for storing customer transaction data and allowed efficient SQL querying, fast processing, and smooth analysis for building the RFM segmentation model.

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm3.jpeg)

---
## 📊 Dataset Description
This dataset contains **sales order transaction records**, including order details, product information, sales performance variables, and customer details.  
It also includes time-based fields such as **month, quarter, and year**, which support trend and seasonal analysis.

### 🔹 Key Variables Included
- **ORDERNUMBER** - **QUANTITYORDERED**
- **PRICEEACH** - **ORDERLINENUMBER** - **SALES** - **ORDERDATE** - **ADDRESSLINE1** - **ADDRESSLINE2**
- **CITY** - **STATE** - **POSTALCODE** - **COUNTRY**- **STATUS** - **QTR_ID** - **MONTH_ID** - **YEAR_ID** - **PRODUCTLINE** - **MSRP** - **TERRITORY** - **CONTACTLASTNAME**
-  **CONTACTFIRSTNAME** - **DEALSIZE** - **PRODUCTCODE** - **CUSTOMERNAME** - **PHONE**

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm4.jpeg)

---
![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm8.jpeg)

---
## 🧾 Query Description
This SQL query performs **RFM segmentation** on customer sales data.  
It calculates each customer’s:

- **Recency** (days since last purchase)  
- **Frequency** (total number of orders)  
- **Monetary** (total revenue generated)  

Then, the query ranks customers into **quartiles**, combines the scores into an **RFM code**, and classifies them into customer segments such as **Champion**, **Loyal Customer**, and **Needs Attention** based on their RFM behavior patterns.

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm5.jpeg)

---
## 📌 Materialized View Output
In the previous query, a **materialized view** was created to store the RFM segmentation results.  
This view displays each customer’s **name**, **RFM value**, and their assigned **customer segment**.

By analyzing the customer segment data, businesses can make informed decisions related to **customer engagement**, **retention planning**, and **targeted marketing strategies**.

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm6.jpeg)

---
## 🎯 Business Decision Using RFM Segments
RFM segments help guide customer-focused business decisions:

- **Champions** → reward & retain  
- **Loyal** → maintain engagement  
- **Potential Loyalists** → encourage more purchases  
- **Promising** → boost purchase frequency  
- **Needs Attention** → re-engage customers  
- **About to Sleep** → run win-back campaigns  
``

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm7.jpeg)

---


