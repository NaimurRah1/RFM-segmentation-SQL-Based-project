
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
- **ORDERNUMBER**
- **QUANTITYORDERED**
- **PRICEEACH**
- **ORDERLINENUMBER**
- **SALES**
- **ORDERDATE**
- **ADDRESSLINE1**
- **ADDRESSLINE2**
- **CITY**
- **STATE**
- **POSTALCODE**
- **COUNTRY**
- **STATUS**
- **QTR_ID**
- **MONTH_ID**
- **YEAR_ID**
- **PRODUCTLINE**
- **MSRP**
- **TERRITORY**
- **CONTACTLASTNAME**
- **CONTACTFIRSTNAME**
- **DEALSIZE**
- **PRODUCTCODE**
- **CUSTOMERNAME**
- **PHONE**

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm4.jpeg)

---

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm5.jpeg)

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm6.jpeg)

![RFM Segmentation](https://raw.githubusercontent.com/NaimurRah1/RFM-segmentation-SQL-Based-project/main/image/rfm7.jpeg)


## Project Description
Analyze customers using **RFM (Recency, Frequency, Monetary)** metrics to guide business decisions:  

- **Champions** → reward & retain  
- **Loyal** → maintain engagement  
- **Potential Loyalists** → encourage more purchases  
- **Promising** → boost frequency  
- **Needs Attention** → re-engage  
- **About to Sleep** → win-back campaigns  

This project uses **SQL** to segment customers and support strategic decision-making.

![Customer Segments](https://via.placeholder.com/600x300.png?text=Customer+Segments+Chart)

## Tech Stack
- PostgreSQL / SQL  
- Data Analysis  

![SQL Query Example](https://via.placeholder.com/600x200.png?text=SQL+Query+Example)

## Installation
1. Clone the repository:  
```bash
git clone https://github.com/your-username/rfm-segmentation-sql.git
