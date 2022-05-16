CREATE TABLE "sales" (
  "id" bigserial PRIMARY KEY,
  "Region" varchar NOT NULL,
  "Country" varchar NOT NULL,
  "Item_Type" varchar NOT NULL,
  "Sales_Channel" varchar NOT NULL,
  "Order_Priority" varchar NOT NULL,
  "Order_Date" timestamptz NOT NULL DEFAULT (now()),
  "Order_ID" varchar NOT NULL,
  "Ship_Date" timestamptz NOT NULL DEFAULT (now()),
  "Units_Sold" bigint NOT NULL,
  "Unit_Price" bigint NOT NULL,
  "Unit_Cost" bigint NOT NULL,
  "Total_Revenue" bigint NOT NULL,
  "Total_Cost" bigint NOT NULL,
  "Total_Profit" bigint NOT NULL
);