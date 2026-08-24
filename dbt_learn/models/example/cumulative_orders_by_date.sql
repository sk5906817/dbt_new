

select o.o_custkey,o.o_orderdate,sum(o_totalprice) over(order by o.o_orderdate) as cumulative_sum 
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o order by o.o_orderdate